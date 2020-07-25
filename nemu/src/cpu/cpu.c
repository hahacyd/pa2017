#include "nemu.h"
#include "cpu/cpu.h"
#include "cpu/intr.h"
#include "cpu/instr.h"
#include "memory/memory.h"
#include "monitor/breakpoint.h"
#include <stdio.h>
#include <assert.h>

CPU_STATE cpu;
FPU fpu;
int nemu_state;

#define sign(x) ((uint32_t)(x) >> 31)
#define sign_data_size(x) ((uint32_t)(x) >> (data_size - 1))
#ifdef HAS_DEVICE_TIMER
static void do_intr() {
	// check for interrupt
	if(cpu.intr && cpu.eflags.IF) {
		// get interrupt number
		uint8_t intr_no = i8259_query_intr_no(); // get interrupt number
		assert(intr_no != I8259_NO_INTR);
		i8259_ack_intr(); // tell the PIC interrupt info received
		raise_intr(intr_no); // raise intrrupt to turn into kernel handler
	}
}
#endif
void exec(uint32_t n) {
	static BP *bp = NULL;
	verbose = (n <= 100000);
	int instr_len = 0;
	bool hit_break_rerun = false;

	if(nemu_state == NEMU_BREAK) {
		hit_break_rerun = true;
	}

	nemu_state = NEMU_RUN;
	while( n > 0 && nemu_state == NEMU_RUN) {

#ifdef DEBUG
		if(verbose) clear_operand_mem_addr(&opr_src);
		if(verbose) clear_operand_mem_addr(&opr_dest);
#endif

		instr_len = exec_inst();

		cpu.eip += instr_len;
		n--;

		if(hit_break_rerun) {
			resume_breakpoints();
			hit_break_rerun = false;
		}

		// check for breakpoints
		if(nemu_state == NEMU_BREAK) {
			// find break in the list
			bp = find_breakpoint(cpu.eip - 1);
			if(bp) {
				// found, then restore the original opcode
				vaddr_write(bp->addr, SREG_CS, 1, bp->ori_byte);
				cpu.eip--;
			}
			// not found, it is triggered by BREAK_POINT in the code, do nothing
		}

		// check for watchpoints

		BP *wp = scan_watchpoint();
		if(wp != NULL) {
			// print_bin_instr(eip_temp, instr_len);
			// puts(assembly);
			printf("\n\nHit watchpoint %d at address 0x%08x, expr = %s\n", wp->NO, cpu.eip - instr_len, wp->expr);
			printf("old value = %#08x\nnew value = %#08x\n", wp->old_val, wp->new_val);
			wp->old_val = wp->new_val;
			nemu_state = NEMU_READY;
			break;
		}

#ifdef HAS_DEVICE_TIMER
		//printf("\nPlease call do_intr() here\n");
		//assert(0);
		do_intr();
#endif
	}
	if(nemu_state == NEMU_STOP)
		printf("NEMU2 terminated\n");
	else if(n == 0) {
		nemu_state = NEMU_READY;
	}
}



int exec_inst() {
	uint8_t opcode = 0;
	// get the opcode
	opcode = instr_fetch(cpu.eip, 1);
	// instruction decode and execution
	int len = opcode_entry[opcode](cpu.eip, opcode);
	return len;
}

void set_PF(uint32_t result){
	int val = 0;
	for(int i = 0; i < 8; i++){
		val ^= result;
		result >>= 1;
	}
	cpu.eflags.PF = (val & 0x1)==1?0:1;
}
void set_CF_add(uint32_t result,uint32_t src){
	cpu.eflags.CF = result < src;
}
void set_CF_adc(uint32_t result,uint32_t src,uint32_t dest){
	cpu.eflags.CF = ((src == 0xffffffff && dest == result) || (dest == 0xffffffff && src == result)) ||(result < dest);
}
void set_ZF(uint32_t result){
	cpu.eflags.ZF = (result == 0);
}
void set_SF(uint32_t result){
	cpu.eflags.SF = sign(result);
}
void set_OF_add(uint32_t result,uint32_t src,uint32_t dest){
	if(sign(src) == sign(dest)){
		if(sign(src) != sign(result))
			cpu.eflags.OF = 1;
		else
			cpu.eflags.OF = 0;
	}
	else{
		cpu.eflags.OF = 0;
	}
}
void set_CF_sub(uint32_t src,uint32_t dest){
	cpu.eflags.CF = dest < src;
}
void set_OF_sub(uint32_t res,uint32_t src,uint32_t dest){ 
	cpu.eflags.OF = (sign(src) ^ sign(dest)) && (sign(dest) ^ sign(res));
}
void set_CF_sbb(uint32_t res,uint32_t src,uint32_t dest){
	cpu.eflags.CF = (src > dest) || (cpu.eflags.CF && src == dest);
}

void set_OF_sbb(uint32_t res,uint32_t src,uint32_t dest){
	cpu.eflags.OF = 1;
}
void set_CF_shl(uint32_t res,uint32_t src,uint32_t dest,uint32_t data_size){
	uint32_t t = dest << (src - 1);
	t = t >> (data_size - 1);
	
	cpu.eflags.CF = t & 0x00000001;
}
void set_OF_shl(uint32_t res,uint32_t dest){
	cpu.eflags.OF = sign(res) ^ sign(dest);
}

void set_ZF_shl(uint32_t res,uint32_t data_size){
	uint32_t low = 0;
	for(uint32_t i = 0; i < data_size - 1; i++){
		low = (low + 1)<<1;
	}
	low++;

	cpu.eflags.ZF = !(res & low);
}

void set_PF_shl(uint32_t res,uint32_t data_size){
	int val = 0;
	for(int i = 0; i < 8; i++){
		val = res ^ val;
		res >>= 1;
	}
	cpu.eflags.PF = (val & 0x1)==1?0:1;
}
void set_SF_shl(uint32_t res,uint32_t data_size){
	cpu.eflags.SF = res>>(data_size - 1);
}

void set_CF_shr(uint32_t res,uint32_t src){
	res = res >> (src - 1);
	cpu.eflags.CF = res & 0x00000001;
}
void set_CF_sar(uint32_t src,uint32_t dest,uint32_t data_size){
	if(src >= data_size){
		if((dest>>(data_size - 1)) & 0x1 ){
			cpu.eflags.CF = 1;
		}
		else{
			cpu.eflags.CF = 0;
		}
	}
	else{
		dest = dest >> (src - 1);
		cpu.eflags.CF = dest & 0x1;
	}
}
void set_OF_CF_and_or_xor(){
	cpu.eflags.OF = 0;
	cpu.eflags.CF = 0;
}
void set_CF_OF_mul(uint64_t res,uint32_t data_size){
	/*uint64_t low = 0;
	for(uint32_t i = 0; i < 31; i++){
		low = (low + 1)<<1;
	}
	low++;
	low =low << 32;*/
		
	cpu.eflags.CF = 0;
	cpu.eflags.OF = 0;
	res = res >> data_size;
	for(uint32_t i = 0; i < data_size;i++){
		if(res & 0x1){
			cpu.eflags.CF = 1;
			cpu.eflags.OF = 1;
		}
		res >>= 1;
	}	
}
void init_cpu(const uint32_t init_eip) {
	cpu.eflags.val = 0x0;
	fpu.status.val = 0x0;
	int i=0;
	for(i = 0; i < 8; i++) {
		cpu.gpr[i].val = 0x0;
		fpu.regStack[i].val = 0x0;
	}
	cpu.eip = init_eip;
	cpu.esp = (128 << 20) - 16;
	
	//for segment control;
	cpu.gdtr.limit = 0;
	cpu.gdtr.base = 0;

	cpu.cr0.val = 0;
	cpu.cr3.val = 0;
	for(int j = 0; j < 6;j++){
		cpu.segReg[j].val = 0;
	}
	cpu.intr = 0;
}

bool verbose = false;

#ifdef HAS_DEVICE_TIMER
static void do_intr();
#endif





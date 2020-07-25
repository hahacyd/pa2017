#include"cpu/instr.h"
static inline void instr_execute_1op_e_pass(){
	cpu.eip = cpu.eip + opr_src.val;
	opr_src.val = cpu.eip;
}
make_instr_func(je){
	int len = 1;
	decode_data_size_b;
	opr_src.type = OPR_IMM;
	opr_src.sreg = SREG_CS;
	opr_src.addr = cpu.eip + len;
	opr_src.val = vaddr_read(opr_src.addr,opr_src.sreg,1);

	len += 1;
	print_asm_1("je","",len,&opr_src);
	if(cpu.eflags.ZF){
		instr_execute_1op_e_pass();
	}
	//printf("eip = %x\nlen = %d\nval = %x\n",cpu.eip,len,opr_src.val);
	return len;
}

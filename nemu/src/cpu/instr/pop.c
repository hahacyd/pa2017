#include"cpu/instr.h"
static void instr_execute_1op(){
	opr_src.val = pop(4);
	operand_write(&opr_src);
}
uint32_t pop(uint32_t size){
	assert(size == 2 || size == 4);
	uint32_t res = 0;
	//memcpy(&res,hw_mem + cpu.esp,size);
	res = vaddr_read(cpu.esp,1,size);	
	cpu.esp = cpu.esp + size;
	return res;
}
make_instr_impl_1op(pop,r,v);
make_instr_func(popa){
	uint32_t len = 1;
	cpu.edi = pop(4);
	cpu.esi = pop(4);
	cpu.ebp = pop(4);
	pop(4);
	cpu.ebx = pop(4);
	cpu.edx = pop(4);
	cpu.ecx = pop(4);
	cpu.eax = pop(4);
	//printf("popa:esp = %x\n",cpu.esp);
	return len;
}

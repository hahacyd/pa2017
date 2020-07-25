#include"cpu/instr.h"

make_instr_func(sti){
	uint32_t len = 1;
	cpu.eflags.IF = 1;

	print_asm_0("sti"," ",len);
	return len;
}
make_instr_func(cli){
	uint32_t len = 1;
	cpu.eflags.IF = 0;

	print_asm_0("cli"," ",len);
	return len;
}


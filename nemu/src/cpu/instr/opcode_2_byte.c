#include "cpu/instr.h"

make_instr_func(opcode_2_byte) {
	int len = 1;
	uint8_t op = instr_fetch(eip + 1, 1);
//	printf("eip = %x\n",cpu.eip);
	
//	printf("op = %x\n",op);
	len += opcode_2_byte_entry[op](eip + 1, op);
	return len;
}

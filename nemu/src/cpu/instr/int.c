#include"cpu/instr.h"
#include"cpu/intr.h"

make_instr_func(intb){
	int len = 1;
	decode_data_size_b;
	decode_operand_i;
	operand_read(&opr_src);

	raise_sw_intr(opr_src.val);
	//printf("intr = %x\n",opr_src.val);
	print_asm_1("int","b",len,&opr_src);
	return 0;
}

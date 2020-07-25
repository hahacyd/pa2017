#include"cpu/instr.h"

make_instr_func(lea_rm2r_v){
	int len = 1;
	decode_data_size_v;
	decode_operand_rm2r;
	/*OPERAND i;
	i.type = OPR_IMM;
	i.sreg = SREG_CS;
	i.addr = eip + 2;
	i.data_size = 8;
	len += 1;
	
	operand_read(&i);
	opr_src.addr;

	operand_read(&opr_dest);*/
	opr_dest.val = opr_src.addr;
	operand_write(&opr_dest);
	print_asm_2("lea","",len,&opr_src,&opr_dest);
	return len;
}	

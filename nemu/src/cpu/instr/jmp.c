#include "cpu/instr.h"
static void instr_execute_1op(){
	operand_read(&opr_src);
	opr_src.val = sign_ext(opr_src.val,opr_src.data_size);
	cpu.eip += opr_src.val;
}
make_instr_func(jmp_near) {
        OPERAND rel;
        rel.type = OPR_IMM;
		rel.sreg = SREG_CS;
        rel.data_size = data_size;
        rel.addr = eip + 1;

        operand_read(&rel);

	int offset = sign_ext(rel.val, data_size);
	print_asm_1("jmp", "", 2, &rel);
//	printf("haha cyd i am here! \n");
	cpu.eip += offset;

        return 1 + data_size / 8;
}
make_instr_impl_1op(jmp,i,short_);
make_instr_func(ljmp){
	int len = 1;
	decode_data_size_l;
	decode_operand_i;
	operand_read(&opr_src);

	print_asm_1("ljmp","v",len + 1,&opr_src);
	cpu.eip = opr_src.val;
	//printf("eip = %x\n",opr_src.val);
	
	eip += 4;
	decode_operand_i;
	decode_data_size_w;
	operand_read(&opr_src);
	
	//printf("cs = %x\n",opr_src.val);
	cpu.cs.val = opr_src.val;

	load_sreg(1);
	return 0;
}

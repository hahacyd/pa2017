#include"cpu/instr.h"

static void instr_execute_1op(){
	operand_read(&opr_src);
	opr_src.val = opr_src.val - 1;
	uint32_t res = opr_src.val;
	set_OF_add(res,1,res + 1);
	set_ZF(res);
	set_SF(res);
	set_PF(res);
	operand_write(&opr_src);
}
make_instr_impl_1op(dec,rm,v);
make_instr_impl_1op(dec,r,v);

#include"cpu/instr.h"

static void instr_execute_2op(){
	operand_read(&opr_src);
	operand_read(&opr_dest);
	opr_dest.val = alu_sub(opr_src.val,opr_dest.val);
	operand_write(&opr_dest);
}
make_instr_func(sub_i2rm_bv){
	int len = 1;
	decode_data_size_bv;
	decode_operand_i2rm;
	operand_read(&opr_src);
	operand_read(&opr_dest);
	opr_src.val = sign_ext(opr_src.val,8);
	opr_dest.val = alu_sub(opr_src.val,opr_dest.val);
	print_asm_2("sub","bv",len,&opr_src,&opr_dest);
	operand_write(&opr_dest);
	return len;
}
//make_instr_impl_2op(sub,i,rm,bv);
make_instr_impl_2op(sub,i,rm,v);
make_instr_impl_2op(sub,i,rm,b);
make_instr_impl_2op(sub,i,a,b);
make_instr_impl_2op(sub,i,a,v);
make_instr_impl_2op(sub,rm,r,b);
make_instr_impl_2op(sub,rm,r,v);
make_instr_impl_2op(sub,r,rm,b);
make_instr_impl_2op(sub,r,rm,v);

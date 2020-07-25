#include"cpu/instr.h"
static void instr_execute_2op(){
	operand_read(&opr_src);
	operand_read(&opr_dest);
	//printf("2op:src = %x dest = %x ",opr_src.val,opr_dest.val);
	opr_dest.val = alu_or(opr_src.val,opr_dest.val);
	//printf("res = %x\n",opr_dest.val);
	operand_write(&opr_dest);
}
make_instr_func(or_i2rm_bv){
	int len = 1;
	decode_data_size_bv;
	decode_operand_i2rm;
	operand_read(&opr_src);
	operand_read(&opr_dest);
	opr_src.val = sign_ext(opr_src.val,8);
	opr_dest.val = alu_or(opr_src.val,opr_dest.val);
	print_asm_2("or","bv",len,&opr_src,&opr_dest);
	operand_write(&opr_dest);
	return len;
}
make_instr_impl_2op(or,r,rm,v);
make_instr_impl_2op(or,r,rm,b);
make_instr_impl_2op(or,rm,r,v);
make_instr_impl_2op(or,rm,r,b);
make_instr_impl_2op(or,i,rm,v);
make_instr_impl_2op(or,i,rm,b);
//make_instr_impl_2op(or,i,rm,bv);

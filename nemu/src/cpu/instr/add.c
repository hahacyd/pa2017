#include"cpu/instr.h"
static void instr_execute_2op(){
	operand_read(&opr_src);
	operand_read(&opr_dest);
	opr_dest.val = alu_add(opr_src.val,opr_dest.val);
	operand_write(&opr_dest);
}
make_instr_func(add_i2rm_bv){
	int len = 1;
	decode_data_size_bv;
	decode_operand_i2rm;
	operand_read(&opr_src);
	operand_read(&opr_dest);
	opr_src.val = sign_ext(opr_src.val,8);
	opr_dest.val = alu_add(opr_src.val,opr_dest.val);
	print_asm_2("add","bv",len,&opr_src,&opr_dest);
	operand_write(&opr_dest);
	return len;
}
make_instr_func(add){
	int len = 1;
	decode_data_size_l;
	len += modrm_rm(eip+1,&opr_dest);
	
	opr_src.type = OPR_IMM;
	opr_src.sreg = SREG_CS;
	opr_src.addr = eip + len;	
	len += opr_src.data_size/8;
	instr_execute_2op();
	print_asm_2("add","l",len,&opr_src,&opr_dest);
	return len;
}
make_instr_func(add_eax){
	int len = 1;
	decode_data_size_l;
	decode_operand_i;

	opr_dest.type = OPR_REG;
	opr_dest.addr = 0;
	opr_dest.sreg = SREG_CS;
	instr_execute_2op();
	print_asm_2("add","l",len,&opr_src,&opr_dest);
	return len;
}
make_instr_impl_2op(add,r,rm,v);
make_instr_impl_2op(add,r,rm,b);
make_instr_impl_2op(add,rm,r,v);
make_instr_impl_2op(add,rm,r,b);
//make_instr_impl_2op(add,i,rm,bv);
make_instr_impl_2op(add,i,rm,b);
make_instr_impl_2op(add,i,rm,v);
make_instr_impl_2op(add,i,a,b);
make_instr_impl_2op(add,i,a,v);


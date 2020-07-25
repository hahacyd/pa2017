#include "cpu/instr.h"
static void instr_execute_2op() {
	operand_read(&opr_src);
	operand_read(&opr_dest);
	//opr_src.val = sign_ext(opr_src.val,opr_src.data_size);
	//opr_dest.val = sign_ext(opr_dest.val,opr_src.data_size);
	//operand_write(&opr_src);
	alu_sub(opr_src.val,opr_dest.val);
	//printf("src = %x\ndest = %x\n",opr_src.val,opr_dest.val);
}
make_instr_func(cmp_i2rm_bv){
	int len = 1;
	decode_data_size_bv;
	decode_operand_i2rm;
	operand_read(&opr_src);
	operand_read(&opr_dest);
	opr_src.val = sign_ext(opr_src.val,8);
	alu_sub(opr_src.val,opr_dest.val);
	print_asm_2("cmp","bv",len,&opr_src,&opr_dest);
	return len;
}
make_instr_func(cmp_i2r_b){
	int len = 1;
	decode_data_size_bv;
	len += modrm_rm(eip+1,&opr_dest);
	operand_read(&opr_dest);

	opr_src.type = OPR_IMM;
	opr_src.sreg = SREG_CS;
	opr_src.addr = eip + len;
	opr_src.val = vaddr_read(opr_src.addr,opr_src.sreg,1);	
	//printf("eax = %x\n",opr_dest.val);
	alu_sub(opr_src.val,opr_dest.val);
	//printf("src = %x\ndest = %x\n",opr_src.val,opr_dest.val);
	//printf("opr->addr = %x\nlen = %d\nopr_src->val = %d\n",opr_dest.addr,len,opr_src.val);
	len += opr_src.data_size/8;
	//printf("opr->addr = %x\nlen = %d\n",opr_dest.addr,len);
	print_asm_2("cmp","b",len,&opr_src,&opr_dest);
	//printf("you come here\n");
	//instr_execute_2op();
	return len;
}
//make_instr_impl_2op(cmp,i,r,v);
//make_instr_impl_2op(cmp,i,r,b);
make_instr_impl_2op(cmp,r,rm,v);
make_instr_impl_2op(cmp,r,rm,b);
make_instr_impl_2op(cmp,rm,r,v);
make_instr_impl_2op(cmp,rm,r,b);
make_instr_impl_2op(cmp,i,rm,v);
//make_instr_impl_2op(cmp,i,rm,bv);
make_instr_impl_2op(cmp,i,rm,b);
make_instr_impl_2op(cmp,i,a,b);
make_instr_impl_2op(cmp,i,a,v);
self_design_make_instr_eAX_Iv(cmp);


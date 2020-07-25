#include"cpu/instr.h"
static void instr_execute_2op(){
	operand_read(&opr_src);
	operand_read(&opr_dest);
	alu_and(opr_src.val,opr_dest.val);
	cpu.eflags.CF = 0;
	cpu.eflags.OF = 0;
}
/*make_instr_func(test){
	int len = 1;
	decode_data_size_v;
*	len += modrm_rm(eip + 1,&opr_dest);

	opr_src.type = OPR_REG;
	opr_src.sreg = SREG_CS;
	uint8_t modrm_reg = 0;
	modrm_opcode(eip + 1,&modrm_reg);
	opr_src.addr = modrm_reg;
*
	len += modrm_r_rm(eip+1,&opr_src,&opr_dest);
	instr_execute_2op();
	print_asm_2("test","l",len,&opr_src,&opr_dest);
	return len;
}*/
make_instr_impl_2op(test,r,rm,b);
make_instr_impl_2op(test,r,rm,v);
make_instr_impl_2op(test,i,rm,v);
make_instr_impl_2op(test,i,rm,b);
make_instr_impl_2op(test,i,a,b);
make_instr_impl_2op(test,i,a,v);


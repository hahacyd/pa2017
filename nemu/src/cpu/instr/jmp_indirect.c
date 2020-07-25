#include "cpu/instr.h"
/*static void instr_execute_1op(){
	operand_read(&opr_src);
	cpu.eip = opr_src.val ;
}*/
//make_instr_impl_1op(jmp_ind,rm,v);
make_instr_func(jmp_ind_rm_v){
	int len = 1;
	decode_data_size_v;
	decode_operand_rm;
	print_asm_1("jmp_ind","v",len,&opr_src);
	operand_read(&opr_src);
	cpu.eip = opr_src.val - len;
	return len;
}

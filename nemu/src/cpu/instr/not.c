#include"cpu/instr.h"

static void instr_execute_1op(){
	operand_read(&opr_src);
	//opr_src.val = alu_xor(0xffffffff,opr_src.val);
	/*uint32_t res = opr_src.val;
	switch(opr_src.data_size){
		case 8;res = 0xff ^ 
		*/
	switch(opr_src.data_size){
		case 32:opr_src.val = alu_xor(0xffffffff,opr_src.val);break;
		case 16:opr_src.val = alu_xor(0x0000ffff,opr_src.val);break;
		case 8:opr_src.val = alu_xor(0x000000ff,opr_src.val);break;
		default:opr_src.val = alu_xor(0xffffffff,opr_src.val);
	};

	/*uint32_t res = opr_src.val;*/
	operand_write(&opr_src);
}
make_instr_impl_1op(not,rm,v);
make_instr_impl_1op(not,rm,b);

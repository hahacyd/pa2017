#include"cpu/instr.h"
extern uint32_t pio_read(uint16_t port, size_t len);
static void instr_execute_2op(){
	operand_read(&opr_src);
	operand_read(&opr_dest);
	
	opr_dest.val = pio_read(opr_src.val,opr_dest.data_size/8);
	//printf("portin: opr_src.val = %x a = %x\n",opr_src.val,opr_dest.val);
	operand_write(&opr_dest);
	//assert(0);


}
make_instr_impl_2op(in,portdx,a,b);
make_instr_impl_2op(in,portdx,a,v);

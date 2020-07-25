
#include"cpu/instr.h"
extern void pio_write(uint16_t port,size_t len,uint32_t data);
static void instr_execute_2op(){
	operand_read(&opr_src);
	operand_read(&opr_dest);
	
	pio_write(opr_dest.val,opr_src.data_size / 8,opr_src.val);
}

make_instr_impl_2op(out,a,portdx,b);
make_instr_impl_2op(out,a,portdx,v);


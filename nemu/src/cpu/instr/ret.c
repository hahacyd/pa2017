#include"cpu/instr.h"
/*static void instr_execute_1op(){
	operand_read(&opr_src);
	cpu.esp = cpu.esp + opr_src.val;
}*/
make_instr_func(ret_near_call){    //  such ret often write 2 byte to eip;
	int len = 1;
	uint32_t return_address = pop(4); //withdraw memory

	print_asm_0("ret"," ",len);
	cpu.eip = return_address - len;  // because the future eip will add len;
	//printf("addre = %x",return_address);
	return len;
}
make_instr_func(ret_i_w){
	int len = 1;
	
	decode_data_size_w;
	decode_operand_i;
	operand_read(&opr_src);
	uint32_t return_address = pop(4);
	cpu.eip = return_address - len;  // because the future eip will add len;

	cpu.esp = cpu.esp + opr_src.val;
	print_asm_0("ret"," ",len);
	return len;
}
make_instr_func(iret){
	//printf("iret:esp:eip = %x\n",cpu.esp);
	cpu.eip = pop(4);
	cpu.cs.val = pop(2);
	cpu.eflags.val = pop(4);
	//printf("iret: cpu.eip = %x\n",cpu.eip);
	print_asm_0("iret"," ",1);
	return 0;
}
make_instr_func(leave){
	int len = 1;
	cpu.esp = cpu.ebp;
	cpu.ebp = pop(4);
	print_asm_0("leave","",len);
	return len;
}

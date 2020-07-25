#include"cpu/instr.h"
make_instr_func(call){
	int len = 1;
	decode_data_size_l;   // call address often 4 bytes;

	decode_operand_i;
	operand_read(&opr_src);

	print_asm_0("call"," ",len);
	push_l(cpu.eip + len);
	cpu.eip += opr_src.val;
	return len;
}
make_instr_func(call_near_absolute_rm_v){
	int len = 1;
	decode_data_size_l;
	decode_operand_rm;
	operand_read(&opr_src);
	print_asm_0("call"," ",len);
	push_free(cpu.eip + len,32);
	//cpu.eip = opr_src.val;
	//if(opr_src.val == 0x60000)
		//printf("wu,finally come,cpu.eip = %x\n",cpu.eip);
	return opr_src.val - cpu.eip;
}
make_instr_func(call_direct_v){
	int len = 1;
	decode_data_size_l;   // call address often 4 bytes;

	decode_operand_i;
	operand_read(&opr_src);

	print_asm_0("call"," ",len);
	push_l(cpu.eip + len);
	cpu.eip = opr_src.val;
	return len;
}


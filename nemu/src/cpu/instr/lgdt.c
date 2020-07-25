#include"cpu/instr.h"

make_instr_func(lgdt){
	int len = 1;
	decode_data_size_l;
	decode_operand_rm;
	operand_read(&opr_src);

	cpu.gdtr.limit = opr_src.val; //read first two byte data,
	cpu.gdtr.base = vaddr_read(opr_src.addr + 2,0,4); //read next four byte data;
	print_asm_1("lgdt","v",len,&opr_src);
	///printf("base %x\n",cpu.gdtr.base);
	//assert(0);
	//printf("len = %x\n",len);
	return len;
}


make_instr_func(lidt){
	int len = 1;
	decode_data_size_l;
	decode_operand_rm;
	//operand_read(&opr_src);
	
	uint32_t addr = opr_src.addr;
	/*printf("cr0 = %x\n",cpu.cr0.pe);
	printf("addr = %x\n",addr);
	printf("opr_addr = %x\n",opr_src.addr);*/
	cpu.idtr.limit = laddr_read(addr,2);
	cpu.idtr.base = laddr_read(addr + 2,4);
	//printf("addr = %x limit = %x base = %x\n",addr,cpu.idtr.limit,cpu.idtr.base);
	return len;
}

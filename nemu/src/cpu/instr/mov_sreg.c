#include"cpu/instr.h"

//make_instr_impl_2op(mov,r,sr,v);
make_instr_func(mov_rm2cr){
	int len = 1;
	MODRM modrm;
	modrm.val = instr_fetch(eip + 1,1);

	opr_dest.addr = modrm.reg_opcode;
	opr_dest.type = OPR_CREG;
	operand_read(&opr_dest);           //read cpu.cr0;

	decode_data_size_l;
	decode_operand_rm;
	operand_read(&opr_src);	

	opr_dest.val = opr_src.val;
	print_asm_2("mov","w",len,&opr_src,&opr_dest);

	operand_write(&opr_dest);
//	printf("cpu.cr0 = %x\n",cpu.cr0.val);
	return len;
}
make_instr_func(mov_cr2rm){
	int len = 1;
	opr_dest.type = OPR_CREG;
	MODRM modrm;
	modrm.val = instr_fetch(eip + 1,1);
	opr_dest.addr = modrm.reg_opcode;
	operand_read(&opr_dest);//read cpu.cr0;

//	printf("cr0 = %x\n",opr_dest.val);

	decode_operand_rm;
	operand_read(&opr_src);
	opr_src.val = opr_dest.val;
	operand_write(&opr_src);
	print_asm_2("mov","w",len,&opr_dest,&opr_src);
	
	//printf("mov cr02eax\n");
	return len;
}
make_instr_func(mov_rm2sr){
	int len = 1;

	decode_data_size_w;

	MODRM modrm;
	modrm.val = instr_fetch(eip + 1,1);
	
	decode_operand_rm;

	opr_dest.addr = modrm.reg_opcode;
	opr_dest.type = OPR_SREG;

	operand_read(&opr_src);  //read reg ;

	opr_dest.val = opr_src.val;
	
	operand_write(&opr_dest);
	load_sreg(opr_dest.addr);
	print_asm_2("mov","w",len,&opr_src,&opr_dest);
	return len;
}
make_instr_func(mov_sr2rm){
	int len = 1;

	decode_data_size_w;

	MODRM modrm;
	modrm.val = instr_fetch(eip + 1,1);
	
	decode_operand_rm;

	opr_dest.addr = modrm.reg_opcode;
	opr_dest.type = OPR_SREG;
	operand_read(&opr_dest);  //read segment ;

	opr_src.val = opr_dest.val;
	
	operand_write(&opr_src);
	//load_sreg(opr_dest.addr);
	//load_sreg(opr_dest.addr);
	print_asm_2("mov","w",len,&opr_dest,&opr_src);
	return len;
}

#include"cpu/instr.h"
static void instr_execute_1op(){
	operand_read(&opr_src);
	if(opr_src.data_size == 8){
		opr_src.val = sign_ext(opr_src.val,opr_src.data_size);
	}	
	push_free(opr_src.val,32);   //there has changed@ 10.5 11:00

}
make_instr_func(push_eBP){
	int len = 1;

//uint8_t hw_mem[MEM_SIZE_B];
//	cpu.esp = cpu.esp - 4;
//	memcpy(hw_mem + cpu.esp,&cpu.ebp,4);
	push_l(cpu.ebp);
	print_asm_0("push","l",len);
	return len;
}
make_instr_impl_1op(push,i,b);
make_instr_impl_1op(push,i,v);
make_instr_impl_1op(push,rm,v);
make_instr_impl_1op(push,r,v);
make_instr_func(push){       //this is more abstract;
	//decode_data_size_l;
	int len = 1;
	decode_operand_r;
	decode_data_size_l;
	operand_read(&opr_src);
	push_l(opr_src.val);
	//uint8_t reg = opcode & 0x7;
	print_asm_0("push","l",len);	
	return len;
}
void push_w(uint16_t x){  //design to store return address,
	cpu.esp = cpu.esp - 2;
	//memcpy(hw_mem + cpu.esp,&x,2);
	vaddr_write(cpu.esp,1,2,x);	
	//printf("return_address = %x\n",*(hw_mem + cpu.esp));
	//printf("x = %x\n",x);
}
void push_free(uint32_t x,uint32_t size){
	assert(size == 16 || size == 32);
	cpu.esp = cpu.esp - size / 8;
	//memcpy(hw_mem + cpu.esp,&x,size / 8);
	vaddr_write(cpu.esp,1,size / 8,x);	
}
void push_l(uint32_t x){  //but unlucky is that the pa`s return address is more
	cpu.esp = cpu.esp - 4; // than 2 bytes;
	//memcpy(hw_mem + cpu.esp,&x,4);
	
	vaddr_write(cpu.esp,1,4,x);	
	//printf("x = %x\n",x);
}
make_instr_func(pusha){
	uint32_t len = 1;
	uint32_t temp = cpu.esp;
	//printf("pusha:esp = %x\n",cpu.esp);
	//printf("pusha = %x \n",vaddr_read(cpu.esp,1,4));
	push_free(cpu.eax,32);
	push_free(cpu.ecx,32);
	push_free(cpu.edx,32);
	push_free(cpu.ebx,32);
	push_free(temp,32);
	push_free(cpu.ebp,32);
	push_free(cpu.esi,32);
	push_free(cpu.edi,32);
	//printf("irq = %x\n",vaddr_read(cpu.esp + 32,1,4));
	print_asm_0("pusha"," ",len);
	return len;
}

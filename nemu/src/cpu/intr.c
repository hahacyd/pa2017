#include "cpu/intr.h"
#include "cpu/instr.h"
#include "memory/memory.h"

#define GETOFFSET(offset_15_0,offset_31_16) \
	((offset_31_16 << 16) | (offset_15_0))
void raise_intr(uint8_t intr_no) {
#ifdef IA32_INTR
	//printf("Please implement raise_intr()");
	//assert(0);	
	//trigger an exceptional/interupt with idtr;
	
	push_free(cpu.eflags.val,32);
	push_free(cpu.cs.val,16);  //just save cs.cal is OK!later the
								//hide area will be reload;
	push_free(cpu.eip,32);

	//printf("go!esp:eip = %x\n",cpu.esp);
	uint32_t idtrEntry = cpu.idtr.base + 8 * intr_no;
	//printf("idtr.base = %xintr_no = %x idtrEntry = %x\n",cpu.idtr.base,intr_no,idtrEntry);
	uint64_t entrySrc = laddr_read(idtrEntry + 4,4);
	//printf("d1 = %x\n",(uint32_t)entrySrc);
	entrySrc <<= 32;
	entrySrc |= laddr_read(idtrEntry,4);

	//printf("d2 = %x\n",(uint32_t)entrySrc);
	//printf("%x %x\n",(uint32_t)(entrySrc >> 32),(uint32_t)entrySrc);
	GateDesc *Entry = (GateDesc*)&entrySrc;
	//printf("%x %x\n",Entry->offset_15_0,Entry->offset_31_16);
	uint32_t offset = GETOFFSET(Entry->offset_15_0,Entry->offset_31_16);
	//uint32_t selector = Entry->selector;
	//printf("selector = %x offset = %x\n",selector,offset);
	//if(offset == 1)
	//cpu.cs.index = selector;
	//printf("intr:esp = %x\n",cpu.esp);
	cpu.eip = offset;
	//load_sreg(1);

#endif
	
}

void raise_sw_intr(uint8_t intr_no) {
	// return address is the next instruction
	cpu.eip += 2;
	raise_intr(intr_no);
}

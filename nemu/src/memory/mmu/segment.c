#include "cpu/cpu.h"
#include "memory/memory.h"

// return the linear address from the virtual address and segment selector
uint32_t segment_translate(uint32_t offset, uint8_t sreg) {
	/* TODO: perform segment translation from virtual address to linear address
	 * by reading the invisible part of the segment register 'sreg'
	 */	
	//printf("base = %x\n", cpu.segReg[sreg].base);

	uint32_t laddr = offset + cpu.segReg[sreg].base;
	//if(laddr == 0x80000001){
	//	printf("seg: laddr = %xoffset = %x\n",laddr,offset);
	//}
	return laddr;
}

#define getbase(base_31_24,base_23_16,base_15_0) \
	(base_31_24 << 24 | base_23_16 << 16 | base_15_0)
#define getlimit(limit_19_16,limit_15_0) \
	(limit_19_16 << 16 | limit_15_0)
// load the invisible part of a segment register
void load_sreg(uint8_t sreg) {
	/* TODO: load the invisibile part of the segment register 'sreg' by reading the GDT.
	 * The visible part of 'sreg' should be assigned by mov or ljmp already.
	 */
	 SegReg* s = &(cpu.segReg[sreg]);
	 assert(sreg >= 0 && sreg <= 7);
	 
	 uint32_t offset = cpu.gdtr.base + s->index * 8;
	 //printf("offset = %x\nindex = %x\n",offset,s->index);

	 uint64_t d = laddr_read(offset + 4,4);

	 d <<= 32;
	 d |= laddr_read(offset,4);  //get descriptor from laddr in memory,
	//at this time ,pg shouldn`t on;
	 //uint32_t d1 = (d >> 32);
	 //uint32_t d2 = d & 0xffffffff;
	 //printf("desc = %x  %x\n",d1,d2);
	 SegDesc* desc = (SegDesc*)&d;

	 s->base = getbase(desc->base_31_24,desc->base_23_16,desc->base_15_0);

	 s->limit = getlimit(desc->limit_19_16,desc->limit_15_0);
	// printf("base = %x\nlimit = %x\ngranularity = %x\n",s->base,s->limit,desc->granularity);
	 assert(s->base == 0 && s->limit == 0xfffff && desc->granularity == 1);
	// assert(cpu.cr0.pg == 1 );
	 //s->base = cpu.gdtr.base;
	 //s->limit = cpu.gdtr.limit;
}

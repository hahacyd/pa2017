#include "cpu/cpu.h"
#include "memory/memory.h"

// translate from linear address to physical address
paddr_t page_translate(laddr_t laddr) {
#ifndef TLB_ENABLED
//	printf("\nPlease implement page_translate()\n");
	uint32_t offset = (laddr & 0xfff);
	uint32_t pd = ((laddr >> 22) & 0x3ff);
	uint32_t pt = ((laddr >> 12) & 0x3ff);
	
	//printf("cr3 = %x\n",cpu.cr3.val);
	//printf("pd = %x\n",pd);
	//printf("laddr = %x\n",laddr);

	/*printf("pt = %x\n",pt);
	printf("s = %x\n",cpu.cr3.base + pd);*/
	//PDE sd = (PDE)paddr_read((cpu.cr3.base << 12) + pd * 4,4);
	PDE sd = (PDE)paddr_read((cpu.cr3.val) + pd * 4,4);

	/*if(cpu.cr3.base == 0x70){
		
		assert(0);
	}*/
	//printf("sd = %x\n",sd.val);
	if(sd.present != 1){	
		printf("cr3.val = %x\n",cpu.cr3.val);
		printf("PDE = %x   laddr = %x\n",sd.val,laddr);
		printf("pd = %x pt = %x offset = %x\n",pd,pt,offset);
		//uint32_t tmp = paddr_read(laddr,4);
		//printf("tmp = %x\n",tmp);
	}
	assert(sd.present == 1);
	
	//printf("st = %x\n",st);
	PTE st = (PTE)paddr_read((sd.page_frame << 12) + pt * 4,4);
	if(st.present != 1){
		printf("pd = %x pt = %x\n",pd,pt);
		printf("st = %x   laddr = %x offset = %x\n",st.val,laddr,offset);
	}/**/
	assert(st.present == 1);
	return ((st.page_frame << 12) | offset);

#else	
	return tlb_read(laddr) | (laddr & PAGE_MASK);;
#endif
}

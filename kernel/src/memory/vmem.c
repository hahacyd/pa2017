#include "common.h"
#include "memory.h"
#include <string.h>
#define VMEM_ADDR 0xa0000
#define SCR_SIZE (320 * 200)
#define NR_PT ((SCR_SIZE + PT_SIZE - 1) / PT_SIZE)  // number of page tables to cover the vmem

PDE* get_updir();
//#define va_to_pa(addr) ((void*)(((uint32_t)(addr)) - KOFFSET)) 
void create_video_mapping() {
	
	/* TODO: create an identical mapping from virtual memory area
	 * [0xa0000, 0xa0000 + SCR_SIZE) to physical memeory area
	 * [0xa0000, 0xa0000 + SCR_SIZE) for user program. You may define
	 * some page tables to create this mapping.
	 */
	//Log("%x\n",NR_PT);
	//PDE* up = get_updir();
	PDE* dir = (PDE *)((uint32_t)(get_updir()) - 0xc0000000);  //updir is page directory ;
	dir->val = make_pde(0);

	uint32_t pframe_idx = (VMEM_ADDR >> 12);
	uint32_t pframe_end = ((VMEM_ADDR + SCR_SIZE) >> 12) + 1;

	PTE* ptable = (PTE*)((dir->page_frame << 12)); //get page table
	ptable += pframe_idx;   //locate correct pagetable content;


	//Log("sizeof(PTE) = %x\n",sizeof(PTE));
	//Log("ptable = %x\n",(uint32_t)(ptable->val));

	for(; pframe_idx < pframe_end; pframe_idx ++){
		ptable->val = make_pte(pframe_idx << 12);	
		//Log("idx = %x  ptable->val = %x\n",pframe_idx,(uint32_t)(ptable->val));
		ptable ++;
	}
	//panic("please implement me");
}

void video_mapping_write_test() {
	int i;
	uint32_t *buf = (void *)VMEM_ADDR;
	for(i = 0; i < SCR_SIZE / 4; i ++) {
		buf[i] = i;
	}
}

void video_mapping_read_test() {
	int i;
	uint32_t *buf = (void *)VMEM_ADDR;
	for(i = 0; i < SCR_SIZE / 4; i ++) {
		assert(buf[i] == i);
	}
}

void video_mapping_clear() {
	memset((void *)VMEM_ADDR, 0, SCR_SIZE);
}


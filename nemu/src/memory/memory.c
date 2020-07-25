#include "nemu.h"
#include "cpu/cpu.h"
#include "memory/memory.h"
#include "device/mm_io.h"
#include <memory.h>
#include <stdio.h>

#include<stdlib.h>
//#define my_debug
#define GROUP_NO(paddr) ((paddr>>6) & 0x7f)
#define NOTE(paddr) ((paddr >> 13) & 0x3fff)
#define BLOCK_ADDR(paddr) (paddr & 0x3f)
uint8_t hw_mem[MEM_SIZE_B];
extern cache L1_dcache;
uint32_t hw_mem_read(paddr_t paddr, size_t len) {
	uint32_t ret = 0;
	memcpy(&ret, hw_mem + paddr, len);   //  make small offset data to ret
	return ret;
}

void hw_mem_write(paddr_t paddr, size_t len, uint32_t data) {
	memcpy(hw_mem + paddr, &data, len);
}

uint32_t paddr_read(paddr_t paddr, size_t len) {
	uint32_t ret = 0;
#ifdef CACHE_ENABLED
	ret = cache_read(paddr,len,&L1_dcache);
#else
	ret = hw_mem_read(paddr, len);
#endif

#ifdef HAS_DEVICE_VGA
	int mm_no = is_mmio(paddr);
	if(mm_no != -1){
		//printf("there is mm_no\n");
		ret = mmio_read(paddr,len,mm_no);
	}
#endif
	return ret;
}

void paddr_write(paddr_t paddr, size_t len, uint32_t data) {
#ifdef HAS_DEVICE_VGA
	int mm_no = is_mmio(paddr);
	if(mm_no != -1){
		mmio_write(paddr,len,data,mm_no);
		return;
	}
#endif

#ifdef CACHE_ENABLED
	cache_write(paddr,len,data,&L1_dcache);
#else
	hw_mem_write(paddr, len, data);
#endif
}
uint32_t cache_read(paddr_t paddr,size_t len,cache* L1){
	uint32_t ret = 1;
	//uint32_t group = (paddr / 512) % 16;
	bool hit = 0;
	uint32_t group_no = GROUP_NO(paddr);  //get group no
	uint32_t note = NOTE(paddr);
	uint32_t block_addr = BLOCK_ADDR(paddr);
	//rock two blocks,
	if(block_addr >= 0x3c){
		ret = hw_mem_read(paddr,len);
		return ret;
	}
	Mem_Group* s = &(L1->mem_group[group_no]);
#ifdef my_debug
	printf("pddr: 0x%x group_no; 0x%x note:0x%x \n",paddr,group_no,note);
#endif
	for(int i = 0;i < 8;i++){
		if(s->mem_row[i].note == note && s->mem_row[i].vaild_bit == 1){
			memcpy(&ret,&(s->mem_row[i].memory_block[block_addr]),len);
			hit = 1;

#ifdef my_debug
			printf("hit :");print_mem_row(&(s->mem_row[i]));
#endif
		}
	}
	if(hit == 0){
		Mem_Row* rewrite = find_replaced_block(s);
#ifdef my_debug
		printf("find :");print_mem_row(rewrite);
#endif
		uint32_t new_block_addr = ((paddr >> 6) << 6);
		memcpy(rewrite->memory_block,(void*)(hw_mem + new_block_addr),64);
		rewrite->vaild_bit = 1;
		rewrite->note = note;
		memcpy(&ret,&(rewrite->memory_block[block_addr]),len);
#ifdef my_debug
		printf("find :");print_mem_row(rewrite);
#endif
	}
	if(paddr == 0x3003c){
		printf("%x\n",ret);
	}
	return ret;
}
Mem_Row* find_replaced_block(Mem_Group* s){
	//bool empty = 0;
	for(int i = 0;i < 8;i++){
		if(s->mem_row[i].vaild_bit == 0){
			//empty = 1;
			return &(s->mem_row[i]);
		}
	}
	//there is no room to add ,so need replace a block in cache;
	uint32_t r = rand() % 8 ;// rand();
	//row = &(s->mem_row[r]);
	return &(s->mem_row[r]);
}


uint32_t cache_write(paddr_t paddr,size_t len,uint32_t data,cache* L1){
	uint32_t ret = 1;
	//uint32_t group = (paddr / 512) % 16;
	uint32_t group_no = GROUP_NO(paddr);  //get group no
	uint32_t note = NOTE(paddr);
	uint32_t block_addr = BLOCK_ADDR(paddr);
	Mem_Group* s = &(L1->mem_group[group_no]);
#ifdef my_debug
	printf("pddr: 0x%x group_no; 0x%x note:0x%x \n",paddr,group_no,note);
#endif
	hw_mem_write(paddr, len, data);
	uint32_t loop_block = 0;
	if(block_addr >= 0x3c){
		loop_block = 1;
	}
	for(int i = 0;i < 8;i++){
		if(s->mem_row[i].note == note && s->mem_row[i].vaild_bit == 1){
			if(loop_block == 1){
				s->mem_row[i].vaild_bit = 0;
				return ret;
			}
			memcpy(&(s->mem_row[i].memory_block[block_addr]),&data,len);
		}
	}
	return ret;
}
uint32_t laddr_read(laddr_t laddr, size_t len) {
	assert(len == 1 || len == 2 || len == 4);
#ifndef IA32_PAGE
	return paddr_read(laddr,len):
#else
	//printf("cyd");
	if(cpu.cr0.pe == 1 && cpu.cr0.pg == 1){ //page mode;
		/*uint32_t passaddr = laddr + len - 1;
		uint32_t check1 = (passaddr >> 12 ) & 0x3ff;
		uint32_t check2 = (laddr >> 12) & 0x3ff;
		assert(check1 == check2);

		if((laddr/0x1000)!=((laddr+len - 1)/0x1000)){
             printf("Across pages!\n");
             assert(0);
		} */ 		
		if(0x1000 < len + (laddr & 0xfff)){
			uint32_t data_read = paddr_read(page_translate(laddr),len);

			//printf("read:cross the page boundary laddr = %x data = %x\n",laddr,data_read);
			return data_read;

	//		assert(0);
			uint32_t left = 0xfff - (laddr & 0xfff) + 1;
			uint32_t laddr1 = laddr;
			uint32_t laddr2 = (laddr & 0xfffff000) + 0x1000;
			laddr1 = page_translate(laddr1);
			laddr2 = page_translate(laddr2);
			
			uint32_t res1 = paddr_read(laddr1,len);
			uint32_t res2 = paddr_read(laddr2,len);
			switch(left){
				case 3:res1 = (res1 & 0xffffff00) ;break;
				case 2:res1 =  (res1 & 0xffff0000);break;
				case 1:res1 =  (res1 & 0xff000000); break;
				default:res1 = res1;
			}
			//return res1 | (res2 >> (left * 8));
			//assert(0);
			return res1 | (res2 >> (left * 8));
		//	assert(0);    //data cross the page boundary;
		}
		else{
	//		printf("laddr = %x\n",laddr);
			uint32_t  hwaddr = page_translate(laddr);
			//if(laddr == 0x314b8)
			//printf("hwaddr = %x\n",hwaddr);
			return paddr_read(hwaddr,len);
		}
		//laddr = page_translate(laddr);
	}
	else 
		return paddr_read(laddr, len);
#endif
}

void laddr_write(laddr_t laddr, size_t len, uint32_t data) {
	assert(len == 1 || len == 2 || len == 4);
#ifndef IA32_PAGE
	paddr_write(laddr, len, data);
#else
	if(cpu.cr0.pe == 1 && cpu.cr0.pg == 1){
		if(0x1000 < len + (laddr & 0xfff)){
			//printf("write:cross boundary laddr = %x data = %x\n",laddr,data);
			return paddr_write(page_translate(laddr),len,data);

			uint32_t left = 0x1000 - (laddr & 0xfff);
			uint32_t laddr1 = laddr;
			uint32_t laddr2 = (laddr & 0xfffff000) + 0x1000;
			laddr1 = page_translate(laddr1);
			laddr2 = page_translate(laddr2);
			
			for(int i = 0;i < left;i++){
				paddr_write(laddr1 + i,1,(data >>((3 - i) * 8)));
			}
			for(int i = 0; i < 4 - left;i++){
				paddr_write(laddr2 + i,1,(data >>((3 - i - left) * 8)));
			}
			printf("write : data cross the page boundary");

			assert(0);    //data cross the page boundary;
		}
		else{
			uint32_t hwaddr = page_translate(laddr);
			paddr_write(hwaddr,len,data);
		}
		//laddr = page_translate(laddr);
	}
	else paddr_write(laddr, len, data);	
#endif
}
void print_mem_row(Mem_Row* s){
	printf("vaild_bit = %d ",s->vaild_bit);
	printf("note = 0x%x\n",s->note);
	//printf("memory_block = 
}

uint32_t vaddr_read(vaddr_t vaddr, uint8_t sreg, size_t len) {
	assert(len == 1 || len == 2 || len == 4);
#ifndef IA32_SEG
	return laddr_read(vaddr, len);
#else
	if(cpu.cr0.pe == 1){
		vaddr = segment_translate(vaddr,sreg);
		//printf("vaddr = %x\n",vaddr);
	}
	return laddr_read(vaddr, len);
#endif
}

void vaddr_write(vaddr_t vaddr, uint8_t sreg, size_t len, uint32_t data) {
	assert(len == 1 || len == 2 || len == 4);
#ifndef IA32_SEG
	laddr_write(vaddr, len, data);
#else
	if(cpu.cr0.pe == 1){
		vaddr = segment_translate(vaddr,sreg);
	}
	laddr_write(vaddr, len, data);
#endif
}
void init_cache(){
	Mem_Row* row = (Mem_Row*)(&L1_dcache);
	//printf("cache init finish\n");
	for(int i = 0; i < 1024;i++){
		(&row[i])->vaild_bit = 0;
	}	
}
void init_mem() {
	// clear the memory on initiation
	memset(hw_mem, 0, MEM_SIZE_B);
	init_cache();
	//there will init cache;
#ifdef TLB_ENABLED
	init_all_tlb();
	make_all_tlb();
#endif
}
uint32_t instr_fetch(vaddr_t vaddr, size_t len) {
	assert(len == 1 || len == 2 || len == 4);
	return vaddr_read(vaddr, SREG_CS, len);
}

uint8_t * get_mem_addr() {
	return hw_mem;
}

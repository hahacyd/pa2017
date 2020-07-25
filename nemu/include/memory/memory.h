#ifndef __MEMORY_H__
#define __MEMORY_H__

#include "nemu.h"
#include "memory/mmu/segment.h"
#include "memory/mmu/page.h"
#include "memory/mmu/tlb.h"

// 1MB memory
#define MEM_SIZE_B 128*1024*1024
extern uint8_t hw_mem[];
extern uint64_t hw_mem_access_time;
typedef struct {
	uint32_t vaild_bit:1;
	uint32_t temp:17;
	uint32_t note:14;
	uint8_t memory_block[64];
}Mem_Row;

typedef struct{
	Mem_Row mem_row[8];
}Mem_Group;

typedef struct{
	Mem_Group mem_group[128];
}cache;
cache L1_dcache;
Mem_Row* find_replaced_block(Mem_Group* s);

void print_mem_row(Mem_Row* s);
uint32_t cache_read(paddr_t paddr,size_t len,cache* L1);
uint32_t cache_write(paddr_t paddr,size_t len,uint32_t data,cache* L1);
// read memory with physical address and size of bytes
uint32_t paddr_read(paddr_t paddr, size_t len);

// write data to memory with physical address and size of bytes
void paddr_write(paddr_t paddr, size_t len, uint32_t data);

// read memory with linear address and size of bytes
uint32_t laddr_read(laddr_t laddr, size_t len);

// write data to memory with linear address and size of bytes
void laddr_write(laddr_t laddr, size_t len, uint32_t data);

// read memory with virtual address and size of bytes
uint32_t vaddr_read(vaddr_t vaddr, uint8_t sreg, size_t len);

// write data to memory with virtual address and size of bytes
void vaddr_write(vaddr_t vaddr, uint8_t sreg, size_t len, uint32_t data);

// initialize the memory by clearing it
void init_mem();
void init_cache();
// fetch an instruction
uint32_t instr_fetch(vaddr_t vaddr, size_t len);

//uint32_t segment_translate(uint32_t vaddr,uint8_t sreg);

// print memory start from physical address addr and size len bytes
uint8_t * get_mem_addr();



#endif

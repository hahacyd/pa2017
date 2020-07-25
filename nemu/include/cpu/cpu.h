#ifndef __CPU_H__
#define __CPU_H__
// interface for cpu functions 
#include "nemu.h"
#include "cpu/reg.h"
#include "cpu/alu.h"
#include "cpu/reg_fpu.h"

extern CPU_STATE cpu;
void set_ZF(uint32_t result);
void set_SF(uint32_t result);
void set_OF_add(uint32_t result,uint32_t src,uint32_t dest);
void set_PF(uint32_t result);
void set_CF_add(uint32_t result,uint32_t src);
void set_CF_adc(uint32_t result,uint32_t src,uint32_t dest);
void set_CF_sub(uint32_t src,uint32_t dest);
//void set_CF_sbb(uint32_t src,uint32_t dest);
void set_OF_sub(uint32_t res,uint32_t src,uint32_t dest);
// initialize the cpu states
void set_CF_sbb(uint32_t res,uint32_t src,uint32_t dest);
void set_OF_sbb(uint32_t res,uint32_t src,uint32_t dest);
void set_CF_shl(uint32_t res,uint32_t src,uint32_t dest,uint32_t data_size);
void set_OF_shl(uint32_t res,uint32_t dest);
void set_OF_CF_and_or_xor();
void set_SF_shl(uint32_t res,uint32_t data_size);
void set_ZF_shl(uint32_t res,uint32_t data_size);
void set_PF_shl(uint32_t res,uint32_t data_size);


void set_CF_sar(uint32_t src,uint32_t dest,uint32_t data_size); 
void set_CF_shr(uint32_t res,uint32_t src); 
void set_CF_OF_mul(uint64_t res,uint32_t data_size);
void init_cpu();

// execute n instructions starting from the current eip
// change eip according to the length of the instruction in each step
void exec(uint32_t n);

// execute an instruction pointed by the current eip
// return the length of the instruction
int exec_inst();


// test the cpu
void alu_test();

#endif

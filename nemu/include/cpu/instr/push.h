#ifndef __INSTR_PUSH_H__ 
#define __INSTR_PUSH_H__
make_instr_func(push_eBP);
make_instr_func(push);
make_instr_func(push_rm_v);
make_instr_func(push_r_v);
make_instr_func(push_i_b);
make_instr_func(push_i_v);
make_instr_func(pusha);
void push_w(uint16_t x);
void push_l(uint32_t x);
void push_free(uint32_t x,uint32_t size);
#endif

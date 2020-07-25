#include "cpu/instr.h"

static void instr_execute_1op_cc_pass() {
	operand_read(&opr_src);
	cpu.eip += sign_ext(opr_src.val, opr_src.data_size);
}

static void instr_execute_1op_cc_fail() {
	//printf("cf = %x\nzf = %x\nsf = %x\n",cpu.eflags.CF,cpu.eflags.ZF,cpu.eflags.SF);
	/* Do nothing */}

#define jcc_helper(suffix) \
	make_instr_impl_1op_cc(j, i, suffix, e) \
	make_instr_impl_1op_cc(j, i, suffix, a) \
	make_instr_impl_1op_cc(j, i, suffix, b) \
	make_instr_impl_1op_cc(j, i, suffix, g) \
	make_instr_impl_1op_cc(j, i, suffix, l) \
	make_instr_impl_1op_cc(j, i, suffix, o) \
	make_instr_impl_1op_cc(j, i, suffix, p) \
	make_instr_impl_1op_cc(j, i, suffix, s) \
	make_instr_impl_1op_cc(j, i, suffix, ae) \
	make_instr_impl_1op_cc(j, i, suffix, ge) \
	make_instr_impl_1op_cc(j, i, suffix, le) \
	make_instr_impl_1op_cc(j, i, suffix, na) \
	make_instr_impl_1op_cc(j, i, suffix, ne) \
	make_instr_impl_1op_cc(j, i, suffix, no) \
	make_instr_impl_1op_cc(j, i, suffix, np) \
	make_instr_impl_1op_cc(j, i, suffix, ns) \

	make_instr_impl_1op_cc(j, i, v, be)
jcc_helper(near)
jcc_helper(short_)
make_instr_impl_1op_cc(j, i, short_, ecxz)
/*static inline bool condition_g(){
	return cpu.eflags.ZF == 0 && (cpu.eflags.CF == cpu.eflags.OF);
}*/

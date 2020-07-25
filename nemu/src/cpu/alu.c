#include "cpu/cpu.h"

uint32_t alu_add(uint32_t src, uint32_t dest) {
	uint32_t res = 0;
	res = dest + src;
	set_CF_add(res,src);
	set_PF(res);
	//set_AF();
	set_ZF(res);
	set_SF(res);
	set_OF_add(res,src,dest);


	
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
	return res;
}

uint32_t alu_adc(uint32_t src, uint32_t dest) {
	uint32_t res = 0; 
	res = dest + src + cpu.eflags.CF;
	set_CF_adc(res,src,dest);
	set_PF(res);
	//set_ZF(res);
	set_ZF(res);
	set_SF(res);
	set_OF_add(res,src,dest);
	return res;
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
}


uint32_t alu_sub(uint32_t src, uint32_t dest) {
	uint32_t res = dest - src;
	set_PF(res);
	set_ZF(res);
	set_SF(res);
	set_CF_sub(src,dest);
	set_OF_sub(res,src,dest);
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");#	assert(0);
//	assert(0);
	return res;
}

uint32_t alu_sbb(uint32_t src, uint32_t dest) {
	uint32_t res = dest - src - cpu.eflags.CF;
	set_PF(res);
	set_SF(res);
	set_ZF(res);
	set_OF_sub(res,src,dest);
	set_CF_sbb(res,src,dest);
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
	return res;
}


uint64_t alu_mul(uint32_t src, uint32_t dest, size_t data_size) {
	uint64_t res = (uint64_t)src * (uint64_t)dest;
	//set_ZF(res);
	//set_PF(res);
	//set_SF(res);
	set_CF_OF_mul(res,data_size);
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
	return res;
}

int64_t alu_imul(int32_t src, int32_t dest, size_t data_size) {
	int64_t res = (uint64_t)src * dest;
	//printf("alu_imul:src = %x dest = %x resl = %x resh = %x\n",src,dest,(uint32_t)res,(uint32_t)(res>>32));	
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
	return res;
}

uint32_t alu_div(uint64_t src, uint64_t dest, size_t data_size) {
	uint32_t res = dest / src;
	set_ZF(res);
	set_PF(res);
	set_SF(res);
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
	return res;
}

int32_t alu_idiv(int64_t src, int64_t dest, size_t data_size) {
	uint32_t res = dest / src;
	
	set_ZF(res);
	set_PF(res);
	set_SF(res);
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
	return res;
}

uint32_t alu_mod(uint64_t src, uint64_t dest) {
	uint32_t res = dest % src;	
	set_ZF(res);
	set_PF(res);
	set_SF(res);
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
	return res;
}

int32_t alu_imod(int64_t src, int64_t dest) {
	uint32_t res = dest % src;	
	set_ZF(res);
	set_PF(res);
	set_SF(res);
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
	return res;
}

uint32_t alu_and(uint32_t src, uint32_t dest) {
	uint32_t res = src & dest;	
	set_ZF(res);
	set_PF(res);
	set_SF(res);

	set_OF_CF_and_or_xor();
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
	return res;
}

uint32_t alu_xor(uint32_t src, uint32_t dest) {
	uint32_t res = src ^ dest;
	set_ZF(res);
	set_PF(res);
	set_SF(res);
	
	set_OF_CF_and_or_xor();
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
	return res;
}

uint32_t alu_or(uint32_t src, uint32_t dest) {
	uint32_t res = src | dest;
	set_ZF(res);
	set_PF(res);
	set_SF(res);

	//printf("src = %x dest = %x res = %x\n",src,dest,res);
	set_OF_CF_and_or_xor();
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
	return res;
}

uint32_t alu_shl(uint32_t src, uint32_t dest, size_t data_size) {
	uint32_t res = 0;
	if(data_size != 32){

		uint32_t high = (dest >>data_size) << data_size;
		uint32_t low = 0;
		for(uint32_t i = 0; i < data_size - 1; i++){
			low = (low + 1)<<1;
		}
		low++;
		res = ((dest <<src) & low) | high;
		if(high == 0xffffffff){
		printf("off\n");
		}
	}
	else{
		res = dest << src;
	}
	set_ZF_shl(res,data_size);
	set_PF_shl(res,data_size);
	set_SF_shl(res,data_size);
	set_OF_shl(res,dest);
	set_CF_shl(res,src,dest,data_size);
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
	return res;
}

uint32_t alu_shr(uint32_t src, uint32_t dest, size_t data_size) {
	uint32_t res;
	if(data_size != 32){
		res = (dest >>data_size) << data_size;
		uint32_t low = 0;
		for(uint32_t i = 0; i < data_size - 1; i++){
			low = (low + 1)<<1;
		}
		low++;
		low = low & dest;
		low = low >> src;         //  low bit >> finish

		res = res | low;
	}
	else{
		res = dest >>src;
	}
	set_ZF_shl(res,data_size);
	set_PF_shl(res,data_size);
	set_SF_shl(res,data_size);
	set_OF_shl(res,dest);
	set_CF_shr(dest,src);

//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
	return res;
}

uint32_t alu_sar(uint32_t src, uint32_t dest, size_t data_size) {		
	uint32_t res;
	uint32_t low = 0;
	if(data_size != 32){
		res = (dest >>data_size) << data_size;
		for(uint32_t i = 0; i < data_size - 1; i++){
			low = (low + 1)<<1;
		}
		low++;
		//src = src & low;
		low = low & dest;
		low = low >> src;         //  low bit >> finish

		res = res | low;
	}
	else{
		res = dest >>src;
	}
	if((dest >> (data_size - 1))&0x1){   //there is a big bug,2017-10-14 11:27
		low = 0;
		for(uint32_t i = 0; (i < data_size - 1)&&( i < src - 1) ; i++){
			low = (low + 1)<<1;
		}
		low++;
		uint32_t pk = (src >= data_size)?0:data_size - src;
		low = low << pk;
		res = res | low;	

	}
	set_ZF_shl(res,data_size);
	set_PF_shl(res,data_size);
	set_SF_shl(res,data_size);
	//set_OF_shl(res,dest);
	set_CF_sar(src,dest,data_size);

//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
	return res;

}

uint32_t alu_sal(uint32_t src, uint32_t dest, size_t data_size) {
	uint32_t res = 0;
	if(data_size != 32){

		uint32_t high = (dest >>data_size) << data_size;
		uint32_t low = 0;
		for(uint32_t i = 0; i < data_size - 1; i++){
			low = (low + 1)<<1;
		}
		low++;
		res = ((dest <<src) & low) | high;
		if(high == 0xffffffff){
		printf("off\n");
		}
	}
	else{
		res = dest << src;
	}
	set_ZF_shl(res,data_size);
	set_PF_shl(res,data_size);
	set_SF_shl(res,data_size);
	set_OF_shl(res,dest);
	set_CF_shl(res,src,dest,data_size);
//	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
//	assert(0);
	return res;

}

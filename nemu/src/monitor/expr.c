#include "nemu.h"
#include "cpu/reg.h"
#include "memory/memory.h"
#include "elf.h"
#include <stdlib.h>
//#include <cstdlib.h>

/* We use the POSIX regex functions to process regular expressions.
 * Type 'man regex' for more information about POSIX regex functions.
 */
#include <sys/types.h>
#include <regex.h>
extern CPU_STATE cpu;
enum {
	EAX = 100,
	ECX = 101,
	EDX = 102,
	EBX = 103,
	ESP = 104,
	EBP = 105,
	ESI = 106,
	EDI = 107,
	EIP = 108,
	NOTYPE = 256, 
	DEREF = 500,                         //quote ; like *$eax;
	EQ = 0,
	NEQ = 1,
	AND = 2,
	OR = 3,
	LEFT_BRACKET = 400, 
	RIGHT_BRACKET = 401,
	NUM_D = 48, 
	NUM_X = 49, 
	SWAP = 4,
	OBJECT = 600,
	//GLOBAL_VALUE = 601
	/* TODO: Add more token types */

};
static struct rule {
	char *regex;
	int token_type;
} rules[] = {

	/* TODO: Add more rules.
	 * Pay attention to the precedence level of different rules.
	 */

	{"0x[0-9a-f]+", NUM_X},
	{"\\$eax",EAX},
	{"\\$ecx",ECX},
	{"\\$edx",EDX},
	{"\\$ebx",EBX},
	{"\\$esp",ESP},
	{"\\$ebp",EBP},
	{"\\$esi",ESI},
	{"\\$edi",EDI},
	{"\\$eip",EIP},
	{"\\(",LEFT_BRACKET},
	{"\\)",RIGHT_BRACKET},
	{"[0-9]+", NUM_D},
	{" +",NOTYPE},				// white space
	{"\\*",	'*'},				
	{"/",	'/'},				
	{"-",	'-'},				
	{"\\+", '+'},
	{"==", EQ},
	{"!=",NEQ},
	{"&&",AND},
	{"\\|\\|",OR},
	{"!",SWAP},
	{"[a-z0-9A-Z_-]+", OBJECT},
};

#define NR_REGEX (sizeof(rules) / sizeof(rules[0]) )

static regex_t re[NR_REGEX];

/* Rules are used for more times.
 * Therefore we compile them only once before any usage.
 */
void init_regex() {
	int i;
	char error_msg[128];
	int ret;

	for(i = 0; i < NR_REGEX; i ++) {
		ret = regcomp(&re[i], rules[i].regex, REG_EXTENDED);
		if(ret != 0) {
			regerror(ret, &re[i], error_msg, 128);
			assert(ret != 0);
		}
	}
}

typedef struct token {
	int type;
	char str[32];
} Token;

Token tokens[32];
int nr_token;

uint32_t look_up_symtab(char* sym,bool* success);
static bool make_token(char *e) {
	int position = 0;
	int i;
	regmatch_t pmatch;
	
	nr_token = 0;
	//
	//printf("test : args = %s\n",e);
	while(e[position] != '\0') {
		/* Try all rules one by one. */
		for(i = 0; i < NR_REGEX; i ++) {
			if(regexec(&re[i], e + position, 1, &pmatch, 0) == 0 && pmatch.rm_so == 0) {
				char *substr_start = e + position;
				int substr_len = pmatch.rm_eo;
				//printf("match regex[%d] at position %d with len %d: %.*s\n", i, position, substr_len, substr_len, substr_start);
				position += substr_len;

				/* TODO: Now a new token is recognized with rules[i]. 
				 * Add codes to perform some actions with this token.
				 */


				tokens[nr_token].str[substr_len] = '\0';
				//printf("here is make_token():str = %s\n",substr_start);
				if(rules[i].token_type != NOTYPE){
					for(int j = 0;j < substr_len;j++){
						tokens[nr_token].str[j] = substr_start[j];
					}
				}

				switch(rules[i].token_type) {
					default: tokens[nr_token].type = rules[i].token_type;
							 nr_token ++;
				}
				if(rules[i].token_type == OBJECT){

					bool succ_flag = 0;
					look_up_symtab(tokens[nr_token - 1].str,&succ_flag);
					if(!succ_flag){
						printf("can`t find function or object of \"%s\"\n",tokens[nr_token - 1].str);
						nr_token--;
						return false;
					}
					/*else{

						tokens[nr_token - 1].str = itoa(res);
					}*/
				}
				if(rules[i].token_type == NOTYPE){
						nr_token--;
				}	
				break;
			}
		}

		if(i == NR_REGEX) {
			printf("no match at position %d\n%s\n%*.s^\n", position, e, position, "");
			return false;
		}
	}

	return true; 
}
bool is_inparent(int pos,int p,int q){
	int left = pos;
	int right = pos;
	for(;(tokens[left].type != LEFT_BRACKET && tokens[left].type != RIGHT_BRACKET) && left > p;left--) ;	
	for(;(tokens[right].type != RIGHT_BRACKET && tokens[right].type != LEFT_BRACKET)  && right < q;right++) ;	

	/*if(pos == 4 && p == 3 && q == 5){
		printf("left = %d  right = %d\n",tokens[left].type,tokens[right].type);
	}*/
	//return (p < left)&&(right < q);
	return (tokens[left].type == LEFT_BRACKET) && (tokens[right].type == RIGHT_BRACKET);   //if return 1,means pos is in parent;

}
#define length_of(name)\
	sizeof(name)/sizeof(char)
int find_dominant_op(int ip,int iq){
	int pos = iq;
	/*for(int i = 0; i < nr_token; i++){
		printf("find:type = %d\n",tokens[i].type);
	}*/
	char level0[] = {EQ,NEQ,AND,OR};
	char level1[] = {'+','-'};
	char level2[] = {'*','/'};
	//printf("pos = %d\n",is_inparent(3,ip,iq));
	for(pos = iq;pos >= ip;pos--){
		for(int j = length_of(level0) - 1; j >= 0 && !is_inparent(pos,ip,iq);j--){
			if(level0[j] == tokens[pos].type){
				return pos;
			}
		}
	}
	for(pos = iq;pos >= ip;pos--){
		for(int j = length_of(level1) - 1; j >= 0 && !is_inparent(pos,ip,iq);j--){
			if(level1[j] == tokens[pos].type){
				return pos;
			}
		}
	}

	for(pos = iq;pos >= ip;pos--){
		for(int j = length_of(level2) - 1; j >= 0 && !is_inparent(pos,ip,iq);j--){
			if(level2[j] == tokens[pos].type){
				return pos;
			}
		}
	}
	return -1;
}

bool check_parentheses(int p,int q){
	//printf("p = %d q = %d left = %d right = %d\n",p,q,tokens[p].type,tokens[q].type);
	if(q - p <= 1 || tokens[p].type != LEFT_BRACKET || tokens[q].type != RIGHT_BRACKET){
		//printf("left = %d right = %d\n",tokens[p].type,tokens[p].type);
		return 0;
	}
	int len = 0;
	bool flag = 0;
	int left = 0;
	int right = 0;
	for(int i = p + 1;i <= q;i++){
		if(tokens[i].type == LEFT_BRACKET){
			left++;
			len++;
			flag = 1;
		}
		else if(tokens[i].type == RIGHT_BRACKET){
			right++;
			len--;
		}
		else ;
		if(0 == len && i != q && flag == 1){
			return 0;
		}
	}
	/*if(left != right){
			return -1;
	}*/

	return 1;
}
bool temp = 1;
uint32_t eval(int p,int q){
	uint32_t res = 0;
	//printf("eval : SWAP = %d p = %d q = %d type = %d\n",SWAP,p,q,tokens[p].type);
	if(p > q){
		printf("here is eval(): bad expression!  p = %d q = %d\n",p,q);
//		return 0;
		assert(0);
	}
	else if(p == q){
		switch(tokens[p].type){
			case NUM_X: sscanf(tokens[p].str,"%x",&res);break;
			case NUM_D: sscanf(tokens[p].str,"%d",&res);break;
			case EAX: res = cpu.eax;break;
			case ECX: res = cpu.ecx;break;
			case EDX: res = cpu.edx;break;
			case EBX: res = cpu.ebx;break;
			case ESP: res = cpu.esp;break;
			case EBP: res = cpu.ebp;break;
			case ESI: res = cpu.esi;break;
			case EDI: res = cpu.edi;break;
			case EIP: res = cpu.eip;break;
			case OBJECT:res = look_up_symtab(tokens[p].str,&temp);break;
			default :res = 0;break;
		}
	//	printf("here is eval(): res = %d\n",res);
	//	printf("here is eval(): tokens.str = %s\n",tokens[p].str);
		return res;
	}
	else if(find_dominant_op(p,q) == -1  // for sure don`t have dominant operate;
		   	&& tokens[p].type == DEREF){

		return vaddr_read(eval(p+1,q),0,4);
	}
	else if(find_dominant_op(p,q) == -1  // for sure don`t have dominant operate;
		   	&& tokens[p].type == SWAP){
		//printf("i am coming p = %d q = %d\n",p,q);
		return !eval(p+1,q);
	}
	else if(check_parentheses(p,q) == true){
		return eval(p+1,q - 1);
	}
	else{
		uint32_t op = find_dominant_op(p,q);
		//printf("2 op = %d p = %d q = %d\n",op,p,q);
		//if(p == 3 && q == 5){
			//printf("eval :op = %d p = %d q = %d\n",op,p,q);
		//	printf("eval: nr_token = %d\n",nr_token);
		//}
		int type = tokens[op].type;	
		uint32_t val1 = eval(p,op - 1);
		uint32_t val2 = eval(op + 1,q);
		switch(type){
			case '+':res = val1 + val2;break;
			case '-':res = val1 - val2;break;
			case '*':res = val1 * val2;break;
			case '/':res = val1 / val2;break;
			case NEQ:res = val1 != val2;break;
			case EQ :res = val1 == val2;break;
			case AND:res = val1 && val2;break;
			case OR :res = val1 || val2;break;
			default :res = 0;
		}
	}
	return res;
}

uint32_t expr(char *e, bool *success) {
	if(!make_token(e)) {
		*success = false;
		return 0;
	}
	*success = true;
	//printf("\nPlease implement expr at expr.c\n");
	//assert(0);
	for(int i = 0; i < nr_token; i++){
		if(tokens[i].type == '*'){
			if(i == 0)
				tokens[i].type = DEREF;

			int t = tokens[i - 1].type;
			if(t == '+' || t == LEFT_BRACKET
					   || t == '/'
					   || t == '*'
					   || t == '-'
					   )
			tokens[i].type = DEREF;
		}
	}
	//printf("expr nr_token = %d\n",nr_token);
	/*for(int i = 0; i < nr_token; i++){
		printf("type = %d\n",tokens[i].type);
	}*/
	return 	eval(0,nr_token - 1);
}

//	make_instr_impl_1op_cc(j, i, suffix, ns) 

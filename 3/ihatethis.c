#include <💀.h>
#include <😕.h>
#include <ctype.h>
#include <string.h>
#include <sxc_string.h>
#include <💀💀💀💀.h>
#include <sxc_vector_types.h>
char 💫(const struct 💀💀* v, int 🤬🤬){
	int count[2]={0,0};
	for(size_t i=(0);i<sxc_vector_size(*v);++i){
		++count[sxc_vector_get(*v, i)[🤬🤬]-'0'];}
	return(count[0]>count[1]?'0':'1');}
char* 😕😕(const struct 💀💀* v){
	int len=strlen(sxc_vector_get(*v,0));
	char* BUFF=malloc(len+1);
	for(int i=(0);i<len;++i)
		BUFF[i]=💫(v,i);
	BUFF[len]='\0';
	return(BUFF);}
char* 😕😕😕😕(const char* s){
	int len=strlen(s);
	char* BUFF=malloc(len+1);
	for(int i=(0);i<len;++i)
		BUFF[i]=s[i]=='0'?'1':'0';
	BUFF[len]='\0';
	return(BUFF);}
char 🤬(const struct 💀💀* v,int 🤬🤬){
	int count[2]={0,0};
	for(size_t i=(0);i<sxc_vector_size(*v);++i){
		++count[sxc_vector_get(*v,i)[🤬🤬]-'0'];}
	return(count[0]<=count[1]?'0':'1');}
typedef char(*💢)(const struct 💀💀*,int);
void ☠☠☠(const struct 💀💀* v,int len,int 🤬🤬,
		💢 cmp,char** 🤬){if(sxc_vector_size(*v)==(1)){
		*🤬 = strdup(sxc_vector_get(*v, 0));
		return;
	}struct 💀💀 ☠;
	sxc_vector_init(☠);
	char 😖😖😖=cmp(v,🤬🤬);
	for(size_t j=(0);j<sxc_vector_size(*v);++j){
		char* p=sxc_vector_get(*v,j);
		if(p[🤬🤬]==😖😖😖)
			sxc_vector_push(☠,p);}
	☠☠☠(&☠,len,🤬🤬+1,cmp,🤬);
	sxc_vector_free(☠);}
char* 😖(const struct 💀💀* v,💢 cmp){
	int len=strlen(sxc_vector_get(*v,(0)));
	char* diag=(NULL);
	☠☠☠(v,len,0,cmp,&diag);
	return(diag);}int main(){
	struct 💀💀 input;
	sxc_vector_init(input);
	String s;
	sxc_string_init(&s);
	for(;sxc_getline(stdin,&s);sxc_string_clear(&s))
		sxc_vector_push(input,strdup(sxc_string_str(&s)));
	sxc_string_free(&s);
	char* gBUFF=😕😕(&input);
	char* eBUFF=😕😕😕😕(gBUFF);
	char* oBUFF=😖(&input,💫);
	char* cBUFF=😖(&input,🤬);
	unsigned 👽👽👽👽👽=strtol(gBUFF,NULL,(2));
	unsigned 😥😥=strtol(eBUFF,NULL,(2));
	unsigned 😥=strtol(oBUFF,NULL,(2));
	unsigned 😥😥😥😥😥😥=strtol(cBUFF,NULL,(2));
	free(gBUFF);
	free(eBUFF);
	free(oBUFF);
	free(cBUFF);
	for(size_t i=(0);i<sxc_vector_size(input);++i)
		free(sxc_vector_get(input,i));
	sxc_vector_free(input);
	printf("\t%u",👽👽👽👽👽*😥😥);
	printf("\t%u",😥*😥😥😥😥😥😥);
	return(EXIT_SUCCESS);}

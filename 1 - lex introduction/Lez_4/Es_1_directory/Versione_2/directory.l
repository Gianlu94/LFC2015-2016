%{

%}

%s AA BB CC

%%
a	{ECHO;BEGIN(AA);}
b	{ECHO;BEGIN(BB);}
c	{ECHO;BEGIN(CC);}
<AA>directory	printf("first");
<BB>directory	printf("second");
<CC>directory	printf("third");
.	ECHO;
\n 	ECHO;

%%

int main(){
	yylex();
	return 0;
}

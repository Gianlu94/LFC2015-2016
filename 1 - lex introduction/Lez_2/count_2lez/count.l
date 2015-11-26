%{
	int count = 0;
%}

%%

[0-9]+ {count++;}
\n
.

%%
int main(void){
	yylex();
	printf("I numeri interi sono %d \n", count);
	return 0;
}

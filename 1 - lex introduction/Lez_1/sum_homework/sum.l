%{
	int sum = 0;
%}

%%

[0-9]+  { sum = sum + atoi(yytext);}
.
\n

%%
int main(void){
	yylex();
	printf("La somma è %d \n",sum);
	return 0;
}


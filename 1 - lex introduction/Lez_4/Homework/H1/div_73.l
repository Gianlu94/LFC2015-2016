%{

%}

%%
[0-9]+	{if ((atoi(yytext) % 7) == 0){
			printf("Numero = %d -- %d\n",atoi(yytext),atoi(yytext)+3);
		};}
.
\n
%%
main(){
	yylex();
	return 0;
}

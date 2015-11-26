%{

%}

%%
[a-zA-z]	{printf("La rappresentazione di %s è %d \n",yytext,(int)yytext[0]);}
.
\n

%%

main(){
	yylex();
}

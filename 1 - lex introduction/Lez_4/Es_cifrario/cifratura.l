%{

%}

%%
[a-z]		{printf("%c - %c \n",yytext[2],(yytext[0]-'a'+3)%('z' -'a'+1)+'a');}
[A-Z]		{printf("%c - %c \n",yytext[2],(yytext[0]-'A'+3)%('Z' -'A'+1)+'A');}
\n

%%

main(){
	yylex();
}

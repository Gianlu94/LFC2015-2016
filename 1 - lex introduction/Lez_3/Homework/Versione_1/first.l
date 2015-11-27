%{

%}

%%
^[a-z] {printf("%c - %d\n",yytext[0],yytext[0]-'a'+1);} 
.
\n

%%

int main(){
	yylex();
}

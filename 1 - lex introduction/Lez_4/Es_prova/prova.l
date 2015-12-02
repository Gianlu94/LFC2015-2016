%{

%}

%%
[^ .\n] {printf("ciao\n");}



%%

int main(){
	yylex();
	return 0;
}

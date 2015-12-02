%{
	int flag;
%}

%%
^a		
^b
^c
%%

int main(){
	yylex();
	return 0;
}

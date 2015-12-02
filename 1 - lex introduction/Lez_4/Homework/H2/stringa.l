%{
	int count = 0;
	//\"[^\"]*((\\\"[^\"]*\\\")|([^\"]*))[^\"]*\" count++;
%}


%%
\"[^\"]*((\\\"[^\"]*\\\")*|([^\"]*))[^\"]*\" count++;
.
\n
%%

int main(){
	yylex();
	if (count > 0)
		printf("Riconosciute %d stringhe quotate\n",count);	
	else
		printf("Riconosciute 0 stringhe quotate");	
	return 0;
}

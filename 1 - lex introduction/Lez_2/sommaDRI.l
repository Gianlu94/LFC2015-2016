%{
	int count = 0;
%}

type_pattern [0-9 ^,]

%%
{type_pattern}+	{count++;}

%%

main(){
	yylex();
	printf("Trovati : ", count);
}
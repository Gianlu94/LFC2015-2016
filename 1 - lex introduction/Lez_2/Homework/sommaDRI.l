%{
	int count = 0;
%}


%%
[0-9]+,[0-9]+	{count+=3;}
[0-9]+			{count++;}	
\n
%%

main(){
	yylex();
	printf("Trovati : %d \n", count);
}
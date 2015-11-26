%{
	int c = 0;
%}

%%
[0-9]+,[0-9]+ {c++;}
.
\n
%%

main(){
	yylex();
	printf("I numeri reali sono %d \n", c);
}

%{
	int i = 0;
	int r = 0;
%}
%%
[0-9]+,[0-9]+ {r++;}
[0-9]+	{i++;}
.
\n

%%

main(){
	yylex();
	printf ("I numeri reali sono %d mentre i numeri interi sono\n",i);
	printf ("I numeri reali sono %d mentre i numeri reali sono\n",r);
	return 0;
}

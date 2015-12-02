%{
	int he = 0;
	int she = 0;
%}

%%
he	{he++;}
she	{she++;REJECT;}
.
\n

%%

main(){
	yylex();
	printf("HE %d , SHE %d ",he,she);
	return 0;
}

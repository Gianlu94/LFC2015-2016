%{
	int c = 0;
%}

%%

([0-9]+)|([0-9]+,[0-9]+)  {c++;}
.
\n

%%
int main(void){
	yylex();
	printf("Il conteggio è %d \n",c);
	return 0;
}


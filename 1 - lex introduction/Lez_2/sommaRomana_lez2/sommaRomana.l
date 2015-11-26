%{
	int sum = 0;
%}

%%

I		{sum = sum + 1;}
V		{sum+= 5;}
X		{sum+= 10;}
L 		{sum+= 50;}
D		{sum+= 500;}
M 		{sum+= 1000;}
\n

%%

int main(void){
	yylex();
	printf("La somma e' %d \n",sum);
	return 0;
}

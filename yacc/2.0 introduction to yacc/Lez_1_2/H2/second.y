
%token a,b,c
%%

S : a | A b C ;
A : a;
C : A | c;

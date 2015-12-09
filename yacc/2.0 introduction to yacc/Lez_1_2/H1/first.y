
%token a,b

%%

S : A B ;
A : a | /*empty*/ ;
B : B b | b;

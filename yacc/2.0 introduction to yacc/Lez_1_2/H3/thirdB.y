
%token bool,id,IF,ELSE
%left ELSE;
%left IF,'(',')'
%%

Statement : IF '(' Boolexpr ')' Statement |
	    IF '(' Boolexpr ')' Statement ELSE Statement |
	    Expr;

Boolexpr : bool;

Expr : id;

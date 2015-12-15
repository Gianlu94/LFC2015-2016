/** calculator calc.y
 * origin source by Tom Niemann at epaperpress.com/lexandyacc
 * revision Lorenzo Massimo Gramola (2014)
 * revision Lorenzo Massimo Gramola (2015): added node identifier for graph building
*/

%{
    #include <stdio.h>
    #include <stdlib.h>
    #include <stdarg.h>
    #include "calc.h"
    
    int yylex(void);
    
    void yyerror(char *s);
%}


%token INTEGER         /* NOTE THIS DELCARATION*/
%left '+' '-'
%left '*' '/'



%%

program:
        expr	{printf("\n");}
        |                   
        ;


expr:
        INTEGER                 {$$ = $1;} //manage constants
        | expr '+' expr         {$$ = $1 + $3; printf("+ ");}
        | expr '-' expr         {$$ = $1 - $3; printf("- ");}
        | expr '*' expr         {$$ = $1 * $3; printf("* ");}
        | expr '/' expr         {$$ = $1 / $3; printf("/ ");}
        | '(' expr ')'          {$$ = $2;}
        ;

%%

void yyerror(char *s){
    fprintf(stdout,"%s\n",s);
}
int main(){
    yyparse();
    return 0;
}

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

%union {
    int iValue;                 /* integer value */
    char sIndex;                /* symbol table index */
    nodeType *nPtr;             /* node pointer */
};                              /* this cause a new type def to be generated,
                                 which is a union of the above and and is called
                                 YYSTYPE. Then there is the declaration
                                 extern YYSTYPE yylval which declares yylval as 
                                 an external variable
                                 */

%token <iValue> INTEGER         /* NOTE THIS DELCARATION*/

%left '+' '-'
%left '*' '/'

%%


expr:
        INTEGER				{ printf("%d ",yylval.iValue); }
        | expr '+' expr		{ printf("%c ",yylval.sIndex); }
        | expr '-' expr     { printf("%c ",yylval.sIndex); }
		| expr '*' expr		{ printf("%c ",yylval.sIndex); }
		| expr '/' expr		{ printf("%c ",yylval.sIndex); }
        ;




%%

void yyerror(char *s){
    fprintf(stdout,"%s\n",s);
}
int main(){
    yyparse();
    return 0;
}

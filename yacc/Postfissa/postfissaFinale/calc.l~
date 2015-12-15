/** calculator calc.l
 * origin source by Tom Niemann at epaperpress.com/lexandyacc
 * revision Lorenzo Massimo Gramola (2014)
 * revision Lorenzo Massimo Gramola (2015) 

 */
%{
    #include <stdlib.h>
    #include "calc.h" 
    #include "y.tab.h" 

    void yyerror(char *);
%}

%%

[0-9]+          {
					printf("%d ",atoi(yytext));
                    yylval = atoi(yytext);
                    return INTEGER;
                }

[-+()*/]   		{ return *yytext; }


[ \t\n]         ;/* skip whitespace */

.               yyerror("Unknown character");

%%

int yywrap(void) {
    return 1;
}

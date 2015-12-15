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


[0-9]+		{
            	//yylval.iValue= atoi(yytext);
           		//return INTEGER;
				printf("%d",atoi(yytext[0]));
            }

[-+*/]   	{ 
				yylval.sIndex = yytext[0];  
				return *yytext; 
			}

[ \t\n]         ;/* skip whitespace */

.               yyerror("Unknown character");

%%

int yywrap(void) {
    return 1;
}

%{

%}

%%
^[0-9]+		{printf("      <tr>\n        <td>%d</td>",atoi(yytext));}
[0-9]+		{printf("        <td>%d</td>",atoi(yytext));}
,					{printf("\n");}
\n				{printf("\n      </tr>\n");}

%%
int main(){
	printf("<html>\n  <head>\n  </head>\n  <body>\n    <table>\n");
	yylex();
	printf("    </table>\n  </body>\n</html>\n");
	return 0;
}

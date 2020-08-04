
%%
%class search
%standalone
%line
%column
 
Exponent = [eE] [+-]? [0-9]+
LineTerminator = \r|\n|\r\n
InputCharacter = [^\r\n]
WhiteSpace     = {LineTerminator} | [ \t\f]
%%

-?([0-9]+ \.[0-9]*)([a-z]|[A-Z]|"_")+ {System.out.printf("***ERROR => [%s] at line %d , column%d\n",
									 yytext(),yyline,yycolumn);
									}
( \.[0-9]+)([a-z]|[A-Z]|"_")+ {System.out.printf("***ERROR => [%s] at line %d , column%d\n",
									 yytext(),yyline,yycolumn);
									}
-?(0|[1-9])+([a-z]|[A-Z]|"_")+		{System.out.printf("***ERROR => [%s] at line %d , column%d\n",
									 yytext(),yyline,yycolumn);
									}	
"X"									 {System.out.printf("***X => [%s] at line %d , column%d\n",
									 yytext(),yyline,yycolumn);
									}
"Y"									 {System.out.printf("***Y => [%s] at line %d , column%d\n",
									 yytext(),yyline,yycolumn);
									}									
									
-?([0-9]+ \. [0-9]*)|(\.[0-9]+ )	{System.out.printf("***FLOAT_NUM => [%s] at line %d , column%d\n",
                                     yytext(),yyline,yycolumn);
					                }				
					
-?(0|[1-9][0-9]*)                   {System.out.printf("***INT_NUM => [%s] at line %d , column%d\n",
									 yytext(),yyline,yycolumn);
									}	
([a-z]|[A-Z]|"_")([a-z]|[A-Z]|"_")*	{System.out.printf("***IDENTIFIER => [%s] at line %d , column%d\n",
									 yytext(),yyline,yycolumn);
									}
"="                                 {System.out.printf("***ASSIGNMENT => [%s] at line %d , column%d\n",
									 yytext(),yyline,yycolumn);
									}
"++"                                {System.out.printf("***INCREMENT => [%s] at line %d , column%d\n",
									 yytext(),yyline,yycolumn);
									}
"--"                                 {System.out.printf("***DECREMENT => [%s] at line %d , column%d\n",
									 yytext(),yyline,yycolumn);
									}
"("                                 {System.out.printf("***LEFT_PAREN => [%s] at line %d , column%d\n",
									 yytext(),yyline,yycolumn);
									}
")"                                  {System.out.printf("***RIGHT_PAREN => [%s] at line %d , column%d\n",
									 yytext(),yyline,yycolumn);
									}
"{"                                 {System.out.printf("***LEFT_BRACE => [%s] at line %d , column%d\n",
									 yytext(),yyline,yycolumn);
									}
"}" 								{System.out.printf("***RIGHT_BRACE => [%s] at line %d , column%d\n",
									 yytext(),yyline,yycolumn);
									}	
","                                 {System.out.printf("***COMMA => [%s] at line %d , column%d\n",
									 yytext(),yyline,yycolumn);
									}
";"									 {System.out.printf("***SEMICOLON => [%s] at line %d , column%d\n",
									 yytext(),yyline,yycolumn);
									}

	

									
									
									
									
									
									
							
{WhiteSpace}                   { /* ignore */ }				





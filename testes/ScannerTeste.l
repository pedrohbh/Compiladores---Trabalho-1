%{
#include <stdio.h>

%}

digito [0-9]
numero {digito}+
letra [a-zA-Z]
identificador {letra}+
newline \n
whitespace [ \t]+

%%

"if" { printf("%d: %s -> IF\n", yylineno, yytext ); }
"else" { printf("%d: %s -> ELSE\n", yylineno, yytext ); }
"int" { printf("%d: %s -> INT\n", yylineno, yytext ); }
"return" { printf("%d: %s -> RETURN\n", yylineno, yytext ); }
"void" { printf("%d: %s -> VOID\n", yylineno, yytext ); }
"while" { printf("%d: %s -> WHILE\n", yylineno, yytext ); }
"+" { printf("%d: %s -> PLUS\n", yylineno, yytext ); }
"-" { printf("%d: %s -> MINUS\n", yylineno, yytext ); }
"*" { printf("%d: %s -> TIMES\n", yylineno, yytext ); }
"/" { printf("%d: %s -> OVER\n", yylineno, yytext ); }
"<" { printf("%d: %s -> LT\n", yylineno, yytext ); }
"<=" { printf("%d: %s -> LE\n", yylineno, yytext ); }
">" { printf("%d: %s -> MT\n", yylineno, yytext ); }
">=" { printf("%d: %s -> ME\n", yylineno, yytext ); }
"==" { printf("%d: %s -> EQ\n", yylineno, yytext ); }
"!=" { printf("%d: %s -> DIFF\n", yylineno, yytext ); }
"=" { printf("%d: %s -> ASSIGN\n", yylineno, yytext ); }
";" { printf("%d: %s -> SEMI\n", yylineno, yytext ); }
"," { printf("%d: %s -> COMMA\n", yylineno, yytext ); }
"(" { printf("%d: %s -> LPAREN\n", yylineno, yytext ); }
")" { printf("%d: %s -> RPAREN\n", yylineno, yytext ); }
"[" { printf("%d: %s -> LBRACKET\n", yylineno, yytext ); }
"]" { printf("%d: %s -> RBRACKET\n", yylineno, yytext ); }
"{" { printf("%d: %s -> LKEY\n", yylineno, yytext ); }
"}" { printf("%d: %s -> RKEY\n", yylineno, yytext ); }
{numero} { printf("%d: %s -> NUM\n", yylineno, yytext ); }
{identificador} { printf("%d: %s -> ID\n", yylineno, yytext ); }
{newline} { yylineno++; }
{whitespace} { /* FAZ NADA */ }
. { printf("%d: %s -> ERROR\n", yylineno, yytext ); }

%%


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

"if" { return IF; }
"else" { return ELSE; }
"int" { return INT; }
"return" { return RETURN; }
"void" { return VOID; }
"while" { return WHILE; }
"+" { return PLUS; }
"-" { return MINUS; }
"*" { return TIMES; }
"/" { return OVER; }
"<" { return LT; }
"<=" { return LE; }
">" { return MT; }
">=" { return ME; }
"==" { return EQ; }
"!=" { return DIF; }
"=" { return ASSIGN; }
";" { return SEMI; }
"," { return COMMA; }
"(" { return LPAREN; }
")" { return RPAREN; }
"[" { return LBRACKET; }
"]" { return RBRACKET; }
"{" { return LKEY; }
"}" { return RKEY; }
{numero} { return NUM; }
{identificador} { return ID; }
{newline} { yylineno++; }
{whitespace} { /* FAZ NADA */ }
. { return ERROR; }

%%


%{
#include <stdio.h>
#include "y.tab.h"
void yyerror(char *);
%}

DIGIT [0-9]
NUMBER [-+]?{DIGIT}+\.?{DIGIT}*
LOWERCASE_LETTER [a-z]
UPPERCASE_LETTER [A-Z]
STRING \"[^\"].*\"
ALPHANUMERIC ({LOWERCASE_LETTER}|{UPPERCASE_LETTER}|{DIGIT})
LP \(
RP \)
LCB \{
RCB \}
LB \[
RB \]
IF if
ELSE else
WHILE while
FOR for
INSERT insert
DELETE delete
IN in
GET get
AND \&\&
OR \|\|
DOT \.
COMMA \,
SEMICOLON \;
COLON \:
NOT !
NOTEQUAL !=
EQUAL ==
ASSIGNMENT_OP =
SUBSET <
SUPERSET >
INTERSECTION \?
UNION \!\!
DIFFERENCE \^
CARTESIAN \%
PLUS \+
MINUS \-
MULTIPLICATION \*
DIVISION \\
FUNCTION {UPPERCASE_LETTER}{ALPHANUMERIC}*
VARIABLE {LOWERCASE_LETTER}{ALPHANUMERIC}*
RETURN return
NEWLINE [\n]
COMMENT  #.+
SPACE   [ \t]
DOLAR \$
UNDERSCORE \_
SLASH \/

%option yylineno
%%

{RETURN} return RETURN;
{NUMBER} return NUMBER;
{STRING} return STRING;
{LP} return LP;
{RP} return RP;
{LCB} return LCB;
{RCB} return RCB ;
{LB} return LB ;
{RB} return RB ;
{IF} return IF ;
{ELSE} return ELSE;
{WHILE} return WHILE;
{FOR} return FOR ;
{INSERT} return INSERT ;
{DELETE} return DELETE ;
{IN} return IN ;
{GET} return GET ;
{AND} return AND ;
{OR} return OR ;
{DOT} return DOT ;
{COMMA} return COMMA ;
{SEMICOLON} return SEMICOLON ;
{COLON} return COLON ;
{NOT} return NOT ;
{NOTEQUAL} return NOTEQUAL ;
{EQUAL} return EQUAL ;
{ASSIGNMENT_OP} return ASSIGNMENT_OP ;
{SUBSET} return SUBSET ;
{SUPERSET} return SUPERSET ;
{INTERSECTION} return INTERSECTION ;
{UNION} return UNION;
{DIFFERENCE} return DIFFERENCE ;
{CARTESIAN} return CARTESIAN  ;
{PLUS} return PLUS ;
{MINUS} return MINUS ;
{MULTIPLICATION} return MULTIPLICATION;
{DIVISION} return DIVISION;
{FUNCTION} return FUNCTION;
{VARIABLE} return VARIABLE;
{COMMENT} return COMMENT;
{NEWLINE} return NEWLINE;
{SPACE}  return SPACE;
{DOLAR} return DOLAR;
{SLASH} return SLASH;
%%

int yywrap(void)
{
   return 1;
}

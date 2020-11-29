%{
#include <stdio.h>
#include <stdlib.h>
int yylex(void);
void yyerror(char* s);
extern int yylineno;
%}

%token DIGIT
%token NUMBER
%token LOWERCASE_LETTER
%token UPPERCASE_LETTER
%token STRING
%token ALPHANUMERIC
%token LP
%token RP
%token LCB
%token RCB
%token LB
%token RB
%token IF
%token ELSE
%token WHILE
%token FOR
%token INSERT
%token DELETE
%token IN
%token GET
%token AND
%token OR
%token DOT
%token COMMA
%token SEMICOLON
%token COLON
%token NOT
%token NOTEQUAL
%token EQUAL
%token ASSIGNMENT_OP
%token SUBSET
%token SUPERSET
%token INTERSECTION
%token UNION
%token DIFFERENCE
%token CARTESIAN
%token PLUS
%token MINUS
%token MULTIPLICATION
%token DIVISION
%token FUNCTION
%token VARIABLE
%token RETURN
%token NEWLINE
%token COMMENT
%token UNDERSCORE
%token DOLAR
%token SLASH
%token SPACE

%start program

%%

program:
	stmts

stmts:
	stmt | stmt SEMICOLON stmts

stmt:
	if_stmt | non_if_stmt

if_stmt:
	matched | unmatched

matched:
	IF LP logic_expr RP matched ELSE unmatched
        | non_if_stmt

unmatched:  
	IF LP logic_expr RP if_stmt
   	| IF LP logic_expr RP matched ELSE unmatched

non_if_stmt:
 	def_function |  call_stmt | input_stmt | assignment_stmt 
	| loop_stmt | delete_stmt | output_stmt | return_stmt | LCB stmts RCB

logic_expr:
	simple_logic_expr | logic_expr logic_op logic_expr
 	| LP logic_expr RP | NOT LP logic_expr RP

def_function:
	function_name LP RP LCB stmts RCB
	| function_name LP RP LCB stmts return_stmt RCB
	| function_name LP parameter_dec RP LCB stmts RCB
	| function_name LP parameter_dec RP LCB stmts return_stmt RCB

parameter_dec:
	parameter_dec 
	|  parameter_dec types variable_identifier
	| types variable_identifier 

function_name:
	letter |  function_name letter

call_stmt:
	function_identifier  LP element_list RP | function_identifier LP RP

input_stmt:
 	INSERT variable_identifier

assignment_stmt:
	variable_identifier  ASSIGNMENT_OP variable_identifier 
	| variable_identifier  ASSIGNMENT_OP number

loop_stmt:
	for_stmt | while_stmt

for_stmt:
 	FOR LP variable_identifier COLON IN set RP LCB stmts RCB

while_stmt:
	WHILE LP logic_expr RP LCB stmts RCB
set:
	types | LCB element_list RCB 

delete_stmt:
	DELETE set

output_stmt:
 	GET set

return_stmt:
	RETURN set COMMA

element_list: 
	types | element_list COMMA types

types:
	variable_identifier | function_identifier | string | number

string:
	STRING

variable_identifier:
	lowcase_letter | lowcase_letter alphanumeric_string

function_identifier:
 	upcase_letter | upcase_letter alphanumeric_string

arithmetic_op:
 	term | arithmetic_op PLUS term |  arithmetic_op MINUS term

term:
	factor | term MULTIPLICATION factor | term SLASH factor

factor: 
 	primary | LP arithmetic_op RP

primary:
	digit | number

number: 
	signed_integer  DOT unsigned_integer

letter:
 	upcase_letter | lowcase_letter

lowcase_letter:
	LOWERCASE_LETTER

upcase_letter:
	UPPERCASE_LETTER

signed_integer:
	DIGIT | sign signed_integer | DIGIT signed_integer

unsigned_integer:
 	DIGIT | DIGIT unsigned_integer

sign: 
	PLUS |  MINUS

digit:
	DIGIT

alphanumeric_string:
       alphanumeric |alphanumeric alphanumeric_string

alphanumeric:
       letter | digit

simple_logic_expr:
 	set set_relations set

logic_op: 
	AND | OR

set_relations : 
	SUBSET | SUPERSET | NOTEQUAL | EQUAL

set_operations :
	difference| intersection | union_stmt| cartesian

difference:
	DIFFERENCE

intersection:

	INTERSECTION

union_stmt:
	UNION

cartesian:
	CARTESIAN

comment:
	COMMENT

space:
	SPACE

dolar:
	DOLAR

underscore:
	UNDERSCORE

slash:
	SLASH

%%

void yyerror(char *s) {
	fprintf(stdout, "line %d: %s\n", yylineno,s);
}
int main(void){
 yyparse();
if(yynerrs < 1){
		printf("Input program is valid\n");
	}
 return 0;
}

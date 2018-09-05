lexer grammar DecafLexer;

@header {
package decaf;
}

options
{
  language=Java;
}

tokens
{
  TK_class
}

LCURLY : '{';
RCURLY : '}';

ID  :
  [a-zA-Z][a-zA-Z0-9]*; // Antigo -> ('a'..'z' | 'A'..'Z')+;

WS_ : (' ' | '\n' ) -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

CHAR : '\'' (ESC|ASCII) '\''; // Antigo -> CHAR : '\'' (ESC|~'\'') '\'';
STRING : '"' (ESC|ASCII)* '"'; // Antigo -> STRING : '"' (ESC|~'"')* '"';

fragment
ESC :  '\\' ('n'|'"'|'t'|'\\'|'\''); // -> Antigo '\\' ('n'|'"'); 

// -------------------------------- Novos a baixo----------------

IF: 'if';

fragment
ESCII: [a-zA-Z0-9 !#-&(-/:-@^-'{-~];

grammar SONEC;

program:	(IDENTIFIER | NEWLINE)+;

IDENTIFIER:	[a-zA-Z_][a-zA-Z0-9_]*;

NEWLINE:	'\n' | '\r\n';

WHITESPACE:	[ ]+ -> skip;


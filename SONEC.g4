grammar SONEC;

program:	(IDENTIFIER | NEWLINE | SINGLELINE_COMMENT | MULTILINE_COMMENT)+;

/* Keywords */

// Conditional keywords
FOR:		F O R;
WHILE:		W H I L E;
IF:			I F;
ELSE:		E L S E;

// Type keywords
NUMBER:		N U M B E R;
STRING:		S T R I N G;
BOOL:		B O O L;
QUEUE:		Q U E U E;
STACK:		S T A C K;
SET:		S E T;
FEEDBACKS:	F E E D B A C K S;
FEEDBACK:	F E E D B A C K;
POSTS:		P O S T S;
POST:		P O S T;
OUTLINKS:	O U T G O I N G '-' L I N K S;
INLINKS:	I N G O I N G '-' L I N K S;
LINK:		L I N K;
NODE:		N O D E;
NETWORK:	T E L E G R A M | I N S T A G R A M | T W I T T E R;

DEF:		D E F;
RETURN:		R E T U R N;
THEN:		T H E N;
END:		E N D;
BEGIN:		B E G I N;
TRUE:		T R U E;
FALSE:		F A L S E;

IDENTIFIER:	[a-zA-Z_][a-zA-Z0-9_]*;

fragment A: 'a' | 'A';
fragment B: 'b' | 'B';
fragment C: 'c' | 'C';
fragment D: 'd' | 'D';
fragment E: 'e' | 'E';
fragment F: 'f' | 'F';
fragment G: 'g' | 'G';
fragment H: 'h' | 'H';
fragment I: 'i' | 'I';
fragment J: 'j' | 'J';
fragment K: 'k' | 'K';
fragment L: 'l' | 'L';
fragment M: 'm' | 'M';
fragment N: 'n' | 'N';
fragment O: 'o' | 'O';
fragment P: 'p' | 'P';
fragment Q: 'q' | 'Q';
fragment R: 'r' | 'R';
fragment S: 's' | 'S';
fragment T: 't' | 'T';
fragment U: 'u' | 'U';
fragment V: 'v' | 'V';
fragment W: 'w' | 'W';
fragment X: 'x' | 'X';
fragment Y: 'y' | 'Y';
fragment Z: 'z' | 'Z';

SINGLELINE_COMMENT: '#'((.)*?)NEWLINE;
MULTILINE_COMMENT: '##'(('\n' | .)*?)'##'NEWLINE;

NEWLINE:	'\r'?'\n';

WHITESPACE:	[ ]+ -> skip;


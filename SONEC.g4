grammar SONEC;

program:	(IDENTIFIER | NEWLINE)+;

// Keywords
DEF:		D E F;
RETURN:		R E T U R N;
IF:			I F;
THEN:		T H E N;
WHILE:		W H I L E;
END:		E N D;
BEGIN:		B E G I N;
TRUE:		T R U E;
FALSE:		F A L S E;
QUEUE:		Q U E U E;
STACK:		S T A C K;
SET:		S E T;
FEEDBACK:	F E E D B A C K;
POST:		P O S T;
LINK:		L I N K;
NODE:		N O D E;
BOOL:		B O O L;
NUMBER:		N U M B E R;
STRING:		S T R I N G;

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

NEWLINE:	'\r'?'\n';

WHITESPACE:	[ ]+ -> skip;


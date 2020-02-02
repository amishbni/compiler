grammar SONEC;

program:	(S_COMMENT | M_COMMENT)+;

/* Grammars */
/* Statements */
stmts:		stmt |
			NEWLINES stmt |
			stmt NEWLINES |
			NEWLINES stmt NEWLINES |
			stmt NEWLINE stmts |
			NEWLINES stmt NEWLINE stmts;

/* Tokens */
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
OUTLINK:	O U T G O I N G '-' L I N K;
INLINK:		I N G O I N G '-' L I N K;
LINK:		L I N K;
NODE:		N O D E;
NETWORK:	T E L E G R A M | I N S T A G R A M | T W I T T E R;

// Other
DEF:		D E F;
RETURN:		R E T U R N;
THEN:		T H E N;
END:		E N D;
BEGIN:		B E G I N;
PRINT:		P R I N T;
INPUT:		I N P U T;
SOURCE:		S O U R C E;
SAVE:		S A V E;
LOAD:		L O A D;
LEN:		L E N;
INIT:		I N I T I A L I Z E;
IN:			I N;
OWNER:		O W N E R;
DEST:		D E S T I N A T I O N;
PUSH:		P U S H;
POP:		P O P;
WITH:		W I T H;
CRAWL:		C R A W L;

/* Literals */

// Logical
TRUE:		T R U E;
FALSE:		F A L S E;

// Numerical
FLOAT:		([0-9]+'.'[0-9]*) | ([0-9]*'.'[0-9]+);
DECIMAL:	[0-9]+;
HEX:		'0x'[0-9a-fA-F]+;

// String
CHARS:		'"' (~["\r\n])* '"';


/* Symbols */
O_BRACE:	'{';
C_BRACE:	'}';

O_PARAN:	'(';
C_PARAN:	')';

O_BRACKET:	'[';
C_BRACKET:	']';

COLON:		':';

/* Operands */

// Arithmetic
MUL:		'*';
DIV:		'/';
MOD:		'%';
PLUS:		'+';
SUB:		'-';

// Logical
NOT:		N O T;
AND:		A N D;
OR:			O R;
XOR:		X O R;

// Relational
EQU:		'==';
NEQ:		'!=';
GTR:		'>';
LSS:		'<';
GEQ:		'>=';
LEQ:		'<=';

// ASSIGNMENT
ASSIGN:		'=';

/* Comments */
M_COMMENT:	'##'(('\n' | .)*?)'##'NEWLINE;
S_COMMENT:	'#'((.)*?)NEWLINE;

NEWLINE:	'\r'?'\n';
NEWLINES:   ('\r'?'\n')+;

WHITESPACE:	[ ]+ -> skip;

ID:			[a-zA-Z_][a-zA-Z0-9_]*;

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


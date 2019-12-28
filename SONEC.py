import sys
from antlr4 import *
from SONECLexer import SONECLexer
from SONECParser import SONECParser

def main(argv):
    input_stream = FileStream(argv[1])
    lexer = SONECLexer(input_stream)
    stream = CommonTokenStream(lexer)
    parser = SONECParser(stream)
    tree = parser.program()
    print(tree.toStringTree())

if __name__ == '__main__':
    main(sys.argv)

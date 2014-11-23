module MyTAMCode where

import TAMCode
import TAMInterpreter

print1ToN = [GETINT,
	LOADL 1,
	Label "cmp",
	LOAD (SB 0),
	LOAD (SB 1),
	LSS,
	JUMPIFNZ "end",
	LOAD (SB 1),
	PUTINT,
	LOADL 1,
	ADD,
	JUMP "cmp",
	Label "end",
	HALT]

factorial = [GETINT,
	CALL "fac",
	PUTINT,
	HALT,
	Label "fac",
	LOADL 1,
	LOAD (LB (-1)),
	LSS,
	JUMPIFZ "one",
	LOAD (LB (-1)),
	LOAD (LB (-1)),
	LOADL 1,
	SUB,
	CALL "fac",
	MUL,
	JUMP "return",
	Label "one",
	LOADL 1,
	Label "return",
	RETURN 1 1]

testchr = [GETCHR,
	PUTCHR]
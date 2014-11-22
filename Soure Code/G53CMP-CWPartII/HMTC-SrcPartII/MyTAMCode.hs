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
	LOAD (SB 0),
	LOADL 0,
	GTR,
	JUMPIFZ "invalid",
	LOAD (SB 0),
	Label "loop",
	LOADL 1,
	SUB,
	LOAD (SB 1),
	JUMPIFZ "end",
	LOAD (SB 0),
	LOAD (SB 1),
	MUL,
	STORE (SB 0),
	LOAD (SB 1),
	JUMPIFNZ "loop",
	Label "end",
	ADD,
	PUTINT,
	HALT,
	Label "invalid",
	LOADL 1,
	PUTINT,
	HALT]

test = [GETCHR]
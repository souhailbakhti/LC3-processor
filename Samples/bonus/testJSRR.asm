.ORIG x3000

	AND R0,R0,0
	LEA R1,fun
	JSRR R1
	ADD R0,R0,1
	BRnzp fin
	NOP

	
fun:	ADD R0,R0,1
	RET
fin:	NOP
	
.END

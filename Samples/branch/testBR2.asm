.ORIG x3000

	LEA R1,cst
	LEA R2,fun2
	AND R0,R0,0
	ADD R0,R0,-1
	ST  R0,cst
	STR R0,R1,0
	BRzp fin
	BRn fun1
	NOP

fun1:	JMP R2
	NOP

fun2:	BRzp fin
	BRn fun3
	NOP

fun3:	ADD R0,R0,-1
	BRnzp fin

cst:	.Fill 5
	
fin: 	NOP
.END

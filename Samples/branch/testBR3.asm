.ORIG x3000

	AND R0,R0,0
	BRz fun1
	ADD R0,R0,10
	NOP

fun1:	ADD R0,R0,-1
	BRn fun2
	ADD R0,R0,10
	NOP

fun2:	NOT R0,R0
	BRz fun3
	ADD R0,R0,10
	NOP

fun3:	LEA R1,cst2
	BRp fun4
	ADD R0,R0,10
	NOP

fun4:	LD  R0,cst1
	BRn fun5
	ADD R0,R0,10
	NOP

fun5:	LDR R0,R1,0
	BRz fun6
	ADD R0,R0,10
	NOP

cst1:	.FILL -5
cst2:	.FILL 0

fun6:	ADD R0,R0,-2
	NOP
.END

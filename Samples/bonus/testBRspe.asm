.ORIG x3000

	LEA R1,fun2		;R1=$fun2
	LEA R2,cst1		;R2=$cst1
	STR R2,R2,0		;cst1=$cst1
	AND R0,R0,0
	ADD R0,R0,-1		;R0=-1
	STI R0,cst1		;cst1=-1
	JSR fun1
fun1:	JSRR R1
fun2:	BRzp fin
	BRn fun3
	NOP

fun3:	LDI R0,cst2
	BRnz fin
	BRp fun4
	NOP

fun4: 	Add R0,R0,1	
fin: 	NOP

cst1:	.Fill 15
cst2:	.Fill 17
cst3:	.Fill 5
	
.END

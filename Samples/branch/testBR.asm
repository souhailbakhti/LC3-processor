.ORIG x3000

	AND R0,R0,0
	BRz fun1
	ADD R0,R0,10
	NOP

fun1:	ADD R0,R0,1
	BRp fun2
	NOP

fun2:	ADD R0,R0,1
	BRz fin
	ADD R0,R0,-3
	BRn fun3
	NOP

fun3:	ADD R0,R0,-1
fin: 	NOP
	
.END

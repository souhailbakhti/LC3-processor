.ORIG x0000
	LD R0,cons1
	ADD R0,R0,8
	LEA R1,cons1
	STR R0,R1,2
	AND R0,R0,0
	LD R0,cons3
	NOP

cons1:	.FILL 14
cons2:	.FILL 15
cons3:  .FILL 16

.END
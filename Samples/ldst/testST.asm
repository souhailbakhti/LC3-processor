.ORIG x0000
	LD R1,cons1
	ADD R1,R1,8
	ST R1,cons2
	LD R0,cons2
	NOP

cons1:	.FILL 14
cons2:	.FILL 15
cons3:  .FILL 16

.END
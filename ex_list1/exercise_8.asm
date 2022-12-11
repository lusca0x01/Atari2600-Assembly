	processor 6502
	seg code
	org $F000

_start:
	ldy #10

loop:
	tya
	sta $80,y
	dey
	bpl loop	; Branch if the last operation is positive. In other words, if the negative flag is not set.


	jmp _start

	org $FFFC
	.word _start
	.word _start
	processor 6502
	seg code
	org $F000

_start:
	lda #0
	sta $80

loop:
	clc
	adc 1

	tay
	sta $80,y
	cmp #10    ; Compare if the Value loaded in the A register is equal to 10
	bne loop

	jmp _start

	org $FFFC
	.word _start
	.word _start
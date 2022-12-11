	processor 6502
	seg code
	org $F000

_start:

	lda #1
	ldx #2
	ldy #3

	inx
	iny

	clc
	adc #1

	dex
	dey

	sec
	sbc #1

	jmp _start

	org $FFFC
	.word _start
	.word _start
	processor 6502
	seg code
	org $F000

_start:

	lda #10
	sta $80

	inc $80
	dec $80

	jmp _start

	org $FFFC
	.word _start
	.word _start
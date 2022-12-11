        processor 6502
        seg code
        org $F000
_start:
        lda #$82
        ldx #82
        ldy $82

        jmp _start

        org $FFFC
        .word _start
        .word _start 
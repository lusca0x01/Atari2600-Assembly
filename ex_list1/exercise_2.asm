        processor 6502
        seg code
        org $F000
_start:
        
        lda #$A
        ldx #%11111111
        sta $80
        stx $81

        jmp _start

        org $FFFC
        .word _start
        .word _start 
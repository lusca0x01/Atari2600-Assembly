        processor 6502
        seg code
        org $F000
_start:
        lda #$A
        ldx #%1010
        
        sta $80
        stx 81

        lda #10

        clc
        adc $80

        clc
        adc %81

        sta $82

        jmp _start

        org $FFFC
        .word _start
        .word _start 
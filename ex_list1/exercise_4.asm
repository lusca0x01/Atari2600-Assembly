        processor 6502
        seg code
        org $F000
_start:
        lda #100
        
        clc     ; Clear the carry flag
        adc #5

        sec     ; Set the carry flag
        sbc #10

        jmp _start

        org $FFFC
        .word _start
        .word _start 
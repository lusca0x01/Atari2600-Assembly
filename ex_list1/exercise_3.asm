        processor 6502
        seg code
        org $F000
_start:
        
        lda #15
        tax     ; transfer from A register to X register
        tay     ; transfer from A register to Y register
        txa     ; transfer from X register to A register
        tya     ; transfer from Y register to A register

        ldx #6
        txa
        tay

        jmp _start

        org $FFFC
        .word _start
        .word _start 
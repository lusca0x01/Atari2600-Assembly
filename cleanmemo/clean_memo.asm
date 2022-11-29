    processor 6502    ; Tells the processor to be used

    seg code          ; Segment of code
    org $F000         ; Define the ROM code origin

_start:               ; Label = Name for a memory address
    sei               ; Disable system interrupts
    cld               ; Disable the BCD math mode
    ldx #$FF          ; Loads the X register with literal hexadecimal FF
    txs               ; Transfer the X register to the SP (Stack Pointer) (point to the last position)

; Clear the Zero Page region ($00 to $FF)
    lda #0            ; A = 0
    ldx #$00          ; X = $00

_clean:
     sta $0,X         ; Store the value of A register inside memory address $0 + X
     inx              ; x++
     bcs _stop        ; Branch if carry was set

     jmp _clean       ; Jump (Like an GOTO) to label clean (Loop)

_stop:
     org $FFFC        ; Fill the ROM size to exactly 4KB
     .word _start     ; Reset vector at $FFFC (where the program starts)
     .word _start     ; Interrupt vector at $FFFE (unused in the VCS)

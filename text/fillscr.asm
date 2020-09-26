; fill the screen with @ by writing directly to screen memory
; assemble with
;   64tass

; constants
screenRAM = $0400

; entry point
* = $1800
main	lda #$00		; @ symbol
	ldx #00
_loop	sta screenRAM,x		; write to screen memory (page 0)
	sta screenRAM+$100,x	; write to screen memory (page 1)
	sta screenRAM+$200,x	; write to screen memory (page 2)
	sta screenRAM+$300,x	; write to screen memory (page 3)
	inx
	bne _loop
	rts

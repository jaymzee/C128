; fill the screen with @ by writing directly to screen memory
; assemble with
;   64tass

; constants
screenRAM = $0400
colorRAM  = $d800

; entry point
* = $1800
main	ldy #$00		; @ char
	ldx #00
-	tya
-	sta screenRAM,x		; write to screen memory (page 0)
	sta screenRAM+$100,x	; write to screen memory (page 1)
	sta screenRAM+$200,x	; write to screen memory (page 2)
	sta screenRAM+$300,x	; write to screen memory (page 3)
	sta colorRAM,x		; write to color memory (page 0)
	sta colorRAM+$100,x	; write to color memory (page 1)
	sta colorRAM+$200,x	; write to color memory (page 2)
	sta colorRAM+$300,x	; write to color memory (page 3)
	inx
	bne -
	iny
	bne --
	rts

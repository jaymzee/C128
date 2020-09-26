; copy character ROM into lower memory
; assemble with
;   64tass

; constants
charROM = $D000

; entry point
* = $1800
main	inc $ff00	; enable char ROM
	ldx #00
_loop	lda charROM,x
	sta $1300,x
	lda charROM+$100,x
	sta $1400,x
	lda charROM+$200,x
	sta $1500,x
	lda charROM+$300,x
	sta $1600,x
	lda charROM+$400,x
	sta $1700,x
	inx
	bne _loop
	dec $ff00	; disable char ROM
	rts

; display sprite moving across the screen
; assemble with
;   64tass

; entry point
* = $1800
main	lda #$01
	sta $12fd	; disable basic's video interrupt handler
	lda #$03
	sta $d015	; turn on sprite 0 and 1
	lda #$00
	sta $d000	; clear x offset register
	tax
	tay
-	stx $d000
	stx $d000
	stx $d000
	iny
	bne -
	inx
	bne -
	lda #$00
	sta $12fd	; enable basic's video interrupt handler
	rts

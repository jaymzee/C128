; custom character set
; assemble with
;   64tass

; constants

; entry point
* = $1800
main	lda #$01
	sta $12fd	; disable basic 7.0's video interrupt handler
	lda #$ff
	sta $d8		; disable interrupt driven screen editor
	lda #$1c
	sta $d018	; char map = 0x2000
	lda #$01
	sta $d015	; turn on sprite 1
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
	sta $d8		; enable interrupt driven screen editor
	rts

; print hello world using kernal I/O
; assemble with 
;   64tass -a

; constants
chrout	= $ffd2
; entry point
* = $1800
main	ldx #0
_loop	lda msg,x
	jsr chrout
	inx
	cpx #msglen
	bne _loop
	rts
msg	.text "HELLO WORLD!"
msglen	= * - msg

 include "cartheader.dasm"

Start

	; Multicolour mode
	lda $d016
	ora #16
	sta $d016	
        
        ; Bacground colour
        lda #0
        sta $d021
 
 	; Border colour
        lda #0
        sta $d020
 
        ; Multicolour 1
        lda #2
        sta $d022

        ; Multicolour 2
        lda #5
        sta $d023
	
        ; Some chars onto screen
        lda #1
        sta $0400
        lda #2
	sta $0401
        lda #3
	sta $0402
        lda #4
	sta $0403
        
        ; Different colour RAM settings
        lda #%00001011		; bit 3 (from right, zero indexed) = 1 => multicolour
        sta $d800
        lda #%00001010
        sta $d801
        lda #%00001111
        sta $d802
        lda #%00000110		; bit 3 = 0 => standard colour
        sta $d803
        
infinite        jmp infinite

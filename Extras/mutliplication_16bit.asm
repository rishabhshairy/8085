		LXI  H, 0000H
		SHLD E200H
		SHLD E202H
		LHLD E100H   ; LOAD FIRST OPERAND
		XCHG 		 ; EXCHANGE DE WITH HL
		LHLD E102H 	 ; LOAD SECOND OPERAND
		MOV  B, H
		MOV  C, L
		LXI  H, 0000H
LOOP:	DAD  D
		JNC  LOOP2
		SHLD E200H
		LHLD E202H
		INX  H
		SHLD E202H
		LHLD E200H
LOOP1:  DCX  B
		MOV  A, C				
		ORA  B
		JNZ  LOOP
		SHLD E200H
		RST 1


;; INPUT

;  E100H: CDH
;  E101H: ABH
;  E102H: 34H
;  E103H: 12H



;; OUTPUT

;  E200H:  A4H
;  E201H:  4FH
;  E202H:  37H
;  E203H:  0CH
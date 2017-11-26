START:	   LDA ,E100	//LOAD COUNTER HERE
	   MOV C,A	
	   LXI H,E101	// Memory Pointer

LOOP:	 MOV A,M
	   INX H
	   MOV B,M
	   INX H
	   ADD B
	   DAA
	   MOV M,A
	   DCX H
	   DCR C
	   JNZ LOOP
	   RST 1
// To run the Program simply load at memory location E101=01,E102=01

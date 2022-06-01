; A program that does the following:

COMMENT !
Write a program that implements the following arithmetic expression:
EAX = -val2 + 7 - val3 + val1
Use the following data definitions:
val1	SDWORD		8
val2	SDWORD		-15
val3	SDWORD		20
In comments, next to each instruction, write the hexadecimal value of EAX. Insert a 
call DumpRegs statement at the end of the program.

!
INCLUDE Irvine32.inc

.data
val1 SDWORD	8
val2 SDWORD	-15
val3 SDWORD	20

.code
	main PROC
	
	mov eax, 0; 00000000h
	mov eax, val2; FFFFFFF1h
	neg eax; 0000000Fh
	add eax, 7; 00000016h
	sub eax, val3; 00000002h
	add eax, val1; 0000000Ah
	call DumpRegs
	


	exit
main ENDP
END main

; A program that reverses an array of any type 
INCLUDE Irvine32.inc

.data

Uarray WORD 1000h, 2000h, 3000h, 4000h
UarraySize = ($ - Uarray)
UarrayType = TYPE Uarray
UarrayLength = (UarraySize/UarrayType)

.code
	main PROC
	
	mov ecx, 0
	mov eax, 0
	mov ebx, 0
	mov esi, 0
	mov edi, 0
	mov cx, (UarrayLength / 2)
	mov edi, UarraySize - UarrayType
	l1: 
	mov ax, [Uarray + esi]
	mov bx, Uarray[edi]
	mov Uarray[edi], ax
	mov Uarray[esi], bx

	add esi, UarrayType
	sub edi, UarrayType


	loop l1
	exit
main ENDP
END main

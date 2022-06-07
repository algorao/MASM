; A program that displays a single character at 100 random screen locations, using a timing delay of 100 milliseconds.


INCLUDE Irvine32.inc

.data
rows BYTE ?
cols BYTE ?
sampChar BYTE '*'

.code
	main PROC

	call Clrscr
	call GetMaxXY
	mov rows, al
	mov cols, dl

	call randomScreen
	
	exit
main ENDP

randomScreen PROC
	mov ecx,100
	l1:
	mov al, rows
	call RandomRange
	mov dh, al


	mov al, cols
	call RandomRange
	mov dl, al

	call GotoXY
	movzx eax, sampChar
	call WriteChar

	mov eax, 100
	call Delay
	loop l1

	ret
randomScreen ENDP

END main
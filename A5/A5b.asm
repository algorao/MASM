INCLUDE Irvine32.inc

.data
sampChar BYTE "A"
foreground BYTE 16
background BYTE 16
counter1 BYTE 0
counter2 BYTE 0
total BYTE ?

.code
	main PROC
	
	call COLOR

	exit
main ENDP

COLOR PROC

mov ecx, 15
l1:

push ecx
mov ecx, 15
	l2:
		mov bl, counter2
		mov al, 16
		mul bl
		add bl, counter1
		mov eax, ebx
		movzx ebx, sampChar
		call SetTextColor
		call WriteString
		inc counter2
	loop l2

inc counter1
mov eax, 10
call WriteChar
pop ecx
loop l1

	ret
COLOR ENDP
END main
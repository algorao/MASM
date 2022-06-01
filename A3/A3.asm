; This program will add 4 32-Bit Integer Variables
INCLUDE Irvine32.inc

.data
	num1 DWORD 34
	num2 DWORD 9
	num3 DWORD 81
	num4 DWORD 160
	sum DWORD ? 

.code
	main PROC
	
	mov eax, 0
	mov eax, num1
	add eax, num2
	add eax, num3
	add eax, num4
	mov sum, eax
	
	call DumpRegs


	COMMENT @
	
		Q: Declare a 32-bit signed integer variable and initialize it with the smallest possible negative decimal value.

		A: var1 SDWORD -((2^32)-1)
	
		 Explanation: 
		   Range of Unsigned words: 0 - ((2^bit-range) - 1)
		   Range of Signed words: -(2^bit-range) - 1 - ((2^bit-range - 1) - 1)
	   
		   Therefore, -((2^32) - 1) - ((2^32) - 2)




		Q: Declare an uninitialized array of 100 16-bit unsigned integers.
	
		A: arr1 WORD 100 DUP(?)
	
		 Explanation: 
		   To declare an Array, you use the same data definition statement (dds): name, directive, initializer
		   The DUP operator allocates space for n (in this case 100) directive types. 




		Q: Declare a string variable containing the word “UC Berkeley!” repeated 20 times w/ null termination string.

		A: var1 BYTE 20 DUP("UC Berkeley!",0)



		GIVEN: 
			.DATA
			I SBYTE 1, -1
			J SWORD 10FFh, -256
			K DWORD 23456h
			L BYTE 'LOLL'

			Address(A) of I is 404000h


		Q: What are the addresses of J, K, and L? 

		A: 
			I - 404000h
			J - 404002h
			K - 404006h
			L - 404010h
			Next Available position: 404011h


		Q: What is the total number of allocated bytes?

		A: (1 + 1) + (2 + 2) + (4) + 4(1) = 13
		
			Note: Each character in that string uses 1 byte of memory, therefore the entire string occupies 3 bytes of memory


		Q: Show the content of the individual bytes allocated in memory in hexadecimal

		A: 
			404000h - I - 1
			404001h - I - FFFF ( 16 - bit representation of -1 using 2's compliment)
			404002h - J - 10FFh
			404004h - J - FF00
			404006h - K - 23456h
			4040010 - L - string

	@
	exit
main ENDP
END main

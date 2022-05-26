INCLUDE Irvine32.inc

.data



.code
	main PROC

	COMMENT !
	
	Q: In real-address mode, convert the following segment offset address to a linear address: 0950:0100 
	
	A: 09500 + 0100 = 09600




	Q: In real-address mode, convert the following segment offset address to a linear address: 0CD1:02E0 

	A: 0CFF0




	Q: What is the duration of a single clock cycle (in nanoseconds) in a 3.4 GHz

	A: (1/(3.4 * 10^9)) seconds 




	Q: A hard disk rotates at 4200 RPM (rotations per minute). What is the time of one rotation in milliseconds?

	A: (1/70) * 10^-3 millseconds/rotation

	


	Q: Which Intel processor was the first member of the IA-32 family?

	A: Intel's 80386 processor was the first member of the IA-32 family, with it's predecessor using 16-bit architecture (IA-16 being the retronym)




	Q: Which Intel processor first introduced superscalar execution?

	A: The P5 Pentium was the first superscalar processor that was part of the 8086 family, while the i960 CA was the first commercial single chip Intel superscalar microprocessor 




	Q: Name all 32-bit general-purpose registers

	A: EAX, EBX, ECX, EDX, ESI, EDI, EBP, ESP




	Q: Name all six CPU status flags in the Intel processor

	A: Carry, Overflow, Zero, Sign, Auxilliary Carry, Parity




	Q: Which flag is set when an arithmetic or logical instruction produces a negative result?

	A: Sign 




	Q: What is the range of addressable memory in protected mode?

	A: 0 - FFFFFFFF as protected mode allots 4GB to every running program. This means that 32-bits are alloted to each program, which means that the range of addressable memory ranges from 0 - (2^32-1)
	!

	exit
main ENDP
END main

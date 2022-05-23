INCLUDE Irvine32.inc

.data



.code
	main PROC

	COMMENT !
	
	What are the different number systems used in computing? Effectively 3: Binary, Hexadecimal, and Decimal
	This assignment will allow us to understand how to change between these number systems manually. 


	Q1: What is the decimal representation of the each of the following unsigned binary numbers?
		a. 11111000 
		b. 11001010 
		c. 11110000 

	A1: 
		a. (128 + 64 + 32 + 16 + 8) = 248 
		b. (128 + 64 + 8 + 2) = 202
		c. (128 + 64 + 32 + 16) = 240




	Q2: What is the hexadecimal representation of each of the following binary numbers?
		a. 1100 1111 0101 0111
		b. 0101 1100 1010 1101
		c. 1001 0011 1110 1011 

	A2: 
		a. CF57
		b. 5CAD
		c. 93EB




	Q3: What is the binary representation of each of the following hexadecimal numbers?
		a. E5B6AED7
		b. B697C7A1
		c. 234B6D92 

	A3: 
		a. 1111 0101 1011 0110 1010 1111 1110 0111
		b. 1011 0110 1001 0111 1100 0111 1010 0001
		c. 0010 0011 0100 1011 0110 1101 1001 0010 




	Q4: What is the 16-bit hexadecimal representation of each signed decimal number?
		a. -26
		b. -452 

	A4: 
		a. FFE6
		b. FE3C
		* Steps: 
			1. Find the 16-bit binary representation of the magnitude of the above values
			2. Reverse each of these 16-bits
			3. Add 1 to this value
			4. Convert from binary to hexidecimal




	Q5: What is the decimal representation of the following signed binary numbers?
		a. 10110101
		b. 01001010
		c. 11110000
		
	A5: 
		a. -75
		b. 74
		c. -16

	!

	exit
main ENDP
END main

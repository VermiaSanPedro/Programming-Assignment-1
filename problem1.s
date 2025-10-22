.global _start
_start:
factorial:
	mov r0, #5           
	mov r1, #1  
loop:    
	cmp r0, #1
    beq end
    mul r1, r1, r0
    sub r0, r0, #1
    b loop
end:
	bx lr
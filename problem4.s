.global _start
_start:
swap:
	mov r0, #0xA5        
    and r2, r0, #0xF0
    lsr r2, r2, #4
    and r3, r0, #0x0F
	lsl r3, r3, #4
	orr r1, r2, r3
end:

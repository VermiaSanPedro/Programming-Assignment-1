.global _start
_start:
parity:
	mov r0, #20
	mov r1, #0        
    mov r2, #32
loop:
	and r3, r0, #1
    eor r1, r1, r3
    lsr r0, r0, #1
	subs r2, r2, #1
    bne loop
	and r1, r1, #1
end:	
.global _start
_start:
	ldr r0, =my_array
	ldr r1, =array_size
	ldr r1, [r1]
	ldr r2, [r0], #4
	subs r1, r1, #1
	beq end
	
loop:
	ldr r3, [r0], #4
	cmp r3, r2
	movgt r2, r3
	subs r1, r1, #1
	bne loop
	
end:
.data
my_array: .word 3, 6, 9, 0, -3, -6, -9
array_size: .word 7
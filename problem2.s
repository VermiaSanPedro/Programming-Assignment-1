.global _start
_start:
	mov r0, #45
	mov r1, #12
	mov r4, r0
	mov r5, r1
	cmp r1, #0
	beq end
	cmp r0, r1
	ble end
loop:

udiv:
            push {lr}
            cmp r1, #0
            beq exit            
            mov r2, r1          
            mov r1, r0          
            mov r0, #0          
            mov r3, #0
divi:
            cmp r2, r1         
            bge subanddec          
            add r3, r3, #1      
            lsl r2, r2, #1      
            blt divi
subanddec:     
            cmp r3, #0          
            blt exit            
            cmp r2, r1
            lsl r0, r0, #1      
            addls r0, r0, #1   
            subls r1, r1, r2    
            sub r3, r3, #1      
            lsr r2, r2, #1      
            bl subanddec
            pop {lr}
exit:       bx  lr 
	cmp r1, #0
	beq end
	b done
done:
	mov r0, r5
	b loop
end:
	
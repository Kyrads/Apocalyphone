.thumb

mov r1, r0
lsl r0, r1, #1
add r0, r0, r1
lsl r0, r0, #3

ldr r1, [r5]
ldr r2, [r5, #4]
ldr r1, [r1, #0x28]
ldr r2, [r2, #0x28]
orr r1, r2
mov r2, #1
lsl r2, r2, #8
tst r1, r2
bne Promoted
	mov r1, #20
	b 0f
Promoted:
	mov r1, #30
0:

ldr r3, =#0x0809C156+1
bx r3

.align 2
.pool

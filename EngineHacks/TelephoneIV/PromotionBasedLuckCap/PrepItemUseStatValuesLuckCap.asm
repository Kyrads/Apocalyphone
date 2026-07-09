.thumb

ldr r1, [r4]
ldr r2, [r4, #4]
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
cmp r0, r1
bne 0f
	mov r6, #4
0:
mov r0, r4
ldr r1, =#0x0809C324+1
bx r1

.align 2
.pool


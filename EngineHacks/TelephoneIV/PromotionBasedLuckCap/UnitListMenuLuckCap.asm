.thumb

ldr r2, [r1]
ldr r3, [r1, #4]
ldr r2, [r2, #0x28]
ldr r3, [r3, #0x28]
orr r2, r3
mov r3, #1
lsl r3, r3, #8
tst r2, r3
bne Promoted
	mov r3, #20
	b 0f
Promoted:
	mov r3, #30
0:
cmp r0, r3
bne NotCapped
	mov r6, #4
NotCapped:
mov r0, r1
ldr r1, =#0x08092704+1
bx r1

.align 2
.pool

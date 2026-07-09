.thumb

mov r0, #0x19
ldsb r0, [r4, r0]

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
ble UnderCap
	strb r1, [r4, #0x19]
UnderCap:

ldr r3, =#0x08018254+1
bx r3

.align 2
.pool

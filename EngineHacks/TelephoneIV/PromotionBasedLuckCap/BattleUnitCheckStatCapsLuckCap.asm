.thumb

mov r1, #0
ldsb r1, [r3, r1]
add r0, r0, r1

push {r2}
ldr r1, [r2]
ldr r2, [r2, #4]
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
pop {r2}
cmp r0, r1
ble UnderCap
	ldrb r0, [r2, #0x19]
	sub r0, r1, r0
	strb r0, [r3]
UnderCap:
pop {r4, r5}
pop {r0}
bx r0

.align 2
.pool

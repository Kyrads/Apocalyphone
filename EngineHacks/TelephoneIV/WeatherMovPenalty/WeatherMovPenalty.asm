.thumb

.set gPlaySt, 0x0202BCF0

// goes in MovGetter list

ldr r2, =gPlaySt
ldrb r2, [r2, #0x15]
cmp r2, #1 // Snowy
beq 0f
cmp r2, #2 // Blizzard
beq 0f
cmp r2, #4 // Rain
beq 0f
cmp r2, #6 // Sandstorm
bne End
0:

ldr r2, [r1]
ldr r3, [r1, #4]
ldr r2, [r2, #0x28]
ldr r3, [r3, #0x28]
orr r2, r3
mov r3, #0x18
lsl r3, r3, #8
tst r2, r3
beq NotFlier
sub r0, r0, #1
NotFlier:
sub r0, r0, #1

End:
bx r14

.thumb

.macro blh to, reg
	ldr \reg, =\to
	mov r14, \reg
	.short 0xF800
.endm

.set MagGetter, 0x080191B8+1

GetMagBy4Plus3Range:
push {r14}
blh MagGetter, r1
lsr r0, r0, #2
add r0, r0, #3
pop {r1}
bx r1

.align
.pool

	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5, r6, lr}

	mov r3,#-1
	mov r4,#1
        mov r5,#0
        add r6,r0,#1

for:
	add r0,r4,r3
        mov r3,r4
	mov r4,r0
        
        subs r6,r6,#1
        bne for

	pop {r3, r4, r5, r6, pc}	@EPILOG

	@ END CODE MODIFICATION

	.size fibonacci, .-fibonacci
	.end


	.include "asm/macros/function.inc"
	.public RTC_ConvertDateTimeToSecond
	.public RTC_GetDateTime
	.public atoi
	.public errno
	.public strcmp
	.public strcpy
	.public strlen

	.text
	arm_func_start DWC_Auth_SetNasTimeDiff
DWC_Auth_SetNasTimeDiff: ; 0x020CC73C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x3c
	mov r4, r0
	bl strlen
	mov r5, r0
	ldr r0, _020CC930 ; =0x020E56AC
	bl strlen
	cmp r5, r0
	ldreqsb r0, [r4, #7]
	cmpeq r0, #0x20
	ldreqsb r0, [r4, #0xb]
	cmpeq r0, #0x20
	ldreqsb r0, [r4, #0x10]
	cmpeq r0, #0x20
	ldreqsb r0, [r4, #0x13]
	cmpeq r0, #0x3a
	ldreqsb r0, [r4, #0x16]
	cmpeq r0, #0x3a
	ldreqsb r0, [r4, #0x19]
	cmpeq r0, #0x20
	bne _020CC924
	add r6, sp, #0x2c
	add r5, sp, #0x20
	mov r0, r6
	mov r1, r5
	bl RTC_GetDateTime
	cmp r0, #0
	bne _020CC924
	mov r0, r6
	mov r1, r5
	bl RTC_ConvertDateTimeToSecond
	mov r5, r0
	mov r6, r1
	mvn r0, #0
	cmp r6, r0
	cmpeq r5, r0
	beq _020CC924
	add r0, sp, #0
	mov r1, r4
	bl strcpy
	mov r4, #0
	ldr r7, _020CC934 ; =errno
	add r0, sp, #0xc
	str r4, [r7]
	strb r4, [sp, #7]
	strb r4, [sp, #0xb]
	strb r4, [sp, #0x10]
	strb r4, [sp, #0x13]
	strb r4, [sp, #0x16]
	strb r4, [sp, #0x19]
	bl atoi
	ldr r1, [r7]
	str r0, [sp, #0x2c]
	cmp r1, #0x22
	beq _020CC924
	sub r1, r0, #0x7d0
	mov r0, #0xd
	ldr r8, _020CC938 ; =monthname
	str r1, [sp, #0x2c]
	str r0, [sp, #0x30]
	add r7, sp, #8
_020CC830:
	ldr r0, [r8, r4, lsl #2]
	mov r1, r7
	bl strcmp
	cmp r0, #0
	addeq r0, r4, #1
	streq r0, [sp, #0x30]
	beq _020CC858
	add r4, r4, #1
	cmp r4, #0xc
	blt _020CC830
_020CC858:
	ldr r0, [sp, #0x30]
	cmp r0, #0xc
	bhi _020CC924
	ldr r7, _020CC934 ; =errno
	mov r4, #0
	add r0, sp, #5
	str r4, [r7]
	bl atoi
	ldr r1, [r7]
	str r0, [sp, #0x34]
	cmp r1, #0x22
	beq _020CC924
	add r0, sp, #0x11
	str r4, [r7]
	bl atoi
	ldr r1, [r7]
	str r0, [sp, #0x20]
	cmp r1, #0x22
	beq _020CC924
	add r0, sp, #0x14
	str r4, [r7]
	bl atoi
	ldr r1, [r7]
	str r0, [sp, #0x24]
	cmp r1, #0x22
	beq _020CC924
	add r0, sp, #0x17
	str r4, [r7]
	bl atoi
	ldr r1, [r7]
	str r0, [sp, #0x28]
	cmp r1, #0x22
	beq _020CC924
	add r0, sp, #0x2c
	add r1, sp, #0x20
	bl RTC_ConvertDateTimeToSecond
	sub r3, r4, #1
	mov r2, r3
	cmp r1, r3
	cmpeq r0, r2
	beq _020CC924
	ldr r2, _020CC93C ; =DWCnastimediffvalid
	subs r0, r5, r0
	str r0, [r2, #0xc]
	sbc r0, r6, r1
	str r0, [r2, #0x10]
	stmib r2, {r5, r6}
	mov r0, #1
	str r0, [r2]
	add sp, sp, #0x3c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020CC924:
	mov r0, #0
	add sp, sp, #0x3c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020CC930: .word ov15_020E56AC
_020CC934: .word errno
_020CC938: .word monthname
_020CC93C: .word DWCnastimediffvalid
	arm_func_end DWC_Auth_SetNasTimeDiff

	.data
ov15_020E564C:
	.asciz "Jun"
	.balign 4, 0
ov15_020E5650:
	.asciz "Jul"
	.balign 4, 0
ov15_020E5654:
	.asciz "Dec"
	.balign 4, 0
ov15_020E5658:
	.asciz "Sep"
	.balign 4, 0
ov15_020E565C:
	.asciz "Aug"
	.balign 4, 0
ov15_020E5660:
	.asciz "Nov"
	.balign 4, 0
ov15_020E5664:
	.asciz "Oct"
	.balign 4, 0
ov15_020E5668:
	.asciz "May"
	.balign 4, 0
	.global ov15_020E566C
ov15_020E566C:
	.asciz "Apr"
	.balign 4, 0
	.global ov15_020E5670
ov15_020E5670:
	.asciz "Mar"
	.balign 4, 0
	.global ov15_020E5674
ov15_020E5674:
	.asciz "Feb"
	.balign 4, 0
	.global ov15_020E5678
ov15_020E5678:
	.asciz "Jan"
	.balign 4, 0
monthname:
	.word ov15_020E5678
	.word ov15_020E5674
	.word ov15_020E5670
	.word ov15_020E566C
	.word ov15_020E5668
	.word ov15_020E564C
	.word ov15_020E5650
	.word ov15_020E565C
	.word ov15_020E5658
	.word ov15_020E5664
	.word ov15_020E5660
	.word ov15_020E5654
ov15_020E56AC:
	.asciz "Fri, 03 Mar 2006 01:28:13 GMT"

	.bss
	.global DWCnastimediffvalid
DWCnastimediffvalid:
	.space 0x04
	.global DWCnastimediffbase
DWCnastimediffbase:
	.space 0x08
	.global DWCnastimediff
DWCnastimediff:
	.space 0x08

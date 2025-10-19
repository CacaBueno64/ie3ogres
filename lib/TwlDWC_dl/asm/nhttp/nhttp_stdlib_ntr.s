
	.include "asm/macros/function.inc"
	.public MI_CpuCopy8
	.public MI_CpuFill8
	.public STD_CompareString
	.public STD_GetStringLength
	.public STD_GetStringNLength
	.public _u32_div_f

	.text
	arm_func_start NHTTPi_memcpy
NHTTPi_memcpy: ; 0x020CF514
	mov r3, r0
	mov r0, r1
	ldr r12, _020CF528 ; =MI_CpuCopy8
	mov r1, r3
	bx r12
_020CF528: .word MI_CpuCopy8
	arm_func_end NHTTPi_memcpy

	arm_func_start NHTTPi_strlen
NHTTPi_strlen: ; 0x020CF52C
	ldr r12, _020CF534 ; =STD_GetStringLength
	bx r12
_020CF534: .word STD_GetStringLength
	arm_func_end NHTTPi_strlen

	arm_func_start NHTTPi_strnlen
NHTTPi_strnlen: ; 0x020CF538
	ldr r12, _020CF540 ; =STD_GetStringNLength
	bx r12
_020CF540: .word STD_GetStringNLength
	arm_func_end NHTTPi_strnlen

	arm_func_start NHTTPi_strcmp
NHTTPi_strcmp: ; 0x020CF544
	ldr r12, _020CF54C ; =STD_CompareString
	bx r12
_020CF54C: .word STD_CompareString
	arm_func_end NHTTPi_strcmp

	arm_func_start NHTTPi_memclr
NHTTPi_memclr: ; 0x020CF550
	ldr r12, _020CF560 ; =MI_CpuFill8
	mov r2, r1
	mov r1, #0
	bx r12
_020CF560: .word MI_CpuFill8
	arm_func_end NHTTPi_memclr

	arm_func_start NHTTPi_strnicmp
NHTTPi_strnicmp: ; 0x020CF564
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	cmp r2, #0
	mov r4, #0
	ble _020CF600
	mov r5, #1
	mov lr, r5
	mov r12, r5
	mov r3, r5
_020CF584:
	ldrsb r9, [r0], #1
	ldrsb r8, [r1], #1
	cmp r9, #0
	beq _020CF59C
	cmp r8, #0
	bne _020CF5AC
_020CF59C:
	cmp r9, #0
	cmpeq r8, #0
	moveq r2, #0
	beq _020CF600
_020CF5AC:
	mov r6, r5
	cmp r8, #0x41
	movlt r6, r4
	mov r7, lr
	cmp r8, #0x5a
	movgt r7, r4
	tst r6, r7
	addne r8, r8, #0x20
	mov r6, r12
	cmp r9, #0x41
	movlt r6, r4
	mov r7, r3
	cmp r9, #0x5a
	movgt r7, r4
	tst r6, r7
	addne r9, r9, #0x20
	cmp r9, r8
	bne _020CF600
	sub r2, r2, #1
	cmp r2, #0
	bgt _020CF584
_020CF600:
	mov r0, r2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end NHTTPi_strnicmp

	arm_func_start NHTTPi_getUrlEncodedSize
NHTTPi_getUrlEncodedSize: ; 0x020CF608
	ldrsb r2, [r0], #1
	mov r1, #0
	cmp r2, #0
	beq _020CF668
_020CF618:
	cmp r2, #0x30
	blt _020CF628
	cmp r2, #0x39
	ble _020CF650
_020CF628:
	cmp r2, #0x41
	blt _020CF638
	cmp r2, #0x5a
	ble _020CF650
_020CF638:
	cmp r2, #0x61
	blt _020CF648
	cmp r2, #0x7a
	ble _020CF650
_020CF648:
	cmp r2, #0x20
	bne _020CF658
_020CF650:
	add r1, r1, #1
	b _020CF65C
_020CF658:
	add r1, r1, #3
_020CF65C:
	ldrsb r2, [r0], #1
	cmp r2, #0
	bne _020CF618
_020CF668:
	mov r0, r1
	bx lr
	arm_func_end NHTTPi_getUrlEncodedSize

	arm_func_start NHTTPi_getUrlEncodedSize2
NHTTPi_getUrlEncodedSize2: ; 0x020CF670
	mov r2, #0
	cmp r1, #0
	mov r3, r2
	ldrsb r12, [r0], #1
	cmpgt r1, #0
	ble _020CF6DC
_020CF688:
	cmp r12, #0x30
	blt _020CF698
	cmp r12, #0x39
	ble _020CF6C0
_020CF698:
	cmp r12, #0x41
	blt _020CF6A8
	cmp r12, #0x5a
	ble _020CF6C0
_020CF6A8:
	cmp r12, #0x61
	blt _020CF6B8
	cmp r12, #0x7a
	ble _020CF6C0
_020CF6B8:
	cmp r12, #0x20
	bne _020CF6C8
_020CF6C0:
	add r3, r3, #1
	b _020CF6CC
_020CF6C8:
	add r3, r3, #3
_020CF6CC:
	add r2, r2, #1
	cmp r2, r1
	ldrsb r12, [r0], #1
	blt _020CF688
_020CF6DC:
	mov r0, r3
	bx lr
	arm_func_end NHTTPi_getUrlEncodedSize2

	arm_func_start NHTTPi_encodeUrlChar
NHTTPi_encodeUrlChar: ; 0x020CF6E4
	cmp r1, #0x20
	moveq r1, #0x2b
	streqb r1, [r0]
	moveq r0, #1
	bxeq lr
	cmp r1, #0x30
	blt _020CF708
	cmp r1, #0x39
	ble _020CF728
_020CF708:
	cmp r1, #0x41
	blt _020CF718
	cmp r1, #0x5a
	ble _020CF728
_020CF718:
	cmp r1, #0x61
	blt _020CF734
	cmp r1, #0x7a
	bgt _020CF734
_020CF728:
	strb r1, [r0]
	mov r0, #1
	bx lr
_020CF734:
	mov r2, r1, asr #4
	and r3, r2, #0xf
	mov r2, #0x25
	strb r2, [r0]
	cmp r3, #0xa
	addlt r2, r3, #0x30
	addge r2, r3, #0x37
	and r1, r1, #0xf
	cmp r1, #0xa
	addlt r1, r1, #0x30
	addge r1, r1, #0x37
	strb r2, [r0, #1]
	strb r1, [r0, #2]
	mov r0, #3
	bx lr
	arm_func_end NHTTPi_encodeUrlChar

	arm_func_start NHTTPi_strToHex
NHTTPi_strToHex: ; 0x020CF770
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	cmp r1, #8
	mvngt r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bne _020CF794
	ldrsb r2, [r0]
	cmp r2, #0x37
	mvngt r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CF794:
	mov r8, #0
	mov r9, r8
	mov r7, r8
	cmp r1, #0
	ble _020CF854
	mov r6, #1
	mov r5, r8
	mov lr, r8
	mov r4, r6
	mov r3, r6
	mov r12, r6
_020CF7C0:
	ldrsb r11, [r0, r7]
	mov r2, r6
	mov r10, r4
	cmp r11, #0x41
	movlt r2, r5
	cmp r11, #0x5a
	movgt r10, lr
	tst r2, r10
	addne r11, r11, #0x20
	mov r2, r11, lsl #0x18
	mov r2, r2, asr #0x18
	cmp r2, #0x30
	blt _020CF808
	cmp r2, #0x39
	addle r2, r2, r8, lsl #4
	movle r9, r12
	suble r8, r2, #0x30
	ble _020CF848
_020CF808:
	cmp r2, #0x61
	blt _020CF824
	cmp r2, #0x66
	addle r2, r2, r8, lsl #4
	movle r9, r3
	suble r8, r2, #0x57
	ble _020CF848
_020CF824:
	cmp r9, #0
	beq _020CF838
	cmp r2, #0x20
	cmpne r2, #0
	beq _020CF854
_020CF838:
	cmp r9, #0
	cmpeq r2, #0x20
	mvnne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CF848:
	add r7, r7, #1
	cmp r7, r1
	blt _020CF7C0
_020CF854:
	mov r0, r8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end NHTTPi_strToHex

	arm_func_start NHTTPi_strToInt
NHTTPi_strToInt: ; 0x020CF85C
	stmfd sp!, {r3, r4, r5, lr}
	cmp r1, #0xa
	mvngt r0, #0
	ldmgtfd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r3, r4
	mov lr, r4
	cmp r1, #0
	ble _020CF8F0
	mov r12, #1
	mov r2, #0xa
_020CF888:
	cmp r3, #0
	ldrsb r5, [r0, lr]
	beq _020CF8A0
	cmp r5, #0x20
	cmpne r5, #0
	beq _020CF8F0
_020CF8A0:
	cmp r3, #0
	bne _020CF8B0
	cmp r5, #0x20
	beq _020CF8E4
_020CF8B0:
	cmp r5, #0x30
	blt _020CF8C0
	cmp r5, #0x39
	ble _020CF8C8
_020CF8C0:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020CF8C8:
	mla r3, r4, r2, r5
	mov r5, r4
	sub r4, r3, #0x30
	cmp r5, r4
	mov r3, r12
	mvngt r0, #0
	ldmgtfd sp!, {r3, r4, r5, pc}
_020CF8E4:
	add lr, lr, #1
	cmp lr, r1
	blt _020CF888
_020CF8F0:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_strToInt

	arm_func_start NHTTPi_intToStr
NHTTPi_intToStr: ; 0x020CF8F8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	ldr r6, _020CF9A0 ; =0x020E3ED0
	add r4, sp, #0
	mov r10, r0
	mov r9, r1
	ldmia r6!, {r0, r1, r2, r3}
	mov r5, r4
	stmia r4!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, [r6]
	mov r7, #0
	str r0, [r4]
	mov r2, r7
	mov r6, r7
	mov r4, #0x30
	mov r11, #1
_020CF940:
	ldr r8, [r5, r6, lsl #2]
	cmp r9, r8
	blo _020CF974
	mov r0, r9
	mov r1, r8
	bl _u32_div_f
	mul r1, r0, r8
	add r0, r0, #0x30
	strb r0, [r10, r7]
	mov r2, r11
	sub r9, r9, r1
	add r7, r7, #1
	b _020CF980
_020CF974:
	cmp r2, #0
	strneb r4, [r10, r7]
	addne r7, r7, #1
_020CF980:
	add r6, r6, #1
	cmp r6, #9
	blt _020CF940
	add r0, r9, #0x30
	strb r0, [r10, r7]
	add r0, r7, #1
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CF9A0: .word ov15_020E3ED0
	arm_func_end NHTTPi_intToStr

	arm_func_start NHTTPi_compareToken
NHTTPi_compareToken: ; 0x020CF9A4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, #1
	mov lr, #0
	mov r12, r4
	mov r3, r4
	mov r2, r4
	b _020CF9D8
_020CF9C0:
	cmp r5, #0
	cmpne r5, #0x20
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r0, #1
	add r1, r1, #1
_020CF9D8:
	ldrsb r7, [r1]
	mov r5, r4
	mov r6, r12
	cmp r7, #0x41
	movlt r5, lr
	cmp r7, #0x5a
	movgt r6, lr
	tst r5, r6
	ldrsb r5, [r0]
	addne r7, r7, #0x20
	mov r6, r3
	cmp r5, #0x41
	movlt r6, lr
	mov r8, r2
	cmp r5, #0x5a
	movgt r8, lr
	tst r6, r8
	addne r6, r5, #0x20
	moveq r6, r5
	cmp r6, r7
	beq _020CF9C0
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NHTTPi_compareToken

	arm_func_start NHTTPi_strtonum
NHTTPi_strtonum: ; 0x020CFA34
	stmfd sp!, {r3, lr}
	mov r12, #0
	cmp r1, #0
	mov lr, r12
	sub r1, r1, #1
	beq _020CFA94
	mov r2, #0xa
_020CFA50:
	ldrsb r3, [r0]
	cmp r3, #0x20
	beq _020CFA84
	cmp r3, #0x30
	blt _020CFA84
	cmp r3, #0x39
	bgt _020CFA84
	mla r3, lr, r2, r3
	add r12, r12, #1
	cmp r12, #9
	sub lr, r3, #0x30
	mvngt r0, #0
	ldmgtfd sp!, {r3, pc}
_020CFA84:
	cmp r1, #0
	add r0, r0, #1
	sub r1, r1, #1
	bne _020CFA50
_020CFA94:
	cmp r12, #0
	mvneq lr, #0
	mov r0, lr
	ldmfd sp!, {r3, pc}
	arm_func_end NHTTPi_strtonum

	arm_func_start NHTTPi_memfind
NHTTPi_memfind: ; 0x020CFAA4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	cmp r1, r3
	mvnlt r0, #0
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
	sub r1, r1, r3
	add r8, r1, #1
	cmp r8, #0
	mov r4, #0
	ble _020CFB20
	ldrsb r7, [r2]
	mov lr, #1
_020CFAD0:
	ldrsb r1, [r0, r4]
	cmp r7, r1
	bne _020CFB14
	mov r5, lr
	cmp r3, #1
	add r6, r0, r4
	ble _020CFB08
_020CFAEC:
	ldrsb r12, [r6, r5]
	ldrsb r1, [r2, r5]
	cmp r12, r1
	bne _020CFB08
	add r5, r5, #1
	cmp r5, r3
	blt _020CFAEC
_020CFB08:
	cmp r5, r3
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_020CFB14:
	add r4, r4, #1
	cmp r4, r8
	blt _020CFAD0
_020CFB20:
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NHTTPi_memfind

    .rodata
ov15_020E3ED0:
	.word 1000000000
	.word 100000000
	.word 10000000
	.word 1000000
	.word 100000
	.word 10000
	.word 1000
	.word 100
	.word 10

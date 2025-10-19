
	.include "asm/macros/function.inc"
	.public memcmp
	.public MI_CpuCopy8
	.public MATH_MD5Init
	.public MATH_MD5Update
	.public MATH_MD5GetHash
	.public MI_CpuCopy8

	.text
	arm_func_start DWCi_AC_CheckNintendoShopAP
DWCi_AC_CheckNintendoShopAP: ; 0x020C60BC
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	add r4, sp, #0
	mov r1, r4
	bl decodeSSID
	ldr r1, _020C60F4 ; =0x020E43F4
	mov r0, r4
	mov r2, #8
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x18
	ldmfd sp!, {r4, pc}
_020C60F4: .word ov15_020E43F4
	arm_func_end DWCi_AC_CheckNintendoShopAP

	arm_func_start DWCi_AC_GetNintendoShopWepKey
DWCi_AC_GetNintendoShopWepKey: ; 0x020C60F8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	add r4, sp, #0
	mov r5, r1
	mov r1, r4
	bl decodeSSID
	mov r0, r4
	mov r1, r5
	bl makeShopWepKey
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DWCi_AC_GetNintendoShopWepKey

	arm_func_start DWCi_AC_GetPostalCode
DWCi_AC_GetPostalCode: ; 0x020C6124
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	add r4, sp, #0
	mov r5, r1
	mov r1, r4
	bl decodeSSID
	ldr r1, _020C6170 ; =0x020E43F4
	mov r0, r4
	mov r2, #8
	bl memcmp
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, pc}
	add r0, sp, #8
	mov r1, r5
	mov r2, #0xa
	bl MI_CpuCopy8
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, pc}
_020C6170: .word ov15_020E43F4
	arm_func_end DWCi_AC_GetPostalCode

	arm_func_start DWCi_AC_CheckNintendoUsbAP
DWCi_AC_CheckNintendoUsbAP: ; 0x020C6174
	stmfd sp!, {r3, lr}
	ldr r1, _020C6194 ; =0x020E4400
	mov r2, #8
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_020C6194: .word ov15_020E4400
	arm_func_end DWCi_AC_CheckNintendoUsbAP

	arm_func_start DWCi_AC_GetNintendoUSBWepKey
DWCi_AC_GetNintendoUSBWepKey: ; 0x020C6198
	ldr r12, _020C61A4 ; =makeUsbWepKey
	add r0, r0, #0xc
	bx r12
_020C61A4: .word makeUsbWepKey
	arm_func_end DWCi_AC_GetNintendoUSBWepKey

	arm_static_func_start decodeSSID
decodeSSID: ; 0x020C61A8
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	ldr lr, _020C629C ; =0x020E3D40
	add r12, sp, #0
	mov r4, r1
	mov r3, #0xc
_020C61C0:
	ldrb r1, [lr, #1]
	ldrb r2, [lr], #2
	subs r3, r3, #1
	strb r1, [r12, #1]
	strb r2, [r12], #2
	bne _020C61C0
	mov r1, r4
	mov r2, #0x20
	mov r3, #0x18
	bl db64
	ldr r0, _020C62A0 ; =SHMASKkey0
	mov r3, #0
_020C61F0:
	ldr r1, [r0, #8]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0x18
	blt _020C61F0
	mov r6, #0
	add r12, sp, #0
	mov r1, #0xff
_020C621C:
	and r2, r6, #0xff
	ldrb r0, [r12, r2]
	mov lr, r2
	ldrb r5, [r4, r6]
	cmp r0, #0xff
	beq _020C6260
_020C6234:
	add r0, r12, lr
	ldrb lr, [r12, lr]
	ldrb r2, [r12, r2]
	ldrb r3, [r4, lr]
	strb r1, [r0]
	ldrb r0, [r12, lr]
	strb r5, [r4, r2]
	mov r2, lr
	mov r5, r3
	cmp r0, #0xff
	bne _020C6234
_020C6260:
	add r6, r6, #1
	cmp r6, #0x18
	blt _020C621C
	ldr r0, _020C62A0 ; =SHMASKkey0
	mov r3, #0
_020C6274:
	ldr r1, [r0]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0x18
	blt _020C6274
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, pc}
_020C629C: .word ov15_020E3D40
_020C62A0: .word SHMASKkey0
	arm_func_end decodeSSID

	arm_static_func_start makeShopWepKey
makeShopWepKey: ; 0x020C62A4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x6c
	add r4, sp, #0x14
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl MATH_MD5Init
	mov r0, r4
	mov r1, r6
	mov r2, #0x18
	bl MATH_MD5Update
	add r1, sp, #0
	mov r0, r4
	bl MATH_MD5GetHash
	add r0, sp, #3
	mov r1, r5
	mov r2, #0xd
	bl MI_CpuCopy8
	add sp, sp, #0x6c
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end makeShopWepKey

	arm_static_func_start makeUsbWepKey
makeUsbWepKey: ; 0x020C62F4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	ldr lr, _020C6490 ; =0x92492493
	mov r4, r1
	mov r1, #0
	mov r12, #7
_020C630C:
	smull r2, r3, lr, r1
	add r3, r1, r3
	mov r2, r1, lsr #0x1f
	add r3, r2, r3, asr #2
	smull r2, r3, r12, r3
	sub r3, r1, r2
	add r2, r0, r3
	ldrb r3, [r0, r1]
	ldrb r2, [r2, #0xd]
	eor r2, r3, r2
	strb r2, [r4, r1]
	add r1, r1, #1
	cmp r1, #0xd
	blt _020C630C
	mov r5, #0
_020C6348:
	add r3, r4, r5
	add r1, r0, r5
	ldrb r2, [r3, #3]
	ldrb r1, [r1, #0xd]
	add r5, r5, #1
	cmp r5, #7
	eor r1, r2, r1
	strb r1, [r3, #3]
	blt _020C6348
	ldr r0, _020C6494 ; =SHMASKkey0
	mov r3, #0
_020C6374:
	ldr r1, [r0, #4]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0xd
	blt _020C6374
	add r5, sp, #0
	mov r0, r4
	mov r1, r5
	mov r2, #0xd
	bl MI_CpuCopy8
	ldr r1, _020C6498 ; =CONV_BYTE_TABLE
	mov r3, #0
_020C63B0:
	ldrb r2, [r5, r3]
	ldrb r0, [r1, r3]
	add r3, r3, #1
	cmp r3, #0xd
	strb r2, [r4, r0]
	blt _020C63B0
	ldr r0, _020C6494 ; =SHMASKkey0
	mov r3, #0
_020C63D0:
	ldr r1, [r0, #0xc]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0xd
	blt _020C63D0
	ldr r2, _020C649C ; =CONV_4BIT_TABLE
	mov r5, #0
_020C63F8:
	ldrb r3, [r4, r5]
	mov r0, r3, asr #4
	and r1, r0, #0xf
	and r0, r3, #0xf
	ldrb r1, [r2, r1]
	ldrb r0, [r2, r0]
	orr r0, r0, r1, lsl #4
	strb r0, [r4, r5]
	add r5, r5, #1
	cmp r5, #0xd
	blt _020C63F8
	mov r1, #0
_020C6428:
	add r0, r4, r1
	ldrb r3, [r4, r1]
	ldrb r2, [r0, #6]
	eor r2, r3, r2
	strb r2, [r4, r1]
	ldrb r3, [r0, #3]
	ldrb r2, [r0, #9]
	eor r2, r3, r2
	strb r2, [r0, #3]
	ldrb r3, [r0, #6]
	and r2, r2, #0xff
	eor r2, r3, r2
	strb r2, [r0, #6]
	ldrb r3, [r0, #9]
	ldrb r2, [r4, r1]
	eor r2, r3, r2
	strb r2, [r0, #9]
	ldrb r0, [r4, r1]
	ldrb r2, [r4, #0xc]
	add r1, r1, #1
	cmp r1, #3
	eor r0, r2, r0
	strb r0, [r4, #0xc]
	blt _020C6428
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_020C6490: .word 0x92492493
_020C6494: .word SHMASKkey0
_020C6498: .word CONV_BYTE_TABLE
_020C649C: .word CONV_4BIT_TABLE
	arm_func_end makeUsbWepKey

	arm_static_func_start codetovalue
codetovalue: ; 0x020C64A0
	cmp r0, #0x41
	blo _020C64B4
	cmp r0, #0x5a
	subls r0, r0, #0x41
	bxls lr
_020C64B4:
	cmp r0, #0x61
	blo _020C64CC
	cmp r0, #0x7a
	subls r0, r0, #0x61
	addls r0, r0, #0x1a
	bxls lr
_020C64CC:
	cmp r0, #0x30
	blo _020C64E4
	cmp r0, #0x39
	subls r0, r0, #0x30
	addls r0, r0, #0x34
	bxls lr
_020C64E4:
	cmp r0, #0x2b
	moveq r0, #0x3e
	bxeq lr
	cmp r0, #0x2f
	moveq r0, #0x3f
	bxeq lr
	cmp r0, #0x3d
	movne r0, #1
	moveq r0, #0
	rsb r0, r0, #0
	bx lr
	arm_func_end codetovalue

	arm_static_func_start db64
db64: ; 0x020C6510
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	add r4, r2, r2, lsl #1
	str r0, [sp]
	cmp r3, r4, lsr #2
	mov r0, r4, lsr #2
	andhs r7, r2, #3
	str r1, [sp, #4]
	str r0, [sp, #8]
	subhs r11, r2, r7
	bhs _020C6548
	add sp, sp, #0x14
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C6548:
	cmp r11, #0
	mov r8, #0
	ble _020C65D0
	add r5, sp, #0x10
	mov r4, #6
_020C655C:
	ldr r0, [sp]
	mov r6, #0
	mov r9, r6
	add r10, r0, r8
_020C656C:
	ldrb r0, [r10, r9]
	bl codetovalue
	rsb r1, r9, #3
	mul r2, r1, r4
	orr r6, r6, r0, lsl r2
	add r9, r9, #1
	cmp r9, #4
	blt _020C656C
	mov r0, r8, asr #1
	add r0, r8, r0, lsr #30
	mov r0, r0, asr #2
	add r1, r0, r0, lsl #1
	ldr r0, [sp, #4]
	mov r2, #0
	str r6, [sp, #0x10]
	add r1, r0, r1
_020C65AC:
	rsb r0, r2, #2
	ldrb r0, [r5, r0]
	strb r0, [r1, r2]
	add r2, r2, #1
	cmp r2, #3
	blt _020C65AC
	add r8, r8, #4
	cmp r8, r11
	blt _020C655C
_020C65D0:
	cmp r7, #0
	beq _020C665C
	mov r5, #0
	mov r6, r5
	str r5, [sp, #0xc]
	ble _020C6620
	ldr r0, [sp]
	mov r9, r5
	add r4, r0, r11
	mov r8, #6
_020C65F8:
	ldrb r0, [r4, r6]
	bl codetovalue
	rsb r1, r6, #3
	mul r2, r1, r8
	orr r5, r5, r0, lsl r2
	add r6, r6, #1
	cmp r6, r7
	orr r9, r9, r5
	blt _020C65F8
	str r9, [sp, #0xc]
_020C6620:
	cmp r7, #0
	mov r3, #0
	ble _020C665C
	add r1, r11, r11, lsl #1
	mov r0, r1, asr #1
	add r1, r1, r0, lsr #30
	ldr r0, [sp, #4]
	add r2, r0, r1, asr #2
	add r1, sp, #0xc
_020C6644:
	rsb r0, r3, #2
	ldrb r0, [r1, r0]
	strb r0, [r2, r3]
	add r3, r3, #1
	cmp r3, r7
	blt _020C6644
_020C665C:
	ldr r0, [sp, #8]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end db64

    .rodata
CONV_BYTE_TABLE:
	.byte 0x05, 0x01, 0x0C, 0x04, 0x02, 0x03, 0x0A, 0x00, 0x0B, 0x07, 0x09, 0x08
	.byte 0x06
CONV_4BIT_TABLE:
	.byte 0x0A, 0x0D, 0x0E, 0x08, 0x09, 0x03, 0x06, 0x00, 0x0C, 0x05, 0x02, 0x07, 0x0B, 0x01, 0x0F
	.byte 0x04, 0x00, 0x00, 0x00
ov15_020E3D40:
	.byte 0x17, 0x14, 0x11, 0x0D, 0x0B, 0x06, 0x0F, 0x0E, 0x09, 0x15, 0x0C, 0x04
	.byte 0x02, 0x01, 0x12, 0x10, 0x05, 0x03, 0x13, 0x0A, 0x07, 0x08, 0x00, 0x16

    .data
SHMASKkey0:
	.word ov15_020E43D8
MASKkey0:
	.word ov15_020E439C
SHMASKkey1:
	.word ov15_020E43BC
MASKkey1:
	.word ov15_020E43AC
ov15_020E439C:
	.asciz "gwi'6&fs=0Nf~" 
	.balign 4, 0
ov15_020E43AC:
	.asciz "%(egEr)ag(s&m" 
	.balign 4, 0
ov15_020E43BC:
	.asciz "952uybjnpmu903bia@bk5m[-" 
	.balign 4, 0
ov15_020E43D8:
	.asciz "38g6zxjk20gvmv]6^=j&%vY1" 
	.balign 4, 0
ov15_020E43F4:
	.asciz "NDWCSHAP" 
	.balign 4, 0
ov15_020E4400:
	.asciz "NWCUSBAP" 
	.balign 4, 0
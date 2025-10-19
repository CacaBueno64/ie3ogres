
	.include "asm/macros/function.inc"
	.public DWCi_AUTH_GetNewWiFiInfo
	.public DWCi_BACKUPlConvMaskAddr
	.public DWCi_BACKUPlConvMaskCidr
	.public DWCi_BACKUPlConvWifiInfo
	.public DWCi_BACKUPlRead
	.public DWCi_BACKUPlWritePage
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public DWCi_STRlNLen
	.public MATH_CalcCRC16
	.public MATHi_CRC16InitTableRev
	.public MI_CpuCopy8
	.public MI_CpuFill8
	.public MIi_CpuClear16
	.public OS_SPrintf
	.public atoi
	.public memcmp

	.text
	arm_func_start DWCi_SETTIGNlInit
DWCi_SETTIGNlInit: ; 0x02107044
	stmfd sp!, {r4, lr}
	ldr r0, _02107078 ; =0x000006F8
	mov r1, #0x20
	bl DWCi_HEAPlAllocEx
	ldr r4, _0210707C ; =0x021162A4
	add r2, r0, #0xf8
	str r0, [r4]
	ldr r1, _02107080 ; =0x0000A001
	add r0, r2, #0x400
	bl MATHi_CRC16InitTableRev
	ldr r0, [r4]
	bl DWCi_BACKUPlRead
	ldmfd sp!, {r4, pc}
_02107078: .word 0x000006F8
_0210707C: .word MemSet
_02107080: .word 0x0000A001
	arm_func_end DWCi_SETTIGNlInit

	arm_func_start DWCi_SETTIGNlEnd
DWCi_SETTIGNlEnd: ; 0x02107084
	ldr r0, _02107090 ; =0x021162A4
	ldr r12, _02107094 ; =DWCi_HEAPlFree_
	bx r12
_02107090: .word MemSet
_02107094: .word DWCi_HEAPlFree_
	arm_func_end DWCi_SETTIGNlEnd

	arm_func_start DWCi_SETTIGNlGet
DWCi_SETTIGNlGet: ; 0x02107098
	ldr r0, _021070A8 ; =0x021162A4
	ldr r0, [r0]
	add r0, r0, #0x400
	bx lr
_021070A8: .word MemSet
	arm_func_end DWCi_SETTIGNlGet

	arm_func_start DWCi_SETTINGlSetIpAuto
DWCi_SETTINGlSetIpAuto: ; 0x021070AC
	ldr r1, _021070BC ; =0x021162A4
	ldr r1, [r1]
	strb r0, [r1, #0x4f5]
	bx lr
_021070BC: .word MemSet
	arm_func_end DWCi_SETTINGlSetIpAuto

	arm_func_start DWCi_SETTINGlSetDnsAuto
DWCi_SETTINGlSetDnsAuto: ; 0x021070C0
	ldr r1, _021070D0 ; =0x021162A4
	ldr r1, [r1]
	strb r0, [r1, #0x4f6]
	bx lr
_021070D0: .word MemSet
	arm_func_end DWCi_SETTINGlSetDnsAuto

	arm_func_start DWCi_SETTINGlSetSsid
DWCi_SETTINGlSetSsid: ; 0x021070D4
	stmfd sp!, {r4, lr}
	ldr r4, _021070FC ; =0x021162A4
	mov r2, #0x20
	ldr r1, [r4]
	add r1, r1, #0x440
	bl MI_CpuCopy8
	ldr r0, [r4]
	mov r1, #0
	strb r1, [r0, #0x4e7]
	ldmfd sp!, {r4, pc}
_021070FC: .word MemSet
	arm_func_end DWCi_SETTINGlSetSsid

	arm_func_start DWCi_SETTINGlSetWep
DWCi_SETTINGlSetWep: ; 0x02107100
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r7, _0210727C ; =0x021162A4
	mov r6, r0
	ldr r0, [r7]
	mov r1, #0
	add r0, r0, #0x480
	mov r2, #0x10
	bl MI_CpuFill8
	mov r0, r6
	mov r1, #0x20
	bl DWCi_STRlNLen
	mov r5, r0
	cmp r5, #0xa
	bgt _02107148
	bge _02107160
	cmp r5, #0
	beq _02107160
	b _021071B4
_02107148:
	cmp r5, #0x1a
	bgt _02107158
	beq _02107160
	b _021071B4
_02107158:
	cmp r5, #0x20
	bne _021071B4
_02107160:
	ldr r1, [r7]
	cmp r5, #0
	ldrb r0, [r1, #0x4e6]
	mov r4, #0
	bic r0, r0, #0xfc
	strb r0, [r1, #0x4e6]
	ldr r0, [r7]
	add r9, r0, #0x480
	ble _021071DC
_02107184:
	ldrb r0, [r6, r4]
	add r10, r6, r4
	bl ascii2hex
	mov r8, r0
	ldrb r0, [r10, #1]
	bl ascii2hex
	add r0, r0, r8, lsl #4
	add r4, r4, #2
	cmp r4, r5
	strb r0, [r9], #1
	blt _02107184
	b _021071DC
_021071B4:
	ldr r3, [r7]
	mov r0, r6
	ldrb r1, [r3, #0x4e6]
	mov r2, #0x10
	bic r1, r1, #0xfc
	orr r1, r1, #4
	strb r1, [r3, #0x4e6]
	ldr r1, [r7]
	add r1, r1, #0x480
	bl MI_CpuCopy8
_021071DC:
	cmp r5, #5
	bgt _021071F4
	bge _02107234
	cmp r5, #0
	beq _02107220
	b _02107264
_021071F4:
	cmp r5, #0xd
	bgt _02107214
	cmp r5, #0xa
	blt _02107264
	beq _02107234
	cmp r5, #0xd
	beq _0210724C
	b _02107264
_02107214:
	cmp r5, #0x1a
	beq _0210724C
	b _02107264
_02107220:
	ldr r1, [r7]
	ldrb r0, [r1, #0x4e6]
	bic r0, r0, #3
	strb r0, [r1, #0x4e6]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02107234:
	ldr r1, [r7]
	ldrb r0, [r1, #0x4e6]
	bic r0, r0, #3
	orr r0, r0, #1
	strb r0, [r1, #0x4e6]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0210724C:
	ldr r1, [r7]
	ldrb r0, [r1, #0x4e6]
	bic r0, r0, #3
	orr r0, r0, #2
	strb r0, [r1, #0x4e6]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02107264:
	ldr r1, [r7]
	ldrb r0, [r1, #0x4e6]
	bic r0, r0, #3
	orr r0, r0, #3
	strb r0, [r1, #0x4e6]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0210727C: .word MemSet
	arm_func_end DWCi_SETTINGlSetWep

	arm_func_start DWCi_SETTINGlSetIp
DWCi_SETTINGlSetIp: ; 0x02107280
	ldr r1, _02107294 ; =0x021162A4
	ldr r12, _02107298 ; =DWCi_SETTINGlConvAddress
	ldr r1, [r1]
	add r1, r1, #0x4c0
	bx r12
_02107294: .word MemSet
_02107298: .word DWCi_SETTINGlConvAddress
	arm_func_end DWCi_SETTINGlSetIp

	arm_func_start DWCi_SETTINGlSetNetMask
DWCi_SETTINGlSetNetMask: ; 0x0210729C
	ldr r1, _021072B0 ; =0x021162A4
	ldr r12, _021072B4 ; =DWCi_SETTINGlConvAddress
	ldr r1, [r1]
	add r1, r1, #0x4f0
	bx r12
_021072B0: .word MemSet
_021072B4: .word DWCi_SETTINGlConvAddress
	arm_func_end DWCi_SETTINGlSetNetMask

	arm_func_start DWCi_SETTINGlSetGateway
DWCi_SETTINGlSetGateway: ; 0x021072B8
	ldr r1, _021072D0 ; =0x021162A4
	ldr r12, _021072D4 ; =DWCi_SETTINGlConvAddress
	ldr r1, [r1]
	add r1, r1, #0xc4
	add r1, r1, #0x400
	bx r12
_021072D0: .word MemSet
_021072D4: .word DWCi_SETTINGlConvAddress
	arm_func_end DWCi_SETTINGlSetGateway

	arm_func_start DWCi_SETTINGlSetDnsP
DWCi_SETTINGlSetDnsP: ; 0x021072D8
	ldr r1, _021072F0 ; =0x021162A4
	ldr r12, _021072F4 ; =DWCi_SETTINGlConvAddress
	ldr r1, [r1]
	add r1, r1, #0xc8
	add r1, r1, #0x400
	bx r12
_021072F0: .word MemSet
_021072F4: .word DWCi_SETTINGlConvAddress
	arm_func_end DWCi_SETTINGlSetDnsP

	arm_func_start DWCi_SETTINGlSetDnsS
DWCi_SETTINGlSetDnsS: ; 0x021072F8
	ldr r1, _02107310 ; =0x021162A4
	ldr r12, _02107314 ; =DWCi_SETTINGlConvAddress
	ldr r1, [r1]
	add r1, r1, #0xcc
	add r1, r1, #0x400
	bx r12
_02107310: .word MemSet
_02107314: .word DWCi_SETTINGlConvAddress
	arm_func_end DWCi_SETTINGlSetDnsS

	arm_func_start DWCi_SETTINGlGetSsid
DWCi_SETTINGlGetSsid: ; 0x02107318
	ldr r2, _02107334 ; =0x021162A4
	mov r1, r0
	ldr r0, [r2]
	ldr r12, _02107338 ; =MI_CpuCopy8
	mov r2, #0x20
	add r0, r0, #0x440
	bx r12
_02107334: .word MemSet
_02107338: .word MI_CpuCopy8
	arm_func_end DWCi_SETTINGlGetSsid

	arm_func_start DWCi_SETTINGlGetIp
DWCi_SETTINGlGetIp: ; 0x0210733C
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r2, _02107374 ; =0x021162A4
	ldr r1, _02107378 ; =0x02113534
	ldr r3, [r2]
	ldrb r2, [r3, #0x4c2]
	str r2, [sp]
	ldrb r2, [r3, #0x4c3]
	str r2, [sp, #4]
	ldrb r2, [r3, #0x4c0]
	ldrb r3, [r3, #0x4c1]
	bl OS_SPrintf
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_02107374: .word MemSet
_02107378: .word ov17_02113534
	arm_func_end DWCi_SETTINGlGetIp

	arm_func_start DWCi_SETTINGlGetNetMask
DWCi_SETTINGlGetNetMask: ; 0x0210737C
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r2, _021073B4 ; =0x021162A4
	ldr r1, _021073B8 ; =0x02113534
	ldr r3, [r2]
	ldrb r2, [r3, #0x4f2]
	str r2, [sp]
	ldrb r2, [r3, #0x4f3]
	str r2, [sp, #4]
	ldrb r2, [r3, #0x4f0]
	ldrb r3, [r3, #0x4f1]
	bl OS_SPrintf
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_021073B4: .word MemSet
_021073B8: .word ov17_02113534
	arm_func_end DWCi_SETTINGlGetNetMask

	arm_func_start DWCi_SETTINGlGetGateway
DWCi_SETTINGlGetGateway: ; 0x021073BC
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r2, _021073F8 ; =0x021162A4
	ldr r1, _021073FC ; =0x02113534
	ldr r12, [r2]
	add r3, r12, #0xc4
	ldrb r2, [r3, #0x402]
	str r2, [sp]
	ldrb r2, [r3, #0x403]
	str r2, [sp, #4]
	ldrb r2, [r12, #0x4c4]
	ldrb r3, [r3, #0x401]
	bl OS_SPrintf
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_021073F8: .word MemSet
_021073FC: .word ov17_02113534
	arm_func_end DWCi_SETTINGlGetGateway

	arm_func_start DWCi_SETTINGlGetDnsP
DWCi_SETTINGlGetDnsP: ; 0x02107400
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r2, _0210743C ; =0x021162A4
	ldr r1, _02107440 ; =0x02113534
	ldr r12, [r2]
	add r3, r12, #0xc8
	ldrb r2, [r3, #0x402]
	str r2, [sp]
	ldrb r2, [r3, #0x403]
	str r2, [sp, #4]
	ldrb r2, [r12, #0x4c8]
	ldrb r3, [r3, #0x401]
	bl OS_SPrintf
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_0210743C: .word MemSet
_02107440: .word ov17_02113534
	arm_func_end DWCi_SETTINGlGetDnsP

	arm_func_start DWCi_SETTINGlGetDnsS
DWCi_SETTINGlGetDnsS: ; 0x02107444
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r2, _02107480 ; =0x021162A4
	ldr r1, _02107484 ; =0x02113534
	ldr r12, [r2]
	add r3, r12, #0xcc
	ldrb r2, [r3, #0x402]
	str r2, [sp]
	ldrb r2, [r3, #0x403]
	str r2, [sp, #4]
	ldrb r2, [r12, #0x4cc]
	ldrb r3, [r3, #0x401]
	bl OS_SPrintf
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_02107480: .word MemSet
_02107484: .word ov17_02113534
	arm_func_end DWCi_SETTINGlGetDnsS

	arm_func_start DWCi_SETTINGlGetSetType
DWCi_SETTINGlGetSetType: ; 0x02107488
	ldr r1, _0210749C ; =0x021162A4
	ldr r1, [r1]
	add r0, r1, r0, lsl #8
	ldrb r0, [r0, #0xe7]
	bx lr
_0210749C: .word MemSet
	arm_func_end DWCi_SETTINGlGetSetType

	arm_func_start DWCi_SETTINGlSetSetting
DWCi_SETTINGlSetSetting: ; 0x021074A0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _02107564 ; =0x021162A4
	mov r3, #0x78
	ldr r12, [r5]
	add r4, r12, r0, lsl #8
	mov r7, r4
	add r6, r12, #0x400
_021074BC:
	ldrb r2, [r7]
	ldrb r1, [r7, #1]
	add r7, r7, #2
	subs r3, r3, #1
	strb r1, [r6, #1]
	strb r2, [r6], #2
	bne _021074BC
	ldr r1, _02107568 ; =0x0211258C
	strb r0, [r12, #0x4f4]
	add r0, r4, #0xc0
	mov r2, #4
	bl memcmp
	cmp r0, #0
	mov r1, #0
	mov r6, #4
	ldr r0, [r5]
	moveq r1, #1
	strb r1, [r0, #0x4f5]
	ldr r7, _02107568 ; =0x0211258C
	mov r2, r6
	mov r1, r7
	add r0, r4, #0xc8
	bl memcmp
	cmp r0, #0
	bne _02107538
	mov r1, r7
	mov r2, r6
	add r0, r4, #0xcc
	bl memcmp
	cmp r0, #0
	beq _02107544
_02107538:
	ldr r0, [r5]
	mov r1, #0
	b _0210754C
_02107544:
	ldr r0, [r5]
	mov r1, #1
_0210754C:
	strb r1, [r0, #0x4f6]
	ldr r1, [r5]
	ldrb r0, [r4, #0xd0]
	add r1, r1, #0x4f0
	bl DWCi_BACKUPlConvMaskAddr
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02107564: .word MemSet
_02107568: .word SETTING_NONE
	arm_func_end DWCi_SETTINGlSetSetting

	arm_func_start DWCi_SETTINGlSet
DWCi_SETTINGlSet: ; 0x0210756C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _0210764C ; =0x021162A4
	mov r2, #0x78
	ldr r1, [r0]
	add r4, r1, #0x400
	ldrb r0, [r4, #0xf4]
	mov r6, r4
	add r5, r1, r0, lsl #8
	mov r3, r5
_02107590:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	add r6, r6, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02107590
	ldrb r0, [r4, #0xf5]
	mov r6, #4
	cmp r0, #0
	beq _021075E8
	mov r7, #0
	mov r1, r7
	mov r2, r6
	add r0, r5, #0xc0
	bl MI_CpuFill8
	mov r1, r7
	mov r2, r6
	add r0, r5, #0xc4
	bl MI_CpuFill8
	strb r7, [r5, #0xd0]
	b _02107614
_021075E8:
	mov r2, r6
	add r0, r4, #0xc0
	add r1, r5, #0xc0
	bl MI_CpuCopy8
	mov r2, r6
	add r0, r4, #0xc4
	add r1, r5, #0xc4
	bl MI_CpuCopy8
	add r0, r4, #0xf0
	bl DWCi_BACKUPlConvMaskCidr
	strb r0, [r5, #0xd0]
_02107614:
	ldrb r0, [r4, #0xf6]
	mov r2, #8
	cmp r0, #0
	beq _02107634
	add r0, r5, #0xc8
	mov r1, #0
	bl MI_CpuFill8
	b _02107640
_02107634:
	add r0, r4, #0xc8
	add r1, r5, #0xc8
	bl MI_CpuCopy8
_02107640:
	ldrb r0, [r4, #0xf4]
	bl write
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210764C: .word MemSet
	arm_func_end DWCi_SETTINGlSet

	arm_func_start DWCi_SETTINGlSetRaku
DWCi_SETTINGlSetRaku: ; 0x02107650
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _0210774C ; =0x021162A4
	mov r6, #0
	ldr r4, [r1]
	mov r7, r0
	mov r1, r6
	add r0, r4, #0x400
	mov r2, #0xef
	bl MI_CpuFill8
	mov r0, r7
	add r1, r4, #0x440
	mov r2, #0x20
	bl MI_CpuCopy8
	ldr r0, [r7, #0x20]
	cmp r0, #1
	beq _021076A4
	cmp r0, #2
	beq _021076B8
	cmp r0, #3
	beq _021076CC
	b _021076E0
_021076A4:
	ldrb r0, [r4, #0x4e6]
	mov r6, #5
	bic r0, r0, #3
	orr r0, r0, #1
	b _021076E8
_021076B8:
	ldrb r0, [r4, #0x4e6]
	mov r6, #0xd
	bic r0, r0, #3
	orr r0, r0, #2
	b _021076E8
_021076CC:
	ldrb r0, [r4, #0x4e6]
	mov r6, #0x10
	bic r0, r0, #3
	orr r0, r0, #3
	b _021076E8
_021076E0:
	ldrb r0, [r4, #0x4e6]
	bic r0, r0, #3
_021076E8:
	strb r0, [r4, #0x4e6]
	ldrb r0, [r4, #0x4e6]
	add r8, r7, #0x28
	mov r5, #0
	bic r0, r0, #0xfc
	strb r0, [r4, #0x4e6]
	add r7, r4, #0x480
_02107704:
	mov r2, r6
	add r0, r8, r5, lsl #5
	add r1, r7, r5, lsl #4
	bl MI_CpuCopy8
	add r5, r5, #1
	cmp r5, #4
	blt _02107704
	mov r3, #2
	add r0, r4, #0x4f0
	mov r1, #0
	mov r2, #4
	strb r3, [r4, #0x4e7]
	bl MI_CpuFill8
	mov r0, #1
	strb r0, [r4, #0x4f5]
	strb r0, [r4, #0x4f6]
	bl DWCi_SETTINGlSet
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210774C: .word MemSet
	arm_func_end DWCi_SETTINGlSetRaku

	arm_func_start DWCi_SETTINGlSetAoss
DWCi_SETTINGlSetAoss: ; 0x02107750
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _02107864 ; =0x021162A4
	mov r7, #0
	ldr r1, [r1]
	mov r8, r0
	add r4, r1, #0x400
	mov r0, r4
	mov r1, r7
	mov r2, #0xef
	bl MI_CpuFill8
	mov r5, #5
	mov r0, r8
	mov r2, r5
	add r1, r4, #0xd1
	bl MI_CpuCopy8
	mov r2, r5
	add r0, r8, #6
	add r1, r4, #0xd6
	bl MI_CpuCopy8
	add r0, r8, #0xc
	add r1, r4, #0xdb
	mov r2, r5
	bl MI_CpuCopy8
	mov r2, r5
	add r0, r8, #0x12
	add r1, r4, #0xe0
	bl MI_CpuCopy8
	add r0, r8, #0x18
	add r1, r4, #0x60
	mov r6, #0x20
	mov r2, r6
	bl MI_CpuCopy8
	add r0, r8, #0x39
	add r1, r4, #0x80
	mov r5, #0xd
	mov r2, r5
	bl MI_CpuCopy8
	add r0, r8, #0x47
	add r1, r4, #0x90
	mov r2, r5
	bl MI_CpuCopy8
	add r0, r8, #0x55
	add r1, r4, #0xa0
	mov r2, r5
	bl MI_CpuCopy8
	mov r2, r5
	add r0, r8, #0x63
	add r1, r4, #0xb0
	bl MI_CpuCopy8
	add r0, r8, #0x71
	mov r2, r6
	add r1, r4, #0x40
	bl MI_CpuCopy8
	mov r1, r7
	ldrb r2, [r4, #0xe6]
	mov r5, #1
	add r0, r4, #0xf0
	bic r2, r2, #3
	orr r2, r2, #2
	and r2, r2, #0xff
	bic r2, r2, #0xfc
	strb r2, [r4, #0xe6]
	strb r5, [r4, #0xe7]
	mov r2, #4
	bl MI_CpuFill8
	strb r5, [r4, #0xf5]
	strb r5, [r4, #0xf6]
	bl DWCi_SETTINGlSet
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02107864: .word MemSet
	arm_func_end DWCi_SETTINGlSetAoss

	arm_func_start DWCi_SETTINGlGetMemMap
DWCi_SETTINGlGetMemMap: ; 0x02107868
	ldr r0, _02107874 ; =0x021162A4
	ldr r0, [r0]
	bx lr
_02107874: .word MemSet
	arm_func_end DWCi_SETTINGlGetMemMap

	arm_func_start DWCi_SETTINGlErasePage
DWCi_SETTINGlErasePage: ; 0x02107878
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _021078B0 ; =0x021162A4
	mov r5, r0
	ldr r0, [r1]
	mov r1, #0
	add r4, r0, r5, lsl #8
	mov r0, r4
	mov r2, #0xef
	bl MI_CpuFill8
	mov r1, #0xff
	mov r0, r5
	strb r1, [r4, #0xe7]
	bl write
	ldmfd sp!, {r3, r4, r5, pc}
_021078B0: .word MemSet
	arm_func_end DWCi_SETTINGlErasePage

	arm_func_start DWCi_SETTINGlEraseAll
DWCi_SETTINGlEraseAll: ; 0x021078B4
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	ldr r4, _02107958 ; =0x021162A4
	mov r5, #0
	ldr r1, [r4]
	mov r0, r5
	mov r2, #0x400
	bl MIi_CpuClear16
	mov r1, #0xff
_021078D8:
	ldr r0, [r4]
	add r0, r0, r5, lsl #8
	add r5, r5, #1
	strb r1, [r0, #0xe7]
	cmp r5, #3
	blt _021078D8
	add r4, sp, #0
	mov r0, r4
	bl DWCi_AUTH_GetNewWiFiInfo
	mov r0, r4
	bl DWCi_BACKUPlConvWifiInfo
	ldr r4, _02107958 ; =0x021162A4
	mov r6, r0
	mov r7, #0
	mov r5, #0xe
_02107914:
	ldr r1, [r4]
	mov r0, r6
	add r1, r1, r7, lsl #8
	mov r2, r5
	add r1, r1, #0xf0
	bl MI_CpuCopy8
	add r7, r7, #1
	cmp r7, #2
	blt _02107914
	mov r4, #0
_0210793C:
	mov r0, r4
	bl write
	add r4, r4, #1
	cmp r4, #4
	blt _0210793C
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02107958: .word MemSet
	arm_func_end DWCi_SETTINGlEraseAll

	arm_static_func_start write
write: ; 0x0210795C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x14
	ldr r9, _02107AA8 ; =0x021162A4
	mov r8, r0
	ldr r1, [r9]
	mov r4, #1
	add r0, r1, r8, lsl #8
	ldrb r5, [r0, #0xe7]
	mov r7, #0
	add r10, sp, #4
	mov r0, r10
	mov r1, r7
	mov r2, #0x10
	mov r6, r4, lsl r8
	bl MI_CpuFill8
	str r4, [r10, r8, lsl #2]
	cmp r8, #2
	bgt _02107A2C
	ldr r0, [r9]
	ldr r1, _02107AA8 ; =0x021162A4
	ldrb r2, [r0, #0xef]
	tst r2, r6
	movne r7, r4
	cmp r5, #0xff
	bne _021079F0
	cmp r7, #0
	beq _021079F0
	ldrb r2, [r0, #0xef]
	mvn r3, r6
	and r3, r3, #0xff
	and r2, r2, r3
	strb r2, [r0, #0xef]
	ldr r2, [r1]
	mov r0, #1
	ldrb r1, [r2, #0x1ef]
	and r1, r1, r3
	b _02107A20
_021079F0:
	cmp r5, #0xff
	beq _02107A2C
	cmp r7, #0
	bne _02107A2C
	ldrb r2, [r0, #0xef]
	and r3, r6, #0xff
	orr r2, r2, r3
	strb r2, [r0, #0xef]
	ldr r2, [r1]
	mov r0, #1
	ldrb r1, [r2, #0x1ef]
	orr r1, r1, r3
_02107A20:
	strb r1, [r2, #0x1ef]
	str r0, [sp, #8]
	str r0, [sp, #4]
_02107A2C:
	ldr r6, _02107AA8 ; =0x021162A4
	mov r5, #0
	mov r7, #0xfe
	add r4, sp, #4
_02107A3C:
	ldr r0, [r4, r5, lsl #2]
	cmp r0, #0
	beq _02107A6C
	ldr r1, [r6]
	mov r2, r7
	add r0, r1, #0xf8
	add r0, r0, #0x400
	add r1, r1, r5, lsl #8
	bl MATH_CalcCRC16
	ldr r1, [r6]
	add r1, r1, r5, lsl #8
	strh r0, [r1, #0xfe]
_02107A6C:
	add r5, r5, #1
	cmp r5, #4
	blt _02107A3C
	mov r0, #0x100
	mov r1, #0x20
	bl DWCi_HEAPlAllocEx
	mov r2, r0
	str r2, [sp]
	ldr r0, [r6]
	add r1, sp, #4
	bl DWCi_BACKUPlWritePage
	add r0, sp, #0
	bl DWCi_HEAPlFree_
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02107AA8: .word MemSet
	arm_func_end write

	arm_func_start DWCi_SETTINGlConvAddress
DWCi_SETTINGlConvAddress: ; 0x02107AAC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	add r6, sp, #0
	mov r9, r0
	mov r7, #0
	mov r8, r1
	mov r0, r6
	mov r1, r7
	mov r2, #4
	bl MI_CpuFill8
	mov r10, #0x20
	mov r5, #3
	mov r4, r7
_02107AE0:
	add r0, r7, r7, lsl #1
	mov r1, r6
	mov r2, r5
	add r0, r9, r0
	bl MI_CpuCopy8
	mov r1, r4
_02107AF8:
	ldrb r0, [r6, r1]
	cmp r0, #0
	bne _02107B14
	strb r10, [r6, r1]
	add r1, r1, #1
	cmp r1, #3
	blt _02107AF8
_02107B14:
	mov r0, r6
	bl atoi
	strb r0, [r8, r7]
	add r7, r7, #1
	cmp r7, #4
	blt _02107AE0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end DWCi_SETTINGlConvAddress

	arm_static_func_start ascii2hex
ascii2hex: ; 0x02107B34
	cmp r0, #0x39
	subls r0, r0, #0x30
	bxls lr
	cmp r0, #0x46
	subls r0, r0, #0x37
	subhi r0, r0, #0x57
	bx lr
	arm_func_end ascii2hex

	.rodata
SETTING_NONE:
	.byte 0x00, 0x00, 0x00, 0x00

	.data
ov17_02113534:
	.asciz "%3d%3d%3d%3d"

	.bss
MemSet:
	.space 0x04

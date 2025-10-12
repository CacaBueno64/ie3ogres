
	.include "asm/macros/function.inc"
	.public DWCi_AC_GetMemPtr
	.public MIi_CpuClear32
	.public strncmp
	.public MI_CpuCopy8

	.text
	arm_func_start DWCi_AC_MakeSearchList
DWCi_AC_MakeSearchList: ; 0x020C4C14
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	mov r5, r0
	cmp r4, #0
	beq _020C4C44
	cmp r4, #1
	beq _020C4C64
	cmp r4, #2
	beq _020C4C8C
	b _020C4CBC
_020C4C44:
	add r1, r5, #0x300
	mov r0, #0
	mov r2, #0x144
	bl MIi_CpuClear32
	mov r0, r5
	bl MakeAroundList
	strb r0, [r5, #0xd10]
	b _020C4CBC
_020C4C64:
	bl MakeDifferChannelList
	strb r0, [r5, #0xd10]
	mov r0, r5
	bl CheckDifferChannelStart
	strb r0, [r5, #0xd0f]
	ldrb r0, [r5, #0xd10]
	cmp r0, #0
	bne _020C4CBC
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020C4C8C:
	mov r4, #0
	mov r0, r4
	add r1, r5, #0x300
	mov r2, #0x144
	bl MIi_CpuClear32
	mov r0, r5
	strb r4, [r5, #0xd0f]
	bl MakeStealthList
	strb r0, [r5, #0xd10]
	tst r0, #0xff
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
_020C4CBC:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DWCi_AC_MakeSearchList

	arm_func_start DWCi_AC_CheckFreespot
DWCi_AC_CheckFreespot: ; 0x020C4CC4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	ldrb r0, [r0, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	beq _020C4CEC
	cmp r0, #6
	bne _020C4D0C
_020C4CEC:
	mov r4, #8
	ldr r1, _020C4D14 ; =FREESPOT_SSID
	mov r2, r4
	add r0, r5, #0xc
	bl strncmp
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
_020C4D0C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020C4D14: .word FREESPOT_SSID
	arm_func_end DWCi_AC_CheckFreespot

	arm_func_start DWCi_AC_GetSearchListNum
DWCi_AC_GetSearchListNum: ; 0x020C4D18
	stmfd sp!, {r3, lr}
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	mov r3, #0
	mov r1, #0x24
_020C4D2C:
	mla r2, r3, r1, r0
	ldrb r2, [r2, #0x303]
	cmp r2, #0
	beq _020C4D4C
	add r2, r3, #1
	and r3, r2, #0xff
	cmp r3, #9
	blo _020C4D2C
_020C4D4C:
	mov r0, r3
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_AC_GetSearchListNum

	arm_static_func_start MakeAroundList
MakeAroundList: ; 0x020C4D54
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	add r4, r5, #0x300
	bl MakeUserList
	ldrb r1, [r5, #0xd0c]
	mov r6, r0
	mov r0, #0x24
	mla r4, r6, r0, r4
	mov r1, r1, lsl #0x1c
	movs r0, r1, lsr #0x1c
	cmpne r0, #6
	bne _020C4DA8
	mov r5, #8
	ldr r0, _020C4DB0 ; =FREESPOT_SSID
	mov r2, r5
	add r1, r4, #4
	bl MI_CpuCopy8
	strb r5, [r4, #3]
	add r0, r6, #1
	strb r5, [r4, #1]
	and r6, r0, #0xff
_020C4DA8:
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, pc}
_020C4DB0: .word FREESPOT_SSID
	arm_func_end MakeAroundList

	arm_static_func_start MakeStealthList
MakeStealthList: ; 0x020C4DB4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	add r5, r6, #0x300
	bl MakeUserList
	ldrb r1, [r6, #0xd0c]
	mov r4, r0
	mov r0, #0x24
	mla r5, r4, r0, r5
	mov r1, r1, lsl #0x1c
	movs r0, r1, lsr #0x1c
	cmpne r0, #4
	bne _020C4E10
	mov r7, #8
	ldr r0, _020C4E94 ; =0x020E4380
	mov r2, r7
	add r1, r5, #4
	bl MI_CpuCopy8
	add r0, r4, #1
	strb r7, [r5, #3]
	mov r1, #6
	strb r1, [r5, #1]
	and r4, r0, #0xff
	add r5, r5, #0x24
_020C4E10:
	ldrb r0, [r6, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	cmpne r0, #7
	bne _020C4E50
	mov r7, #8
	ldr r0, _020C4E98 ; =WAYPORT_SSID
	mov r2, r7
	add r1, r5, #4
	bl MI_CpuCopy8
	add r0, r4, #1
	strb r7, [r5, #3]
	mov r1, #9
	strb r1, [r5, #1]
	and r4, r0, #0xff
	add r5, r5, #0x24
_020C4E50:
	ldrb r0, [r6, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	cmpne r0, #8
	bne _020C4E8C
	mov r6, #0xb
	ldr r0, _020C4E9C ; =NINTENDOWFC_SSID
	mov r2, r6
	add r1, r5, #4
	bl MI_CpuCopy8
	add r0, r4, #1
	strb r6, [r5, #3]
	mov r1, #0xa
	strb r1, [r5, #1]
	and r4, r0, #0xff
_020C4E8C:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C4E94: .word ov15_020E4380
_020C4E98: .word WAYPORT_SSID
_020C4E9C: .word NINTENDOWFC_SSID
	arm_func_end MakeStealthList

	arm_static_func_start MakeUserList
MakeUserList: ; 0x020C4EA0
	stmfd sp!, {r4, r5, r6, lr}
	mov r2, #0
	mov r3, r0
	mov r1, r2
	add r12, r0, #0x300
_020C4EB4:
	ldrb r4, [r0, #0xd0c]
	mov r4, r4, lsl #0x1c
	movs r5, r4, lsr #0x1c
	beq _020C4ED0
	add r4, r1, #1
	cmp r5, r4
	bne _020C4F8C
_020C4ED0:
	ldrb r4, [r3, #0xe7]
	cmp r4, #0xff
	beq _020C4F8C
	mov r6, #0
_020C4EE0:
	add r4, r3, r6
	ldrb lr, [r4, #0x40]
	cmp lr, #0
	beq _020C4F08
	add r4, r6, #1
	add r5, r12, r6
	and r6, r4, #0xff
	strb lr, [r5, #4]
	cmp r6, #0x20
	blo _020C4EE0
_020C4F08:
	cmp r6, #0
	strneb r6, [r12, #3]
	movne r4, #1
	strneb r1, [r12, #1]
	moveq r4, #0
	cmp r4, #0
	addne r2, r2, #1
	ldrb r4, [r3, #0xe7]
	andne r2, r2, #0xff
	addne r12, r12, #0x24
	cmp r4, #1
	bne _020C4F8C
	mov r6, #0
_020C4F3C:
	add r4, r3, r6
	ldrb r5, [r4, #0x60]
	cmp r5, #0
	beq _020C4F64
	add lr, r6, #1
	add r4, r12, r6
	and r6, lr, #0xff
	strb r5, [r4, #4]
	cmp r6, #0x20
	blo _020C4F3C
_020C4F64:
	cmp r6, #0
	movne r4, #1
	strneb r6, [r12, #3]
	addne lr, r1, #3
	moveq r4, #0
	strneb lr, [r12, #1]
	cmp r4, #0
	addne r2, r2, #1
	andne r2, r2, #0xff
	addne r12, r12, #0x24
_020C4F8C:
	add r1, r1, #1
	cmp r1, #3
	add r3, r3, #0x100
	blt _020C4EB4
	mov r0, r2
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end MakeUserList

	arm_static_func_start MakeDifferChannelList
MakeDifferChannelList: ; 0x020C4FA4
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r1, [r0, #0xd12]
	mov r2, #0
	mov r3, r2
	cmp r1, #0
	ble _020C5024
	add r1, r0, #0x47
	add r1, r1, #0x400
	mov r12, #0xc0
_020C4FC8:
	add r4, r0, r3, lsl #2
	ldrb r4, [r4, #0x444]
	cmp r4, #0
	bne _020C5008
	mla r4, r3, r12, r0
	add lr, r4, #0x400
	ldrh r4, [lr, #0xa6]
	ldrb lr, [r1, r3, lsl #2]
	sub r5, r4, #1
	mov r4, lr, lsl #0x19
	cmp r5, r4, lsr #25
	bicne lr, lr, #0x80
	addne r2, r2, #1
	strneb lr, [r1, r3, lsl #2]
	andne r2, r2, #0xff
	bne _020C5014
_020C5008:
	ldrb lr, [r1, r3, lsl #2]
	orr lr, lr, #0x80
	strb lr, [r1, r3, lsl #2]
_020C5014:
	ldrb lr, [r0, #0xd12]
	add r3, r3, #1
	cmp r3, lr
	blt _020C4FC8
_020C5024:
	mov r0, r2
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end MakeDifferChannelList

	arm_static_func_start CheckDifferChannelStart
CheckDifferChannelStart: ; 0x020C502C
	ldrb r12, [r0, #0xd12]
	mov r3, #0
	mov r2, r3
	cmp r12, #0
	bls _020C5068
_020C5040:
	add r1, r0, r2, lsl #2
	ldrb r1, [r1, #0x447]
	mov r1, r1, lsl #0x18
	movs r1, r1, lsr #0x1f
	moveq r3, r2
	beq _020C5068
	add r1, r2, #1
	and r2, r1, #0xff
	cmp r2, r12
	blo _020C5040
_020C5068:
	mov r0, r3
	bx lr
	arm_func_end CheckDifferChannelStart

    .rodata
WAYPORT_SSID:
	.ascii "Wayport2"
FREESPOT_SSID:
	.ascii "FREESPOT"
NINTENDOWFC_SSID:
	.ascii "NINTENDOWFC"

    .data
ov15_020E4380:
	.asciz "NWCUSBAP"
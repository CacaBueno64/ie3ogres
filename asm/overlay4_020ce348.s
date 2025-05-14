


_020CE348: .word 0x02099EC0
_020CE34C: .word 0x0209A5D0
_020CE350: .word 0x02099F38
_020CE354: .word 0x020DB71C
_020CE358: .word 0x020DB79C
_020CE35C: .word 0x0209BA20
_020CE360: .word 0x000001C7
_020CE364: .word 0x02099ED8
_020CE368: .word 0x020AF81C
_020CE36C: .word 0x00000301
_020CE370: .word 0x02099ED4
_020CE374: .word 0x0209A110
_020CE378: .word 0x02099F58
_020CE37C: .word 0x0209AC44
_020CE380:
	cmp r3, #0x2d4
	bne _020CE39C
_020CE388:
	ldrh r2, [r0, #0x20]
	add r0, sp, #0x400
	add r0, r0, #0x8
	mov r1, #0x1
	strh r2, [r0, #0xAA]
_020CE39C:
	cmp r1, #0x0
	bne _020CE3B0
_020CE3A4:
	add r10, r10, #0x1
_020CE3A8:
	cmp r10, #0x18
	ble _020CE2D8
_020CE3B0:
	mov r1, #0x0
	strb r1, [sp, #0x4b4]
	ldr r0, [_020CE368] ; =020AF81Ch
	mov r1, #0xf
	bl FUN_02044658
	ldr r3, [r0, #0x0]
	add r2, sp, #0x400
	add r2, r2, #0x8
	add r1, sp, #0x440
	mov r0, r4
	strh r3, [r2, #0xA8]
	bl FUN_ov4_020ce72c
	mov r0, #0x100
	add sp, sp, #0x530
	str r0, [r4, #0x34]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE3F0:
	mov r0, r4
	bl FUN_ov4_020cc370
	add r7, sp, #0x120
	mov r3, #0x1400
	mov r0, r7
	mov r1, r9
	mov r2, #0xc8
	strb r6, [sp, #0x442]
	str r3, [sp, #0x444]
	bl MemWrite
	mov r5, #0x64
	ldr r0, [_020CE35C] ; =0209BA20h
	mov r1, r9
	mov r2, r7
	mov r3, r5
	str r9, [sp, #0x0]
	bl FUN_0204b650
	add r1, sp, #0x400
	add r0, sp, #0x184
	mov r2, r5
	add r1, r1, #0x4c
	bl _memcpy
	mov r0, r4
	add r1, sp, #0x440
	bl FUN_ov4_020ce72c
	mov r0, r4
	bl FUN_ov4_020ce708
	mov r0, #0x80
	add sp, sp, #0x530
	str r0, [r4, #0x34]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE46C:
	ldr r0, [r4, #0x4]
	bl FUN_02042054
	cmp r0, #0xf
	bne _020CE6A4
	ldr r1, [_020CE6D8] ; =020DB7A0h
	mov r2, #0x11
	str r1, [sp, 0x14]
	mov r1, #0x1
	ldr r0, [_020CE344] ; =0209AEC0h
	str r7, [sp, #0x8]
	str r2, [sp, #0xC]
	strb r1, [sp, #0x18]
	strb r5, [sp, #0x19]
	bl FUN_020466c0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x4]
	add r1, sp, #0x8
	ldr r2, [r0, #0x0]
	ldr r2, [r2, #0x3c]
	blx r2
	b _020CE6A4
_020CE4C0:
	ldr r0, [r4, #0x664]
	cmp r0, #0x0
	bne _020CE6A4
	mov r0, #0x0
	add r7, sp, #0x30
	mov r1, r0
	mov r2, r0
	mov r3, r0
	mov r5, #0x7
_020CE4E4:
	stmia r7!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	subs r5, r5, #0x1
	bne _020CE4E4
	stmia r7!, {r0, r1, r2, r3}
	add r0, r4, #0xd4
	add r3, sp, #0x3c
	strb r6, [sp, #0x32]
	str r8, [sp, #0x34]
	add r5, r0, #0x800
	mov r2, #0xe
_020CE510:
	ldrb r1, [r5, #0x0]
	ldrb r0, [r5, #0x1]
	add r5, r5, #0x2
	subs r2, r2, #0x1
	strb r0, [r3, #0x1]
	strb r1, [r3], #0x2
	bne _020CE510
	add r3, sp, #0x58
	add r5, r4, #0x8f0
	mov r2, #0x8
_020CE538:
	ldrb r1, [r5, #0x0]
	ldrb r0, [r5, #0x1]
	add r5, r5, #0x2
	subs r2, r2, #0x1
	strb r0, [r3, #0x1]
	strb r1, [r3], #0x2
	bne _020CE538
	add r3, sp, #0x68
	add r5, r4, #0x900
	mov r2, #0x10
_020CE560:
	ldrb r1, [r5, #0x0]
	ldrb r0, [r5, #0x1]
	add r5, r5, #0x2
	subs r2, r2, #0x1
	strb r0, [r3, #0x1]
	strb r1, [r3], #0x2
	bne _020CE560
	ldrb r0, [r4, #0x920]
	add r2, r4, #0x900
	add r1, sp, #0x30
	strb r0, [sp, #0x88]
	ldrb r3, [r4, #0x921]
	mov r0, r4
	strb r3, [sp, #0x89]
	ldrh r3, [r2, #0x22]
	strh r3, [sp, #0x8a]
	ldrh r5, [r2, #0x24]
	ldrh r3, [r2, #0x26]
	strh r5, [sp, #0x8c]
	strh r3, [sp, #0x8e]
	ldrh r5, [r2, #0x28]
	ldrh r3, [r2, #0x2a]
	strh r5, [sp, #0x90]
	strh r3, [sp, #0x92]
	ldrh r3, [r2, #0x2c]
	strh r3, [sp, #0x94]
	ldrb r3, [r4, #0x92e]
	strb r3, [sp, #0x96]
	ldrb r3, [r4, #0x92f]
	strb r3, [sp, #0x97]
	ldrb r3, [r4, #0x930]
	strb r3, [sp, #0x98]
	ldrb r3, [r4, #0x931]
	strb r3, [sp, #0x99]
	ldrh r3, [r2, #0x32]
	strh r3, [sp, #0x9a]
	ldrh r3, [r2, #0x34]
	strh r3, [sp, #0x9c]
	ldrb r3, [r4, #0x936]
	strb r3, [sp, #0x9e]
	ldrb r3, [r4, #0x937]
	strb r3, [sp, #0x9f]
	ldrb r5, [r4, #0x938]
	ldrb r3, [r4, #0x939]
	strb r5, [sp, #0xA0]
	strb r3, [sp, #0xA1]
	ldrh r2, [r2, #0x3a]
	strh r2, [sp, #0xA2]
	b _020CE24C
_020CE624:
	mov r0, r4
	ldr r1, [r0, #0x0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0x0
	addne sp, sp, #0x530
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4, #0x4]
	bl FUN_02042054
	cmp r0, #0x10
	bne _020CE684
	mov r0, #0x6
	bl FUN_020f153c
	ldr r4, [r4, #0x4]
	mov r1, #0x0
	mov r0, r4
	mov r2, #0xe
	bl FUN_02041eac
	mov r0, r4
	mov r1, #0x1
	mov r2, #0xf
	bl FUN_02041eac
	add sp, sp, #0x530
	ldmia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE684:
	ldr r0, [r4, #0x4]
	bl FUN_02041d9c
	ldr r0, [r4, #0x4]
	mov r1, #0x0
	mov r2, #0xe
	bl FUN_02041eac
	add sp, sp, #0x530
	ldmia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
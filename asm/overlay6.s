
	.include "/macros/function.inc"
	.include "/include/overlay6.inc"

	.text
	arm_func_start FUN_ov6_020bcb40 ; https://decomp.me/scratch/RwTXI
FUN_ov6_020bcb40: ; 0x020BCB40
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, [r0]
	mov r1, #2
	ldr r2, [r2, #0xc]
	mov r4, r0
	blx r2
	mov r7, #0
	ldr r3, _020BCC60 ; =0x020BE0A0
	mov r0, r4
	mov r1, r7
	mov r2, r7
	str r7, [r4, #0x80]
	str r7, [r4, #0x84]
	mov r6, #1
	strb r6, [r3]
	bl _ZN14CScreenManager8setSceneE12EngineSelect9SceneType
	mov r0, r4
	mov r1, r6
	mov r2, r7
	bl _ZN14CScreenManager8setSceneE12EngineSelect9SceneType
	mov r5, #0x96
	mov r0, r4
	mov r1, r7
	mov r2, r5
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	mov r1, r6
	mov r2, r5
	mov r0, r4
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	mov r5, #6
	mov r0, r5
	strb r7, [r4, #0x89]
	strb r7, [r4, #0x88]
	bl FUN_ov16_020f153c
	ldr r6, _020BCC64 ; =gAudioPlayer
	mov r1, r5
	mov r2, r7
	mov r0, r6
	mov r3, r7
	bl _ZN11AudioPlayer12FUN_0202b838Eiii
	mov r0, r6
	mov r1, r7
	mov r2, r7
	bl FUN_0202c44c
	mov r5, #0x14
	b _020BCC00
_020BCBF8:
	mov r0, r5
	bl OS_Sleep
_020BCC00:
	mov r0, r6
	bl _ZN11AudioPlayer12FUN_0202b7b4Ev
	cmp r0, #0
	beq _020BCBF8
	mov r6, #0x14
	ldr r5, _020BCC64 ; =gAudioPlayer
	b _020BCC24
_020BCC1C:
	mov r0, r6
	bl OS_Sleep
_020BCC24:
	mov r0, r5
	bl _ZN11AudioPlayer12FUN_0202b7f0Ev
	cmp r0, #0
	beq _020BCC1C
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x34]
	blx r1
	ldr r0, _020BCC68 ; =g3DDevice
	ldr r1, _020BCC6C ; =0x00007335
	ldr r0, [r0]
	mov r2, #0x1f
	mov r3, #0
	bl _ZN9C3DDevice13setClearColorEthh
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BCC60: .word ov6_020BE0A0
_020BCC64: .word gAudioPlayer
_020BCC68: .word g3DDevice
_020BCC6C: .word 0x00007335
	arm_func_end FUN_ov6_020bcb40

	arm_func_start FUN_ov6_020bcc70 ; https://decomp.me/scratch/DLeCC
FUN_ov6_020bcc70: ; 0x020BCC70
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x80]
	cmp r0, #0
	beq _020BCC90
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
_020BCC90:
	ldr r0, [r4, #0x84]
	cmp r0, #0
	beq _020BCCA8
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
_020BCCA8:
	mov r0, r4
	ldr r2, [r0]
	mov r1, #2
	ldr r2, [r2, #0x28]
	blx r2
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov6_020bcc70

	arm_func_start FUN_ov6_020bccc0 ; https://decomp.me/scratch/fAgAR
FUN_ov6_020bccc0: ; 0x020BCCC0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl _ZN14CScreenManager16getNextSceneMainEv
	mov r5, r0
	mov r0, r4
	bl _ZN14CScreenManager15getCurSceneMainEv
	cmp r5, r0
	bne _020BCCEC
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _020BCD5C
_020BCCEC:
	ldr r0, [r4, #0x80]
	cmp r0, #0
	beq _020BCD0C
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _020BCD5C
_020BCD0C:
	ldr r0, [r4, #0x80]
	cmp r0, #0
	beq _020BCD24
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
_020BCD24:
	cmp r5, #0x96
	addeq r0, r4, #0x90
	movne r0, #0
	str r0, [r4, #0x80]
	mov r0, r4
	mov r2, r5
	mov r1, #0
	bl _ZN14CScreenManager8setSceneE12EngineSelect9SceneType
	ldr r0, [r4, #0x80]
	cmp r0, #0
	beq _020BCD5C
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
_020BCD5C:
	mov r0, r4
	bl _ZN14CScreenManager15getNextSceneSubEv
	mov r5, r0
	mov r0, r4
	bl _ZN14CScreenManager14getCurSceneSubEv
	cmp r5, r0
	bne _020BCD84
	ldrb r0, [r4, #5]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_020BCD84:
	ldr r0, [r4, #0x84]
	cmp r0, #0
	beq _020BCDA4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
_020BCDA4:
	ldr r0, [r4, #0x84]
	cmp r0, #0
	beq _020BCDBC
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
_020BCDBC:
	cmp r5, #0x96
	addeq r0, r4, #0x298
	movne r0, #0
	str r0, [r4, #0x84]
	mov r0, r4
	mov r2, r5
	mov r1, #1
	bl _ZN14CScreenManager8setSceneE12EngineSelect9SceneType
	ldr r0, [r4, #0x84]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov6_020bccc0

	arm_func_start FUN_ov6_020bcdf8 ; https://decomp.me/scratch/UcHM4
FUN_ov6_020bcdf8: ; 0x020BCDF8
	stmfd sp!, {r4, lr}
	ldr r2, _020BCE38 ; =0x04000304
	movs r4, r1
	ldrh r0, [r2]
	cmpne r4, #2
	bic r0, r0, #0x8000
	strh r0, [r2]
	bne _020BCE20
	mov r0, #8
	bl FUN_ov16_020f3f60
_020BCE20:
	sub r0, r4, #1
	cmp r0, #1
	ldmhifd sp!, {r4, pc}
	mov r0, #8
	bl FUN_ov16_020f4894
	ldmfd sp!, {r4, pc}
_020BCE38: .word 0x04000304
	arm_func_end FUN_ov6_020bcdf8

	arm_func_start FUN_ov6_020bce3c ; https://decomp.me/scratch/3dczs
FUN_ov6_020bce3c: ; 0x020BCE3C
	stmfd sp!, {r4, lr}
	movs r4, r1
	cmpne r4, #2
	bne _020BCE50
	bl FUN_ov16_020f47fc
_020BCE50:
	sub r0, r4, #1
	cmp r0, #1
	bhi _020BCE60
	bl FUN_ov16_020f51a8
_020BCE60:
	cmp r4, #2
	bne _020BCE78
	mov r0, #0
	mov r1, #0x6800000
	mov r2, #0xa4000
	bl MIi_CpuClearFast
_020BCE78:
	ldr r1, _020BCE8C ; =0x04000304
	ldrh r0, [r1]
	bic r0, r0, #0x8000
	strh r0, [r1]
	ldmfd sp!, {r4, pc}
_020BCE8C: .word 0x04000304
	arm_func_end FUN_ov6_020bce3c

	arm_func_start FUN_ov6_020bce90
FUN_ov6_020bce90: ; 0x020BCE90
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZN14CScreenManagerD2Ev
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov6_020bce90

	arm_func_start FUN_ov6_020bceac
FUN_ov6_020bceac: ; 0x020BCEAC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZN14CScreenManagerD2Ev
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov6_020bceac

	arm_func_start FUN_ov6_020bcec0 ; https://decomp.me/scratch/mBIbK
FUN_ov6_020bcec0: ; 0x020BCEC0
	stmfd sp!, {r3, lr}
	ldrb r2, [r0, #0x1f4]
	cmp r2, #0
	beq _020BCEE0
	tst r1, #1
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov6_020bd154
	ldmfd sp!, {r3, pc}
_020BCEE0:
	ldr r2, [r0, #0x1d8]
	cmp r2, #7
	ldmnefd sp!, {r3, pc}
	tst r1, #1
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov6_020bd13c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov6_020bcec0

	arm_func_start FUN_ov6_020bcefc ; https://decomp.me/scratch/o5qNh
FUN_ov6_020bcefc: ; 0x020BCEFC
	stmfd sp!, {r3, lr}
	ldrb r2, [r0, #0x1f4]
	cmp r2, #0
	ldr r2, [r0, #0x1d8]
	beq _020BCF28
	cmp r2, #7
	ldreqh r1, [r1, #4]
	cmpeq r1, #1
	ldmnefd sp!, {r3, pc}
	bl FUN_ov6_020bd154
	ldmfd sp!, {r3, pc}
_020BCF28:
	cmp r2, #7
	ldreqh r1, [r1, #4]
	cmpeq r1, #1
	ldmnefd sp!, {r3, pc}
	bl FUN_ov6_020bd13c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov6_020bcefc

	arm_func_start FUN_ov6_020bcf40 ; https://decomp.me/scratch/6xjL7
FUN_ov6_020bcf40: ; 0x020BCF40
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x100
	mov r10, #0
	add r9, sp, #0
	mov r4, r0
	mov r0, r9
	mov r1, r10
	mov r2, #0x100
	bl MI_CpuFill8
	ldr r11, _020BCFD4 ; =0x020BDEC8
	add r5, r4, #4
	ldr r6, _020BCFD8 ; =0x020BDEA4
	ldr r8, _020BCFDC ; =gConfig
	ldr r7, _020BCFE0 ; =0x020BDE9C
	mov r4, #0xc
_020BCF7C:
	mov r0, r8
	mov r1, r7
	bl _ZN6Config8getParamEPc
	cmp r0, #0
	beq _020BCF98
	cmp r0, #1
	beq _020BCFA4
_020BCF98:
	mov r0, r9
	mov r1, r6
	b _020BCFAC
_020BCFA4:
	mov r0, r9
	mov r1, r11
_020BCFAC:
	add r2, r10, #1
	bl sprintf
	mla r1, r10, r4, r5
	mov r0, r9
	bl FUN_ov16_020f3054
	add r10, r10, #1
	cmp r10, #0x25
	blt _020BCF7C
	add sp, sp, #0x100
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BCFD4: .word ov6_020BDEC8
_020BCFD8: .word ov6_020BDEA4
_020BCFDC: .word gConfig
_020BCFE0: .word ov6_020BDE9C
	arm_func_end FUN_ov6_020bcf40

	arm_func_start FUN_ov6_020bcfe4 ; https://decomp.me/scratch/Vu7L4
FUN_ov6_020bcfe4: ; 0x020BCFE4
	stmfd sp!, {r3, r4, r5, lr}
	mov r2, #0xc
	mul r4, r1, r2
	mov r5, r0
	add r0, r5, r4
	ldr r1, [r0, #4]
	cmp r1, #0
	ldrneb r0, [r0, #0xd]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _020BD024 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	add r0, r5, r4
	mov r1, #0
	str r1, [r0, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD024: .word gAllocator
	arm_func_end FUN_ov6_020bcfe4

	arm_func_start FUN_ov6_020bd028
FUN_ov6_020bd028: ; 0x020BD028
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
_020BD034:
	mov r0, r5
	mov r1, r4
	bl FUN_ov6_020bcfe4
	add r4, r4, #1
	cmp r4, #0x27
	blt _020BD034
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov6_020bd028

	arm_func_start FUN_ov6_020bd050 ; https://decomp.me/scratch/g9nT6
FUN_ov6_020bd050: ; 0x020BD050
	stmfd sp!, {r4, r5, r6, lr}
	mov r3, #0xc
	mla r0, r1, r3, r0
	ldr r4, [r0, #4]
	cmp r4, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r2, #0
	mov r6, #0
	bne _020BD0D8
	mov r5, #1
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020f18e8
	ldr r0, [r4, #0xc]
	ldr r2, [r4, #0x10]
	mov r1, r6
	add r0, r4, r0
	bl GX_LoadBG2Scr
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x18]
	mov r1, r6
	add r0, r4, r0
	bl GX_LoadBG2Char
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020f1138
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, #0x20
	add r0, r4, r0
	bl GX_LoadBGPltt
	ldmfd sp!, {r4, r5, r6, pc}
_020BD0D8:
	mov r5, #2
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020f18e8
	ldr r0, [r4, #0xc]
	ldr r2, [r4, #0x10]
	mov r1, r6
	add r0, r4, r0
	bl GX_LoadBG1Scr
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x18]
	mov r1, r6
	add r0, r4, r0
	bl GX_LoadBG1Char
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020f1138
	ldr r0, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, #0x40
	add r0, r4, r0
	bl GX_LoadBGPltt
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov6_020bd050

	arm_func_start FUN_ov6_020bd13c
FUN_ov6_020bd13c: ; 0x020BD13C
	stmfd sp!, {r3, lr}
	mov r0, #6
	bl FUN_ov16_020f153c
	mov r0, #3
	bl _Z11SetNextMode8GameMode
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov6_020bd13c

	arm_func_start FUN_ov6_020bd154 ; https://decomp.me/scratch/V3UIh
FUN_ov6_020bd154: ; 0x020BD154
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _020BD1F0 ; =gConfig
	ldr r1, _020BD1F4 ; =0x020BDEEC
	bl _ZN6Config8getParamEPc
	cmp r0, #0
	beq _020BD178
	cmp r0, #1
	beq _020BD198
_020BD178:
	ldr r4, _020BD1F8 ; =gAudioPlayer
	ldr r1, _020BD1FC ; =0x020BDEF4
	mov r0, r4
	bl FUN_0202d724
	cmp r0, #0
	beq _020BD1CC
	ldr r1, _020BD200 ; =0x020BDF00
	b _020BD1B4
_020BD198:
	ldr r4, _020BD1F8 ; =gAudioPlayer
	ldr r1, _020BD204 ; =0x020BDF0C
	mov r0, r4
	bl FUN_0202d724
	cmp r0, #0
	beq _020BD1CC
	ldr r1, _020BD208 ; =0x020BDF18
_020BD1B4:
	mov r0, r4
	mov r2, #0x1f4
	bl FUN_0202d798
	mov r0, r4
	mov r1, #0
	bl _ZN11AudioPlayer12FUN_0202d578Ei
_020BD1CC:
	mov r1, #9
	mov r0, r5
	str r1, [r5, #0x1d8]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	mov r0, #1
	bl _Z11SetNextMode8GameMode
	ldmfd sp!, {r3, r4, r5, pc}
_020BD1F0: .word gConfig
_020BD1F4: .word ov6_020BDEEC
_020BD1F8: .word gAudioPlayer
_020BD1FC: .word ov6_020BDEF4
_020BD200: .word ov6_020BDF00
_020BD204: .word ov6_020BDF0C
_020BD208: .word ov6_020BDF18
	arm_func_end FUN_ov6_020bd154

	arm_func_start FUN_ov6_020bd20c
FUN_ov6_020bd20c: ; 0x020BD20C
	ldr r1, [r0, #0x1e4]
	cmp r1, #0x25
	blt _020BD254
	mov r2, r1, lsr #0x1f
	rsb r1, r2, r1, lsl #31
	adds r1, r2, r1, ror #31
	beq _020BD240
	ldr r1, [r0, #0x1dc]
	cmp r1, #0xc0
	movge r2, #2
	movge r1, #1
	strgeb r2, [r0, #0x1ec]
	b _020BD250
_020BD240:
	ldr r1, [r0, #0x1e0]
	cmp r1, #0xc0
	movge r1, #1
	strgeb r1, [r0, #0x1ec]
_020BD250:
	strge r1, [r0, #0x1f0]
_020BD254:
	ldr r0, [r0, #0x1f0]
	bx lr
	arm_func_end FUN_ov6_020bd20c

	arm_func_start FUN_ov6_020bd25c ; https://decomp.me/scratch/j3h0X
FUN_ov6_020bd25c: ; 0x020BD25C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	sub r3, r4, #0xc0
	mov r1, r4
	add r0, r5, #0x1fc
	mov r2, #0xc
	str r4, [r5, #0x1d8]
	str r4, [r5, #0x1e0]
	str r3, [r5, #0x1dc]
	str r4, [r5, #0x1e4]
	str r4, [r5, #0x1e8]
	str r4, [r5, #0x1f0]
	strb r4, [r5, #0x1ec]
	strb r4, [r5, #0x1f4]
	bl MI_CpuFill8
	mov r1, r4
	add r0, r5, #4
	mov r2, #0x1d4
	str r4, [r5, #0x1fc]
	str r4, [r5, #0x200]
	str r4, [r5, #0x204]
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov6_020bd25c

	arm_func_start FUN_ov6_020bd2bc ; https://decomp.me/scratch/ZIQ16
FUN_ov6_020bd2bc: ; 0x020BD2BC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0x1d8]
	mov r1, #1
	cmp r2, #8
	mov r3, #0
	addls pc, pc, r2, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_020BD2DC: ; jump table
	b _020BD300 ; case 0
	ldmfd sp!, {r3, r4, r5, pc} ; case 1
	b _020BD38C ; case 2
	b _020BD470 ; case 3
	b _020BD418 ; case 4
	b _020BD6B0 ; case 5
	b _020BD6D4 ; case 6
	ldmfd sp!, {r3, r4, r5, pc} ; case 7
	ldmfd sp!, {r3, r4, r5, pc} ; case 8
_020BD300:
	ldr r2, _020BD6F0 ; =0x020A0640
	ldr r1, _020BD6F4 ; =0x04000014
	ldrb r4, [r2, #0xaf]
	ldr r3, [r5, #0x1e0]
	ldr r2, _020BD6F8 ; =0x01FF0000
	strb r4, [r5, #0x1f4]
	and r3, r2, r3, lsl #16
	str r3, [r1]
	ldr r3, [r5, #0x1dc]
	sub r4, r1, #0xa
	and r2, r2, r3, lsl #16
	str r2, [r1, #4]
	ldrh r2, [r4]
	sub r3, r1, #8
	bic r2, r2, #3
	strh r2, [r4]
	ldrh r2, [r3]
	bic r2, r2, #3
	orr r2, r2, #1
	strh r2, [r3]
	ldrh r2, [r1, #0x34]
	bic r2, r2, #0x3f
	orr r2, r2, #4
	strh r2, [r1, #0x34]
	ldrh r2, [r1, #0x34]
	bic r2, r2, #0x3f00
	orr r2, r2, #0x400
	strh r2, [r1, #0x34]
	ldrh r2, [r1, #0x36]
	bic r2, r2, #0x3f
	orr r2, r2, #2
	strh r2, [r1, #0x36]
	bl FUN_ov6_020bcf40
	mov r0, #2
	str r0, [r5, #0x1d8]
_020BD38C:
	ldr r0, [r5, #0x1e4]
	sub r0, r0, #1
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #31
	adds r0, r1, r0, ror #31
	ldr r1, [r5, #0x1e4]
	movne r2, #1
	add r3, r1, #1
	moveq r2, #0
	mov r0, r5
	str r3, [r5, #0x1e4]
	bl FUN_ov6_020bd050
	ldr r0, [r5, #0x1e4]
	sub r0, r0, #1
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #31
	adds r0, r1, r0, ror #31
	ldr r1, [r5, #0x1e4]
	movne r2, #1
	add r3, r1, #1
	moveq r2, #0
	mov r0, r5
	str r3, [r5, #0x1e4]
	bl FUN_ov6_020bd050
	mov r1, #3
	str r1, [r5, #0x1d8]
	ldr r0, [r5, #0x1f8]
	add r1, r5, #0x1fc
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
_020BD418:
	ldr r0, [r5, #0x200]
	mov r1, #4
	str r1, [r5, #0x1d8]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _020BD6FC ; =gConfig
	ldr r1, _020BD700 ; =0x020BDF24
	bl _ZN6Config8getParamEPc
	cmp r0, #0
	beq _020BD448
	cmp r0, #1
	beq _020BD454
_020BD448:
	ldr r0, _020BD704 ; =gAudioPlayer
	ldr r2, _020BD708 ; =0x020BDF2C
	b _020BD45C
_020BD454:
	ldr r0, _020BD704 ; =gAudioPlayer
	ldr r2, _020BD70C ; =0x020BDF38
_020BD45C:
	mov r1, #0
	bl _ZN11AudioPlayer12FUN_0202d594EiPKc
	mov r0, #3
	str r0, [r5, #0x1d8]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD470:
	mov r4, r3
	mov r0, r4
	bl FUN_ov16_020f16a4
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r1, #0x4000000
	ldr r0, [r1]
	bic r0, r0, #0xe000
	orr r0, r0, #0x6000
	str r0, [r1]
	ldr r0, [r5, #0x1f0]
	cmp r0, #0
	bne _020BD578
	ldr r1, [r5, #0x1e0]
	ldr r0, [r5, #0x1dc]
	add r1, r1, #1
	add r0, r0, #1
	str r1, [r5, #0x1e0]
	str r0, [r5, #0x1dc]
	cmp r1, #0xc0
	ble _020BD508
	ldr r0, [r5, #0x1e4]
	cmp r0, #0x26
	bge _020BD508
	sub r0, r0, #1
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #31
	adds r0, r1, r0, ror #31
	ldr r1, [r5, #0x1e4]
	movne r4, #1
	add r3, r1, #1
	mov r0, r5
	mov r2, r4
	str r3, [r5, #0x1e4]
	bl FUN_ov6_020bd050
	ldr r0, [r5, #0x1e0]
	sub r0, r0, #0x180
	str r0, [r5, #0x1e0]
_020BD508:
	ldr r0, [r5, #0x1dc]
	cmp r0, #0xc0
	ble _020BD558
	ldr r0, [r5, #0x1e4]
	cmp r0, #0x26
	bge _020BD558
	sub r0, r0, #1
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #31
	adds r0, r1, r0, ror #31
	ldr r1, [r5, #0x1e4]
	movne r2, #1
	add r3, r1, #1
	moveq r2, #0
	mov r0, r5
	str r3, [r5, #0x1e4]
	bl FUN_ov6_020bd050
	ldr r0, [r5, #0x1dc]
	sub r0, r0, #0x180
	str r0, [r5, #0x1dc]
_020BD558:
	ldr r1, [r5, #0x1e0]
	ldr r0, _020BD6F8 ; =0x01FF0000
	ldr r2, _020BD6F4 ; =0x04000014
	and r1, r0, r1, lsl #16
	str r1, [r2]
	ldr r1, [r5, #0x1dc]
	and r0, r0, r1, lsl #16
	str r0, [r2, #4]
_020BD578:
	ldr r0, [r5, #0x1dc]
	mov r2, #0xff
	cmp r0, #0
	ldr r0, _020BD710 ; =0x04000048
	mov r1, #0xff00
	bgt _020BD5E0
	ldrh r3, [r0]
	bic r3, r3, #0x3f
	orr r3, r3, #2
	strh r3, [r0]
	ldrh r3, [r0]
	bic r3, r3, #0x3f00
	orr r3, r3, #0x200
	strh r3, [r0]
	ldrh r3, [r0, #2]
	bic r3, r3, #0x3f
	orr r3, r3, #4
	strh r3, [r0, #2]
	ldr r3, [r5, #0x1dc]
	rsb r3, r3, #0
	strh r2, [r0, #-8]
	and r2, r3, #0xff
	strh r2, [r0, #-4]
	ldr r2, [r5, #0x1dc]
	rsb r2, r2, #0
	b _020BD62C
_020BD5E0:
	ldrh r3, [r0]
	bic r3, r3, #0x3f
	orr r3, r3, #4
	strh r3, [r0]
	ldrh r3, [r0]
	bic r3, r3, #0x3f00
	orr r3, r3, #0x400
	strh r3, [r0]
	ldrh r3, [r0, #2]
	bic r3, r3, #0x3f
	orr r3, r3, #2
	strh r3, [r0, #2]
	ldr r3, [r5, #0x1dc]
	rsb r3, r3, #0xc0
	strh r2, [r0, #-8]
	and r2, r3, #0xff
	strh r2, [r0, #-4]
	ldr r2, [r5, #0x1dc]
	rsb r2, r2, #0xc0
_020BD62C:
	strh r1, [r0, #-6]
	and r1, r2, #0xff
	strh r1, [r0, #-2]
	mov r0, r5
	bl FUN_ov6_020bd20c
	cmp r0, #0
	ldrne r0, [r5, #0x1fc]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #0x4000000
	ldr r0, [r1]
	bic r0, r0, #0xe000
	str r0, [r1]
	ldrb r0, [r5, #0x1ec]
	cmp r0, #1
	bne _020BD688
	ldrh r0, [r1, #0xa]
	bic r0, r0, #3
	orr r0, r0, #1
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xc]
	bic r0, r0, #3
	b _020BD6A0
_020BD688:
	ldrh r0, [r1, #0xa]
	bic r0, r0, #3
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xc]
	bic r0, r0, #3
	orr r0, r0, #1
_020BD6A0:
	strh r0, [r1, #0xc]
	mov r0, #5
	str r0, [r5, #0x1d8]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD6B0:
	ldr r0, [r5, #0x1f8]
	mov r2, #6
	str r1, [r5, #0x204]
	str r2, [r5, #0x1d8]
	ldr r2, [r0]
	add r1, r5, #0x1fc
	ldr r2, [r2, #0x3c]
	blx r2
	ldmfd sp!, {r3, r4, r5, pc}
_020BD6D4:
	mov r2, #7
	mov r0, r1
	mov r1, #0x1e
	str r3, [r5, #0x1e8]
	str r2, [r5, #0x1d8]
	bl FUN_ov16_020f14b4
	ldmfd sp!, {r3, r4, r5, pc}
_020BD6F0: .word unk_020A0640
_020BD6F4: .word 0x04000014
_020BD6F8: .word 0x01FF0000
_020BD6FC: .word gConfig
_020BD700: .word ov6_020BDF24
_020BD704: .word gAudioPlayer
_020BD708: .word ov6_020BDF2C
_020BD70C: .word ov6_020BDF38
_020BD710: .word 0x04000048
	arm_func_end FUN_ov6_020bd2bc

	arm_func_start FUN_ov6_020bd714
FUN_ov6_020bd714: ; 0x020BD714
	bx lr
	arm_func_end FUN_ov6_020bd714

	arm_func_start FUN_ov6_020bd718 ; https://decomp.me/scratch/dO0GW
FUN_ov6_020bd718: ; 0x020BD718
	stmfd sp!, {r3, lr}
	bl FUN_ov6_020bd028
	mov r1, #0
	ldr r2, _020BD748 ; =0x04000014
	ldr r0, _020BD74C ; =g3DDevice
	str r1, [r2]
	str r1, [r2, #4]
	ldr r0, [r0]
	mov r2, r1
	mov r3, r1
	bl _ZN9C3DDevice13setClearColorEthh
	ldmfd sp!, {r3, pc}
_020BD748: .word 0x04000014
_020BD74C: .word g3DDevice
	arm_func_end FUN_ov6_020bd718

	arm_func_start FUN_ov6_020bd750
FUN_ov6_020bd750: ; 0x020BD750
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov6_020bd750

	arm_func_start FUN_ov6_020bd764
FUN_ov6_020bd764: ; 0x020BD764
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, _020BD850 ; =gConfig
	ldr r1, _020BD854 ; =0x020BDFD0
	mov r5, #0
	bl _ZN6Config8getParamEPc
	cmp r0, #0
	beq _020BD790
	cmp r0, #1
	beq _020BD7D8
_020BD790:
	ldr r3, _020BD858 ; =gAllocator
	ldr r1, _020BD85C ; =0x020BDFD8
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _020BD7C4
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	mov r12, #1
	add r2, r4, #0x200
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_020BD7C4:
	cmp r0, #0
	bne _020BD81C
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020BD7D8:
	ldr r3, _020BD858 ; =gAllocator
	ldr r1, _020BD860 ; =0x020BDFF8
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, r5
	beq _020BD80C
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	mov r12, #1
	add r2, r4, #0x200
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_020BD80C:
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_020BD81C:
	mov r3, #0
	mov r0, #0x22
_020BD824:
	ldr r1, [r4, #0x200]
	mla r2, r3, r0, r1
	ldrh r1, [r2, #0x20]
	add r3, r3, #1
	cmp r3, #0x28
	add r1, r1, #1
	strh r1, [r2, #0x20]
	blt _020BD824
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_020BD850: .word gConfig
_020BD854: .word ov6_020BDFD0
_020BD858: .word gAllocator
_020BD85C: .word ov6_020BDFD8
_020BD860: .word ov6_020BDFF8
	arm_func_end FUN_ov6_020bd764

	arm_func_start FUN_ov6_020bd864
FUN_ov6_020bd864: ; 0x020BD864
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x200]
	ldr r0, _020BD884 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	mov r0, #0
	str r0, [r4, #0x200]
	ldmfd sp!, {r4, pc}
_020BD884: .word gAllocator
	arm_func_end FUN_ov6_020bd864

	arm_func_start FUN_ov6_020bd888 ; https://decomp.me/scratch/6O2Ke
FUN_ov6_020bd888: ; 0x020BD888
	stmfd sp!, {r4, r5, r6, lr}
	ldr r6, _020BD8F0 ; =gAllocator
	mov r5, #0x200
	mov r0, r6
	mov r1, r5
	bl _ZN9Allocator8allocateEm
	movs r4, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, r4
	mov r2, r5
	mov r0, #0
	bl MIi_CpuClearFast
	mov r0, r4
	mov r1, r5
	bl DC_FlushRange
	bl GXS_BeginLoadBGExtPltt
	mov r0, r4
	mov r2, r5
	mov r1, #0x4000
	bl GXS_LoadBGExtPltt
	bl GXS_EndLoadBGExtPltt
	bl FUN_ov16_020f10c8
	mov r0, r6
	mov r1, r4
	bl _ZN9Allocator10deallocateEPv
	ldmfd sp!, {r4, r5, r6, pc}
_020BD8F0: .word gAllocator
	arm_func_end FUN_ov6_020bd888

	arm_func_start FUN_ov6_020bd8f4
FUN_ov6_020bd8f4: ; 0x020BD8F4
	mov r0, #1
	bx lr
	arm_func_end FUN_ov6_020bd8f4

	arm_func_start FUN_ov6_020bd8fc
FUN_ov6_020bd8fc: ; 0x020BD8FC
	mov r2, r0
	mov r0, r1
	ldr r12, _020BD910 ; =FUN_ov16_020f3054
	add r1, r2, #0x1f4
	bx r12
_020BD910: .word FUN_ov16_020f3054
	arm_func_end FUN_ov6_020bd8fc

	arm_func_start FUN_ov6_020bd914
FUN_ov6_020bd914: ; 0x020BD914
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x100
	add r4, sp, #0
	mov r6, r0
	mov r5, r1
	mov r0, r4
	mov r1, #0
	mov r2, #0x100
	bl MI_CpuFill8
	ldr r1, [r6, #0x200]
	mov r0, #0x22
	mla r2, r5, r0, r1
	ldr r1, _020BD96C ; =0x020BE018
	mov r0, r4
	bl sprintf
	add r1, r6, #8
	mov r0, #0xc
	mla r1, r5, r0, r1
	mov r0, r4
	bl FUN_ov16_020f3054
	add sp, sp, #0x100
	ldmfd sp!, {r4, r5, r6, pc}
_020BD96C: .word ov6_020BE018
	arm_func_end FUN_ov6_020bd914

	arm_func_start FUN_ov6_020bd970 ; https://decomp.me/scratch/XM2TX
FUN_ov6_020bd970: ; 0x020BD970
	stmfd sp!, {r3, r4, r5, lr}
	mov r2, #0xc
	mul r4, r1, r2
	mov r5, r0
	add r0, r5, r4
	ldr r1, [r0, #8]
	cmp r1, #0
	ldrneb r0, [r0, #0x11]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _020BD9B0 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	add r0, r5, r4
	mov r1, #0
	str r1, [r0, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD9B0: .word gAllocator
	arm_func_end FUN_ov6_020bd970

	arm_func_start FUN_ov6_020bd9b4
FUN_ov6_020bd9b4: ; 0x020BD9B4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
_020BD9C0:
	mov r0, r5
	mov r1, r4
	bl FUN_ov6_020bd970
	add r4, r4, #1
	cmp r4, #0x2a
	blt _020BD9C0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov6_020bd9b4

	arm_func_start FUN_ov6_020bd9dc ; https://decomp.me/scratch/Cne2E
FUN_ov6_020bd9dc: ; 0x020BD9DC
	stmfd sp!, {r3, r4, r5, lr}
	mov r2, #0xc
	mla r0, r1, r2, r0
	ldr r5, [r0, #8]
	cmp r5, #0
	beq _020BDA38
	ldr r0, [r5, #0xc]
	mov r4, #0
	ldr r2, [r5, #0x10]
	mov r1, r4
	add r0, r5, r0
	bl GXS_LoadBG2Scr
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r0
	bl GXS_LoadBG2Char
	bl GXS_BeginLoadBGExtPltt
	ldmib r5, {r0, r2}
	add r0, r5, r0
	mov r1, #0x4000
	bl GXS_LoadBGExtPltt
	bl GXS_EndLoadBGExtPltt
_020BDA38:
	bl FUN_ov16_020f10c8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov6_020bd9dc

	arm_func_start FUN_ov6_020bda40
FUN_ov6_020bda40: ; 0x020BDA40
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	add r1, r6, #0x200
	str r5, [r6, #0x200]
	strh r5, [r1, #8]
	strh r5, [r1, #0xa]
	strb r5, [r6, #0x20c]
	bl FUN_ov6_020bd764
	mov r1, r5
	add r0, r6, #8
	mov r2, #0x1f8
	bl MI_CpuFill8
	mov r0, r6
	mov r1, r5
	bl FUN_ov6_020bd914
	ldrb r1, [r6, #0x20c]
	mov r0, r6
	bl FUN_ov6_020bd9dc
	mov r4, #1
	mov r0, r4
	mov r1, #8
	bl FUN_ov16_020f14b4
	str r4, [r6, #0x204]
	str r5, [r6, #0x210]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov6_020bda40

	arm_func_start FUN_ov6_020bdaa8
FUN_ov6_020bdaa8: ; 0x020BDAA8
	str r1, [r0, #0x210]
	ldr r1, [r1, #8]
	cmp r1, #0
	movne r1, #3
	strne r1, [r0, #0x204]
	mov r0, #1
	bx lr
	arm_func_end FUN_ov6_020bdaa8

	arm_func_start FUN_ov6_020bdac4 ; https://decomp.me/scratch/xrzum
FUN_ov6_020bdac4: ; 0x020BDAC4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x204]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_020BDADC: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	b _020BDAF0 ; case 1
	b _020BDB14 ; case 2
	b _020BDBEC ; case 3
	ldmfd sp!, {r3, r4, r5, pc} ; case 4
_020BDAF0:
	ldr r0, [r4, #0x210]
	mov r1, #1
	str r1, [r0, #4]
	mov r1, #2
	add r0, r4, #0x200
	mov r2, #0
	strh r2, [r0, #8]
	str r1, [r4, #0x204]
	ldmfd sp!, {r3, r4, r5, pc}
_020BDB14:
	ldrb r2, [r4, #0x20c]
	ldr r3, [r4, #0x200]
	mov r0, #0x22
	add r1, r4, #0x200
	ldrh r5, [r1, #0xa]
	mla r0, r2, r0, r3
	add r2, r5, #1
	strh r2, [r1, #0xa]
	ldrh r2, [r0, #0x20]
	ldrh r0, [r1, #0xa]
	cmp r0, r2
	bne _020BDB68
	mov r0, #6
	bl FUN_ov16_020f1528
	ldrb r0, [r4, #0x20c]
	add r1, r0, #1
	cmp r1, #0x28
	ldmgefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov6_020bd914
	ldmfd sp!, {r3, r4, r5, pc}
_020BDB68:
	ldmlsfd sp!, {r3, r4, r5, pc}
	mov r5, #1
	mov r0, r5
	bl FUN_ov16_020f1844
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov16_020f16a4
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x20c]
	add r0, r0, #1
	and r1, r0, #0xff
	strb r0, [r4, #0x20c]
	cmp r1, #0x28
	mov r0, r4
	bhs _020BDBDC
	bl FUN_ov6_020bd9dc
	ldrb r1, [r4, #0x20c]
	mov r0, r4
	sub r1, r1, #1
	bl FUN_ov6_020bd970
	mov r0, r5
	mov r1, #8
	bl FUN_ov16_020f14b4
	add r0, r4, #0x200
	mov r1, #0
	strh r1, [r0, #0xa]
	ldmfd sp!, {r3, r4, r5, pc}
_020BDBDC:
	bl FUN_ov6_020bd888
	ldr r0, [r4, #0x210]
	str r5, [r0]
	ldmfd sp!, {r3, r4, r5, pc}
_020BDBEC:
	ldr r0, _020BDC34 ; =gConfig
	ldr r1, _020BDC38 ; =0x020BE038
	bl _ZN6Config8getParamEPc
	cmp r0, #0
	beq _020BDC08
	cmp r0, #1
	beq _020BDC10
_020BDC08:
	ldr r1, _020BDC3C ; =0x020BE040
	b _020BDC14
_020BDC10:
	ldr r1, _020BDC40 ; =0x020BE064
_020BDC14:
	mov r0, r4
	bl FUN_ov6_020bd8fc
	mov r0, r4
	mov r1, #0x29
	bl FUN_ov6_020bd9dc
	mov r0, #4
	str r0, [r4, #0x204]
	ldmfd sp!, {r3, r4, r5, pc}
_020BDC34: .word gConfig
_020BDC38: .word ov6_020BE038
_020BDC3C: .word ov6_020BE040
_020BDC40: .word ov6_020BE064
	arm_func_end FUN_ov6_020bdac4

	arm_func_start FUN_ov6_020bdc44
FUN_ov6_020bdc44: ; 0x020BDC44
	bx lr
	arm_func_end FUN_ov6_020bdc44

	arm_func_start FUN_ov6_020bdc48
FUN_ov6_020bdc48: ; 0x020BDC48
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov6_020bd864
	mov r0, r4
	bl FUN_ov6_020bd9b4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov6_020bdc48

	arm_func_start FUN_ov6_020bdc60
FUN_ov6_020bdc60: ; 0x020BDC60
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov6_020bdc60

	arm_func_start FUN_ov6_020bdc74
FUN_ov6_020bdc74: ; 0x020BDC74
	bx lr
	arm_func_end FUN_ov6_020bdc74

	arm_func_start FUN_ov6_020bdc78
FUN_ov6_020bdc78: ; 0x020BDC78
	bx lr
	arm_func_end FUN_ov6_020bdc78

	.section .init, 4
	arm_func_start FUN_ov6_020bdc7c
FUN_ov6_020bdc7c: ; 0x020BDC7C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020BDCC4 ; =0x020BDDA0
	str r0, [r4, #4]
	ldr r0, _020BDCC8 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020BDCCC ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x14]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BDCC4: .word ov6_020BDDA0
_020BDCC8: .word 0x00009CCD
_020BDCCC: .word 0x0000EA3C
	arm_func_end FUN_ov6_020bdc7c

	arm_func_start FUN_ov6_020bdcd0
FUN_ov6_020bdcd0: ; 0x020BDCD0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020BDD18 ; =0x020BDE10
	str r0, [r4, #0x14]
	ldr r0, _020BDD1C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020BDD20 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BDD18: .word ov6_020BDE10
_020BDD1C: .word 0x00009CCD
_020BDD20: .word 0x0000EA3C
	arm_func_end FUN_ov6_020bdcd0

	arm_func_start FUN_ov6_020bdd24
FUN_ov6_020bdd24: ; 0x020BDD24
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020BDD6C ; =0x020BDF44
	str r0, [r4, #0x14]
	ldr r0, _020BDD70 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020BDD74 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BDD6C: .word ov6_020BDF44
_020BDD70: .word 0x00009CCD
_020BDD74: .word 0x0000EA3C
	arm_func_end FUN_ov6_020bdd24

	.section .sinit, 4
ov6_020BDD78:
	.word FUN_ov6_020bdc7c
	.word FUN_ov6_020bdcd0
	.word FUN_ov6_020bdd24

	.data
	.global ov6_020BDDA0
ov6_020BDDA0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov6_020BDDC0
ov6_020BDDC0:
	.word FUN_ov6_020bceac
	.word FUN_ov6_020bce90
	.word FUN_ov6_020bcb40
	.word FUN_ov6_020bcdf8
	.word _ZN8CManager7vFUN_10Ev
	.word _ZN14CScreenManager10updateKeysEtt
	.word _ZN14CScreenManager8updateTPEP6TPData
	.word _ZN14CScreenManager6updateEi
	.word _ZN8CManager7vFUN_20Ev
	.word _ZN14CScreenManager10updateLateEi
	.word FUN_ov6_020bce3c
	.word FUN_ov6_020bcc70
	.word _ZN14CScreenManager20updateDisplayMappingEv
	.word FUN_ov6_020bccc0
	.word _ZN14CScreenManager12transferMainEPv
	.word _ZN14CScreenManager11transferSubEPv
	.word _ZN14CScreenManager10signalMainEi
	.word _ZN14CScreenManager9signalSubEi
	.word _ZN14CScreenManager9stateMainEv
	.word _ZN14CScreenManager8stateSubEv
	.global ov6_020BDE10
ov6_020BDE10:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov6_020BDE30
ov6_020BDE30:
	.word FUN_02029f48
	.word FUN_ov6_020bd750
	.word FUN_ov6_020bcec0
	.word FUN_ov6_020bcefc
	.word FUN_ov6_020bd25c
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov6_020bd2bc
	.word FUN_ov6_020bd714
	.word FUN_ov6_020bd718
	.word _ZN12CommonScreen7vFUN_24Ev
	.word _ZN12CommonScreen7vFUN_28Ev
	.word _ZN12CommonScreen7vFUN_2CEv
	.word _ZN12CommonScreen7vFUN_30Ev
	.word _ZN12CommonScreen7vFUN_34Ev
	.word _ZN12CommonScreen7vFUN_38Ev
	.word _ZN16CommonMainScreen9fadeResetEv
	.word _ZN16CommonMainScreen10fadeUpdateEv
	.word _ZN16CommonMainScreen8blackOutEv
	.word _ZN16CommonMainScreen8whiteOutEv
	.word _ZN16CommonMainScreen6fadeInEv
	.word _ZN16CommonMainScreen9fadeBlackEv
	.word _ZN16CommonMainScreen9fadeWhiteEv
	.word _ZN16CommonMainScreen8isFadingEv
	.word _ZN16CommonMainScreen16isBrightAdjustedEv
	.word _ZN12CommonScreen8transferEPv
	.word _ZN12CommonScreen6signalEi
	.word _ZN12CommonScreen5stateEv
	.global ov6_020BDE9C
ov6_020BDE9C:
	.asciz "IZ_TYPE"
	.balign 4, 0
	.global ov6_020BDEA4
ov6_020BDEA4:
	.asciz "/data_iz/pic2d/ending/eddf%02d.pac_"
	.balign 4, 0
	.global ov6_020BDEC8
ov6_020BDEC8:
	.asciz "/data_iz/pic2d/ending/eddb%02d.pac_"
	.balign 4, 0
	.global ov6_020BDEEC
ov6_020BDEEC:
	.asciz "IZ_TYPE"
	.balign 4, 0
	.global ov6_020BDEF4
ov6_020BDEF4:
	.asciz "end00f.SAD"
	.balign 4, 0
	.global ov6_020BDF00
ov6_020BDF00:
	.asciz "end00f.SAD"
	.balign 4, 0
	.global ov6_020BDF0C
ov6_020BDF0C:
	.asciz "end00b.SAD"
	.balign 4, 0
	.global ov6_020BDF18
ov6_020BDF18:
	.asciz "end00b.SAD"
	.balign 4, 0
	.global ov6_020BDF24
ov6_020BDF24:
	.asciz "IZ_TYPE"
	.balign 4, 0
	.global ov6_020BDF2C
ov6_020BDF2C:
	.asciz "end00f.SAD"
	.balign 4, 0
	.global ov6_020BDF38
ov6_020BDF38:
	.asciz "end00b.SAD"
	.balign 4, 0
	.global ov6_020BDF44
ov6_020BDF44:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov6_020BDF64
ov6_020BDF64:
	.word FUN_02029f4c
	.word FUN_ov6_020bdc60
	.word FUN_ov6_020bdc78
	.word FUN_ov6_020bdc74
	.word FUN_ov6_020bda40
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov6_020bdac4
	.word FUN_ov6_020bdc44
	.word FUN_ov6_020bdc48
	.word _ZN12CommonScreen7vFUN_24Ev
	.word _ZN12CommonScreen7vFUN_28Ev
	.word _ZN12CommonScreen7vFUN_2CEv
	.word _ZN12CommonScreen7vFUN_30Ev
	.word _ZN12CommonScreen7vFUN_34Ev
	.word _ZN12CommonScreen7vFUN_38Ev
	.word _ZN15CommonSubScreen9fadeResetEv
	.word _ZN15CommonSubScreen10fadeUpdateEv
	.word _ZN15CommonSubScreen8blackOutEv
	.word _ZN15CommonSubScreen8whiteOutEv
	.word _ZN15CommonSubScreen6fadeInEv
	.word _ZN15CommonSubScreen9fadeBlackEv
	.word _ZN15CommonSubScreen9fadeWhiteEv
	.word _ZN15CommonSubScreen8isFadingEv
	.word _ZN15CommonSubScreen16isBrightAdjustedEv
	.word FUN_ov6_020bdaa8
	.word FUN_ov6_020bd8f4
	.word _ZN12CommonScreen5stateEv
	.global ov6_020BDFD0
ov6_020BDFD0:
	.asciz "IZ_TYPE"
	.balign 4, 0
	.global ov6_020BDFD8
ov6_020BDFD8:
	.asciz "/data_iz/logic/ed_option_f.dat"
	.balign 4, 0
	.global ov6_020BDFF8
ov6_020BDFF8:
	.asciz "/data_iz/logic/ed_option_b.dat"
	.balign 4, 0
	.global ov6_020BE018
ov6_020BE018:
	.asciz "/data_iz/pic2d/ending/%s.pac_"
	.balign 4, 0
	.global ov6_020BE038
ov6_020BE038:
	.asciz "IZ_TYPE"
	.balign 4, 0
	.global ov6_020BE040
ov6_020BE040:
	.asciz "/data_iz/pic2d/ending/edufin.pac_"
	.balign 4, 0
	.global ov6_020BE064
ov6_020BE064:
	.asciz "/data_iz/pic2d/ending/edufin.pac_"
	.balign 4, 0

	.bss
	.global ov6_020BE0A0
ov6_020BE0A0:
	.space 0x1

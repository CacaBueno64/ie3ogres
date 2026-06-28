
	.include "/macros/function.inc"
	.include "/include/scenedirection.inc"

    .text
	arm_func_start FUN_0202ffa4
FUN_0202ffa4: ; 0x0202FFA4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r0, r6, #0x348
	mov r5, #0
	mov r4, #0x1c
	mov r1, r5
	mov r2, r4
	add r0, r0, #0x1000
	bl MI_CpuFill8
	add r0, r6, #0x32c
	mov r1, r5
	mov r2, r4
	add r0, r0, #0x1000
	bl MI_CpuFill8
	add r0, r6, #0x3d0
	mov r1, r5
	add r0, r0, #0x1000
	mov r2, #0x10
	bl MI_CpuFill8
	add r0, r6, #0x870
	mov r1, r5
	add r0, r0, #0x2000
	mov r2, #0x900
	bl MI_CpuFill8
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0202ffa4

	arm_func_start FUN_0203000c
FUN_0203000c: ; 0x0203000C
	bx lr
	arm_func_end FUN_0203000c

	arm_func_start FUN_02030010
FUN_02030010: ; 0x02030010
	add r3, r0, #0x4000
	ldr r3, [r3, #0x280]
	add r0, r0, #0x4200
	strh r1, [r0, #0x5c]
	cmp r3, #0
	ldrneh r1, [r0, #0x5c]
	strh r2, [r0, #0x5e]
	orrne r1, r1, #0x4000
	strneh r1, [r0, #0x5c]
	mov r0, #0
	bx lr
	arm_func_end FUN_02030010

	arm_func_start FUN_0203003c
FUN_0203003c: ; 0x0203003C
	stmfd sp!, {r3, r4, r5, lr}
	add r3, r0, #0x4000
	mov r2, #0
	str r2, [r3, #0x27c]
	str r2, [r3, #0x280]
	ldrh r2, [r1, #4]
	cmp r2, #1
	bne _020300C8
	ldrh r4, [r1]
	add r2, r0, #0x4200
	strh r4, [r2, #0x60]
	ldrh r4, [r1, #2]
	strh r4, [r2, #0x62]
	ldrh r4, [r1, #4]
	strh r4, [r2, #0x64]
	ldrh r4, [r1, #6]
	strh r4, [r2, #0x66]
	ldrh r1, [r1, #6]
	cmp r1, #0
	ldreq r1, [r3, #0x278]
	cmpeq r1, #0
	bne _020300BC
	ldrh lr, [r2, #0x60]
	ldrh r12, [r2, #0x62]
	ldrh r5, [r2, #0x64]
	ldrh r4, [r2, #0x66]
	mov r1, #1
	strh lr, [r2, #0x68]
	strh r12, [r2, #0x6a]
	strh r5, [r2, #0x6c]
	strh r4, [r2, #0x6e]
	str r1, [r3, #0x27c]
_020300BC:
	add r0, r0, #0x4000
	mov r1, #1
	b _02030108
_020300C8:
	ldr r1, [r3, #0x278]
	cmp r1, #0
	beq _02030100
	add r1, r0, #0x4200
	ldrh r5, [r1, #0x60]
	ldrh r4, [r1, #0x62]
	ldrh lr, [r1, #0x64]
	ldrh r12, [r1, #0x66]
	mov r2, #1
	strh r5, [r1, #0x70]
	strh r4, [r1, #0x72]
	strh lr, [r1, #0x74]
	strh r12, [r1, #0x76]
	str r2, [r3, #0x280]
_02030100:
	add r0, r0, #0x4000
	mov r1, #0
_02030108:
	str r1, [r0, #0x278]
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0203003c

	arm_func_start FUN_02030114
FUN_02030114: ; 0x02030114
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, [sp, #0x10]
	ldr lr, [sp, #0x14]
	cmp r1, #4
	mov r12, #0
	addls pc, pc, r1, lsl #2
	b _02030258
_02030130: ; jump table
	b _02030144 ; case 0
	b _02030170 ; case 1
	b _0203018C ; case 2
	b _020301B8 ; case 3
	b _02030204 ; case 4
_02030144:
	add r1, r0, #0x4000
	ldr r1, [r1, #0x278]
	cmp r1, #0
	beq _02030258
	add r0, r0, #0x4200
	ldrh r1, [r0, #0x60]
	cmp r1, r2
	ldrgeh r0, [r0, #0x62]
	cmpge r0, r3
	blt _02030258
	b _0203024C
_02030170:
	add r0, r0, #0x4200
	ldrh r1, [r0, #0x68]
	cmp r1, r2
	ldrgeh r0, [r0, #0x6a]
	cmpge r0, r3
	blt _02030258
	b _0203024C
_0203018C:
	add r1, r0, #0x4000
	ldr r1, [r1, #0x278]
	cmp r1, #0
	bne _02030258
	add r0, r0, #0x4200
	ldrh r1, [r0, #0x70]
	cmp r1, r2
	ldrgeh r0, [r0, #0x72]
	cmpge r0, r3
	blt _02030258
	b _0203024C
_020301B8:
	add r1, r0, #0x4000
	ldr r1, [r1, #0x278]
	cmp r1, #0
	beq _02030258
	add r0, r0, #0x4200
	ldrh r5, [r0, #0x68]
	cmp r5, r2
	ldrgeh r1, [r0, #0x6a]
	cmpge r1, r3
	blt _02030258
	cmp r5, r4
	cmple r1, lr
	bgt _02030258
	ldrh r1, [r0, #0x60]
	cmp r1, r2
	ldrgeh r0, [r0, #0x62]
	cmpge r0, r3
	blt _02030258
	b _0203024C
_02030204:
	add r1, r0, #0x4000
	ldr r1, [r1, #0x278]
	cmp r1, #0
	bne _02030258
	add r0, r0, #0x4200
	ldrh r5, [r0, #0x68]
	cmp r5, r2
	ldrgeh r1, [r0, #0x6a]
	cmpge r1, r3
	blt _02030258
	cmp r5, r4
	cmple r1, lr
	bgt _02030258
	ldrh r1, [r0, #0x70]
	cmp r1, r2
	ldrgeh r0, [r0, #0x72]
	cmpge r0, r3
	blt _02030258
_0203024C:
	cmp r1, r4
	cmple r0, lr
	movle r12, #1
_02030258:
	mov r0, r12
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02030114

	arm_func_start FUN_02030260
FUN_02030260: ; 0x02030260
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x28
	ldr r5, _0203039C ; =0x0208FCB8
	add r4, sp, #0xc
	mov r8, r0
	mov r6, r4
	ldmia r5!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia r5, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	mov r7, #0
	ldr r2, _020303A0 ; =0x0000131C
	mov r1, r7
	add r0, r8, #0x10
	bl MI_CpuFill8
	add r0, r8, #0x348
	mov r4, #0x1c
	add r0, r0, #0x1000
	mov r1, r7
	mov r2, r4
	bl MI_CpuFill8
	add r0, r8, #0x32c
	mov r2, r4
	add r0, r0, #0x1000
	mov r1, r7
	bl MI_CpuFill8
	add r0, r8, #0x3d0
	add r0, r0, #0x1000
	mov r1, r7
	mov r2, #0x10
	bl MI_CpuFill8
	add r0, r8, #0x870
	add r0, r0, #0x2000
	mov r1, r7
	mov r2, #0x900
	bl MI_CpuFill8
	add r0, r8, #0xf0
	add r0, r0, #0x2000
	mov r1, r7
	mov r2, #0x780
	bl MI_CpuFill8
	mov r5, r7
	mov r4, #5
	ldr r10, _020303A4 ; =0x0209A200
	ldr r9, _020303A8 ; =g3DPlaneCtrl
	b _02030344
_02030318:
	ldr r3, [r6, r7, lsl #2]
	ldr r2, [r10]
	ldr r0, [r9]
	mov r1, r4
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	bl FUN_02058684
	add r1, r8, r7, lsl #2
	str r0, [r1, #0x14]
	add r7, r7, #1
_02030344:
	cmp r7, #7
	blt _02030318
	add r0, r8, #0x3f0
	add r0, r0, #0x1000
	mov r1, #0
	mov r2, #0x30
	bl MI_CpuFill8
	ldr r0, _020303A8 ; =g3DPlaneCtrl
	mov r1, #8
	ldr r0, [r0]
	mov r2, #1
	bl _ZN12C3DPlaneCtrl6createEib
	add r1, r8, #0x1000
	ldr r2, _020303AC ; =g3DSpriteCtrl
	str r0, [r1, #0x3e4]
	ldr r0, [r2]
	mov r1, #0x20
	bl FUN_ov16_021169b0
	add r1, r8, #0x1000
	str r0, [r1, #0x3ec]
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0203039C: .word unk_0208FCB8
_020303A0: .word 0x0000131C
_020303A4: .word unk_0209A200
_020303A8: .word g3DPlaneCtrl
_020303AC: .word g3DSpriteCtrl
	arm_func_end FUN_02030260

	arm_func_start FUN_020303B0
FUN_020303B0: ; 0x020303B0
	ldr r12, _020303B8 ; =FUN_020326e8
	bx r12
_020303B8: .word FUN_020326e8
	arm_func_end FUN_020303B0

	arm_func_start FUN_020303bc
FUN_020303bc: ; 0x020303BC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02031a2c
	mov r0, r4
	bl FUN_02032d34
	mov r0, r4
	bl FUN_020362e0
	ldr r0, _02030434 ; =0x02099F44
	ldr r0, [r0]
	cmp r0, #0
	beq _020303F0
	mov r0, r4
	bl FUN_ov131_0214bd84
_020303F0:
	mov r0, r4
	bl FUN_02036934
	mov r0, r4
	bl FUN_02037170
	mov r0, r4
	bl FUN_020375c4
	mov r0, r4
	bl FUN_020359c0
	mov r0, r4
	bl FUN_02038600
	mov r0, r4
	bl FUN_020397b4
	mov r0, r4
	bl FUN_02039f08
	mov r0, r4
	bl FUN_0203ad60
	ldmfd sp!, {r4, pc}
_02030434: .word unk_02099F44
	arm_func_end FUN_020303bc

	arm_func_start FUN_02030438
FUN_02030438: ; 0x02030438
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r2, #0x48
_02030444:
	mla r3, r4, r2, r0
	add r3, r3, #0x2000
	ldr r12, [r3, #0x870]
	add lr, r1, r4, lsl #4
	str r12, [r1, r4, lsl #4]
	ldr r12, [r3, #0x874]
	add r4, r4, #1
	str r12, [lr, #4]
	ldr r12, [r3, #0x898]
	cmp r4, #0x20
	str r12, [lr, #8]
	ldr r3, [r3, #0x89c]
	str r3, [lr, #0xc]
	blt _02030444
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02030438

	arm_func_start FUN_02030480
FUN_02030480: ; 0x02030480
	stmfd sp!, {r3, r4, r5, lr}
	add r2, r0, #0x870
	mov r4, #0
	add r5, r2, #0x2000
	mov r3, r4
_02030494:
	ldr r2, [r1, r4, lsl #4]
	add lr, r1, r4, lsl #4
	str r2, [r5]
	ldr r12, [lr, #4]
	add r4, r4, #1
	str r12, [r5, #4]
	ldr r2, [lr, #8]
	cmp r12, #0
	str r2, [r5, #0x28]
	ldr r2, [lr, #0xc]
	str r2, [r5, #0x2c]
	strh r3, [r5, #0xa]
	ldrneh r2, [r5, #0xa]
	orrne r2, r2, #1
	strneh r2, [r5, #0xa]
	cmp r4, #0x20
	add r5, r5, #0x48
	blt _02030494
	bl FUN_02037c58
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02030480

	arm_func_start FUN_020304e4
FUN_020304e4: ; 0x020304E4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r0, r1
	mov r6, r2
	str r1, [r4]
	mov r5, #1
	bl _ZN14CScreenManager15getCurSceneMainEv
	str r0, [r4, #4]
	bl _Z14GetCurrentModev
	cmp r0, #2
	beq _0203052C
	cmp r0, #3
	beq _02030524
	cmp r0, #0x6b
	beq _02030530
	b _02030538
_02030524:
	mov r0, #0x84
	b _0203053C
_0203052C:
	b _02030530
_02030530:
	mov r0, #0x36
	b _0203053C
_02030538:
	mov r0, #0x83
_0203053C:
	str r0, [r4, #8]
	str r5, [r4, #0xc]
	mov r0, r4
	mov r1, r6
	bl FUN_02032e30
	ldr r0, _02030580 ; 0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _02030570
	mov r1, #1
	mov r0, r4
	mov r2, r1
	bl FUN_0203ba04
_02030570:
	add r0, r4, #0x4000
	mov r1, #0
	strb r1, [r0, #0x254]
	ldmfd sp!, {r4, r5, r6, pc}
_02030580: .word gUtilGame
	arm_func_end FUN_020304e4

	arm_func_start FUN_02030584
FUN_02030584: ; 0x02030584
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02031a2c
	mov r0, r4
	bl FUN_02032f3c
	mov r0, r4
	bl FUN_020362e0
	ldr r0, _0203062C ; =0x02099F44
	ldr r0, [r0]
	cmp r0, #0
	beq _020305B8
	mov r0, r4
	bl FUN_ov131_0214bd84
_020305B8:
	mov r0, r4
	bl FUN_02036934
	mov r0, r4
	bl FUN_02037170
	mov r0, r4
	bl FUN_020375c4
	mov r0, r4
	bl FUN_020359c0
	mov r0, r4
	bl FUN_02038600
	mov r0, r4
	bl FUN_020397b4
	mov r0, r4
	bl FUN_02039f08
	mov r0, r4
	bl FUN_0203ad60
	ldr r0, _02030630 ; 0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _0203061C
	bl _Z14GetCurrentModev
	cmp r0, #2
	bne _0203061C
	mov r0, r4
	bl FUN_0203b888
_0203061C:
	ldr r0, _02030634 ; =g3DMagicCamera
	ldr r0, [r0]
	bl FUN_02052928
	ldmfd sp!, {r4, pc}
_0203062C: .word unk_02099F44
_02030630: .word gUtilGame
_02030634: .word g3DMagicCamera
	arm_func_end FUN_02030584

	arm_func_start FUN_02030638
FUN_02030638: ; 0x02030638
	stmfd sp!, {r4, lr}
	ldr r1, _02030730 ; =gDeltaTime
	mov r4, r0
	ldr r2, [r1]
	add r1, r4, #0x1000
	str r2, [r1, #0x3e0]
	bl FUN_02031b1c
	mov r0, r4
	bl FUN_0203ab80
	add r1, r4, #0x4200
	add r0, r4, #0x4000
	ldrh r2, [r1, #0x5c]
	ldr r1, _02030734 ; =0x000003F3
	ldr r3, [r0, #0x280]
	and r1, r2, r1
	mov r0, r4
	orr r1, r3, r1
	bl FUN_02033148
	mov r0, r4
	bl FUN_02035a3c
	mov r0, r4
	bl FUN_02036348
	ldr r0, _02030738 ; =0x02099F44
	ldr r0, [r0]
	cmp r0, #0
	beq _020306A8
	mov r0, r4
	bl FUN_ov131_0214bdd0
_020306A8:
	mov r0, r4
	bl FUN_02036998
	mov r0, r4
	bl FUN_020371cc
	mov r0, r4
	bl FUN_02038670
	mov r0, r4
	bl FUN_02039868
	mov r0, r4
	bl FUN_0203a058
	mov r0, r4
	bl FUN_0203a51c
	mov r0, r4
	bl FUN_0203de60
	ldr r0, _0203073C ; 0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _0203071C
	bl FUN_ov132_0213aefc
	cmp r0, #0
	beq _0203071C
	bl _Z14GetCurrentModev
	cmp r0, #2
	bne _0203071C
	bl FUN_ov16_020f2aa4
	cmp r0, #0
	bne _0203071C
	mov r0, r4
	bl FUN_0203addc
_0203071C:
	mov r0, r4
	bl FUN_020379cc
	mov r0, r4
	bl FUN_02038bac
	ldmfd sp!, {r4, pc}
_02030730: .word gDeltaTime
_02030734: .word 0x000003F3
_02030738: .word unk_02099F44
_0203073C: .word gUtilGame
	arm_func_end FUN_02030638

	arm_func_start FUN_02030740
FUN_02030740: ; 0x02030740
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	cmp r0, #0
	mov r6, #0
	bls _02030788
	mov r7, r3, asr #0x1f
_02030754:
	sub r12, r1, r2
	umull r4, lr, r12, r3
	mla lr, r12, r7, lr
	mov r12, r12, asr #0x1f
	adds r5, r4, #0x800
	mla lr, r12, r3, lr
	adc r4, lr, #0
	mov r5, r5, lsr #0xc
	orr r5, r5, r4, lsl #20
	add r6, r6, #1
	cmp r6, r0
	add r2, r2, r5
	blo _02030754
_02030788:
	mov r0, r2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02030740

	arm_func_start FUN_02030790
FUN_02030790: ; 0x02030790
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x40
	mov r9, r0
	ldr r0, [r9]
	mov r8, r1
	mov r7, r2
	ldr r10, _02030F40 ; =0x020A9C40
	ldr r4, _02030F44 ; =0x0209A454
	mov r6, #1
	mov r5, #0
	bl _ZN14CScreenManager15getCurSceneMainEv
	add r1, r9, #0x1000
	str r0, [r1, #0x3e8]
	cmp r8, #0x24
	addls pc, pc, r8, lsl #2
	b _02030F38
_020307D0: ; jump table
	b _02030F38 ; case 0
	b _02030864 ; case 1
	b _020308A0 ; case 2
	b _020308B8 ; case 3
	b _020308E8 ; case 4
	b _02030900 ; case 5
	b _02030930 ; case 6
	b _02030960 ; case 7
	b _020309DC ; case 8
	b _02030A4C ; case 9
	b _02030A7C ; case 10
	b _02030BD8 ; case 11
	b _02030A64 ; case 12
	b _02030C3C ; case 13
	b _02030C0C ; case 14
	b _02030C54 ; case 15
	b _02030AF4 ; case 16
	b _02030B30 ; case 17
	b _02030B68 ; case 18
	b _02030BA0 ; case 19
	b _02030F38 ; case 20
	b _02030A14 ; case 21
	b _02030880 ; case 22
	b _02030F38 ; case 23
	b _02030CC4 ; case 24
	b _02030CF4 ; case 25
	b _02030D50 ; case 26
	b _02030D80 ; case 27
	b _020309C4 ; case 28
	b _02030DB0 ; case 29
	b _02030DFC ; case 30
	b _02030E28 ; case 31
	b _02030E40 ; case 32
	b _02030AB8 ; case 33
	b _02030E98 ; case 34
	b _02030ED8 ; case 35
	b _02030F10 ; case 36
_02030864:
	str r6, [r4, #0x24]
	ldr r0, [r9]
	mov r1, r5
	mov r2, #0x60
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030880:
	mov r0, #5
	str r0, [r4, #0x24]
	ldr r0, [r9]
	mov r1, r5
	mov r2, #0x60
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020308A0:
	ldr r0, [r9]
	mov r1, r5
	mov r2, #0x85
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020308B8:
	ldr r5, [r9]
	mov r4, #0x86
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020308E8:
	ldr r0, [r9]
	mov r1, r5
	mov r2, #0x88
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030900:
	ldr r5, [r9]
	mov r4, #0x89
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030930:
	ldr r5, [r9]
	mov r4, #0x61
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030960:
	cmp r7, #0
	bne _02030974
	ldr r0, _02030F48 ; =g2DAdventureLogic
	mov r1, r5
	b _0203097C
_02030974:
	ldr r0, _02030F48 ; =g2DAdventureLogic
	mov r1, r6
_0203097C:
	ldr r0, [r0]
	bl FUN_ov0_020cd104
	ldr r0, _02030F48 ; =g2DAdventureLogic
	mov r1, r7
	ldr r0, [r0]
	bl FUN_ov0_020cd0ec
	ldr r5, [r9]
	mov r4, #0x8a
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020309C4:
	ldr r0, [r9]
	mov r1, r5
	mov r2, #0x8f
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020309DC:
	mov r1, r5
	str r1, [r4, #8]
	strb r1, [r4, #0xc]
	mov r0, #2
	str r0, [r4, #4]
	strb r1, [r4, #0x1e]
	strb r1, [r4, #0x1f]
	strb r1, [r4, #0x20]
	strb r1, [r4, #0x1d]
	ldr r0, [r9]
	mov r2, #0x5f
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030A14:
	mov r1, r5
	str r1, [r4, #8]
	strb r1, [r4, #0xc]
	mov r0, #3
	str r0, [r4, #4]
	strb r1, [r4, #0x1e]
	strb r1, [r4, #0x1f]
	strb r1, [r4, #0x20]
	strb r1, [r4, #0x1d]
	ldr r0, [r9]
	mov r2, #0x5f
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030A4C:
	ldr r0, [r9]
	mov r1, r5
	mov r2, #0x64
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030A64:
	ldr r0, [r9]
	mov r1, r5
	mov r2, #0x65
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030A7C:
	ldr r0, _02030F40 ; =0x020A9C40
	mov r1, r7
	bl FUN_020460f0
	ldr r5, [r9]
	mov r4, #0x66
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030AB8:
	ldr r0, _02030F40 ; =0x020A9C40
	mov r1, r7
	bl FUN_020460f0
	ldr r5, [r9]
	mov r4, #0x7b
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030AF4:
	ldr r0, _02030F40 ; =0x020A9C40
	orr r1, r7, #0x80000000
	bl FUN_020460f0
	ldr r5, [r9]
	mov r4, #0x66
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030B30:
	ldr r0, _02030F40 ; =0x020A9C40
	mov r1, r7
	bl FUN_020460f0
	ldr r4, [r9]
	mov r1, r5
	mov r0, r4
	mov r2, #0x6c
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r4
	mov r1, r6
	mov r2, #0x5d
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030B68:
	ldr r0, _02030F40 ; =0x020A9C40
	mov r1, r7
	bl FUN_020460f0
	ldr r4, [r9]
	mov r1, r5
	mov r0, r4
	mov r2, #0x6b
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r4
	mov r2, r5
	mov r1, r6
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030BA0:
	ldr r0, _02030F40 ; =0x020A9C40
	mov r1, r7
	bl FUN_020460f0
	ldr r4, [r9]
	mov r1, r5
	mov r0, r4
	mov r2, #0x6e
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r4
	mov r1, r6
	mov r2, #0x5d
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030BD8:
	strb r7, [r4, #0x3a]
	ldr r5, [r9]
	mov r4, #0x8b
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030C0C:
	ldr r5, [r9]
	mov r4, #0x8c
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030C3C:
	ldr r0, [r9]
	mov r1, r5
	mov r2, #0x68
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030C54:
	ldr r3, _02030F4C ; =0x0208FCF8
	add r5, sp, #0
	mov r2, #5
_02030C60:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r5, #1]
	strb r1, [r5], #2
	bne _02030C60
	mvn r5, #0
	add r1, sp, #0
	mov r0, r10
	mov r2, r5
	bl FUN_02045938
	mov r1, #0
	strh r7, [r10]
	str r1, [r4]
	ldr r0, [r9]
	mov r2, #0x5e
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	ldr r0, _02030F50 ; =0x020AF81C
	mov r1, r5
	mov r2, r5
	bl FUN_02044e40
	add r0, r9, #0x1000
	add sp, sp, #0x40
	str r5, [r0, #0x3e8]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030CC4:
	ldr r5, [r9]
	mov r4, #0x87
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030CF4:
	bl FUN_ov16_020f081c
	strb r6, [r4, #0x2e]
	strb r6, [r4, #0x2f]
	mov r1, r5
	strb r1, [r4, #0x30]
	strb r1, [r4, #0x31]
	strb r1, [r4, #0x32]
	strb r1, [r4, #0x33]
	strb r0, [r4, #0x28]
	strb r1, [r4, #0x29]
	strb r6, [r4, #0x2a]
	strb r1, [r4, #0x2b]
	ldr r5, [r9]
	mov r4, #0x5a
	mov r0, r5
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030D50:
	ldr r5, [r9]
	mov r4, #0x72
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030D80:
	ldr r5, [r9]
	mov r4, #0x73
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030DB0:
	ldr r5, [r9]
	mov r4, #0x61
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	sub r4, r6, #2
	ldr r0, _02030F50 ; =0x020AF81C
	mov r1, r4
	mov r2, r4
	bl FUN_02044e40
	add r0, r9, #0x1000
	add sp, sp, #0x40
	str r4, [r0, #0x3e8]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030DFC:
	ldr r4, [r9]
	mov r1, r5
	mov r0, r4
	mov r2, #0x3d
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	mov r0, r4
	mov r2, r5
	mov r1, r6
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030E28:
	ldr r0, [r9]
	mov r1, r6
	mov r2, #0x83
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030E40:
	ldr r7, [r9]
	mov r1, r5
	mov r0, r7
	bl _ZN14CScreenManager8popSceneE12EngineSelect
	mov r0, r7
	mov r1, r6
	bl _ZN14CScreenManager8popSceneE12EngineSelect
	sub r6, r6, #2
	ldr r0, _02030F50 ; =0x020AF81C
	mov r1, r6
	mov r2, r6
	bl FUN_02044e40
	add r0, r9, #0x1000
	str r6, [r0, #0x3e8]
	strb r5, [r4, #0x34]
	strh r5, [r4, #0x2c]
	strb r5, [r4, #0x35]
	strb r5, [r4, #0x36]
	strb r5, [r4, #0x37]
	add sp, sp, #0x40
	strb r5, [r4, #0x38]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030E98:
	ldr r0, _02030F48 ; =g2DAdventureLogic
	mov r1, r7
	ldr r0, [r0]
	bl FUN_ov0_020cd0ec
	ldr r5, [r9]
	mov r4, #0x8e
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030ED8:
	mov r1, r5
	str r1, [r4, #8]
	strb r1, [r4, #0xc]
	mov r0, #4
	str r0, [r4, #4]
	strb r1, [r4, #0x1e]
	strb r6, [r4, #0x1f]
	strb r1, [r4, #0x20]
	strb r1, [r4, #0x1d]
	ldr r0, [r9]
	mov r2, #0x5f
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030F10:
	ldr r5, [r9]
	mov r4, #0x79
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
_02030F38:
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02030F40: .word unk_020A9C40
_02030F44: .word unk_0209A454
_02030F48: .word g2DAdventureLogic
_02030F4C: .word unk_0208FCF8
_02030F50: .word unk_020AF81C
	arm_func_end FUN_02030790

	arm_func_start FUN_02030f54
FUN_02030f54: ; 0x02030F54
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZN8Graphics17IsAnyScreenFadingEv
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	add r0, r4, #0x1000
	ldr r0, [r0, #0x3e8]
	cmp r0, #0
	movlt r0, #1
	ldmltfd sp!, {r4, pc}
	ldr r0, [r4]
	bl _ZN14CScreenManager15getCurSceneMainEv
	add r1, r4, #0x1000
	ldr r1, [r1, #0x3e8]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02030f54

	arm_func_start FUN_02030fa0
FUN_02030fa0: ; 0x02030FA0
	stmfd sp!, {r4, lr}
	bl _Z14GetCurrentModev
	cmp r0, #2
	ldmnefd sp!, {r4, pc}
	ldr r4, _02030FD8 ; =0x020AF81C
	mov r0, r4
	bl FUN_0204457c
	ldr r3, _02030FDC ; =0x020B581C
	mov r2, #0
	mov r0, r4
	mov r1, #0x3d
	str r2, [r3, #0x220]
	bl FUN_02044e40
	ldmfd sp!, {r4, pc}
_02030FD8: .word unk_020AF81C
_02030FDC: .word unk_020B581C
	arm_func_end FUN_02030fa0

	arm_func_start FUN_02030fe0
FUN_02030fe0: ; 0x02030FE0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	cmp r1, #0
	beq _02031004
	cmp r1, #1
	beq _0203100C
	cmp r1, #2
	ldreq r5, [r6, #0xc]
	b _02031010
_02031004:
	ldr r5, [r6, #4]
	b _02031010
_0203100C:
	ldr r5, [r6, #8]
_02031010:
	mov r4, #0
	ldr r0, _02031044 ; =0x020AF81C
	mov r1, r4
	bl FUN_0204451c
	ldr r0, [r6]
	mov r1, r4
	mov r2, r5
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	ldr r0, [r6]
	ldr r1, [r0]
	ldr r1, [r1, #0x34]
	blx r1
	ldmfd sp!, {r4, r5, r6, pc}
_02031044: .word unk_020AF81C
	arm_func_end FUN_02030fe0

	arm_func_start FUN_02031048
FUN_02031048: ; 0x02031048
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl _ZN8Graphics17IsAnyScreenFadingEv
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r5]
	bl _ZN14CScreenManager15getCurSceneMainEv
	mov r4, r0
	ldr r0, [r5]
	bl _ZN14CScreenManager16getNextSceneMainEv
	cmp r4, r0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02031048

	arm_func_start FUN_02031084
FUN_02031084: ; 0x02031084
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r2
	cmp r5, #0x20
	bgt _020310C4
	bge _02031118
	cmp r5, #0x12
	bgt _0203114C
	cmp r5, #0x10
	blt _0203114C
	beq _020310E0
	cmp r5, #0x11
	beq _0203110C
	cmp r5, #0x12
	beq _02031110
	b _0203114C
_020310C4:
	cmp r5, #0x21
	bgt _020310D4
	beq _02031144
	b _0203114C
_020310D4:
	cmp r5, #0x22
	beq _02031148
	b _0203114C
_020310E0:
	ldr r0, _020311B4 ; 0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _020310FC
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _02031104
_020310FC:
	bl _ZN8Graphics15BlackOutScreensEv
	b _0203114C
_02031104:
	bl _ZN8Graphics12BlackOutMainEv
	b _0203114C
_0203110C:
	b _02031104
_02031110:
	bl _ZN8Graphics11BlackOutSubEv
	b _0203114C
_02031118:
	ldr r0, _020311B4 ; 0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _02031134
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _0203113C
_02031134:
	bl _ZN8Graphics15WhiteOutScreensEv
	b _0203114C
_0203113C:
	bl _ZN8Graphics12WhiteOutMainEv
	b _0203114C
_02031144:
	b _0203113C
_02031148:
	bl _ZN8Graphics11WhiteOutSubEv
_0203114C:
	ands r0, r5, #0xf
	beq _02031168
	cmp r0, #1
	beq _0203119C
	cmp r0, #2
	beq _020311A8
	ldmfd sp!, {r3, r4, r5, pc}
_02031168:
	ldr r0, _020311B4 ; 0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _02031184
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _02031190
_02031184:
	mov r0, r4
	bl _ZN8Graphics13FadeInScreensEl
	ldmfd sp!, {r3, r4, r5, pc}
_02031190:
	mov r0, r4
	bl _ZN8Graphics10FadeInMainEl
	ldmfd sp!, {r3, r4, r5, pc}
_0203119C:
	mov r0, r4
	bl _ZN8Graphics10FadeInMainEl
	ldmfd sp!, {r3, r4, r5, pc}
_020311A8:
	mov r0, r4
	bl _ZN8Graphics9FadeInSubEl
	ldmfd sp!, {r3, r4, r5, pc}
_020311B4: .word gUtilGame
	arm_func_end FUN_02031084

	arm_func_start FUN_020311b8
FUN_020311b8: ; 0x020311B8
	stmfd sp!, {r4, lr}
	mov r4, r2
	cmp r1, #0x12
	bgt _0203120C
	bge _02031270
	cmp r1, #0x10
	bgt _02031200
	bge _02031230
	cmp r1, #2
	ldmgtfd sp!, {r4, pc}
	cmp r1, #0
	ldmltfd sp!, {r4, pc}
	beq _02031230
	cmp r1, #1
	beq _02031264
	cmp r1, #2
	beq _02031270
	ldmfd sp!, {r4, pc}
_02031200:
	cmp r1, #0x11
	beq _02031264
	ldmfd sp!, {r4, pc}
_0203120C:
	cmp r1, #0x21
	bgt _02031224
	bge _020312B0
	cmp r1, #0x20
	beq _0203127C
	ldmfd sp!, {r4, pc}
_02031224:
	cmp r1, #0x22
	beq _020312BC
	ldmfd sp!, {r4, pc}
_02031230:
	ldr r0, _020312C8 ; 0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _0203124C
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _02031258
_0203124C:
	mov r0, r4
	bl _ZN8Graphics16FadeScreensBlackEl
	ldmfd sp!, {r4, pc}
_02031258:
	mov r0, r4
	bl _ZN8Graphics13FadeMainBlackEl
	ldmfd sp!, {r4, pc}
_02031264:
	mov r0, r4
	bl _ZN8Graphics13FadeMainBlackEl
	ldmfd sp!, {r4, pc}
_02031270:
	mov r0, r4
	bl _ZN8Graphics12FadeSubBlackEl
	ldmfd sp!, {r4, pc}
_0203127C:
	ldr r0, _020312C8 ; 0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _02031298
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _020312A4
_02031298:
	mov r0, r4
	bl _ZN8Graphics16FadeScreensWhiteEl
	ldmfd sp!, {r4, pc}
_020312A4:
	mov r0, r4
	bl _ZN8Graphics13FadeMainWhiteEl
	ldmfd sp!, {r4, pc}
_020312B0:
	mov r0, r4
	bl _ZN8Graphics13FadeMainWhiteEl
	ldmfd sp!, {r4, pc}
_020312BC:
	mov r0, r4
	bl _ZN8Graphics12FadeSubWhiteEl
	ldmfd sp!, {r4, pc}
_020312C8: .word gUtilGame
	arm_func_end FUN_020311b8

	arm_func_start FUN_020312cc
FUN_020312cc: ; 0x020312CC
	ldr r12, _020312D4 ; =_ZN8Graphics17IsAnyScreenFadingEv
	bx r12
_020312D4: .word _ZN8Graphics17IsAnyScreenFadingEv
	arm_func_end FUN_020312cc

	arm_func_start FUN_020312d8
FUN_020312d8: ; 0x020312D8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x54
	mov r10, r0
	mov r9, r1
	mov r5, #0x30
	mla r0, r9, r5, r10
	add r0, r0, #0x1000
	ldr r1, [r0, #0x3f0]
	mov r8, r2
	mov r7, r3
	cmp r1, #0
	beq _02031354
	ldr r4, _02031534 ; =g3DPlaneCtrl
	ldr r0, [r4]
	bl FUN_020591e8
	mla r0, r9, r5, r10
	add r0, r0, #0x1000
	ldr r1, [r0, #0x3f0]
	ldr r0, [r4]
	bl FUN_02058ee0
	mla r0, r9, r5, r10
	add r0, r0, #0x1000
	ldr r1, [r0, #0x3f0]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r10, #0x3f0
	add r0, r0, #0x1000
	mla r0, r9, r5, r0
	mov r2, r5
	mov r1, #0
	bl MI_CpuFill8
_02031354:
	ldr r5, _02031534 ; =g3DPlaneCtrl
	add r1, r10, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x3e4]
	add r2, r9, #1
	mov r3, #0xa
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
	add r1, r10, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x3e4]
	add r2, r9, #1
	mov r3, #0xc8
	bl _ZN12C3DPlaneCtrl8setDepthEiij
	add r0, r10, #0x1000
	ldr r1, [r0, #0x3e4]
	ldr r0, [r5]
	add r2, r9, #1
	mov r3, #0x1f
	bl _ZN12C3DPlaneCtrl8setAlphaEiih
	ldr r0, [r5]
	add r1, r10, #0x1000
	ldr r1, [r1, #0x3e4]
	add r2, r9, #1
	ldr r3, _02031538 ; =0x00007FFF
	bl _ZN12C3DPlaneCtrl12setColorMaskEiit
	mov r6, #0
	str r6, [sp]
	ldr r0, [r5]
	add r1, r10, #0x1000
	ldr r1, [r1, #0x3e4]
	add r2, r9, #1
	mov r3, r6
	bl _ZN12C3DPlaneCtrl12setPosAnchorEiihh
	ldrb r0, [r8, #3]
	ldrb r4, [r8, #2]
	ldrb r3, [r8]
	ldrb r2, [r8, #1]
	ldr r1, _0203153C ; =0x6D62765F
	mov r2, r2, lsl #0x10
	orr r2, r2, r3, lsl #24
	orr r2, r2, r4, lsl #8
	orr r2, r0, r2
	cmp r2, r1
	beq _02031418
	ldr r0, _02031540 ; =0x7463765F
	mov r4, #0x30
	cmp r2, r0
	beq _0203145C
	b _02031498
_02031418:
	add r4, sp, #0x14
	ldr r1, _02031544 ; =0x0208FD04
	mov r0, r4
	mov r2, r8
	bl STD_TSPrintf
	ldr r1, _02031548 ; =0x0209A200
	ldr r0, [r5]
	ldr r2, [r1, #0x1c]
	mov r1, #1
	stmia sp, {r1, r6}
	mov r3, r4
	mov r1, #5
	str r6, [sp, #8]
	bl FUN_02058684
	mov r1, #0x30
	mla r1, r9, r1, r10
	b _020314D8
_0203145C:
	add r11, sp, #0x14
	ldr r1, _0203154C ; =0x0208FD0C
	mov r0, r11
	mov r2, r8
	bl STD_TSPrintf
	ldr r1, _02031548 ; =0x0209A200
	ldr r0, [r5]
	ldr r2, [r1, #0x20]
	mov r1, #1
	stmia sp, {r1, r6}
	mov r3, r11
	mov r1, #5
	str r6, [sp, #8]
	bl FUN_02058684
	b _020314D4
_02031498:
	add r11, sp, #0x14
	ldr r1, _02031550 ; =0x0208FD14
	mov r0, r11
	mov r2, r8
	bl STD_TSPrintf
	ldr r0, [r5]
	mov r2, r11
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	str r6, [sp, #0xc]
	mov r1, #5
	mov r3, #1
	str r6, [sp, #0x10]
	bl FUN_02058800
_020314D4:
	mla r1, r9, r4, r10
_020314D8:
	add r1, r1, #0x1000
	str r0, [r1, #0x3f0]
	mov r0, #0x30
	mul r4, r9, r0
	add r0, r10, r4
	add r0, r0, #0x1000
	mov r1, #1
	strb r1, [r0, #0x3f6]
	mov r3, #0
	strb r3, [r0, #0x3f4]
	strb r7, [r0, #0x3f5]
	str r3, [r0, #0x400]
	str r3, [r0, #0x404]
	add r1, r10, #0xf7
	ldr r2, [sp, #0x78]
	str r3, [r0, #0x3fc]
	str r2, [r0, #0x3f8]
	add r1, r1, #0x1300
	ldrsb r0, [r1, r4]
	orr r0, r0, #1
	strb r0, [r1, r4]
	add sp, sp, #0x54
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02031534: .word g3DPlaneCtrl
_02031538: .word 0x00007FFF
_0203153C: .word 0x6D62765F
_02031540: .word 0x7463765F
_02031544: .word unk_0208FD04
_02031548: .word unk_0209A200
_0203154C: .word unk_0208FD0C
_02031550: .word unk_0208FD14
	arm_func_end FUN_020312d8

	arm_func_start FUN_02031554
FUN_02031554: ; 0x02031554
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, #0x30
	mla r0, r6, r5, r7
	add r0, r0, #0x1000
	ldr r0, [r0, #0x3f0]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _020315EC ; =g3DPlaneCtrl
	add r1, r7, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x3e4]
	add r2, r6, #1
	mov r3, #2
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
	mla r0, r6, r5, r7
	add r0, r0, #0x1000
	ldr r1, [r0, #0x3f0]
	ldr r0, [r4]
	bl FUN_020591e8
	mla r0, r6, r5, r7
	add r0, r0, #0x1000
	ldr r1, [r0, #0x3f0]
	ldr r0, [r4]
	bl FUN_02058ee0
	mla r0, r6, r5, r7
	add r0, r0, #0x1000
	ldr r1, [r0, #0x3f0]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r7, #0x3f0
	add r0, r0, #0x1000
	mla r0, r6, r5, r0
	mov r2, r5
	mov r1, #0
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020315EC: .word g3DPlaneCtrl
	arm_func_end FUN_02031554

	arm_func_start FUN_020315f0
FUN_020315f0: ; 0x020315F0
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov r1, #0x30
	mla r1, lr, r1, r0
	add r1, r1, #0x1000
	ldr r1, [r1, #0x3f0]
	mov r12, r2
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	and r1, r3, #0xff
	ldr r2, _0203163C ; =g3DPlaneCtrl
	str r1, [sp]
	add r1, r0, #0x1000
	ldr r0, [r2]
	ldr r1, [r1, #0x3e4]
	add r2, lr, #1
	and r3, r12, #0xff
	bl _ZN12C3DPlaneCtrl12setPosAnchorEiihh
	ldmfd sp!, {r3, pc}
_0203163C: .word g3DPlaneCtrl
	arm_func_end FUN_020315f0

	arm_func_start FUN_02031640
FUN_02031640: ; 0x02031640
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, #0x30
	mul r7, r1, r4
	mov r8, r0
	add r0, r8, r7
	add r0, r0, #0x1000
	ldr r1, [r0, #0x3f0]
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [sp, #0x1c]
	mov r3, r3, lsl #0xc
	cmp r1, #0
	ldrne r1, [r0, #0x400]
	ldrne r0, [r0, #0x404]
	mov r2, r2, lsl #0xc
	addne r3, r3, r0
	ldr r6, [sp, #0x18]
	addne r2, r2, r1
	add r0, r8, r7
	cmp r6, #0
	addeq r0, r0, #0x1000
	streq r2, [r0, #0x400]
	streq r3, [r0, #0x404]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r12, r0, #0x1000
	add r0, r8, #8
	add r1, r8, #0xc
	add r4, r1, #0x1400
	str r6, [r12, #0x3fc]
	add r5, r0, #0x1400
	str r2, [r5, r7]
	str r3, [r4, r7]
	ldr r2, [r5, r7]
	ldr r0, [r12, #0x400]
	mov r1, r6
	sub r0, r2, r0
	str r0, [r5, r7]
	ldr r2, [r4, r7]
	ldr r0, [r12, #0x404]
	sub r0, r2, r0
	str r0, [r4, r7]
	ldr r0, [r5, r7]
	bl _s32_div_f
	str r0, [r5, r7]
	ldr r0, [r4, r7]
	mov r1, r6
	bl _s32_div_f
	add r1, r8, #0xf7
	add r1, r1, #0x1300
	str r0, [r4, r7]
	ldrsb r0, [r1, r7]
	orr r0, r0, #0x10
	strb r0, [r1, r7]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02031640

	arm_func_start FUN_02031718
FUN_02031718: ; 0x02031718
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	cmp r2, #0
	mov r5, r0
	mov r4, r1
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, pc}
	mov r1, r2
	mov r2, r3
	bl FUN_ov131_0214aabc ; may be ov132 ; ov131(Mica)
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, pc}
	ldrh r1, [r0, #0xa]
	tst r1, #1
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, pc}
	ldr r2, _020317EC ; =g2DAdventureLogic
	ldr r1, [r0, #4]
	ldr r0, [r2]
	bl FUN_020552cc
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, pc}
	ldr lr, [r0, #0x84]
	ldr r2, [sp, #0x28]
	str lr, [sp, #0x10]
	ldr r12, [r0, #0x88]
	add lr, lr, r2
	str r12, [sp, #0x14]
	ldr r3, [r0, #0x8c]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	add r12, r12, r1
	add r3, r3, r0
	add r0, sp, #0x10
	add r1, sp, #0xc
	add r2, sp, #8
	str lr, [sp, #0x10]
	str r12, [sp, #0x14]
	str r3, [sp, #0x18]
	bl NNS_G3dWorldPosToScrPos
	ldr r1, [sp, #0x34]
	mov r0, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	mov r0, r5
	mov r1, r4
	bl FUN_02031640
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, pc}
_020317EC: .word g2DAdventureLogic
	arm_func_end FUN_02031718

	arm_func_start FUN_020317f0
FUN_020317f0: ; 0x020317F0
	stmfd sp!, {r3, lr}
	mov r12, r1
	mov r1, #0x30
	mla r1, r12, r1, r0
	add r1, r1, #0x1000
	ldr r1, [r1, #0x3f0]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, r3, lsl #0x10
	mov r1, r1, asr #0x10
	ldr lr, _02031840 ; =g3DPlaneCtrl
	str r1, [sp]
	add r1, r0, #0x1000
	mov r3, r2, lsl #0x10
	ldr r0, [lr]
	ldr r1, [r1, #0x3e4]
	add r2, r12, #1
	mov r3, r3, asr #0x10
	bl _ZN12C3DPlaneCtrl11setTexScaleEiiss
	ldmfd sp!, {r3, pc}
_02031840: .word g3DPlaneCtrl
	arm_func_end FUN_020317f0

	arm_func_start FUN_02031844
FUN_02031844: ; 0x02031844
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	mov r6, #0x30
	mla r0, r4, r6, r5
	add r12, r0, #0x1000
	ldr r0, [r12, #0x3f0]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r1, [sp, #0x10]
	rsb r0, r2, r2, lsl #5
	str r0, [r12, #0x414]
	cmp r1, #0
	bne _020318A4
	ldr r2, [r12, #0x414]
	ldr r0, _020318E4 ; =g3DPlaneCtrl
	mov r3, r2, asr #0xc
	add r1, r5, #0x1000
	ldr r0, [r0]
	ldr r1, [r1, #0x3e4]
	add r2, r4, #1
	and r3, r3, #0xff
	bl _ZN12C3DPlaneCtrl8setAlphaEiih
	ldmfd sp!, {r4, r5, r6, pc}
_020318A4:
	str r1, [r12, #0x410]
	rsb lr, r3, r3, lsl #5
	sub r0, r3, r2
	str lr, [r12, #0x41c]
	bl _s32_div_f
	mul r3, r4, r6
	add r2, r5, r3
	add r1, r5, #0xf7
	rsb r4, r0, r0, lsl #5
	add r0, r2, #0x1000
	str r4, [r0, #0x418]
	add r1, r1, #0x1300
	ldrsb r0, [r1, r3]
	orr r0, r0, #0x40
	strb r0, [r1, r3]
	ldmfd sp!, {r4, r5, r6, pc}
_020318E4: .word g3DPlaneCtrl
	arm_func_end FUN_02031844

	arm_func_start FUN_020318e8
FUN_020318e8: ; 0x020318E8
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov r1, #0x30
	mla r1, lr, r1, r0
	add r1, r1, #0x1000
	ldr r1, [r1, #0x3f0]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldr r12, _0203192C ; =g3DPlaneCtrl
	add r1, r0, #0x1000
	mov r3, r2, lsl #0x10
	ldr r0, [r12]
	ldr r1, [r1, #0x3e4]
	add r2, lr, #1
	mov r3, r3, lsr #0x10
	bl _ZN12C3DPlaneCtrl8setDepthEiij
	ldmfd sp!, {r3, pc}
_0203192C: .word g3DPlaneCtrl
	arm_func_end FUN_020318e8

	arm_func_start FUN_02031930
FUN_02031930: ; 0x02031930
	mov r3, #0x30
	mla r0, r1, r3, r0
	add r0, r0, #0x1000
	ldr r1, [r0, #0x3f0]
	cmp r1, #0
	strneb r2, [r0, #0x3f4]
	bx lr
	arm_func_end FUN_02031930

	arm_func_start FUN_0203194c
FUN_0203194c: ; 0x0203194C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	mov r0, #0x30
	mla r0, r4, r0, r5
	add r0, r0, #0x1000
	ldr r1, [r0, #0x3f0]
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r1, #0
	str r1, [r0, #0x400]
	str r1, [r0, #0x404]
	mov r3, #0x64
	ldr r6, _02031A04 ; =g3DPlaneCtrl
	str r3, [sp]
	add r1, r5, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x3e4]
	add r2, r4, #1
	bl _ZN12C3DPlaneCtrl11setTexScaleEiiss
	mov r0, #1
	str r0, [sp]
	add r1, r5, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x3e4]
	add r2, r4, #1
	mov r3, #8
	bl _ZN12C3DPlaneCtrl7setFlagEiitb
	add r1, r5, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x3e4]
	add r2, r4, #1
	mov r3, #0x12c
	bl _ZN12C3DPlaneCtrl8setDepthEiij
	add r1, r5, #0x1000
	add r2, r4, #1
	mov r0, #0xc0
	str r0, [sp]
	ldr r0, [r6]
	ldr r1, [r1, #0x3e4]
	mov r3, #0x100
	bl _ZN12C3DPlaneCtrl8setTexWHEiiss
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02031A04: .word g3DPlaneCtrl
	arm_func_end FUN_0203194c

	arm_func_start FUN_02031a08
FUN_02031a08: ; 0x02031A08
	mov r2, #0x30
	mla r2, r1, r2, r0
	add r0, r2, #0x1000
	ldr r0, [r0, #0x3f0]
	cmp r0, #0
	addne r0, r2, #0x1300
	ldrnesb r0, [r0, #0xf7]
	moveq r0, #0
	bx lr
	arm_func_end FUN_02031a08

	arm_func_start FUN_02031a2c
FUN_02031a2c: ; 0x02031A2C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, #0
	add r0, r10, #0x3f0
	mov r6, #0x30
	add r7, r0, #0x1000
	add r4, r10, #0x1000
	mov r8, #2
	mov r11, r9
	ldr r5, _02031ADC ; =g3DPlaneCtrl
	b _02031AD0
_02031A58:
	mla r0, r9, r6, r10
	add r0, r0, #0x1000
	ldr r0, [r0, #0x3f0]
	cmp r0, #0
	beq _02031ACC
	ldr r0, [r5]
	ldr r1, [r4, #0x3e4]
	add r2, r9, #1
	mov r3, r8
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
	mla r0, r9, r6, r10
	add r0, r0, #0x1000
	ldr r1, [r0, #0x3f0]
	ldr r0, [r5]
	bl FUN_020591e8
	mla r0, r9, r6, r10
	add r0, r0, #0x1000
	ldr r1, [r0, #0x3f0]
	ldr r0, [r5]
	bl FUN_02058ee0
	mla r0, r9, r6, r10
	add r0, r0, #0x1000
	ldr r1, [r0, #0x3f0]
	ldr r0, [r5]
	bl FUN_02058ee0
	mla r0, r9, r6, r7
	mov r1, r11
	mov r2, r6
	bl MI_CpuFill8
_02031ACC:
	add r9, r9, #1
_02031AD0:
	cmp r9, #8
	blt _02031A58
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02031ADC: .word g3DPlaneCtrl
	arm_func_end FUN_02031a2c

	arm_func_start FUN_02031ae0
FUN_02031ae0: ; 0x02031AE0
	stmfd sp!, {r3, lr}
	mov r3, #0x30
	mla r3, r2, r3, r0
	add r2, r3, #0x1000
	ldr r12, [r2, #0x3f0]
	mov r2, r1
	add r1, r0, #0x1000
	ldr r3, _02031B18 ; =g3DPlaneCtrl
	ldr r1, [r1, #0x3e4]
	ldr r0, [r3]
	add r2, r2, #1
	and r3, r12, #0xff
	bl _ZN12C3DPlaneCtrl7setPlttEiih
	ldmfd sp!, {r3, pc}
_02031B18: .word g3DPlaneCtrl
	arm_func_end FUN_02031ae0

	arm_func_start FUN_02031b1c
FUN_02031b1c: ; 0x02031B1C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r11, #0
	mov r6, r0
	ldr r10, _02031E64 ; =g3DPlaneCtrl
	mov r4, #0x30
	mov r5, r11
	b _02031E58
_02031B38:
	mla r2, r5, r4, r6
	add r0, r2, #0x1000
	ldr r1, [r0, #0x3f0]
	cmp r1, #0
	beq _02031E54
	add r0, r2, #0x1300
	ldrsb r0, [r0, #0xf6]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02031E54
_02031B60: ; jump table
	b _02031E54 ; case 0
	b _02031B70 ; case 1
	b _02031BCC ; case 2
	b _02031C5C ; case 3
_02031B70:
	ldr r0, [r10]
	bl FUN_02058e30
	cmp r0, #0
	bne _02031E54
	mla r0, r5, r4, r6
	add r0, r0, #0x1000
	ldr r3, [r0, #0x3f8]
	ldr r1, [r0, #0x3f0]
	ldr r0, [r10]
	mov r2, #0
	bl FUN_02059038
	ldr r0, [r10]
	add r1, r6, #0x1000
	ldr r1, [r1, #0x3e4]
	add r2, r5, #1
	mov r3, #2
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
	add r0, r6, #0xf6
	add r2, r0, #0x1300
	mul r1, r5, r4
	ldrsb r0, [r2, r1]
	add r0, r0, #1
	strb r0, [r2, r1]
_02031BCC:
	mla r0, r5, r4, r6
	add r0, r0, #0x1000
	ldr r1, [r0, #0x3f0]
	ldr r0, [r10]
	bl FUN_02059328
	cmp r0, #0
	beq _02031E54
	mla r0, r5, r4, r6
	add r0, r0, #0x1000
	ldr r3, [r0, #0x3f0]
	add r1, r6, #0x1000
	ldr r0, [r10]
	ldr r1, [r1, #0x3e4]
	add r2, r5, #1
	and r3, r3, #0xff
	bl _ZN12C3DPlaneCtrl6setTexEiih
	mla r1, r5, r4, r6
	str r11, [sp]
	add r1, r1, #0x1300
	ldrsb r3, [r1, #0xf5]
	add r1, r6, #0x1000
	ldr r0, [r10]
	ldr r1, [r1, #0x3e4]
	add r2, r5, #1
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
	add r0, r6, #0xf7
	add r1, r6, #0xf6
	mul r2, r5, r4
	add r3, r0, #0x1300
	ldrsb r0, [r3, r2]
	add r1, r1, #0x1300
	orr r0, r0, #2
	strb r0, [r3, r2]
	ldrsb r0, [r1, r2]
	add r0, r0, #1
	strb r0, [r1, r2]
_02031C5C:
	mla r0, r5, r4, r6
	add r0, r0, #0x1300
	ldrsb r0, [r0, #0xf4]
	mov r3, #2
	cmp r0, #0
	beq _02031C94
	mov r0, #1
	str r0, [sp]
	add r1, r6, #0x1000
	ldr r0, [r10]
	ldr r1, [r1, #0x3e4]
	add r2, r5, #1
	bl _ZN12C3DPlaneCtrl7setFlagEiitb
	b _02031CA8
_02031C94:
	add r1, r6, #0x1000
	ldr r0, [r10]
	ldr r1, [r1, #0x3e4]
	add r2, r5, #1
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
_02031CA8:
	mul r12, r5, r4
	add r0, r6, r12
	add r1, r0, #0x1300
	ldrsb r1, [r1, #0xf7]
	tst r1, #0x40
	beq _02031D74
	add r1, r6, #0x14
	add r3, r6, #0x410
	add r9, r1, #0x1400
	add r1, r0, #0x1000
	mov r2, #0
	add r3, r3, #0x1000
	add r0, r6, #0x1000
	b _02031D04
_02031CE0:
	ldr r8, [r9, r12]
	ldr r7, [r1, #0x418]
	add r7, r8, r7
	str r7, [r9, r12]
	ldr r7, [r3, r12]
	subs r7, r7, #1
	str r7, [r3, r12]
	beq _02031D10
	add r2, r2, #1
_02031D04:
	ldr r7, [r0, #0x3e0]
	cmp r2, r7
	blo _02031CE0
_02031D10:
	mov r2, #0x30
	mul r0, r5, r2
	add r1, r6, r0
	add r3, r1, #0x1000
	ldr r1, [r3, #0x410]
	ldr r7, _02031E64 ; =g3DPlaneCtrl
	cmp r1, #0
	bne _02031D4C
	add r1, r6, #0xf7
	add r8, r1, #0x1300
	ldrsb r1, [r8, r0]
	bic r1, r1, #0x40
	strb r1, [r8, r0]
	ldr r0, [r3, #0x41c]
	str r0, [r3, #0x414]
_02031D4C:
	mla r0, r5, r2, r6
	add r0, r0, #0x1000
	ldr r0, [r0, #0x414]
	add r1, r6, #0x1000
	mov r3, r0, asr #0xc
	ldr r0, [r7]
	ldr r1, [r1, #0x3e4]
	add r2, r5, #1
	and r3, r3, #0xff
	bl _ZN12C3DPlaneCtrl8setAlphaEiih
_02031D74:
	mul r1, r5, r4
	add r3, r6, r1
	add r0, r3, #0x1300
	ldrsb r0, [r0, #0xf7]
	tst r0, #0x10
	beq _02031E1C
	add r7, r6, #4
	add r8, r6, #0x3fc
	add r12, r3, #0x1000
	mov r2, #0
	add r0, r6, #0x1400
	add r9, r7, #0x1400
	add lr, r8, #0x1000
	add r3, r6, #0x1000
	b _02031DE4
_02031DB0:
	ldr r8, [r0, r1]
	ldr r7, [r12, #0x408]
	add r7, r8, r7
	str r7, [r0, r1]
	ldr r8, [r9, r1]
	ldr r7, [r12, #0x40c]
	add r7, r8, r7
	str r7, [r9, r1]
	ldr r7, [lr, r1]
	subs r7, r7, #1
	str r7, [lr, r1]
	beq _02031DF0
	add r2, r2, #1
_02031DE4:
	ldr r7, [r3, #0x3e0]
	cmp r2, r7
	blo _02031DB0
_02031DF0:
	mov r0, #0x30
	mul r0, r5, r0
	add r1, r6, r0
	add r1, r1, #0x1000
	ldr r1, [r1, #0x3fc]
	cmp r1, #0
	addeq r1, r6, #0xf7
	addeq r2, r1, #0x1300
	ldreqsb r1, [r2, r0]
	biceq r1, r1, #0x10
	streqb r1, [r2, r0]
_02031E1C:
	mla r0, r5, r4, r6
	add r0, r0, #0x1000
	ldr r1, [r0, #0x404]
	ldr r2, [r0, #0x400]
	mov r0, r1, lsl #4
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r2, lsl #4
	add r1, r6, #0x1000
	ldr r0, [r10]
	ldr r1, [r1, #0x3e4]
	add r2, r5, #1
	mov r3, r3, asr #0x10
	bl _ZN12C3DPlaneCtrl6setPosEiiss
_02031E54:
	add r5, r5, #1
_02031E58:
	cmp r5, #8
	blt _02031B38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02031E64: .word g3DPlaneCtrl
	arm_func_end FUN_02031b1c

	arm_func_start FUN_02031e68
FUN_02031e68: ; 0x02031E68
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x28
	mov r5, r0
	ldr r0, [r5, #0x10]
	mov r6, #0
	mov r4, r1
	strb r6, [r5, #0x34]
	tst r0, #1
	bne _02031EA4
	orr r0, r0, #1
	str r0, [r5, #0x10]
	strb r6, [r5, #0x3f]
	strb r6, [r5, #0x3e]
	strb r6, [r5, #0x12e]
	strb r6, [r5, #0x20a]
_02031EA4:
	ldr r0, [sp, #0x48]
	cmp r2, #0
	strneb r2, [r5, #0x3c]
	cmp r3, #0
	strneb r3, [r5, #0x3d]
	cmp r0, #0
	strneb r0, [r5, #0x40]
	ldr r0, [sp, #0x4c]
	ldr r1, [sp, #0x58]
	cmp r0, #0
	strneb r0, [r5, #0x41]
	ldr r0, [sp, #0x50]
	cmp r0, #0
	strneb r0, [r5, #0x42]
	ldr r0, [sp, #0x54]
	cmp r0, #0
	strneb r0, [r5, #0x43]
	cmp r1, #0
	addne r0, r5, #0x1300
	strneh r1, [r0, #0x1a]
	ldr r1, [sp, #0x5c]
	cmp r1, #0
	addne r0, r5, #0x1300
	strneh r1, [r0, #0x1c]
	ldr r1, [sp, #0x60]
	cmp r1, #0
	addne r0, r5, #0x1000
	strne r1, [r0, #0x104]
	cmp r4, #0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r6, _02032034 ; =g3DPlaneCtrl
	ldrsh r1, [r5, #0x3a]
	mov r8, #0
	ldr r0, [r6]
	add r2, sp, #0x20
	add r3, sp, #0x24
	str r8, [sp, #0x20]
	bl FUN_0205935c
	ldrsh r1, [r5, #0x3a]
	ldr r9, [sp, #0x20]
	ldr r0, [r6]
	bl _ZN12C3DPlaneCtrl11getTexWidthEi
	stmia sp, {r0, r8}
	mov r7, #1
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	str r8, [sp, #0x10]
	str r8, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r0, _02032038 ; =gFont8
	str r8, [sp, #0x1c]
	ldr r0, [r0]
	mov r1, r4
	mov r2, r9
	mov r3, #0x40
	bl _ZN12CFontManager15drawTextTex4bppEPcPviiiiiPNS_11GlyphBoundsEiiNS_9AlignmentE
	ldr r1, [sp, #0x24]
	mov r0, r9
	bl DC_FlushRange
	ldrsh r1, [r5, #0x3a]
	ldr r3, [sp, #0x24]
	ldr r0, [r6]
	mov r2, r9
	str r8, [sp]
	str r8, [sp, #4]
	str r8, [sp, #8]
	bl FUN_02059288
	str r8, [sp]
	ldrsh r1, [r5, #0x36]
	ldr r0, [r6]
	mov r3, r8
	mov r2, r7
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
	ldrsb r0, [r5, #0x3d]
	ldr r3, _0203203C ; =0x0208C364
	ldr r1, [r5, #0x48]
	sub r0, r0, #1
	add r0, r3, r0, lsl #2
	ldrsh r0, [r0, #2]
	ldr r12, [r5, #0x44]
	mov r2, r7
	add r0, r0, r1, asr #12
	add r0, r0, #7
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldrsb r4, [r5, #0x3d]
	ldrsh r1, [r5, #0x36]
	ldr r0, [r6]
	sub r4, r4, #1
	mov r4, r4, lsl #2
	ldrsh r3, [r3, r4]
	add r3, r3, r12, asr #12
	add r3, r3, #0xa
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02032034: .word g3DPlaneCtrl
_02032038: .word gFont8
_0203203C: .word unk_0208C364
	arm_func_end FUN_02031e68

	arm_func_start FUN_02032040
FUN_02032040: ; 0x02032040
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r1
	mov r10, r0
	mov r11, r2
	mov r8, r3
	cmp r9, #1
	ldr r7, [sp, #0x2c]
	beq _0203206C
	cmp r9, #2
	beq _02032078
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203206C:
	add r4, r10, #0x60
	mov r6, #6
	b _02032080
_02032078:
	add r4, r10, #0x13c
	mov r6, #0xa
_02032080:
	cmp r7, #0
	ldrsb r5, [r4, #0xd1]
	beq _020320C0
	mov r2, #0
	strb r7, [r4, #0xcf]
	strb r2, [r4, #0xcd]
	ldrsb r1, [r4, #0xcf]
	sub r0, r2, #1
	cmp r1, r0
	moveq r1, #1
	streqb r1, [r4, #0xcd]
	ldreqsb r0, [r10, #0x3d]
	moveq r11, r2
	cmpeq r0, r9
	subeq r0, r1, #2
	streqb r0, [r10, #0x3c]
_020320C0:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	strneb r0, [r4, #0xd0]
	cmp r11, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #0x60
	mla r0, r5, r0, r4
	mov r1, r11
	bl STD_CompareString
	cmp r0, #0
	bne _020321C0
	cmp r8, #0
	beq _020321C0
	mov r0, #0x60
	mla r0, r5, r0, r4
	mov r1, r8
	add r0, r0, #0x20
	bl STD_CompareString
	cmp r0, #0
	bne _020321C0
	cmp r7, #0
	beq _02032224
	mov r0, #0
	strb r7, [r4, #0xcf]
	strb r0, [r4, #0xcd]
	ldrsb r1, [r4, #0xcf]
	sub r0, r0, #1
	cmp r1, r0
	beq _02032148
	cmp r1, #1
	beq _02032164
	cmp r1, #2
	beq _020321A8
	b _02032224
_02032148:
	mov r1, #1
	strb r1, [r4, #0xcd]
	ldrsb r0, [r10, #0x3d]
	cmp r0, r9
	subeq r0, r1, #2
	streqb r0, [r10, #0x3c]
	b _02032224
_02032164:
	ldrsb r0, [r4, #0xd2]
	cmp r0, #0
	bne _02032224
	ldr r9, _020322B0 ; =g3DPlaneCtrl
	ldr r7, _020322B4 ; =0x00007FFF
_02032178:
	ldrsh r1, [r10, #0x36]
	ldr r0, [r9]
	mov r3, r7
	add r2, r6, r5, lsl #1
	bl _ZN12C3DPlaneCtrl12setColorMaskEiit
	add r2, r6, #1
	ldrsh r1, [r10, #0x36]
	ldr r0, [r9]
	mov r3, r7
	add r2, r2, r5, lsl #1
	bl _ZN12C3DPlaneCtrl12setColorMaskEiit
	b _02032224
_020321A8:
	ldrsb r0, [r4, #0xd2]
	cmp r0, #0
	bne _02032224
	ldr r9, _020322B0 ; =g3DPlaneCtrl
	ldr r7, _020322B8 ; =0x0000318C
	b _02032178
_020321C0:
	eor r1, r5, #1
	mov r6, #0x60
	mla r0, r1, r6, r4
	mov r1, r11
	bl STD_CompareString
	cmp r0, #0
	bne _0203220C
	cmp r8, #0
	beq _0203220C
	eor r0, r5, #1
	mla r2, r0, r6, r4
	mov r1, r8
	add r0, r2, #0x20
	bl STD_CompareString
	cmp r0, #0
	eoreq r0, r5, #1
	addeq r0, r0, #1
	streqb r0, [r4, #0xd2]
	beq _02032224
_0203220C:
	eor r1, r5, #1
	mla r0, r1, r6, r4
	mov r1, r11
	bl STD_CopyString
	sub r0, r6, #0x61
	strb r0, [r4, #0xd2]
_02032224:
	ldrb r0, [sp, #0x34]
	mov r6, #0x60
	strb r0, [r4, #0xcc]
	ldrsb r0, [r4, #0xd2]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r8, #0
	eor r0, r5, #1
	bne _02032280
	mla r3, r0, r6, r4
	mov r8, #0
	mov r7, #0x20
	mov r1, r8
	mov r2, r7
	add r0, r3, #0x20
	bl MI_CpuFill8
	eor r0, r5, #1
	mla r3, r0, r6, r4
	mov r1, r8
	mov r2, r7
	add r0, r3, #0x40
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02032280:
	mla r2, r0, r6, r4
	mov r1, r8
	add r0, r2, #0x20
	bl STD_CopyString
	ldr r1, [sp, #0x28]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	eor r0, r5, #1
	mla r2, r0, r6, r4
	add r0, r2, #0x40
	bl STD_CopyString
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020322B0: .word g3DPlaneCtrl
_020322B4: .word 0x00007FFF
_020322B8: .word 0x0000318C
	arm_func_end FUN_02032040

	arm_func_start FUN_020322bc
FUN_020322bc: ; 0x020322BC
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r0, [r4, #0x10]
	ldr r3, [r4, #0x2c]
	orr r2, r0, #0x100
	add r0, r4, #0x1000
	mov r1, #2
	mov r7, #0
	strb r1, [r0, #0x324]
	str r3, [r0, #0x320]
	ldr r5, _02032380 ; =g3DPlaneCtrl
	str r2, [r4, #0x10]
	mov r6, #0xe
	strb r7, [r0, #0x325]
	ldrsh r1, [r4, #0x36]
	ldr r0, [r5]
	mov r2, r6
	and r3, r3, #0xff
	bl _ZN12C3DPlaneCtrl6setTexEiih
	str r7, [sp]
	ldrsh r1, [r4, #0x36]
	ldr r0, [r5]
	mov r2, r6
	mov r3, r7
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
	mov r3, #0x64
	str r3, [sp]
	ldrsh r1, [r4, #0x36]
	ldr r0, [r5]
	mov r2, r6
	bl _ZN12C3DPlaneCtrl12setPosAnchorEiihh
	add r0, sp, #4
	str r0, [sp]
	ldrsh r1, [r4, #0x36]
	ldr r0, [r5]
	mov r2, r6
	add r3, sp, #8
	bl _ZN12C3DPlaneCtrl13getDimensionsEiiPiS0_
	ldr r1, [sp, #8]
	add r0, r4, #0x1300
	strh r1, [r0, #0x26]
	ldrsb r1, [r0, #0x24]
	ldr r0, [sp, #4]
	bl _s32_div_f
	add r1, r4, #0x1300
	strh r0, [r1, #0x28]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02032380: .word g3DPlaneCtrl
	arm_func_end FUN_020322bc

	arm_func_start FUN_02032384
FUN_02032384: ; 0x02032384
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r6, r1
	mov r8, #0x30
	mla r0, r6, r8, r7
	add r0, r0, #0x1000
	ldr r4, _02032478 ; =g3DPlaneCtrl
	ldr r1, [r0, #0x3f0]
	ldr r0, [r4]
	mov r5, r2
	bl FUN_02058e30
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mla r0, r6, r8, r7
	ldr r1, [r7, #0x10]
	add r0, r0, #0x1000
	orr r1, r1, #0x100
	str r1, [r7, #0x10]
	ldr r3, [r0, #0x3f0]
	add r0, r7, #0x1000
	mov r8, #0
	mov r6, #0xe
	str r3, [r0, #0x320]
	ldrsh r1, [r7, #0x36]
	strb r8, [r0, #0x325]
	strb r5, [r0, #0x324]
	ldr r0, [r4]
	mov r2, r6
	and r3, r3, #0xff
	bl _ZN12C3DPlaneCtrl6setTexEiih
	str r8, [sp]
	ldrsh r1, [r7, #0x36]
	ldr r0, [r4]
	mov r2, r6
	mov r3, r8
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
	mov r3, #0x64
	str r3, [sp]
	ldrsh r1, [r7, #0x36]
	ldr r0, [r4]
	mov r2, r6
	bl _ZN12C3DPlaneCtrl12setPosAnchorEiihh
	add r0, sp, #4
	str r0, [sp]
	ldrsh r1, [r7, #0x36]
	ldr r0, [r4]
	mov r2, r6
	add r3, sp, #8
	bl _ZN12C3DPlaneCtrl13getDimensionsEiiPiS0_
	ldr r1, [sp, #8]
	add r0, r7, #0x1300
	strh r1, [r0, #0x26]
	ldrsb r1, [r0, #0x24]
	ldr r0, [sp, #4]
	bl _s32_div_f
	add r1, r7, #0x1300
	strh r0, [r1, #0x28]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02032478: .word g3DPlaneCtrl
	arm_func_end FUN_02032384

	arm_func_start FUN_0203247c
FUN_0203247c: ; 0x0203247C
	add r0, r0, #0x1300
	ldrsb r0, [r0, #0x25]
	bx lr
	arm_func_end FUN_0203247c

	arm_func_start FUN_02032488
FUN_02032488: ; 0x02032488
	ldr r1, [r0, #0x10]
	orr r1, r1, #0x200
	str r1, [r0, #0x10]
	bx lr
	arm_func_end FUN_02032488

	arm_func_start FUN_02032498
FUN_02032498: ; 0x02032498
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r0
	add r12, r4, #0x1300
	ldrsh r5, [r12, #0x1c]
	mov r6, r3
	str r5, [sp]
	ldrsh r3, [r12, #0x1a]
	add r12, r4, #0x108
	mov r5, r2
	mov r2, r1
	add r1, r12, #0x1000
	bl FUN_0203257c
	add r1, r4, #0xb8
	mov r0, r5
	add r1, r1, #0x400
	mov r2, #0x40
	bl MI_CpuCopy8
	mov r0, r6
	add r1, r4, #0x218
	mov r2, #0x2a0
	bl MI_CpuCopy8
	add r0, r4, #0x1000
	mov r6, #2
	ldr r5, _02032578 ; =g3DPlaneCtrl
	ldr r1, [r0, #0xfc]
	ldr r0, [r5]
	mov r2, r6
	bl _ZN12C3DPlaneCtrl9clearFlagEit
	ldrsh r1, [r4, #0x36]
	ldr r0, [r5]
	mov r3, r6
	mov r2, #3
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
	ldrsb r0, [r4, #0x3f]
	cmp r0, #0
	movne r0, #0
	strneb r0, [r4, #0x3f]
	ldr r0, [r4, #0x10]
	tst r0, #1
	bne _02032558
	mov r1, #0
	orr r0, r1, #1
	str r0, [r4, #0x10]
	strb r1, [r4, #0x3f]
	strb r1, [r4, #0x3e]
	strb r1, [r4, #0x12e]
	strb r1, [r4, #0x20a]
_02032558:
	ldr r1, [r4, #0x10]
	add r0, r4, #0x1000
	orr r1, r1, #2
	mov r2, #1
	strb r2, [r0, #0x30d]
	str r1, [r4, #0x10]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02032578: .word g3DPlaneCtrl
	arm_func_end FUN_02032498

	arm_func_start FUN_0203257c
FUN_0203257c: ; 0x0203257C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x200
	add r5, sp, #0
	mov r10, r1
	mov r0, r5
	mov r1, r2
	mov r9, r3
	ldr r8, [sp, #0x228]
	bl STD_CopyString
	ldrsb r0, [sp]
	mov r7, #0
	mov r6, r7
	cmp r0, #0
	beq _02032660
	mov r11, #0xc
	mov r4, r7
_020325BC:
	cmp r0, #0
	beq _0203263C
	cmp r0, #0xa
	beq _020325D8
	cmp r0, #0xc
	beq _020325EC
	b _020325F8
_020325D8:
	add r6, r6, #1
	mov r7, #0
	cmp r6, r8
	blt _0203263C
	strb r11, [r5]
_020325EC:
	mov r7, #0
	mov r6, r7
	b _0203263C
_020325F8:
	ldr r0, _0203266C ; =gFont12
	mov r1, r5
	ldr r0, [r0]
	bl _ZN12CFontManager12getCharWidthEPc
	add r1, r7, r0
	cmp r1, r9
	blt _02032630
	add r6, r6, #1
	cmp r6, r8
	movge r1, #0xc
	movlt r1, #0xa
	mov r7, r4
	movge r6, r4
	strb r1, [r10], #1
_02032630:
	cmp r0, #0
	addne r0, r0, #1
	addne r7, r7, r0

#ifdef TRANSLATION_BUGFIX

_0203263C:
	ldrb r0, [r5]
	cmp r0, #0x81
	bcc _LAB001
	cmp r0, #0x9f
	bls _LAB002
_LAB001:
	cmp r0, #0xe0
	bcc _LAB003
	cmp r0, #0xfc
	bhi _LAB003
_LAB002:
	mov r1, #1
	b _LAB004
_LAB003:
	mov r1, #0
_LAB004:
	cmp r1, #0
	addne r5, r5, #1
	strneb r0, [r10], #1

#else ; TRANSLATION_BUGFIX

_0203263C:
	ldrsb r0, [r5]
	tst r0, #0x80
	addne r5, r5, #1
	strneb r0, [r10], #1

#endif ; TRANSLATION_BUGFIX

	ldrsb r0, [r5]
	strb r0, [r10], #1
	ldrsb r0, [r5, #1]!
	cmp r0, #0
	bne _020325BC
_02032660:
	strb r0, [r10]
	add sp, sp, #0x200
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203266C: .word gFont12
	arm_func_end FUN_0203257c

	arm_func_start FUN_02032670
FUN_02032670: ; 0x02032670
	add r2, r0, #0x1300
	ldrsb r2, [r2, #0xe]
	add r0, r0, #0x1000
	orr r1, r2, r1
	strb r1, [r0, #0x30e]
	bx lr
	arm_func_end FUN_02032670

	arm_func_start FUN_02032688
FUN_02032688: ; 0x02032688
	add r2, r0, #0x1300
	ldrsb r2, [r2, #0xe]
	mvn r1, r1
	mov r1, r1, lsl #0x18
	and r1, r2, r1, asr #24
	add r0, r0, #0x1000
	strb r1, [r0, #0x30e]
	bx lr
	arm_func_end FUN_02032688

	arm_func_start FUN_020326a8
FUN_020326a8: ; 0x020326A8
	add r0, r0, #0x1000
	str r1, [r0, #0x104]
	bx lr
	arm_func_end FUN_020326a8

	arm_func_start FUN_020326b4
FUN_020326b4: ; 0x020326B4
	cmp r1, #0
	ldr r1, [r0, #0x10]
	orrne r1, r1, #1
	biceq r1, r1, #1
	str r1, [r0, #0x10]
	bx lr
	arm_func_end FUN_020326b4

	arm_func_start FUN_020326cc
FUN_020326cc: ; 0x020326CC
	cmp r1, #4
	mov r1, #1
	strb r1, [r0, #0x3f]
	strneb r1, [r0, #0x34]
	bx lr
	arm_func_end FUN_020326cc

	arm_func_start FUN_020326e0
FUN_020326e0: ; 0x020326E0
	ldr r0, [r0, #0x10]
	bx lr
	arm_func_end FUN_020326e0

	arm_func_start FUN_020326e8
FUN_020326e8: ; 0x020326E8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r5, #0
	mov r10, r0
	mov r9, r5
	ldr r4, _02032D28 ; =g3DPlaneCtrl
	b _02032720
_02032704:
	add r0, r10, r9, lsl #2
	ldr r1, [r0, #0x14]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
	add r9, r9, #1
_02032720:
	cmp r9, #7
	blt _02032704
	mov r9, #0
	mov r1, r9
	add r0, r10, #0x34
	mov r2, #0x1e4
	bl MI_CpuFill8
	ldr r2, _02032D2C ; =0x00001108
	mov r1, r9
	add r0, r10, #0x218
	bl MI_CpuFill8
	ldr r4, _02032D28 ; =g3DPlaneCtrl
	mov r6, #1
	ldr r0, [r4]
	mov r1, #0xf
	mov r2, r6
	bl _ZN12C3DPlaneCtrl6createEib
	strh r0, [r10, #0x36]
	mov r1, #3
	ldr r0, [r4]
	mov r2, r1
	bl FUN_02059630
	add r1, r10, #0x1000
	strh r0, [r1, #0xfa]
	ldrsh r1, [r1, #0xfa]
	ldr r0, [r4]
	mov r2, r9
	mov r3, r9
	bl FUN_02059038
	ldr r0, [r4]
	mov r2, r6
	mov r1, #0x10
	bl _ZN12C3DPlaneCtrl6createEib
	add r2, r10, #0x1000
	strh r0, [r2, #0xf8]
	ldrsh r1, [r2, #0xf8]
	ldrsh r2, [r2, #0xfa]
	ldr r0, [r4]
	and r2, r2, #0xff
	bl _ZN12C3DPlaneCtrl9setTexAllEih
	add r1, r10, #0x1000
	ldrsh r1, [r1, #0xf8]
	ldr r0, [r4]
	mov r2, #0x36
	bl _ZN12C3DPlaneCtrl11setDepthAllEij
	add r6, r10, #0x1000
	b _02032800
_020327DC:
	mov r0, r9, lsl #0x13
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldrsh r1, [r6, #0xf8]
	ldr r0, [r4]
	mov r3, r5
	add r2, r9, #1
	bl _ZN12C3DPlaneCtrl8setTexSTEiiss
	add r9, r9, #1
_02032800:
	cmp r9, #8
	blt _020327DC
	add r0, r10, #0x1000
	ldr r4, _02032D28 ; =g3DPlaneCtrl
	mov r6, #0x40
	ldrsh r1, [r0, #0xf8]
	ldr r0, [r4]
	mov r2, r6
	mov r3, #8
	bl _ZN12C3DPlaneCtrl11setTexWHAllEiss
	add r0, r10, #0x1000
	ldr r5, _02032D30 ; =0x00007FFF
	ldrsh r1, [r0, #0xf8]
	ldr r0, [r4]
	mov r2, r5
	bl _ZN12C3DPlaneCtrl15setColorMaskAllEit
	add r0, r10, #0x1000
	ldrsh r1, [r0, #0xf8]
	ldr r0, [r4]
	mov r2, #0x32
	mov r3, #0x64
	bl _ZN12C3DPlaneCtrl15setPosAnchorAllEihh
	ldr r0, [r4]
	mov r8, #3
	mov r1, r8
	mov r7, #1
	mov r2, r7
	bl FUN_02059630
	strh r0, [r10, #0x3a]
	ldrsh r1, [r10, #0x3a]
	ldr r0, [r4]
	mov r9, #0
	mov r2, r9
	mov r3, r9
	bl FUN_02059038
	ldr r0, [r4]
	ldrsh r1, [r10, #0x36]
	mov r2, r7
	ldrsh r3, [r10, #0x3a]
	and r3, r3, #0xff
	bl _ZN12C3DPlaneCtrl6setTexEiih
	str r9, [sp]
	ldr r0, [r4]
	ldrsh r1, [r10, #0x36]
	mov r2, r7
	mov r3, r9
	bl _ZN12C3DPlaneCtrl8setTexSTEiiss
	mov r3, r6
	mov r6, #0x10
	str r6, [sp]
	ldr r0, [r4]
	ldrsh r1, [r10, #0x36]
	mov r2, r7
	bl _ZN12C3DPlaneCtrl8setTexWHEiiss
	ldr r0, [r4]
	ldrsh r1, [r10, #0x36]
	mov r2, r7
	mov r3, #0x34
	bl _ZN12C3DPlaneCtrl8setDepthEiij
	mov r3, r5
	ldr r0, [r4]
	ldrsh r1, [r10, #0x36]
	mov r2, r7
	bl _ZN12C3DPlaneCtrl12setColorMaskEiit
	ldr r3, [r10, #0x14]
	mov r5, #2
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r5
	and r3, r3, #0xff
	bl _ZN12C3DPlaneCtrl6setTexEiih
	str r9, [sp]
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r9
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r5
	mov r3, #0x35
	bl _ZN12C3DPlaneCtrl8setDepthEiij
	ldr r3, [r10, #0x18]
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r8
	and r3, r3, #0xff
	bl _ZN12C3DPlaneCtrl6setTexEiih
	str r9, [sp]
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r8
	mov r3, r9
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r8
	mov r3, #0x36
	bl _ZN12C3DPlaneCtrl8setDepthEiij
	mov r11, #4
	ldr r0, [r4]
	mov r1, r11
	mov r2, r7
	bl _ZN12C3DPlaneCtrl6createEib
	strh r0, [r10, #0x38]
	ldr r3, [r10, #0x1c]
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r7
	and r3, r3, #0xff
	bl _ZN12C3DPlaneCtrl6setTexEiih
	str r9, [sp]
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r7
	mov r3, r9
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r7
	mov r3, #0x38
	bl _ZN12C3DPlaneCtrl8setDepthEiij
	add r0, sp, #4
	str r0, [sp]
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	add r3, sp, #8
	mov r2, r7
	bl _ZN12C3DPlaneCtrl13getDimensionsEiiPiS0_
	ldr r1, [r10, #0x1c]
	ldr r0, [r4]
	and r3, r1, #0xff
	ldrsh r1, [r10, #0x38]
	mov r2, r5
	bl _ZN12C3DPlaneCtrl6setTexEiih
	str r9, [sp]
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r9
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r5
	mov r3, #0x38
	bl _ZN12C3DPlaneCtrl8setDepthEiij
	str r7, [sp]
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r3, r6
	mov r2, r5
	bl _ZN12C3DPlaneCtrl7setFlagEiitb
	str r9, [sp]
	ldr r3, [sp, #8]
	ldrsh r1, [r10, #0x38]
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	mov r2, r5
	mov r3, r3, asr #0x10
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	ldr r3, [r10, #0x1c]
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r8
	and r3, r3, #0xff
	bl _ZN12C3DPlaneCtrl6setTexEiih
	str r9, [sp]
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r8
	mov r3, r9
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r8
	mov r3, #0x38
	bl _ZN12C3DPlaneCtrl8setDepthEiij
	str r7, [sp]
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r8
	mov r3, #0x20
	bl _ZN12C3DPlaneCtrl7setFlagEiitb
	ldr r0, [sp, #4]
	mov r2, r8
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r3, r9
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	ldr r3, [r10, #0x1c]
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r11
	and r3, r3, #0xff
	bl _ZN12C3DPlaneCtrl6setTexEiih
	str r9, [sp]
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r11
	mov r3, r9
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r3, #0x38
	mov r2, r11
	bl _ZN12C3DPlaneCtrl8setDepthEiij
	str r7, [sp]
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r11
	mov r3, #0x30
	bl _ZN12C3DPlaneCtrl7setFlagEiitb
	ldr r0, [sp, #4]
	mov r2, r11
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r3, [sp, #8]
	ldrsh r1, [r10, #0x38]
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	mov r3, r3, asr #0x10
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	mov r7, r5
	mov r6, r9
	mov r8, #0x39
	mov r5, #0x3a
	b _02032C00
_02032B9C:
	ldrsh r1, [r10, #0x36]
	mov r2, r9, lsl #1
	ldr r0, [r4]
	mov r3, r8
	add r2, r2, #6
	bl _ZN12C3DPlaneCtrl8setDepthEiij
	mov r2, r9, lsl #1
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	add r2, r2, #6
	mov r3, r7
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
	ldr r0, [r4]
	ldrsh r1, [r10, #0x36]
	mov r2, r9, lsl #1
	add r2, r2, #7
	mov r3, r5
	bl _ZN12C3DPlaneCtrl8setDepthEiij
	ldr r0, [r4]
	ldrsh r1, [r10, #0x36]
	mov r2, r9, lsl #1
	add r2, r2, #7
	mov r3, r7
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
	add r9, r9, #1
_02032C00:
	cmp r9, #4
	blt _02032B9C
	ldr r4, _02032D28 ; =g3DPlaneCtrl
	ldr r3, [r10, #0x2c]
	mov r5, #0xe
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r5
	and r3, r3, #0xff
	bl _ZN12C3DPlaneCtrl6setTexEiih
	str r6, [sp]
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r6
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r5
	mov r3, #0x33
	bl _ZN12C3DPlaneCtrl8setDepthEiij
	ldr r0, [r4]
	#ifdef TRANSLATION_BUGFIX
	mov r1, #253
	#else
	mov r1, #0x80
	#endif
	mov r2, #1
	bl _ZN12C3DPlaneCtrl6createEib
	add r1, r10, #0x1000
	str r0, [r1, #0xfc]
	mov r5, #3
	ldr r0, [r4]
	mov r1, #5
	mov r2, r5
	bl FUN_02059630
	mov r1, r0
	add r0, r10, #0x1000
	str r1, [r0, #0x100]
	ldr r0, [r4]
	mov r2, r6
	mov r3, r6
	bl FUN_02059038
	add r1, r10, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0xfc]
	mov r2, #0x37
	bl _ZN12C3DPlaneCtrl11setDepthAllEij
	mov r1, #0xa
	add r0, r10, #0x1000
	str r1, [r0, #0x104]
	add r0, r10, #0x1300
	mov r1, #0x32
	strh r1, [r0, #0x14]
	mov r1, #0xf0
	strh r1, [r0, #0x1a]
	strh r5, [r0, #0x1c]
	mov r5, #2
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r5
	bl _ZN12C3DPlaneCtrl9clearFlagEit
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r5
	bl _ZN12C3DPlaneCtrl9clearFlagEit
	add r1, r10, #0x1000
	ldrsh r1, [r1, #0xf8]
	ldr r0, [r4]
	mov r2, r5
	bl _ZN12C3DPlaneCtrl9clearFlagEit
	add r1, r10, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0xfc]
	mov r2, r5
	bl _ZN12C3DPlaneCtrl9clearFlagEit
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02032D28: .word g3DPlaneCtrl
_02032D2C: .word 0x00001108
_02032D30: .word 0x00007FFF
	arm_func_end FUN_020326e8

	arm_func_start FUN_02032d34
FUN_02032d34: ; 0x02032D34
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl FUN_02032f3c
	ldr r4, _02032E2C ; =g3DPlaneCtrl
	ldrsh r1, [r5, #0x36]
	ldr r0, [r4]
	bl _ZN12C3DPlaneCtrl7destroyEi
	ldrsh r1, [r5, #0x38]
	ldr r0, [r4]
	bl _ZN12C3DPlaneCtrl7destroyEi
	add r0, r5, #0x1000
	ldrsh r1, [r0, #0xf8]
	ldr r0, [r4]
	bl _ZN12C3DPlaneCtrl7destroyEi
	add r1, r5, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0xfc]
	bl _ZN12C3DPlaneCtrl7destroyEi
	mov r6, #0
	b _02032D98
_02032D84:
	add r0, r5, r6, lsl #2
	ldr r1, [r0, #0x14]
	ldr r0, [r4]
	bl FUN_020591e8
	add r6, r6, #1
_02032D98:
	cmp r6, #7
	blt _02032D84
	add r0, r5, #0x1000
	ldr r4, _02032E2C ; =g3DPlaneCtrl
	ldrsh r1, [r0, #0xfa]
	ldr r0, [r4]
	bl FUN_020591e8
	add r0, r5, #0x1000
	ldrsh r1, [r0, #0xfa]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r5, #0x1000
	ldrsh r1, [r0, #0xfa]
	ldr r0, [r4]
	bl FUN_02058ee0
	ldrsh r1, [r5, #0x3a]
	ldr r0, [r4]
	bl FUN_020591e8
	ldrsh r1, [r5, #0x3a]
	ldr r0, [r4]
	bl FUN_02058ee0
	ldrsh r1, [r5, #0x3a]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r5, #0x1000
	ldr r1, [r0, #0x100]
	ldr r0, [r4]
	bl FUN_020591e8
	add r0, r5, #0x1000
	ldr r1, [r0, #0x100]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r5, #0x1000
	ldr r1, [r0, #0x100]
	ldr r0, [r4]
	bl FUN_02058ee0
	ldmfd sp!, {r4, r5, r6, pc}
_02032E2C: .word g3DPlaneCtrl
	arm_func_end FUN_02032d34

	arm_func_start FUN_02032e30
FUN_02032e30: ; 0x02032E30
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r2, [r4, #0x10]
	mov lr, #0
	mov r12, #1
	add r0, r4, #0x1000
	bic r2, r2, #4
	cmp r1, #0
	strb lr, [r0, #0x30d]
	strb lr, [r0, #0x30e]
	addeq sp, sp, #0x10
	str r2, [r4, #0x10]
	strb r12, [r4, #0x3c]
	strb r12, [r4, #0x3d]
	strb r12, [r4, #0x40]
	strb r12, [r4, #0x41]
	strb r12, [r4, #0x42]
	strb r12, [r4, #0x43]
	str lr, [r4, #0x54]
	str lr, [r4, #0x58]
	str lr, [r4, #0x5c]
	ldmeqfd sp!, {r4, pc}
	ldr r3, _02032F2C ; =gAllocator
	ldr r1, _02032F30 ; =0x0208FD34
	ldr r0, [r3]
	cmp r0, #0
	beq _02032EB8
	str lr, [sp]
	str lr, [sp, #4]
	str lr, [sp, #8]
	add r2, r4, #0x54
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP10CAllocatorlmih
_02032EB8:
	ldr r3, _02032F2C ; =gAllocator
	ldr r1, _02032F34 ; =0x0208FD4C
	ldr r0, [r3]
	cmp r0, #0
	beq _02032EEC
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r12, #1
	add r2, r4, #0x58
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP10CAllocatorlmih
_02032EEC:
	ldr r3, _02032F2C ; =gAllocator
	ldr r1, _02032F38 ; =0x0208FD64
	ldr r0, [r3]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, pc}
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r12, #1
	add r2, r4, #0x5c
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP10CAllocatorlmih
	add sp, sp, #0x10
	ldmfd sp!, {r4, pc}
_02032F2C: .word gAllocator
_02032F30: .word unk_0208FD34
_02032F34: .word unk_0208FD4C
_02032F38: .word unk_0208FD64
	arm_func_end FUN_02032e30

	arm_func_start FUN_02032f3c
FUN_02032f3c: ; 0x02032F3C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	mov r8, #0
	mov r6, #2
	ldr r5, _02033140 ; =g3DPlaneCtrl
	str r8, [r4, #0x10]
	ldrsh r1, [r4, #0x36]
	ldr r0, [r5]
	mov r2, r6
	mov r7, r8
	bl _ZN12C3DPlaneCtrl9clearFlagEit
	ldrsh r1, [r4, #0x36]
	ldr r0, [r5]
	mov r3, r6
	mov r2, #3
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
	ldrsh r1, [r4, #0x38]
	ldr r0, [r5]
	mov r2, r6
	bl _ZN12C3DPlaneCtrl9clearFlagEit
	b _02032FC4
_02032F90:
	ldrsh r1, [r4, #0x36]
	mov r2, r8, lsl #1
	ldr r0, [r5]
	mov r3, r6
	add r2, r2, #6
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
	mov r2, r8, lsl #1
	ldrsh r1, [r4, #0x36]
	ldr r0, [r5]
	mov r3, r6
	add r2, r2, #7
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
	add r8, r8, #1
_02032FC4:
	cmp r8, #4
	blt _02032F90
	ldr r5, _02033140 ; =g3DPlaneCtrl
	add r1, r4, #0x1000
	mov r6, #2
	ldr r0, [r5]
	ldr r1, [r1, #0xfc]
	mov r2, r6
	bl _ZN12C3DPlaneCtrl9clearFlagEit
	add r1, r4, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0xfc]
	mov r2, r6
	bl _ZN12C3DPlaneCtrl12clearFlagAllEit
	add r0, r4, #0x1000
	ldrsh r1, [r0, #0xf8]
	ldr r0, [r5]
	mov r2, r6
	bl _ZN12C3DPlaneCtrl9clearFlagEit
	add r1, r4, #0x1000
	ldrsh r1, [r1, #0xf8]
	ldr r0, [r5]
	mov r2, r6
	bl _ZN12C3DPlaneCtrl12clearFlagAllEit
	mov r8, #0
	ldr r5, _02033144 ; =gAllocator
	b _02033054
_02033030:
	add r0, r4, r8, lsl #2
	ldr r1, [r0, #0x54]
	cmp r1, #0
	beq _02033048
	mov r0, r5
	bl _ZN10CAllocator10deallocateEPv
_02033048:
	add r0, r4, r8, lsl #2
	str r7, [r0, #0x54]
	add r8, r8, #1
_02033054:
	cmp r8, #3
	blt _02033030
	mov r8, #0
	b _02033110
_02033064:
	mov r0, #6
	mla r6, r8, r0, r4
	mov r9, #0
	ldr r5, _02033140 ; =g3DPlaneCtrl
	b _02033104
_02033078:
	add r0, r6, r9, lsl #1
	add r0, r0, #0x100
	ldrsh r1, [r0, #0x20]
	cmp r1, #0
	beq _020330BC
	ldr r0, [r5]
	bl FUN_020591e8
	add r0, r6, r9, lsl #1
	add r0, r0, #0x100
	ldrsh r1, [r0, #0x20]
	ldr r0, [r5]
	bl FUN_02058ee0
	add r0, r6, r9, lsl #1
	add r0, r0, #0x100
	ldrsh r1, [r0, #0x20]
	ldr r0, [r5]
	bl FUN_02058ee0
_020330BC:
	add r0, r6, r9, lsl #1
	add r0, r0, #0x100
	ldrsh r1, [r0, #0xfc]
	cmp r1, #0
	beq _02033100
	ldr r0, [r5]
	bl FUN_020591e8
	add r0, r6, r9, lsl #1
	add r0, r0, #0x100
	ldrsh r1, [r0, #0xfc]
	ldr r0, [r5]
	bl FUN_02058ee0
	add r0, r6, r9, lsl #1
	add r0, r0, #0x100
	ldrsh r1, [r0, #0xfc]
	ldr r0, [r5]
	bl FUN_02058ee0
_02033100:
	add r9, r9, #1
_02033104:
	cmp r9, #3
	blt _02033078
	add r8, r8, #1
_02033110:
	cmp r8, #2
	blt _02033064
	mov r5, #0xdc
	mov r1, r7
	mov r2, r5
	add r0, r4, #0x60
	bl MI_CpuFill8
	mov r1, r7
	mov r2, r5
	add r0, r4, #0x13c
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02033140: .word g3DPlaneCtrl
_02033144: .word gAllocator
	arm_func_end FUN_02032f3c

	arm_func_start FUN_02033148
FUN_02033148: ; 0x02033148
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	ldrsb r0, [r10, #0x34]
	mov r11, r1
	mov r5, #2
	cmp r0, #0
	ldr r4, _02033984 ; =g3DPlaneCtrl
	mov r8, #1
	beq _02033190
	ldr r0, [r10, #0x10]
	tst r0, #0x80
	beq _02033190
	tst r0, #0x20
	beq _02033190
	tst r0, #2
	biceq r0, r0, #1
	streq r0, [r10, #0x10]
_02033190:
	ldr r0, [r10, #0x10]
	ldrsh r1, [r10, #0x36]
	tst r0, #1
	ldr r0, [r4]
	mov r2, r5
	bne _020331EC
	bl _ZN12C3DPlaneCtrl9clearFlagEit
	ldrsh r1, [r10, #0x38]
	ldr r0, [r4]
	mov r2, r5
	bl _ZN12C3DPlaneCtrl9clearFlagEit
	add r1, r10, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0xfc]
	mov r2, r5
	bl _ZN12C3DPlaneCtrl9clearFlagEit
	add r0, r10, #0x1000
	ldrsh r1, [r0, #0xf8]
	ldr r0, [r4]
	mov r2, r5
	bl _ZN12C3DPlaneCtrl9clearFlagEit
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020331EC:
	mov r3, r8
	bl _ZN12C3DPlaneCtrl7setFlagEitb
	add r1, r10, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0xfc]
	mov r2, r5
	mov r3, r8
	bl _ZN12C3DPlaneCtrl7setFlagEitb
	ldr r1, [r10, #0x10]
	mov r0, r10
	bic r2, r1, #0xc0
	add r1, r10, #0x34
	str r2, [r10, #0x10]
	bl FUN_02034304
	cmp r0, #0
	ldrne r0, [r10, #0x10]
	orrne r0, r0, #0x40
	strne r0, [r10, #0x10]
	bne _0203324C
	ldrsb r0, [r10, #0x3f]
	cmp r0, #0
	ldrne r0, [r10, #0x10]
	orrne r0, r0, #0x80
	strne r0, [r10, #0x10]
_0203324C:
	ldr r0, [r10, #0x10]
	mov r7, #0
	tst r0, #0xc0
	addne r0, r10, #0x1000
	mov r9, #2
	ldr r4, _02033984 ; =g3DPlaneCtrl
	strneb r8, [r0, #0x30c]
	bne _02033280
	ldrsb r0, [r10, #0x34]
	cmp r0, #0
	add r0, r10, #0x1000
	strneb r8, [r0, #0x30c]
	streqb r7, [r0, #0x30c]
_02033280:
	ldrsb r0, [r10, #0x3c]
	ldr r2, [r10, #0x44]
	ldr r1, [r10, #0x48]
	cmp r0, #0
	mov r5, r2, asr #0xc
	mov r6, r1, asr #0xc
	ble _020333B8
	ldrsb r0, [r10, #0x34]
	cmp r0, #0
	bne _020333B8
	add r0, r10, #0x100
	ldrsb r0, [r0, #0x2f]
	cmp r0, #0
	addle r0, r10, #0x200
	ldrlesb r0, [r0, #0xb]
	cmple r0, #0
	ble _020333B8
	str r8, [sp]
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r8
	mov r3, r9
	bl _ZN12C3DPlaneCtrl7setFlagEiitb
	str r8, [sp]
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r9
	mov r3, r9
	bl _ZN12C3DPlaneCtrl7setFlagEiitb
	str r7, [sp]
	ldrsb r3, [r10, #0x3c]
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r9
	sub r3, r3, #1
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
	ldrsb r0, [r10, #0x3d]
	ldr r7, _02033988 ; =0x0208C364
	mov r2, r9
	sub r0, r0, #1
	add r0, r7, r0, lsl #2
	ldrsh r0, [r0, #2]
	add r0, r6, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldrsb r3, [r10, #0x3d]
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	sub r3, r3, #1
	mov r3, r3, lsl #2
	ldrsh r3, [r7, r3]
	add r3, r5, r3
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	ldrsb r0, [r10, #0x3d]
	mov r2, r8
	sub r0, r0, #1
	add r0, r7, r0, lsl #2
	ldrsh r0, [r0, #2]
	add r0, r6, r0
	add r0, r0, #7
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldrsb r3, [r10, #0x3d]
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	sub r3, r3, #1
	mov r3, r3, lsl #2
	ldrsh r3, [r7, r3]
	add r3, r5, r3
	add r3, r3, #0xa
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	b _020333E0
_020333B8:
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r3, r9
	mov r2, #1
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, r9
	mov r3, r9
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
_020333E0:
	ldr r0, [r10, #0x10]
	mov r1, #0
	tst r0, #4
	ldr r4, _02033984 ; =g3DPlaneCtrl
	beq _02033404
	add r0, r10, #0x1300
	ldrsb r0, [r0, #0xe]
	tst r0, #0x20
	strne r1, [r10, #0x30]
_02033404:
	ldr r0, [r10, #0x10]
	tst r0, #0x40
	addeq r0, r10, #0x1300
	ldreqsb r0, [r0, #0xd]
	cmpeq r0, #4
	bne _0203348C
	ldr r0, [r10, #0x30]
	cmp r0, #0
	beq _02033444
	mov r0, #1
	str r0, [sp]
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, #3
	mov r3, #2
	bl _ZN12C3DPlaneCtrl7setFlagEiitb
_02033444:
	ldr r0, [r10, #0x30]
	and r0, r0, #0x1f
	mov r0, r0, asr #1
	rsb r1, r0, #0x1f
	orr r0, r1, r1, lsl #5
	orr r0, r0, r1, lsl #10
	mov r2, r0, lsl #0x10
	mov r3, r2, lsr #0x10
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, #3
	bl _ZN12C3DPlaneCtrl12setColorMaskEiit
	add r0, r10, #0x1000
	ldr r1, [r10, #0x30]
	ldr r0, [r0, #0x3e0]
	add r0, r1, r0
	str r0, [r10, #0x30]
	b _020334A4
_0203348C:
	str r1, [r10, #0x30]
	ldrsh r1, [r10, #0x36]
	ldr r0, [r4]
	mov r2, #3
	mov r3, #2
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
_020334A4:
	ldrsb r1, [r10, #0x42]
	ldr r3, _0203398C ; =0x0208C36C
	ldr r0, _02033984 ; =g3DPlaneCtrl
	sub r1, r1, #1
	add r1, r3, r1, lsl #2
	ldrsh r1, [r1, #2]
	mov r2, #3
	str r1, [sp]
	ldrsb r4, [r10, #0x42]
	ldrsh r1, [r10, #0x36]
	ldr r0, [r0]
	sub r4, r4, #1
	mov r4, r4, lsl #2
	ldrsh r3, [r3, r4]
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	ldrsb r0, [r10, #0x34]
	ldrsh r2, [r10, #0x36]
	mov r3, #1
	cmp r0, #0
	movne r0, #1
	strneb r0, [r10, #0x12d]
	strneb r0, [r10, #0x209]
	ldr r0, [r10, #0x10]
	add r1, r10, #0x60
	bic r4, r0, #0x30
	mov r0, r10
	str r4, [r10, #0x10]
	bl FUN_02034784
	mov r3, #1
	orr r4, r0, #0
	ldrsh r2, [r10, #0x36]
	mov r0, r10
	add r1, r10, #0x13c
	sub r3, r3, #2
	bl FUN_02034784
	orrs r0, r4, r0
	ldrne r0, [r10, #0x10]
	orrne r0, r0, #0x10
	strne r0, [r10, #0x10]
	bne _02033558
	ldrsb r0, [r10, #0x34]
	cmp r0, #0
	ldrne r0, [r10, #0x10]
	orrne r0, r0, #0x20
	strne r0, [r10, #0x10]
_02033558:
	ldr r2, [r10, #0x10]
	ldr r1, _02033990 ; =0x020A0640
	tst r2, #0x100
	ldr r0, _02033984 ; =g3DPlaneCtrl
	beq _02033878
	tst r2, #4
	beq _02033878
	tst r2, #2
	beq _02033878
	ldrb r0, [r1, #0x507]
	mov r3, #0x80
	mov r4, #0x40
	cmp r0, #1
	ldrb r0, [r1, #0x507]
	movne r3, #2
	cmp r0, #1
	add r0, r10, #0x4200
	ldrh r2, [r0, #0x5c]
	movne r4, #0x400
	orr r0, r4, r3
	tst r2, r0
	beq _0203363C
	ldrb r0, [r1, #0x507]
	mov r2, #0x40
	cmp r0, #1
	add r0, r10, #0x4200
	ldrh r0, [r0, #0x5c]
	movne r2, #0x400
	tst r0, r2
	addne r0, r10, #0x1300
	ldrnesb r2, [r0, #0x25]
	addne r0, r10, #0x1000
	subne r2, r2, #1
	strneb r2, [r0, #0x325]
	ldrb r0, [r1, #0x507]
	mov r1, #0x80
	cmp r0, #1
	add r0, r10, #0x4200
	ldrh r0, [r0, #0x5c]
	movne r1, #2
	tst r0, r1
	addne r0, r10, #0x1300
	ldrnesb r1, [r0, #0x25]
	addne r0, r10, #0x1000
	addne r1, r1, #1
	strneb r1, [r0, #0x325]
	add r0, r10, #0x1300
	ldrsb r2, [r0, #0x25]
	ldrsb r1, [r0, #0x24]
	add r0, r2, r1
	bl _s32_div_f
	add r0, r10, #0x1000
	strb r1, [r0, #0x325]
	ldr r0, _02033994 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer10playEffectEi
	b _020336E4
_0203363C:
	add r0, r10, #0x4000
	ldr r0, [r0, #0x27c]
	cmp r0, #0
	beq _020336E4
	add r4, r10, #0x1300
	ldrh r1, [r4, #0x28]
	ldrsb r0, [r4, #0x24]
	ldrh r2, [r4, #0x26]
	mov r9, #0
	mul r0, r1, r0
	rsb r7, r2, #0xf8
	rsb r8, r0, #0x80
	b _020336D8
_02033670:
	ldrh r2, [r4, #0x26]
	mov r0, r10
	mov r1, #1
	add r2, r7, r2
	str r2, [sp]
	ldrh r11, [r4, #0x28]
	mov r2, r7
	mov r3, r8
	add r11, r8, r11
	str r11, [sp, #4]
	bl FUN_02030114
	cmp r0, #0
	beq _020336CC
	add r0, r10, #0x1300
	ldrsb r0, [r0, #0x25]
	cmp r0, r9
	beq _020336C0
	ldr r0, _02033994 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer10playEffectEi
_020336C0:
	add r0, r10, #0x1000
	strb r9, [r0, #0x325]
	b _020336E4
_020336CC:
	ldrh r0, [r4, #0x28]
	add r9, r9, #1
	add r8, r8, r0
_020336D8:
	ldrsb r0, [r4, #0x24]
	cmp r9, r0
	blt _02033670
_020336E4:
	mov r0, #0x80
	str r0, [sp]
	ldr r7, _02033984 ; =g3DPlaneCtrl
	mov r4, #0xe
	ldrsh r1, [r10, #0x36]
	ldr r0, [r7]
	mov r2, r4
	mov r3, #0xf8
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	mov r11, #0
	str r11, [sp]
	add r0, r10, #0x1300
	ldrsh r1, [r10, #0x36]
	ldrsb r3, [r0, #0x25]
	ldr r0, [r7]
	mov r2, r4
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
	mov r2, r4
	mov r4, #1
	str r4, [sp]
	ldr r0, [r7]
	ldrsh r1, [r10, #0x36]
	mov r8, #2
	mov r3, r8
	bl _ZN12C3DPlaneCtrl7setFlagEiitb
	ldr r0, [r7]
	mov r3, r8
	ldrsh r1, [r10, #0x36]
	mov r2, #3
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
	add r0, r10, #0x4000
	ldr r0, [r0, #0x280]
	cmp r0, #0
	beq _020337EC
	add r4, r10, #0x1300
	ldrh r1, [r4, #0x28]
	ldrsb r0, [r4, #0x24]
	ldrh r2, [r4, #0x26]
	mov r9, r11
	mul r0, r1, r0
	rsb r7, r2, #0xf8
	rsb r8, r0, #0x80
	b _020337DC
_02033790:
	ldrh r2, [r4, #0x26]
	mov r0, r10
	mov r1, #4
	add r2, r7, r2
	str r2, [sp]
	ldrh r12, [r4, #0x28]
	mov r2, r7
	mov r3, r8
	add r12, r8, r12
	str r12, [sp, #4]
	bl FUN_02030114
	cmp r0, #0
	addne r0, r10, #0x1000
	strneb r9, [r0, #0x325]
	movne r11, #1
	bne _0203383C
	ldrh r0, [r4, #0x28]
	add r9, r9, #1
	add r8, r8, r0
_020337DC:
	ldrsb r0, [r4, #0x24]
	cmp r9, r0
	blt _02033790
	b _0203383C
_020337EC:
	ldr r1, _02033990 ; =0x020A0640
	ldrb r0, [r1, #0x507]
	cmp r0, #1
	add r0, r10, #0x4200
	ldrh r0, [r0, #0x5c]
	movne r4, #0x10
	tst r0, r4
	movne r11, #1
	bne _0203383C
	ldrb r0, [r1, #0x507]
	mov r1, #2
	cmp r0, #1
	add r0, r10, #0x4200
	ldrh r0, [r0, #0x5c]
	movne r1, #0x80
	tst r0, r1
	movne r11, #1
	subne r1, r11, #2
	addne r0, r10, #0x1000
	strneb r1, [r0, #0x325]
_0203383C:
	cmp r11, #0
	ldr r0, _02033984 ; =g3DPlaneCtrl
	beq _0203388C
	ldr r1, [r10, #0x10]
	mov r2, #0xe
	bic r1, r1, #0x100
	str r1, [r10, #0x10]
	ldrsh r1, [r10, #0x36]
	ldr r0, [r0]
	mov r3, #2
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
	ldr r0, _02033994 ; =gAudioPlayer
	mov r1, #1
	bl _ZN11AudioPlayer10playEffectEi
	b _0203388C
_02033878:
	ldrsh r1, [r10, #0x36]
	ldr r0, [r0]
	mov r2, #0xe
	mov r3, #2
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
_0203388C:
	ldr r4, _02033984 ; =g3DPlaneCtrl
	add r1, r10, #0x1000
	add r2, r5, #0xc
	add r0, r6, #0x12
	mov r2, r2, lsl #0x10
	mov r3, r0, lsl #0x10
	ldr r0, [r4]
	ldr r1, [r1, #0xfc]
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl _ZN12C3DPlaneCtrl6setPosEiss
	add r0, r10, #0x1000
	add r2, r5, #0xc
	add r1, r6, #0x12
	mov r2, r2, lsl #0x10
	mov r3, r1, lsl #0x10
	ldrsh r1, [r0, #0xf8]
	ldr r0, [r4]
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl _ZN12C3DPlaneCtrl6setPosEiss
	ldr r0, [r10, #0x10]
	tst r0, #0x50
	bne _02033904
	tst r0, #2
	beq _02033904
	mov r0, r10
	mov r2, r11
	add r1, r10, #0x218
	bl FUN_02033998
_02033904:
	ldr r0, [r10, #0x10]
	tst r0, #0x200
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, #0x4200
	ldrh r0, [r0, #0x5c]
	cmp r0, #0
	bne _02033938
	add r0, r10, #0x4000
	ldr r0, [r0, #0x27c]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02033938:
	add r2, r10, #0x1300
	add r1, r10, #0x4200
	add r0, r10, #0x4000
	ldr r3, [r0, #0x27c]
	ldrh r4, [r2, #0x2a]
	ldrh r1, [r1, #0x5c]
	add r0, r10, #0x2a
	cmp r3, #0
	add r3, r0, #0x1300
	orr r0, r4, r1
	strh r0, [r2, #0x2a]
	ldrneh r0, [r3]
	orrne r0, r0, #0x4000
	strneh r0, [r3]
	ldr r0, [r10, #0x10]
	bic r0, r0, #0x200
	str r0, [r10, #0x10]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02033984: .word g3DPlaneCtrl
_02033988: .word unk_0208C364
_0203398C: .word unk_0208C36C
_02033990: .word unk_020A0640
_02033994: .word gAudioPlayer
	arm_func_end FUN_02033148

	arm_func_start FUN_02033998
FUN_02033998: ; 0x02033998
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xb4
	mov r4, r1
	add r1, r4, #0x1000
	ldrsb r1, [r1, #0xf4]
	mov r8, r0
	mov r7, r2
	cmp r1, #0
	mov r6, #2
	mov r9, #1
	mov r10, #0
	ldr r5, _020342E4 ; =g3DPlaneCtrl
	beq _020339F0
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	mov r2, r6
	bl _ZN12C3DPlaneCtrl9clearFlagEit
	add r0, r4, #0xe00
	ldrsh r1, [r0, #0xe0]
	ldr r0, [r5]
	mov r2, r6
	bl _ZN12C3DPlaneCtrl9clearFlagEit
_020339F0:
	add r1, r4, #0x1000
	ldrsb r2, [r1, #0xf5]
	mov r0, #0
	str r0, [sp, #0x20]
	cmp r2, #6
	addls pc, pc, r2, lsl #2
	b _020342D8
_02033A0C: ; jump table
	b _02033A28 ; case 0
	b _02033A34 ; case 1
	b _02033A90 ; case 2
	b _02033DFC ; case 3
	b _02034158 ; case 4
	b _02034228 ; case 5
	b _020342D0 ; case 6
_02033A28:
	add sp, sp, #0xb4
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02033A34:
	mov r6, #2
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	mov r2, r6
	bl _ZN12C3DPlaneCtrl9clearFlagEit
	add r0, r4, #0xe00
	ldrsh r1, [r0, #0xe0]
	ldr r0, [r5]
	mov r2, r6
	bl _ZN12C3DPlaneCtrl9clearFlagEit
	add r1, r4, #0x1000
	ldrsb r2, [r1, #0xf5]
	add r5, r4, #0xef0
	ldr r3, _020342E8 ; =0x00007FFF
	add r0, r4, #0x1100
	strh r3, [r0, #6]
	ldr r0, [sp, #0x20]
	add r2, r2, #1
	str r5, [r1, #0xf0]
	strb r0, [r1, #0xf7]
	strh r0, [r1, #0xfa]
	strb r2, [r1, #0xf5]
	b _020342D8
_02033A90:
	mov r9, r0
	strb r0, [r1, #0xf8]
	add r0, r4, #0xf8
	ldr r8, [r1, #0xf0]
	mov r6, #1
	add r1, r0, #0x1000

#ifdef TRANSLATION_BUGFIX

	b _02033AEC
_02033AAC:
	ldrsb r0, [r8]
	cmp r0, #0xa
	cmpne r0, #0xc
	beq _02033AD8
	ldrb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldrb r0, [r8]
	cmp r0, #0x81
	bcc _LAB01
	cmp r0, #0x9f
	bls _LAB02
_LAB01:
	cmp r0, #0xe0
	bcc _LAB03
	cmp r0, #0xfc
	bhi _LAB03
_LAB02:
	mov r0, #1
	b _LAB04
_LAB03:
	mov r0, #0
_LAB04:
	cmp r0, #0
	addne r8, r8, #1
	addne r9, r9, #1
_02033AD8:
	ldrsb r0, [r8]
	cmp r0, #0xc
	beq _02033AF8
	add r9, r9, #1
	add r8, r8, #1
_02033AEC:
	ldrsb r0, [r8]
	cmp r0, #0
	bne _02033AAC
_02033AF8:

#else ; TRANSLATION_BUGFIX

	b _02033AEC
_02033AAC:
	ldrsb r0, [r8]
	cmp r0, #0xa
	cmpne r0, #0xc
	beq _02033AD8
	ldrsb r0, [r1]
	add r0, r0, #1
	strb r0, [r1]
	ldrsb r0, [r8]
	tst r0, #0x80
	addne r8, r8, #1
	addne r9, r9, #1
_02033AD8:
	ldrsb r0, [r8]
	cmp r0, #0xc
	beq _02033AF8
	add r9, r9, #1
	add r8, r8, #1
_02033AEC:
	ldrsb r0, [r8]
	cmp r0, #0
	bne _02033AAC
_02033AF8:

#endif ; TRANSLATION_BUGFIX

	add r0, r4, #0x1000
	add r7, sp, #0x30
	ldr r1, [r0, #0xf0]
	mov r0, r7
	add r2, r9, #1
	bl STD_CopyLString
	add r0, r9, #2
	strb r10, [r7, r0]
	ldrsb r0, [r8]
	ldr r7, _020342EC ; =gFont12
	mov r2, #3
	cmp r0, #0
	addne r1, r8, #1
	addne r0, r4, #0x1000
	strne r1, [r0, #0xf0]
	addeq r0, r4, #0x1000
	streq r10, [r0, #0xf0]
	ldr r0, [r7]
	mov r1, r6
	bl _ZN12CFontManager10setSpacingEii
	ldr r1, [r4, #0xee8]
	mov r9, #0
	ldr r0, [r5]
	add r2, sp, #0x28
	add r3, sp, #0x2c
	str r9, [sp, #0x28]
	bl FUN_0205935c
	ldr r10, [sp, #0x28]
	mov r0, #0x40
	stmia sp, {r0, r9}
	str r9, [sp, #8]
	str r6, [sp, #0xc]
	add r0, r4, #0x2e0
	str r0, [sp, #0x10]
	mov r0, #0x180
	str r0, [sp, #0x14]
	str r9, [sp, #0x18]
	str r9, [sp, #0x1c]
	ldr r0, [r7]
	add r1, sp, #0x30
	mov r2, r10
	mov r3, #0x100
	bl _ZN12CFontManager15drawTextTex4bppEPcPviiiiiPNS_11GlyphBoundsEiiNS_9AlignmentE
	ldr r1, [sp, #0x2c]
	mov r0, r10
	bl DC_FlushRange
	ldr r3, [sp, #0x2c]
	ldr r1, [r4, #0xee8]
	ldr r0, [r5]
	mov r2, r10
	str r9, [sp]
	str r9, [sp, #4]
	str r9, [sp, #8]
	bl FUN_02059288
	ldr r0, [r7]
	mov r1, r6
	mov r2, r6
	bl _ZN12CFontManager10setSpacingEii
	add r0, r4, #0x1100
	strh r9, [r0]
	add r0, r4, #0x1000
	ldr r2, [r4, #0xee8]
	strh r9, [r0, #0xfe]
	strb r9, [r0, #0xf9]
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	and r2, r2, #0xff
	bl _ZN12C3DPlaneCtrl9setTexAllEih
	mov r7, #2
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	mov r2, r7
	bl _ZN12C3DPlaneCtrl12clearFlagAllEit
	add r0, r4, #0x1000
	ldrsb r3, [r0, #0xf8]
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	add r2, r4, #0x2e0
	bl _ZN12C3DPlaneCtrl9setBoundsEiP12SGlyphBoundsi
	str r6, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	mov r2, r6
	mov r3, r7
	bl _ZN12C3DPlaneCtrl7setFlagEiitb
	add r8, r4, #0x1000
	mov r7, r9
	mov r10, #0x8a
	ldr r6, _020342F0 ; =0x51EB851F
	b _02033CA0
_02033C60:
	add r0, r4, r9, lsl #3
	add r3, r0, #0x200
	ldrsh r0, [r3, #0xe2]
	add r2, r9, #1
	smulbb r1, r0, r10
	mov r0, r1, lsr #0x1f
	smull r1, r11, r6, r1
	add r11, r0, r11, asr #5
	mov r0, r11, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldrsh r3, [r3, #0xe0]
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	add r9, r9, #1
_02033CA0:
	#ifdef TRANSLATION_BUGFIX
	ldrb r0, [r8, #0xf8]
	#else
	ldrsb r0, [r8, #0xf8]
	#endif
	cmp r9, r0
	blt _02033C60
	add r0, r4, #0xe00
	ldrsh r1, [r0, #0xe0]
	ldr r0, _020342E4 ; =g3DPlaneCtrl
	mov r5, #2
	ldr r0, [r0]
	mov r2, r5
	mov r3, #1
	mov r8, #0
	bl _ZN12C3DPlaneCtrl7setFlagEitb
	add r0, r4, #0xe00
	ldrsh r1, [r0, #0xe0]
	ldr r0, _020342E4 ; =g3DPlaneCtrl
	mov r2, r5
	ldr r0, [r0]
	bl _ZN12C3DPlaneCtrl12clearFlagAllEit
	add r0, r4, #0xe00
	ldrsh r1, [r0, #0xe2]
	ldr r0, _020342E4 ; =g3DPlaneCtrl
	add r2, sp, #0x24
	ldr r0, [r0]
	str r8, [sp, #0x24]
	add r3, sp, #0x2c
	bl FUN_0205935c
	mov r9, r8
	ldr r10, [sp, #0x24]
	add r5, r4, #0x1000
	mov r11, #0x40
	ldr r6, _020342F4 ; =gFontRubi8
	b _02033DB8
_02033D20:
	mov r0, #0x2a
	mul r0, r9, r0
	add r3, r4, r0
	strb r7, [r3, #3]
	ldrsh r2, [r4, r0]
	ldrsh r1, [r5, #0xfa]
	cmp r2, r1
	blt _02033DB4
	#ifdef TRANSLATION_BUGFIX
	ldrb r0, [r5, #0xf8]
	#else
	ldrsb r0, [r5, #0xf8]
	#endif
	add r0, r1, r0
	cmp r2, r0
	bgt _02033DB4
	str r11, [sp]
	str r7, [sp, #4]
	mov r0, r8, lsl #3
	str r0, [sp, #8]
	mov r0, #9
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	str r7, [sp, #0x14]
	str r7, [sp, #0x18]
	str r7, [sp, #0x1c]
	add r1, r3, #0xa
	ldr r0, [r6]
	mov r2, r10
	mov r3, r11
	bl _ZN12CFontManager15drawTextTex4bppEPcPviiiiiPNS_11GlyphBoundsEiiNS_9AlignmentE
	mov r1, #0x2a
	mla r1, r9, r1, r4
	ldr r0, [r6]
	add r1, r1, #0xa
	add r8, r8, #1
	bl _ZN12CFontManager12getTextWidthEPc
	mov r1, #0x2a
	mla r1, r9, r1, r4
	strb r0, [r1, #4]
	strb r8, [r1, #3]
_02033DB4:
	add r9, r9, #1
_02033DB8:
	cmp r9, #0x10
	blt _02033D20
	ldr r1, [sp, #0x2c]
	mov r0, r10
	bl DC_FlushRange
	add r0, r4, #0xe00
	ldr r2, _020342E4 ; =g3DPlaneCtrl
	ldrsh r1, [r0, #0xe2]
	ldr r3, [sp, #0x2c]
	ldr r0, [r2]
	mov r5, #0
	str r5, [sp]
	str r5, [sp, #4]
	mov r2, r10
	str r5, [sp, #8]
	bl FUN_02059288
	b _02034144
_02033DFC:
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	mov r2, #2
	mov r3, #1
	mov r10, #0x2a
	bl _ZN12C3DPlaneCtrl7setFlagEitb
	add r1, r4, #0x1000
	add r0, r8, #0x1000
	ldrsh r2, [r1, #0xfc]
	ldr r0, [r0, #0x3e0]
	ldrsh r3, [r1, #0xfe]
	mul r0, r2, r0
	mov r0, r0, lsl #0x10
	add r0, r3, r0, asr #16
	strh r0, [r1, #0xfe]
	cmp r7, #0
	beq _02033E5C
	mov r6, #5
	ldr r0, _020342F8 ; =gAudioPlayer
	mov r1, r6
	bl _ZN11AudioPlayer10playEffectEi
	sub r1, r6, #6
	add r0, r4, #0x1000
	strh r1, [r0, #0xfe]
_02033E5C:
	add r0, r4, #0x1000
	ldrsb r1, [r0, #0xf6]
	tst r1, #0x10
	mvnne r1, #0
	strneh r1, [r0, #0xfe]
	add r1, r4, #0x1000
	ldrsh r0, [r1, #0xfe]
	cmp r0, #0
	#ifdef TRANSLATION_BUGFIX
	ldrltb r2, [r1, #0xf8]
	#else
	ldrltsb r2, [r1, #0xf8]
	#endif
	movlt r0, #0x64
	smulbblt r0, r2, r0
	strlth r0, [r1, #0xfe]
	add r0, r4, #0x1000
	ldrsb r0, [r0, #0xf6]
	tst r0, #8
	beq _02033ECC
	add r1, r4, #0x1100
	add r0, r8, #0x1000
	ldr r0, [r0, #0x3e0]
	ldrsh r2, [r1]
	mov r0, r0, lsl #0x10
	add r0, r2, r0, asr #16
	strh r0, [r1]
	ldrsh r2, [r1]
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	and r2, r2, #0xff
	bl _ZN12C3DPlaneCtrl11setAlphaAllEih
_02033ECC:
	mov r6, #1
	b _0203410C
_02033ED4:
	add r0, r4, #0x1000
	ldrsb r1, [r0, #0xf7]
	ldrsh r3, [r0, #0xfa]
	add r2, r1, #1
	add r1, r4, r2, lsl #2
	add r1, r1, #0x200
	ldrsh r1, [r1, #0xa0]
	cmp r3, r1
	bne _02033F14
	strb r2, [r0, #0xf7]
	ldrsb r0, [r0, #0xf7]
	add r1, r4, #0x1100
	add r0, r4, r0, lsl #2
	add r0, r0, #0x200
	ldrh r0, [r0, #0xa2]
	strh r0, [r1, #6]
_02033F14:
	mov r9, #0
	add r0, r4, #0x1000
	b _02034020
_02033F20:
	mul r2, r9, r10
	ldrsh r3, [r0, #0xfa]
	ldrsh r1, [r4, r2]
	cmp r3, r1
	bne _0203401C
	add r5, r4, #0x1000
	add r0, r4, r2
	#ifdef TRANSLATION_BUGFIX
	ldrb r11, [r5, #0xf9]
	#else
	ldrsb r11, [r5, #0xf9]
	#endif
	ldrb r3, [r0, #2]
	mov r1, #0x8a
	add r2, r4, r11, lsl #3
	add r3, r11, r3
	sub r3, r3, #1
	add r3, r4, r3, lsl #3
	add r3, r3, #0x200
	add r2, r2, #0x200
	ldrsh r12, [r2, #0xe0]
	ldrsh r11, [r3, #0xe0]
	ldrsh r2, [r3, #0xe4]
	add r3, r12, r11
	add r2, r3, r2
	add r2, r2, r2, lsr #31
	mov r2, r2, asr #1
	strh r2, [r0, #6]
	#ifdef TRANSLATION_BUGFIX
	ldrb r3, [r5, #0xf9]
	#else
	ldrsb r3, [r5, #0xf9]
	#endif
	add r2, r4, #0xe00
	ldr r5, _020342E4 ; =g3DPlaneCtrl
	add r3, r4, r3, lsl #3
	add r3, r3, #0x200
	ldrsh r11, [r3, #0xe2]
	mov r3, #2
	smulbb r11, r11, r1
	ldr r1, _020342F0 ; =0x51EB851F
	smull lr, r12, r1, r11
	mov r1, r11, lsr #0x1f
	add r12, r1, r12, asr #5
	strh r12, [r0, #8]
	mov r1, #1
	str r1, [sp]
	ldrsh r1, [r2, #0xe0]
	ldrb r2, [r0, #3]
	ldr r0, [r5]
	bl _ZN12C3DPlaneCtrl7setFlagEiitb
	mov r11, #0x2a
	mla r3, r9, r11, r4
	ldrsh r1, [r3, #8]
	add r0, r4, #0xe00
	str r1, [sp]
	ldrsh r1, [r0, #0xe0]
	ldrb r2, [r3, #3]
	ldrsh r3, [r3, #6]
	ldr r0, [r5]
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	mov r0, #8
	str r0, [sp]
	mla r3, r9, r11, r4
	add r1, r8, #0x1000
	ldrb r2, [r3, #3]
	ldrsh r1, [r1, #0xf8]
	ldrb r3, [r3, #4]
	ldr r0, [r5]
	bl _ZN12C3DPlaneCtrl8setTexWHEiiss
	b _02034028
_0203401C:
	add r9, r9, #1
_02034020:
	cmp r9, #0x10
	blt _02033F20
_02034028:
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0x1000
	#ifdef TRANSLATION_BUGFIX
	ldrb r2, [r0, #0xf9]
	#else
	ldrsb r2, [r0, #0xf9]
	#endif
	ldr r5, _020342E4 ; =g3DPlaneCtrl
	ldr r1, [r4, #0xee4]
	ldr r0, [r5]
	add r2, r2, #1
	mov r3, #2
	bl _ZN12C3DPlaneCtrl7setFlagEiitb
	add r0, r4, #0x1000
	#ifdef TRANSLATION_BUGFIX
	ldrb r2, [r0, #0xf9]
	#else
	ldrsb r2, [r0, #0xf9]
	#endif
	add r1, r4, #0x1100
	ldrh r3, [r1, #6]
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	add r2, r2, #1
	bl _ZN12C3DPlaneCtrl12setColorMaskEiit
	cmp r6, #0
	ldrne r0, [r4, #0xeec]
	cmpne r0, #0
	ble _020340D4
	cmp r7, #0
	beq _020340A0
	add r0, r4, #0x1000
	#ifdef TRANSLATION_BUGFIX
	ldrb r0, [r0, #0xf9]
	#else
	ldrsb r0, [r0, #0xf9]
	#endif
	cmp r0, #0
	bne _020340D4
	cmp r7, #0
	beq _020340D4
_020340A0:
	add r0, r4, #0x1000
	#ifdef TRANSLATION_BUGFIX
	ldrb r3, [r0, #0xf9]
	#else
	ldrsb r3, [r0, #0xf9]
	#endif
	ldr r1, _020342FC ; =0x55555556
	mov r2, #3
	smull r0, r5, r1, r3
	add r5, r5, r3, lsr #31
	smull r0, r1, r2, r5
	subs r5, r3, r0
	bne _020340D4
	ldr r1, [r4, #0xeec]
	ldr r0, _020342F8 ; =gAudioPlayer
	bl _ZN11AudioPlayer10playEffectEi
	mov r6, #0
_020340D4:
	add r0, r4, #0x1000
	#ifdef TRANSLATION_BUGFIX
	ldrb r1, [r0, #0xf9]
	#else
	ldrsb r1, [r0, #0xf9]
	#endif
	ldrsh r5, [r0, #0xfa]
	ldrsh r3, [r0, #0xfe]
	add r1, r1, #1
	strb r1, [r0, #0xf9]
	#ifdef TRANSLATION_BUGFIX
	ldrb r2, [r0, #0xf9]
	ldrb r1, [r0, #0xf8]
	#else
	ldrsb r2, [r0, #0xf9]
	ldrsb r1, [r0, #0xf8]
	#endif
	add r5, r5, #1
	sub r3, r3, #0x64
	strh r5, [r0, #0xfa]
	strh r3, [r0, #0xfe]
	cmp r2, r1
	#ifdef TRANSLATION_BUGFIX
	bcs _0203411C
	#else
	bge _0203411C
	#endif
_0203410C:
	add r0, r4, #0x1000
	ldrsh r0, [r0, #0xfe]
	cmp r0, #0x64
	bgt _02033ED4
_0203411C:
	add r0, r4, #0x1000
#ifdef TRANSLATION_BUGFIX
	ldrb r2, [r0, #0xf9]
	ldrb r1, [r0, #0xf8]
	#else
	ldrsb r2, [r0, #0xf9]
	ldrsb r1, [r0, #0xf8]
	#endif
	cmp r2, r1
	#ifdef TRANSLATION_BUGFIX
	bcc _020342D8
	#else
	blt _020342D8
	#endif
	ldr r0, [r0, #0xf0]
	cmp r0, #0
	ldreq r0, [r8, #0x10]
	orreq r0, r0, #4
	streq r0, [r8, #0x10]
_02034144:
	add r0, r4, #0x1000
	ldrsb r1, [r0, #0xf5]
	add r1, r1, #1
	strb r1, [r0, #0xf5]
	b _020342D8
_02034158:
	ldrsb r0, [r1, #0xf6]
	mov r6, #1
	tst r0, #8
	beq _020341AC
	add r1, r4, #0x1100
	add r0, r8, #0x1000
	ldr r0, [r0, #0x3e0]
	ldrsh r2, [r1]
	mov r0, r0, lsl #0x10
	add r0, r2, r0, asr #16
	strh r0, [r1]
	ldrsh r0, [r1]
	cmp r0, #0x80
	movgt r0, #0x80
	strgth r0, [r1]
	add r0, r4, #0x1100
	ldrsh r2, [r0]
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	and r2, r2, #0xff
	bl _ZN12C3DPlaneCtrl11setAlphaAllEih
_020341AC:
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	mov r3, r6
	mov r2, #2
	bl _ZN12C3DPlaneCtrl7setFlagEitb
	add r0, r4, #0x1000
	ldr r1, [r0, #0xf0]
	cmp r1, #0
	bne _020341E8
	ldrsb r0, [r0, #0xf6]
	tst r0, #0x20
	bne _020342D8
	tst r0, #0x40
	movne r7, r6
	movne r6, #0
_020341E8:
	cmp r7, #0
	beq _020342D8
	cmp r6, #0
	beq _02034204
	ldr r0, _020342F8 ; =gAudioPlayer
	mov r1, #5
	bl _ZN11AudioPlayer10playEffectEi
_02034204:
	ldr r0, _02034300 ; =0x020AF8AC
	bl _ZN19CSceneScriptManager12FUN_02048c40Ev
	add r1, r4, #0x1000
	ldrsb r2, [r1, #0xf5]
	add r0, r4, #0x1100
	mov r3, #0x20
	add r2, r2, #1
	strh r3, [r0]
	strb r2, [r1, #0xf5]
_02034228:
	add r0, r4, #0x1000
	ldrsb r0, [r0, #0xf6]
	mov r6, #2
	tst r0, #8
	beq _0203427C
	add r1, r4, #0x1100
	add r0, r8, #0x1000
	ldr r0, [r0, #0x3e0]
	ldrsh r2, [r1]
	mov r0, r0, lsl #0x10
	sub r0, r2, r0, asr #16
	strh r0, [r1]
	ldrsh r2, [r1]
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	and r2, r2, #0xff
	bl _ZN12C3DPlaneCtrl11setAlphaAllEih
	add r0, r4, #0x1100
	ldrsh r0, [r0]
	cmp r0, #0
	bgt _020342D8
_0203427C:
	add r0, r4, #0x1000
	ldr r1, [r0, #0xf0]
	mov r2, r6
	cmp r1, #0
	strneb r9, [r0, #0xf5]
	ldreq r1, [r8, #0x10]
	biceq r1, r1, #6
	streq r1, [r8, #0x10]
	streqb r10, [r0, #0xf6]
	ldr r0, [r5]
	ldr r1, [r4, #0xee4]
	bl _ZN12C3DPlaneCtrl12clearFlagAllEit
	add r0, r4, #0xe00
	ldrsh r1, [r0, #0xe0]
	ldr r0, [r5]
	mov r2, r6
	bl _ZN12C3DPlaneCtrl12clearFlagAllEit
	add r0, r4, #0x1000
	ldrsb r1, [r0, #0xf5]
	add r1, r1, #1
	strb r1, [r0, #0xf5]
_020342D0:
	mov r0, #1
	str r0, [sp, #0x20]
_020342D8:
	ldr r0, [sp, #0x20]
	add sp, sp, #0xb4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020342E4: .word g3DPlaneCtrl
_020342E8: .word 0x00007FFF
_020342EC: .word gFont12
_020342F0: .word 0x51EB851F
_020342F4: .word gFontRubi8
_020342F8: .word gAudioPlayer
_020342FC: .word 0x55555556
_02034300: .word unk_020AF8AC
	arm_func_end FUN_02033998

	arm_func_start FUN_02034304
FUN_02034304: ; 0x02034304
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	ldr r2, _020345A0 ; =0x0208C37C
	mov r7, r1
	ldrh r5, [r2]
	ldrh r4, [r2, #2]
	ldrh r3, [r2, #4]
	ldrh r2, [r2, #6]
	ldrsb r1, [r7, #0xa]
	strh r4, [sp, #6]
	strh r2, [sp, #0xa]
	mov r8, r0
	strh r5, [sp, #4]
	strh r3, [sp, #8]
	cmp r1, #0
	mov r4, #2
	ldr r9, _020345A4 ; =g3DPlaneCtrl
	add r2, sp, #4
	mov r6, #1
	bne _02034384
	ldrsb r0, [r7, #0xe]
	cmp r0, #0
	ble _02034384
	sub r0, r0, #1
	mov r1, r0, lsl #2
	add r0, r2, r0, lsl #2
	ldrsh r1, [r2, r1]
	ldrsh r0, [r0, #2]
	mov r1, r1, lsl #0xc
	mov r0, r0, lsl #0xc
	str r1, [r7, #0x18]
	str r0, [r7, #0x1c]
_02034384:
	ldrsb r0, [r7, #0xd]
	cmp r0, #1
	beq _0203439C
	cmp r0, #2
	beq _020343AC
	b _020343BC
_0203439C:
	mov r0, r8
	mov r1, r7
	bl FUN_020345a8
	b _020343B8
_020343AC:
	mov r0, r8
	mov r1, r7
	bl FUN_02034654
_020343B8:
	mov r6, r0
_020343BC:
	ldrsb r2, [r7, #0xc]
	cmp r2, #0
	ldrgtsb r0, [r7, #0xa]
	cmpgt r0, #0
	ble _02034570
	cmp r0, #0x14
	beq _02034570
	ldr r1, [r7, #0x10]
	ldr r0, [r7, #0x14]
	cmp r2, #5
	mov r4, r1, asr #0xc
	mov r5, r0, asr #0xc
	addls pc, pc, r2, lsl #2
	b _0203453C
_020343F4: ; jump table
	b _0203453C ; case 0
	b _0203440C ; case 1
	b _02034490 ; case 2
	b _02034490 ; case 3
	b _02034490 ; case 4
	b _02034464 ; case 5
_0203440C:
	ldr r2, [r8, #0x1c]
	ldrsh r1, [r7, #4]
	ldr r0, [r9]
	and r2, r2, #0xff
	bl _ZN12C3DPlaneCtrl9setTexAllEih
	mov r2, #0
	ldrsh r1, [r7, #4]
	ldr r0, [r9]
	mov r3, r2
	bl _ZN12C3DPlaneCtrl16setGraphicIdxAllEihb
	ldr r1, [r8, #0x24]
	ldrsb r2, [r7, #0xf]
	and r3, r1, #0xff
	ldrsh r1, [r7, #4]
	ldr r0, [r9]
	bl _ZN12C3DPlaneCtrl6setTexEiih
_0203444C:
	ldrsh r1, [r7, #2]
	ldr r0, [r9]
	mov r2, #5
	mov r3, #2
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
	b _0203453C
_02034464:
	ldr r2, [r8, #0x1c]
	ldrsh r1, [r7, #4]
	ldr r0, [r9]
	and r2, r2, #0xff
	bl _ZN12C3DPlaneCtrl9setTexAllEih
	mov r2, #0
	ldrsh r1, [r7, #4]
	ldr r0, [r9]
	mov r3, r2
	bl _ZN12C3DPlaneCtrl16setGraphicIdxAllEihb
	b _0203444C
_02034490:
	ldr r2, [r8, #0x20]
	ldrsh r1, [r7, #4]
	ldr r0, [r9]
	and r2, r2, #0xff
	bl _ZN12C3DPlaneCtrl9setTexAllEih
	mov r10, #0
	ldrsh r1, [r7, #4]
	ldr r0, [r9]
	mov r2, r10
	mov r3, r10
	bl _ZN12C3DPlaneCtrl16setGraphicIdxAllEihb
	ldr r1, [r8, #0x28]
	mov r8, #5
	and r3, r1, #0xff
	ldrsh r1, [r7, #2]
	ldr r0, [r9]
	mov r2, r8
	bl _ZN12C3DPlaneCtrl6setTexEiih
	str r10, [sp]
	ldrsb r3, [r7, #0xc]
	ldrsh r1, [r7, #2]
	ldr r0, [r9]
	mov r2, r8
	sub r3, r3, #2
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
	sub r0, r5, #6
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	add r3, r4, #8
	mov r3, r3, lsl #0x10
	ldrsh r1, [r7, #2]
	ldr r0, [r9]
	mov r2, r8
	mov r3, r3, asr #0x10
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	mov r0, #1
	str r0, [sp]
	ldrsh r1, [r7, #2]
	ldr r0, [r9]
	mov r2, r8
	mov r3, #2
	bl _ZN12C3DPlaneCtrl7setFlagEiitb
_0203453C:
	ldrsh r1, [r7, #4]
	mov r2, r4, lsl #0x10
	mov r3, r5, lsl #0x10
	ldr r0, [r9]
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl _ZN12C3DPlaneCtrl6setPosEiss
	ldrsh r1, [r7, #4]
	ldr r0, [r9]
	mov r2, #2
	mov r3, #1
	bl _ZN12C3DPlaneCtrl7setFlagEitb
	b _02034594
_02034570:
	ldrsh r1, [r7, #4]
	ldr r0, [r9]
	mov r2, r4
	bl _ZN12C3DPlaneCtrl9clearFlagEit
	ldrsh r1, [r7, #2]
	ldr r0, [r9]
	mov r3, r4
	mov r2, #5
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
_02034594:
	mov r0, r6
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020345A0: .word unk_0208C37C
_020345A4: .word g3DPlaneCtrl
	arm_func_end FUN_02034304

	arm_func_start FUN_020345a8
FUN_020345a8: ; 0x020345A8
	ldrsb r3, [r1, #0xa]
	mov r0, #1
	cmp r3, #0xb
	bgt _020345DC
	cmp r3, #0xa
	blt _020345D0
	beq _02034604
	cmp r3, #0xb
	beq _0203461C
	b _02034640
_020345D0:
	cmp r3, #0
	beq _020345E8
	b _02034640
_020345DC:
	cmp r3, #0x14
	beq _02034628
	b _02034640
_020345E8:
	ldr r12, [r1, #0x18]
	ldr r3, [r1, #0x1c]
	mov r2, #0xa
	str r12, [r1, #0x10]
	str r3, [r1, #0x14]
	strb r2, [r1, #0xa]
	bx lr
_02034604:
	ldrsb r2, [r1, #0xb]
	cmp r2, #0
	addne r2, r3, #1
	moveq r0, #0
	strneb r2, [r1, #0xa]
	bx lr
_0203461C:
	mov r2, #0x14
	strb r2, [r1, #0xa]
	bx lr
_02034628:
	ldrsb r2, [r1, #0xb]
	cmp r2, #0
	moveq r2, #0
	movne r0, #0
	streqb r2, [r1, #0xa]
	bx lr
_02034640:
	ldrsb r2, [r1, #0xb]
	cmp r2, #0
	moveq r2, #0xb
	streqb r2, [r1, #0xa]
	bx lr
	arm_func_end FUN_020345a8

	arm_func_start FUN_02034654
FUN_02034654: ; 0x02034654
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldrsb r3, [r5, #0xa]
	mov r4, #1
	cmp r3, #0xa
	bgt _02034690
	bge _02034704
	cmp r3, #1
	bgt _0203476C
	cmp r3, #0
	blt _0203476C
	beq _020346AC
	cmp r3, #1
	beq _020346CC
	b _0203476C
_02034690:
	cmp r3, #0xb
	bgt _020346A0
	beq _02034720
	b _0203476C
_020346A0:
	cmp r3, #0x14
	beq _02034758
	b _0203476C
_020346AC:
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	sub r2, r0, #0x100000
	add r0, r3, #1
	str r2, [r5, #0x10]
	str r1, [r5, #0x14]
	strb r0, [r5, #0xa]
	b _0203477C
_020346CC:
	add r0, r0, #0x1000
	ldr r1, [r5, #0x18]
	ldr r0, [r0, #0x3e0]
	ldr r2, [r5, #0x10]
	add r1, r1, #0x40000
	mov r3, #0xcd
	bl FUN_02030740
	ldr r1, [r5, #0x18]
	str r0, [r5, #0x10]
	cmp r0, r1
	blt _0203477C
	mov r0, #0xa
	str r1, [r5, #0x10]
	strb r0, [r5, #0xa]
_02034704:
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	ldrnesb r0, [r5, #0xa]
	moveq r4, #0
	addne r0, r0, #1
	strneb r0, [r5, #0xa]
	b _0203477C
_02034720:
	add r0, r0, #0x1000
	ldr r1, [r5, #0x18]
	ldr r0, [r0, #0x3e0]
	ldr r2, [r5, #0x10]
	sub r1, r1, #0x140000
	mov r3, #0xcd
	bl FUN_02030740
	ldr r1, [r5, #0x18]
	str r0, [r5, #0x10]
	sub r1, r1, #0x100000
	cmp r0, r1
	movle r0, #0x14
	strleb r0, [r5, #0xa]
	b _0203477C
_02034758:
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	movne r4, #0
	moveq r0, #0
	b _02034778
_0203476C:
	ldrsb r0, [r5, #0xb]
	cmp r0, #0
	moveq r0, #0xb
_02034778:
	streqb r0, [r5, #0xa]
_0203477C:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02034654

	arm_func_start FUN_02034784
FUN_02034784: ; 0x02034784
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xb8
	ldr r4, _02034F20 ; =0x0208FC3C
	mov r11, r3
	add r3, sp, #0x2c
	mov r10, r1
	str r0, [sp, #0x14]
	mov r6, r2
	ldmia r4, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r4, #6
	cmp r11, #0
	movgt r1, r4
	ldrsb r0, [r10, #0xd1]
	movle r1, #0xa
	ldrsb r3, [r10, #0xce]
	add r5, r1, r0, lsl #1
	mov r1, #1
	mov r2, #0
	cmp r3, #0xa
	str r1, [sp, #0x18]
	bgt _02034814
	mov r7, #0
	cmp r3, #0xa
	ldrge r11, _02034F24 ; =g3DPlaneCtrl
	movge r6, r7
	bge _02034CDC
	cmp r3, #1
	bgt _02034C94
	cmp r3, #0
	blt _02034C94
	beq _02034820
	cmp r3, #1
	mov r8, r7
	beq _02034A64
	b _02034C94
_02034814:
	cmp r3, #0x14
	beq _02034EFC
	b _02034C94
_02034820:
	ldrsb r1, [r10, #0xcf]
	ldr r5, _02034F24 ; =g3DPlaneCtrl
	mov r11, #1
	cmp r1, #0
	addle sp, sp, #0xb8
	movle r0, r7
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsb r1, [r10, #0xd2]
	mov r9, #0
	add r6, sp, #0x38
	cmp r1, #0
	eorne r0, r0, #1
	strneb r0, [r10, #0xd1]
	b _02034A44
_02034858:
	ldrsb r0, [r10, #0xd2]
	cmp r0, #0
	bge _020348C4
	ldrsb r1, [r10, #0xd1]
	mla r0, r1, r4, r10
	add r0, r0, r9, lsl #1
	ldrsh r1, [r0, #0xc0]
	cmp r1, #0
	beq _020348B4
	ldr r0, [r5]
	bl FUN_020591e8
	ldrsb r2, [r10, #0xd1]
	ldr r0, [r5]
	mla r1, r2, r4, r10
	add r1, r1, r9, lsl #1
	ldrsh r1, [r1, #0xc0]
	bl FUN_02058ee0
	ldrsb r2, [r10, #0xd1]
	ldr r0, [r5]
	mla r1, r2, r4, r10
	add r1, r1, r9, lsl #1
	ldrsh r1, [r1, #0xc0]
	bl FUN_02058ee0
_020348B4:
	ldrsb r1, [r10, #0xd1]
	mla r0, r1, r4, r10
	add r0, r0, r9, lsl #1
	strh r7, [r0, #0xc0]
_020348C4:
	ldrsb r1, [r10, #0xd1]
	mla r0, r1, r4, r10
	add r0, r0, r9, lsl #1
	ldrsh r0, [r0, #0xc0]
	cmp r0, #0
	bne _02034A40
	ldr r1, _02034F28 ; =0x0208FD7C
	mov r0, r6
	bl STD_CopyString
	ldrsb r3, [r10, #0xd1]
	mov r0, #0x60
	mov r2, r9, lsl #5
	mla r1, r3, r0, r10
	ldrsb r0, [r2, r1]
	cmp r0, #0x2a
	beq _02034938
	add r1, r1, r2
	mov r0, r6
	bl STD_ConcatenateString
	cmp r9, #2
	mov r0, r6
	beq _02034924
	ldr r1, _02034F2C ; =0x0208FD90
	b _02034928
_02034924:
	ldr r1, _02034F30 ; =0x0208FD98
_02034928:
	bl STD_ConcatenateString
	str r7, [sp, #0x24]
	str r7, [sp, #0x28]
	b _020349E0
_02034938:
	add r1, sp, #0x2c
	ldr r1, [r1, r9, lsl #2]
	mov r0, r6
	bl STD_ConcatenateString
	ldrsb r1, [r10, #0xd1]
	mov r0, #0x60
	mla r0, r1, r0, r10
	add r0, r0, r9, lsl #5
	add r0, r0, #1
	bl atoi
	mov r8, r0
	ldr r0, [sp, #0x14]
	add r0, r0, r9, lsl #2
	ldr r0, [r0, #0x54]
	cmp r0, #0
	beq _02034990
	mov r1, r8
	add r2, sp, #0x28
	add r3, sp, #0x24
	bl _ZN7Archive26PackHeaderGetOffsetAndSizeEPvmPlPm
	cmp r0, #0
	bne _020349E0
_02034990:
	cmp r9, #0
	beq _020349AC
	cmp r9, #1
	beq _020349C0
	cmp r9, #2
	beq _020349D0
	b _02034A40
_020349AC:
	ldr r1, _02034F34 ; =0x0208FDA0
	mov r2, r8
	mov r0, r6
_020349B8:
	bl sprintf
	b _02034A40
_020349C0:
	mov r2, r8
	mov r0, r6
	ldr r1, _02034F38 ; =0x0208FDA8
	b _020349B8
_020349D0:
	mov r2, r8
	mov r0, r6
	ldr r1, _02034F3C ; =0x0208FDB0
	b _020349B8
_020349E0:
	cmp r9, #2
	beq _02034A00
	ldr r3, [sp, #0x24]
	ldr r2, [sp, #0x28]
	ldr r0, [r5]
	mov r1, #5
	stmia sp, {r7, r11}
	b _02034A18
_02034A00:
	ldr r3, [sp, #0x24]
	ldr r2, [sp, #0x28]
	ldr r0, [r5]
	mov r1, #3
	str r7, [sp]
	str r7, [sp, #4]
_02034A18:
	str r7, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r2, r6
	mov r3, r11
	bl FUN_02058800
	ldrsb r2, [r10, #0xd1]
	mla r1, r2, r4, r10
	add r1, r1, r9, lsl #1
	strh r0, [r1, #0xc0]
_02034A40:
	add r9, r9, #1
_02034A44:
	cmp r9, #3
	blt _02034858
	ldrsb r0, [r10, #0xce]
	mov r1, #0
	strb r1, [r10, #0xd2]
_02034A58:
	add r0, r0, #1
	strb r0, [r10, #0xce]
	b _02034F14
_02034A64:
	mla r1, r0, r4, r10
	ldrsh r1, [r1, #0xc0]
	ldr r7, _02034F24 ; =g3DPlaneCtrl
	cmp r1, #0
	beq _02034A8C
	ldr r0, _02034F24 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_02058e30
	cmp r0, #0
	bgt _02034F14
_02034A8C:
	ldrsb r1, [r10, #0xd1]
	mla r0, r1, r4, r10
	ldrsh r1, [r0, #0xc2]
	cmp r1, #0
	beq _02034AB4
	ldr r0, _02034F24 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_02058e30
	cmp r0, #0
	bgt _02034F14
_02034AB4:
	ldrsb r1, [r10, #0xd1]
	mla r0, r1, r4, r10
	ldrsh r1, [r0, #0xc4]
	cmp r1, #0
	beq _02034ADC
	ldr r0, _02034F24 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_02058e30
	cmp r0, #0
	bgt _02034F14
_02034ADC:
	mov r0, #0xc0
	mul r1, r11, r0
	mov r0, #0x32
	mul r2, r11, r0
	rsb r0, r1, #0x80
	mov r0, r0, lsl #0x10
	rsb r1, r2, #0x32
	mov r0, r0, asr #0x10
	mov r9, #0
	and r11, r1, #0xff
	str r0, [sp, #0x20]
	b _02034BB8
_02034B0C:
	ldrsb r2, [r10, #0xd1]
	ldr r0, [r7]
	mla r1, r2, r4, r10
	add r1, r1, r9, lsl #1
	ldrsh r1, [r1, #0xc0]
	bl _ZN12C3DPlaneCtrl17convertTilesToTexEi
	ldrsb r3, [r10, #0xd1]
	ldr r0, [r7]
	mov r2, r8
	mla r1, r3, r4, r10
	add r1, r1, r9, lsl #1
	ldrsh r1, [r1, #0xc0]
	mov r3, r8
	bl FUN_02059038
	ldrsb r12, [r10, #0xd1]
	ldr r0, [r7]
	mov r1, r6
	mla r3, r12, r4, r10
	add r3, r3, r9, lsl #1
	ldrsh r3, [r3, #0xc0]
	add r2, r5, r9
	and r3, r3, #0xff
	bl _ZN12C3DPlaneCtrl6setTexEiih
	str r8, [sp]
	ldr r0, [r7]
	mov r1, r6
	add r2, r5, r9
	mov r3, r8
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
	str r8, [sp]
	ldr r0, [r7]
	mov r1, r6
	add r2, r5, r9
	mov r3, r11
	bl _ZN12C3DPlaneCtrl12setPosAnchorEiihh
	mov r0, #0x40
	str r0, [sp]
	ldr r0, [r7]
	ldr r3, [sp, #0x20]
	mov r1, r6
	add r2, r5, r9
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	add r9, r9, #1
_02034BB8:
	cmp r9, #2
	blt _02034B0C
	ldrsb r1, [r10, #0xd1]
	mov r7, #6
	ldr r8, _02034F24 ; =g3DPlaneCtrl
	mla r0, r1, r7, r10
	ldrsh r1, [r0, #0xc4]
	ldr r0, [r8]
	mov r4, #0
	bl _ZN10C3DSprFile14getSpriteSheetEi
	movs r1, r0
	beq _02034BFC
	ldr r2, _02034F40 ; =gPalSkinFaceFile
	ldrb r0, [r10, #0xcc]
	ldr r1, [r1, #4]
	ldr r2, [r2]
	bl FUN_ov16_020f0c48
_02034BFC:
	ldrsb r1, [r10, #0xd1]
	mov r2, r4
	mov r3, r4
	mla r0, r1, r7, r10
	ldrsh r1, [r0, #0xc4]
	ldr r0, [r8]
	bl FUN_02059038
	ldrsb r3, [r10, #0xd1]
	ldr r0, [r8]
	mov r1, r6
	mla r2, r3, r7, r10
	ldrsh r3, [r2, #0xc4]
	add r2, r5, #1
	and r3, r3, #0xff
	bl _ZN12C3DPlaneCtrl7setPlttEiih
	ldr r0, [r8]
	mov r3, r4
	mov r1, r6
	add r2, r5, #1
	bl _ZN12C3DPlaneCtrl10setPlttIdxEiih
	ldrsb r0, [r10, #0xcf]
	cmp r0, #2
	beq _02034C60
	ldr r4, _02034F44 ; =0x00007FFF
	b _02034C64
_02034C60:
	ldr r4, _02034F48 ; =0x0000318C
_02034C64:
	ldr r0, [r8]
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl _ZN12C3DPlaneCtrl12setColorMaskEiit
	ldr r0, [r8]
	mov r1, r6
	mov r3, r4
	add r2, r5, #1
	bl _ZN12C3DPlaneCtrl12setColorMaskEiit
	ldrsb r0, [r10, #0xce]
	b _02034A58
_02034C94:
	ldrsb r0, [r10, #0xd0]
	cmp r0, #1
	beq _02034CAC
	cmp r0, #2
	beq _02034CC4
	b _02034F14
_02034CAC:
	ldr r0, [sp, #0x14]
	mov r1, r10
	mov r2, r6
	mov r3, r11
	bl FUN_02034f64
	b _02034F14
_02034CC4:
	ldr r0, [sp, #0x14]
	mov r1, r10
	mov r2, r6
	mov r3, r11
	bl FUN_020350dc
	b _02034F14
_02034CDC:
	ldrsb r2, [r10, #0xd2]
	mov r1, r7
	str r1, [sp, #0x18]
	cmp r2, #0
	beq _02034ED8
	cmp r2, #0
	bge _02034ED0
	eor r0, r0, #1
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	mov r9, r1
	str r0, [sp, #0x1c]
	mov r0, r0
	mov r1, #0x60
	mla r7, r0, r4, r10
	mla r4, r0, r1, r10
	add r5, sp, #0x38
	b _02034EBC
_02034D24:
	add r0, r7, r9, lsl #1
	ldrsh r1, [r0, #0xc0]
	cmp r1, #0
	beq _02034D64
	ldr r0, [r11]
	bl FUN_020591e8
	add r0, r7, r9, lsl #1
	ldrsh r1, [r0, #0xc0]
	ldr r0, [r11]
	bl FUN_02058ee0
	add r0, r7, r9, lsl #1
	ldrsh r1, [r0, #0xc0]
	ldr r0, [r11]
	bl FUN_02058ee0
	add r0, r7, r9, lsl #1
	strh r6, [r0, #0xc0]
_02034D64:
	ldr r1, _02034F4C ; =0x0208FDB8
	mov r0, r5
	bl STD_CopyString
	mov r1, r9, lsl #5
	ldrsb r0, [r1, r4]
	cmp r0, #0x2a
	beq _02034DB4
	add r1, r4, r1
	mov r0, r5
	bl STD_ConcatenateString
	cmp r9, #2
	mov r0, r5
	beq _02034DA0
	ldr r1, _02034F50 ; =0x0208FDCC
	b _02034DA4
_02034DA0:
	ldr r1, _02034F54 ; =0x0208FDD4
_02034DA4:
	bl STD_ConcatenateString
	str r6, [sp, #0x24]
	str r6, [sp, #0x28]
	b _02034E50
_02034DB4:
	add r1, sp, #0x2c
	ldr r1, [r1, r9, lsl #2]
	mov r0, r5
	bl STD_ConcatenateString
	add r0, r4, r9, lsl #5
	add r0, r0, #1
	bl atoi
	mov r8, r0
	ldr r0, [sp, #0x14]
	add r0, r0, r9, lsl #2
	ldr r0, [r0, #0x54]
	cmp r0, #0
	beq _02034E00
	mov r1, r8
	add r2, sp, #0x28
	add r3, sp, #0x24
	bl _ZN7Archive26PackHeaderGetOffsetAndSizeEPvmPlPm
	cmp r0, #0
	bne _02034E50
_02034E00:
	cmp r9, #0
	beq _02034E1C
	cmp r9, #1
	beq _02034E30
	cmp r9, #2
	beq _02034E40
	b _02034EB8
_02034E1C:
	ldr r1, _02034F58 ; =0x0208FDDC
	mov r2, r8
	mov r0, r5
_02034E28:
	bl sprintf
	b _02034EB8
_02034E30:
	mov r2, r8
	mov r0, r5
	ldr r1, _02034F5C ; =0x0208FDE4
	b _02034E28
_02034E40:
	mov r2, r8
	mov r0, r5
	ldr r1, _02034F60 ; =0x0208FDEC
	b _02034E28
_02034E50:
	cmp r9, #2
	beq _02034E80
	ldr r8, [sp, #0x24]
	ldr r3, [sp, #0x28]
	ldr r0, [r11]
	mov r2, #1
	str r6, [sp]
	stmib sp, {r2, r6}
	str r3, [sp, #0xc]
	mov r1, #5
	str r8, [sp, #0x10]
	b _02034EA4
_02034E80:
	ldr r3, [sp, #0x24]
	ldr r2, [sp, #0x28]
	ldr r0, [r11]
	mov r1, #3
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
_02034EA4:
	mov r2, r5
	mov r3, #1
	bl FUN_02058800
	add r1, r7, r9, lsl #1
	strh r0, [r1, #0xc0]
_02034EB8:
	add r9, r9, #1
_02034EBC:
	cmp r9, #3
	blt _02034D24
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	strb r0, [r10, #0xd2]
_02034ED0:
	mov r0, #0xb
	strb r0, [r10, #0xce]
_02034ED8:
	ldrsb r0, [r10, #0xcf]
	cmp r0, #0
	movlt r0, #1
	strltb r0, [r10, #0xcd]
	ldrsb r0, [r10, #0xcd]
	cmp r0, #0
	movne r0, #0xb
	strneb r0, [r10, #0xce]
	b _02034F14
_02034EFC:
	ldrsb r0, [r10, #0xd2]
	strb r2, [r10, #0xce]
	cmp r0, #0
	moveq r0, #0
	streq r0, [sp, #0x18]
	streqb r0, [r10, #0xcf]
_02034F14:
	ldr r0, [sp, #0x18]
	add sp, sp, #0xb8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02034F20: .word unk_0208FC3C
_02034F24: .word g3DPlaneCtrl
_02034F28: .word unk_0208FD7C
_02034F2C: .word unk_0208FD90
_02034F30: .word unk_0208FD98
_02034F34: .word unk_0208FDA0
_02034F38: .word unk_0208FDA8
_02034F3C: .word unk_0208FDB0
_02034F40: .word gPalSkinFaceFile
_02034F44: .word 0x00007FFF
_02034F48: .word 0x0000318C
_02034F4C: .word unk_0208FDB8
_02034F50: .word unk_0208FDCC
_02034F54: .word unk_0208FDD4
_02034F58: .word unk_0208FDDC
_02034F5C: .word unk_0208FDE4
_02034F60: .word unk_0208FDEC
	arm_func_end FUN_02034784

	arm_func_start FUN_02034f64
FUN_02034f64: ; 0x02034F64
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r1
	ldrsb r1, [r10, #0xd1]
	mov r8, r3
	mov r9, r2
	ldrsb r0, [r10, #0xce]
	mov r2, #6
	cmp r8, #0
	movle r2, #0xa
	add r6, r2, r1, lsl #1
	cmp r0, #2
	beq _02034FA0
	cmp r0, #0xb
	beq _02035058
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02034FA0:
	mov r0, #0x70
	mul r0, r8, r0
	rsb r0, r0, #0x80
	mov r0, r0, lsl #0x10
	mov r7, #0
	mov r5, r0, asr #0x10
	mov r11, #0x40
	ldr r4, _020350D8 ; =g3DPlaneCtrl
	b _02034FFC
_02034FC4:
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r9
	mov r3, r5
	add r2, r6, r7
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r9
	add r2, r6, r7
	mov r3, #2
	bl _ZN12C3DPlaneCtrl7setFlagEiitb
	add r7, r7, #1
_02034FFC:
	cmp r7, #2
	blt _02034FC4
	ldrsb r0, [r10, #0xd1]
	mov r1, #6
	cmp r8, #0
	movle r1, #0xa
	eor r0, r0, #1
	mov r7, #0
	add r6, r1, r0, lsl #1
	mov r5, #2
	ldr r4, _020350D8 ; =g3DPlaneCtrl
	b _02035044
_0203502C:
	ldr r0, [r4]
	mov r1, r9
	mov r3, r5
	add r2, r6, r7
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
	add r7, r7, #1
_02035044:
	cmp r7, #2
	blt _0203502C
	mov r0, #0xa
	strb r0, [r10, #0xce]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02035058:
	ldrsb r0, [r10, #0xcd]
	cmp r0, #0
	moveq r0, #0
	streqb r0, [r10, #0xce]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #0xc0
	mul r0, r8, r0
	rsb r0, r0, #0x80
	mov r0, r0, lsl #0x10
	mov r7, #0
	mov r5, r0, asr #0x10
	mov r8, #0x40
	mov r11, #2
	ldr r4, _020350D8 ; =g3DPlaneCtrl
	b _020350C4
_02035094:
	str r8, [sp]
	ldr r0, [r4]
	mov r1, r9
	mov r3, r5
	add r2, r6, r7
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	ldr r0, [r4]
	mov r1, r9
	add r2, r6, r7
	mov r3, r11
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
	add r7, r7, #1
_020350C4:
	cmp r7, #2
	blt _02035094
	mov r0, #0x14
	strb r0, [r10, #0xce]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020350D8: .word g3DPlaneCtrl
	arm_func_end FUN_02034f64

	arm_func_start FUN_020350dc
FUN_020350dc: ; 0x020350DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r1
	mov r9, r2
	mov r4, r3
	ldrsb r2, [r10, #0xd1]
	ldrsb r1, [r10, #0xce]
	mov r3, #6
	cmp r4, #0
	movle r3, #0xa
	add r7, r3, r2, lsl #1
	cmp r1, #0xb
	bgt _02035130
	bge _02035258
	cmp r1, #3
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r1, #2
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	beq _0203513C
	cmp r1, #3
	beq _020351BC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02035130:
	cmp r1, #0xc
	beq _0203526C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203513C:
	mov r0, #0xc0
	mul r0, r4, r0
	rsb r0, r0, #0x80
	mov r0, r0, lsl #0x10
	mov r8, #0
	mov r5, r0, asr #0x10
	mov r6, #0x40
	mov r11, #1
	ldr r4, _02035338 ; =g3DPlaneCtrl
	b _02035198
_02035164:
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r9
	mov r3, r5
	add r2, r7, r8
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r9
	add r2, r7, r8
	mov r3, #2
	bl _ZN12C3DPlaneCtrl7setFlagEiitb
	add r8, r8, #1
_02035198:
	cmp r8, #2
	blt _02035164
	ldrsb r0, [r10, #0xce]
	mov r1, #0xa
	str r1, [r10, #0xd8]
	add r0, r0, #1
	str r1, [r10, #0xd4]
	strb r0, [r10, #0xce]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020351BC:
	add r0, r0, #0x1000
	ldr r1, [r10, #0xd4]
	ldr r0, [r0, #0x3e0]
	subs r0, r1, r0
	str r0, [r10, #0xd4]
	movmi r0, #0
	strmi r0, [r10, #0xd4]
	ldr r0, [r10, #0xd4]
	ldr r1, [r10, #0xd8]
	mov r0, r0, lsl #6
	bl _s32_div_f
	mov r8, r0
	add r0, r8, #0x70
	mul r1, r0, r4
	rsb r0, r1, #0x80
	mov r6, #0x40
	mov r2, r0, lsl #0x10
	mov r3, r2, asr #0x10
	ldr r5, _02035338 ; =g3DPlaneCtrl
	str r6, [sp]
	ldr r0, [r5]
	mov r1, r9
	mov r2, r7
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	add r3, r8, #0x70
	mul r4, r3, r4
	str r6, [sp]
	rsb r3, r4, #0x80
	mov r3, r3, lsl #0x10
	ldr r0, [r5]
	mov r1, r9
	add r2, r7, #1
	mov r3, r3, asr #0x10
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	ldr r0, [r10, #0xd4]
	cmp r0, #0
	moveq r0, #0xa
	streqb r0, [r10, #0xce]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02035258:
	mov r2, #0xa
	add r1, r1, #1
	str r2, [r10, #0xd8]
	str r2, [r10, #0xd4]
	strb r1, [r10, #0xce]
_0203526C:
	add r0, r0, #0x1000
	ldr r1, [r10, #0xd4]
	ldr r0, [r0, #0x3e0]
	subs r0, r1, r0
	str r0, [r10, #0xd4]
	movmi r0, #0
	strmi r0, [r10, #0xd4]
	ldr r0, [r10, #0xd4]
	ldr r1, [r10, #0xd8]
	mov r0, r0, lsl #6
	bl _s32_div_f
	rsb r8, r0, #0x40
	add r0, r8, #0x70
	mul r1, r0, r4
	rsb r0, r1, #0x80
	mov r6, #0x40
	mov r2, r0, lsl #0x10
	mov r3, r2, asr #0x10
	ldr r5, _02035338 ; =g3DPlaneCtrl
	str r6, [sp]
	ldr r0, [r5]
	mov r1, r9
	mov r2, r7
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	add r0, r8, #0x70
	mul r1, r0, r4
	rsb r0, r1, #0x80
	mov r1, r0, lsl #0x10
	str r6, [sp]
	mov r3, r1, asr #0x10
	ldr r0, [r5]
	mov r1, r9
	add r2, r7, #1
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	ldr r0, [r10, #0xd4]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, #2
	ldr r0, [r5]
	mov r1, r9
	mov r2, r7
	mov r3, r4
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
	ldr r0, [r5]
	mov r1, r9
	mov r3, r4
	add r2, r7, #1
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
	mov r0, #0x14
	strb r0, [r10, #0xce]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02035338: .word g3DPlaneCtrl
	arm_func_end FUN_020350dc

	arm_func_start FUN_0203533c
FUN_0203533c: ; 0x0203533C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	add r0, r0, #0xa70
	add r4, r0, #0x3000
	mov r0, #0x28
	mla r4, r1, r0, r4
	ldr r6, _02035440 ; =g3DGameMap
	mov r8, r2
	ldr r0, [r6]
	mov r1, r8
	mov r5, r3
	bl FUN_0205e1e8
	str r0, [r4, #4]
	cmp r0, #0
	bge _020353DC
	mov r7, #1
	ldr r0, [r6]
	mov r1, r8
	mov r2, r7
	bl FUN_0205d734
	str r0, [r4, #4]
	str r7, [sp]
	mov r2, #0
	str r2, [sp, #4]
	ldr r0, [r6]
	ldr r1, [r4, #4]
	mov r3, r8
	bl FUN_0205d9a4
	ldr r1, [r4, #4]
	ldr r0, [r6]
	mov r2, r8
	mov r3, r7
	bl FUN_0205dbdc
	ldr r0, [r6]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	strneb r7, [r0, #0x28]
	ldrh r0, [r4, #0xa]
	orr r0, r0, #0x10
	b _020353E4
_020353DC:
	ldrh r0, [r4, #0xa]
	orr r0, r0, #0x20
_020353E4:
	strh r0, [r4, #0xa]
	ldr r0, [r4, #4]
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r5, #0
	beq _02035428
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r0, _02035440 ; =g3DGameMap
	ldr r1, [r4, #4]
	ldr r0, [r0]
	ldr r2, _02035444 ; =0x0209A7F4
	bl FUN_0205dec8
_02035428:
	ldrh r1, [r4, #0xa]
	mov r0, #1
	orr r1, r1, #1
	strh r1, [r4, #0xa]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02035440: .word g3DGameMap
_02035444: .word unk_0209A7F4
	arm_func_end FUN_0203533c

	arm_func_start FUN_02035448
FUN_02035448: ; 0x02035448
	stmfd sp!, {r4, lr}
	add r0, r0, #0xa70
	add r2, r0, #0x3000
	mov r0, #0x28
	mla r4, r1, r0, r2
	ldrh r0, [r4, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r4, pc}
	tst r0, #0x20
	bne _02035480
	ldr r0, _02035494 ; =g3DGameMap
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_0205dd98
_02035480:
	mov r0, r4
	mov r1, #0
	mov r2, #0x28
	bl MI_CpuFill8
	ldmfd sp!, {r4, pc}
_02035494: .word g3DGameMap
	arm_func_end FUN_02035448

	arm_func_start FUN_02035498
FUN_02035498: ; 0x02035498
	stmfd sp!, {r3, r4, r5, lr}
	add r0, r0, #0xa70
	add r2, r0, #0x3000
	mov r0, #0x28
	mla r5, r1, r0, r2
	ldrh r0, [r5, #0xa]
	tst r0, #1
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r4, _020354FC ; =g3DGameMap
	ldr r1, [r5, #4]
	ldr r0, [r4]
	bl FUN_0205dd38
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #4]
	ldr r0, [r4]
	mov r2, #0x100
	bl FUN_0205dea8
	ldr r0, [r4]
	mov r1, #2
	bl FUN_0205e164
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020354FC: .word g3DGameMap
	arm_func_end FUN_02035498

	arm_func_start FUN_02035500
FUN_02035500: ; 0x02035500
	mov r2, #0x28
	mla r0, r1, r2, r0
	add r0, r0, #0x3a00
	ldrh r0, [r0, #0x7a]
	tst r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02035500

	arm_func_start FUN_0203551c
FUN_0203551c: ; 0x0203551C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	add r0, r0, #0xa70
	add r4, r0, #0x3000
	mov r0, #0x28
	mla r4, r1, r0, r4
	ldrh r0, [r4, #0xa]
	mov r6, r2
	mov r7, r3
	tst r0, #1
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, [sp, #0x30]
	cmp r0, #0
	subgt r5, r0, #1
	movgt r0, #0
	bgt _02035590
	cmp r7, #0
	movlt r5, #0
	movlt r0, r5
	blt _02035590
	ldr r0, _020355F0 ; 0x02099EF0
	mov r1, r7
	ldr r0, [r0]
	mov r2, #0
	bl FUN_ov132_021430b4
	ldrb r5, [r0, #0x1a]
	mov r0, r7
	bl FUN_ov16_020f07a8
_02035590:
	ldr r1, [sp, #0x28]
	mov r2, #0
	cmp r1, #0
	str r2, [sp, #0xc]
	addne r1, sp, #0x28
	strne r1, [sp, #0xc]
	ldr r1, [sp, #0x2c]
	str r2, [sp, #0x10]
	cmp r1, #0
	addne r1, sp, #0x2c
	strne r1, [sp, #0x10]
	str r0, [sp]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _020355F4 ; =g3DGameMap
	ldr r1, [r4, #4]
	ldr r0, [r0]
	mov r2, r6
	mov r3, r5
	bl FUN_0205dec8
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020355F0: .word gUtilGame
_020355F4: .word g3DGameMap
	arm_func_end FUN_0203551c

	arm_func_start FUN_020355f8
FUN_020355f8: ; 0x020355F8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x28
	mov r4, #0x28
	mul r4, r1, r4
	add r0, r0, #0xa70
	add r0, r0, #0x3000
	ldr r5, [sp, #0x48]
	adds r4, r0, r4
	mov r7, r2
	mov r6, r3
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r4, #0xa]
	tst r0, #1
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _02035754 ; =g3DGameMap
	ldr r2, [r4, #4]
	ldr r1, [r0]
	add r0, sp, #4
	bl FUN_0205e084
	ldr r12, [sp, #4]
	ldr r3, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x44]
	str r12, [sp, #0x1c]
	str r3, [sp, #0x20]
	str r2, [sp, #0x24]
	str r6, [sp, #0x10]
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	cmp r7, #0
	beq _02035690
	add r1, sp, #0x10
	add r0, sp, #0x1c
	mov r2, r1
	bl VEC_Add
_02035690:
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	beq _020356B4
	add r0, sp, #0x1c
	add r1, sp, #0x10
	bl VEC_Distance
	ldr r1, [sp, #0x4c]
	bl FX_Div
	mov r5, r0, asr #0xc
_020356B4:
	cmp r5, #0
	bne _020356E4
	ldr r1, [sp, #0x18]
	ldr r0, _02035754 ; =g3DGameMap
	str r1, [sp]
	ldr r0, [r0]
	ldr r1, [r4, #4]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl FUN_0205e01c
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020356E4:
	add r0, sp, #0x10
	add r1, sp, #0x1c
	mov r2, r0
	bl VEC_Subtract
	ldr r0, [sp, #0x10]
	mov r1, r5, lsl #0xc
	bl FX_Div
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r1, r5, lsl #0xc
	bl FX_Div
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, r5, lsl #0xc
	bl FX_Div
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x18]
	str r1, [r4, #0x10]
	ldr r0, [sp, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0x18]
	strh r5, [r4, #0xc]
	ldrh r0, [r4, #0xa]
	orr r0, r0, #0x100
	strh r0, [r4, #0xa]
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02035754: .word g3DGameMap
	arm_func_end FUN_020355f8

	arm_func_start FUN_02035758
FUN_02035758: ; 0x02035758
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1c
	mov r4, #0x28
	mul r4, r1, r4
	add r0, r0, #0xa70
	add r0, r0, #0x3000
	ldr r6, [sp, #0x40]
	ldr r5, [sp, #0x44]
	adds r4, r0, r4
	mov r8, r2
	mov r7, r3
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldrh r0, [r4, #0xa]
	tst r0, #1
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r5, #0
	bne _02035828
	ldr r0, _02035980 ; =0x0B60B60B
	mov r1, #0xb6
	umull r3, r10, r8, r0
	umull lr, r12, r7, r0
	umull r9, r5, r6, r0
	adds r3, r3, #0
	mla r10, r8, r1, r10
	mov r2, r8, asr #0x1f
	mla r10, r2, r0, r10
	adc r2, r10, #0x800
	mov r2, r2, lsl #4
	mla r12, r7, r1, r12
	mla r5, r6, r1, r5
	mov r3, r7, asr #0x1f
	mov r1, r6, asr #0x1f
	mla r12, r3, r0, r12
	adds r3, lr, #0
	adc r3, r12, #0x800
	mla r5, r1, r0, r5
	adds r0, r9, #0
	adc r0, r5, #0x800
	mov r0, r0, lsl #4
	mov r0, r0, lsr #0x10
	str r0, [sp]
	ldr r0, _02035984 ; =g3DGameMap
	mov r3, r3, lsl #4
	ldr r1, [r4, #4]
	ldr r0, [r0]
	mov r2, r2, lsr #0x10
	mov r3, r3, lsr #0x10
	bl FUN_0205e050
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02035828:
	ldr r0, _02035984 ; =g3DGameMap
	ldr r2, [r4, #4]
	ldr r1, [r0]
	add r0, sp, #4
	bl FUN_0205e0f4
	ldr r9, [sp, #4]
	mov r3, #0x1680000
	umull r0, lr, r9, r3
	mov r9, r9, asr #0x1f
	adds r0, r0, #0x80000
	mla lr, r9, r3, lr
	ldr r2, [sp, #8]
	adc lr, lr, #0
	umull r12, r9, r2, r3
	mov r2, r2, asr #0x1f
	mov r0, r0, lsr #0x14
	orr r0, r0, lr, lsl #12
	sub r0, r8, r0
	adds r8, r12, #0x80000
	mla r9, r2, r3, r9
	ldr r1, [sp, #0xc]
	adc r2, r9, #0
	mov r8, r8, lsr #0x14
	orr r8, r8, r2, lsl #12
	sub r2, r7, r8
	umull r8, r7, r1, r3
	mov r1, r1, asr #0x1f
	str r2, [sp, #0x14]
	adds r2, r8, #0x80000
	mla r7, r1, r3, r7
	adc r1, r7, #0
	mov r2, r2, lsr #0x14
	orr r2, r2, r1, lsl #12
	sub r2, r6, r2
	mov r1, r5
	str r0, [sp, #0x10]
	str r2, [sp, #0x18]
	bl _s32_div_f
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r1, r5
	bl _s32_div_f
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, r5
	bl _s32_div_f
	ldr r12, [sp, #0x10]
	ldr r2, _02035980 ; =0x0B60B60B
	ldr r8, [sp, #0x14]
	umull r9, lr, r12, r2
	mov r3, #0xb6
	mla lr, r12, r3, lr
	mov r1, r12, asr #0x1f
	mla lr, r1, r2, lr
	adds r9, r9, #0
	adc r1, lr, #0x800
	mov r1, r1, lsl #4
	mov r1, r1, lsr #0x10
	str r1, [sp, #0x10]
	str r1, [r4, #0x1c]
	umull r12, r1, r8, r2
	mla r1, r8, r3, r1
	mov r7, r8, asr #0x1f
	mla r1, r7, r2, r1
	adds r12, r12, #0
	adc r1, r1, #0x800
	mov r1, r1, lsl #4
	mov r1, r1, lsr #0x10
	str r1, [sp, #0x14]
	str r1, [r4, #0x20]
	umull r7, r1, r0, r2
	mla r1, r0, r3, r1
	mov r6, r0, asr #0x1f
	mla r1, r6, r2, r1
	adds r0, r7, #0
	adc r0, r1, #0x800
	mov r0, r0, lsl #4
	mov r0, r0, lsr #0x10
	str r0, [r4, #0x24]
	strh r5, [r4, #0xe]
	str r0, [sp, #0x18]
	ldrh r0, [r4, #0xa]
	orr r0, r0, #0x200
	strh r0, [r4, #0xa]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02035980: .word 0x0B60B60B
_02035984: .word g3DGameMap
	arm_func_end FUN_02035758

	arm_func_start FUN_02035988
FUN_02035988: ; 0x02035988
	stmfd sp!, {r3, lr}
	add r0, r0, #0xa70
	add r12, r0, #0x3000
	mov r0, #0x28
	mla r12, r1, r0, r12
	ldrh r0, [r12, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020359BC ; =g3DGameMap
	ldr r1, [r12, #4]
	ldr r0, [r0]
	bl FUN_0205e254
	ldmfd sp!, {r3, pc}
_020359BC: .word g3DGameMap
	arm_func_end FUN_02035988

	arm_func_start FUN_020359c0
FUN_020359c0: ; 0x020359C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r11, #0x28
	mov r9, #0
	add r0, r10, #0xa70
	add r8, r0, #0x3000
	mov r7, r9
	ldr r6, _02035A38 ; =g3DGameMap
	mov r4, r11
	mov r5, r11
	b _02035A2C
_020359EC:
	mla r1, r9, r5, r10
	add r0, r1, #0x3a00
	ldrh r0, [r0, #0x7a]
	tst r0, #1
	beq _02035A28
	tst r0, #0x20
	bne _02035A18
	add r1, r1, #0x3000
	ldr r0, [r6]
	ldr r1, [r1, #0xa74]
	bl FUN_0205dd98
_02035A18:
	mla r0, r9, r4, r8
	mov r1, r7
	mov r2, r11
	bl MI_CpuFill8
_02035A28:
	add r9, r9, #1
_02035A2C:
	cmp r9, #2
	blt _020359EC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02035A38: .word g3DGameMap
	arm_func_end FUN_020359c0

	arm_func_start FUN_02035a3c
FUN_02035a3c: ; 0x02035A3C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x34
	mov r9, r0
	ldr r4, _02035C40 ; =g3DGameMap
	mov r7, #0
	b _02035C30
_02035A54:
	add r0, r9, #0xa70
	add r1, r0, #0x3000
	mov r0, #0x28
	mla r6, r7, r0, r1
	ldr r1, [r6, #4]
	cmp r1, #0
	beq _02035C2C
	ldrh r0, [r6, #0xa]
	tst r0, #0x10
	beq _02035A98
	ldr r0, [r4]
	bl FUN_0205de18
	cmp r0, #0
	ldreqh r1, [r6, #0xa]
	ldreq r0, _02035C44 ; =0x0000FFEF
	andeq r0, r1, r0
	streqh r0, [r6, #0xa]
_02035A98:
	ldr r1, [r6, #4]
	ldr r0, [r4]
	bl FUN_0205cc5c
	cmp r0, #0
	moveq r0, #0
	beq _02035AC0
	ldrb r0, [r0, #0x24]
	cmp r0, #3
	moveq r0, #1
	movne r0, #0
_02035AC0:
	cmp r0, #0
	ldrneh r0, [r6, #0xa]
	orrne r0, r0, #2
	strneh r0, [r6, #0xa]
	ldrh r0, [r6, #0xa]
	tst r0, #0x100
	beq _02035B80
	ldr r1, [r4]
	ldr r2, [r6, #4]
	add r0, sp, #0x10
	bl FUN_0205e084
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	str r2, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r0, [sp, #0x30]
	mov r8, #0
	add r10, r9, #0x1000
	add r5, sp, #0x28
	b _02035B40
_02035B14:
	mov r0, r5
	mov r2, r5
	add r1, r6, #0x10
	bl VEC_Add
	ldrh r0, [r6, #0xc]
	sub r0, r0, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	strh r0, [r6, #0xc]
	beq _02035B4C
	add r8, r8, #1
_02035B40:
	ldr r0, [r10, #0x3e0]
	cmp r8, r0
	blo _02035B14
_02035B4C:
	ldr r0, [sp, #0x30]
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r6, #4]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	bl FUN_0205e01c
	ldrh r0, [r6, #0xc]
	cmp r0, #0
	ldreqh r1, [r6, #0xa]
	ldreq r0, _02035C48 ; =0x0000FEFF
	andeq r0, r1, r0
	streqh r0, [r6, #0xa]
_02035B80:
	ldrh r0, [r6, #0xa]
	tst r0, #0x200
	beq _02035C2C
	ldr r1, [r4]
	ldr r2, [r6, #4]
	add r0, sp, #4
	bl FUN_0205e0f4
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	str r2, [sp, #0x1c]
	str r0, [sp, #0x24]
	str r1, [sp, #0x20]
	mov r8, #0
	add r0, r9, #0x1000
	b _02035BEC
_02035BC0:
	ldrh r1, [r6, #0xe]
	ldr r3, [sp, #0x20]
	ldr r2, [r6, #0x20]
	sub r1, r1, #1
	mov r1, r1, lsl #0x10
	add r2, r3, r2
	movs r1, r1, lsr #0x10
	str r2, [sp, #0x20]
	strh r1, [r6, #0xe]
	beq _02035BF8
	add r8, r8, #1
_02035BEC:
	ldr r1, [r0, #0x3e0]
	cmp r8, r1
	blo _02035BC0
_02035BF8:
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r6, #4]
	ldr r3, [sp, #0x20]
	bl FUN_0205e050
	ldrh r0, [r6, #0xe]
	cmp r0, #0
	ldreqh r1, [r6, #0xa]
	ldreq r0, _02035C4C ; =0x0000FDFF
	andeq r0, r1, r0
	streqh r0, [r6, #0xa]
_02035C2C:
	add r7, r7, #1
_02035C30:
	cmp r7, #2
	blt _02035A54
	add sp, sp, #0x34
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02035C40: .word g3DGameMap
_02035C44: .word 0x0000FFEF
_02035C48: .word 0x0000FEFF
_02035C4C: .word 0x0000FDFF
	arm_func_end FUN_02035a3c

	arm_func_start FUN_02035c50
FUN_02035c50: ; 0x02035C50
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r12, #0x28
_02035C5C:
	mla r4, r5, r12, r0
	add r3, r4, #0x1000
	ldr r3, [r3, #0x570]
	add lr, r4, #0x570
	cmp r1, r3
	addeq r3, r4, #0x1500
	ldreqsh r3, [r3, #0x78]
	cmpeq r2, r3
	addeq r0, lr, #0x1000
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r5, r5, #1
	cmp r5, #6
	blt _02035C5C
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02035c50

	arm_func_start FUN_02035c98
FUN_02035c98: ; 0x02035C98
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	movs r10, r1
	mov r9, r0
	mov r8, r2
	mov r7, r3
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r6, #0
	mov r0, r10
	mov r1, r6
	bl FUN_ov16_020efa9c
	movs r5, r0
	addeq sp, sp, #0xc
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r9
	mov r1, r6
	mov r2, r6
	bl FUN_02035c50
	mov r4, r0
	str r10, [r4]
	mov r0, r5
	strh r8, [r4, #8]
	bl FUN_0206cbf8
	mov r5, r0
	ldr r0, [r9]
	bl _ZN14CScreenManager15getCurSceneMainEv
	cmp r0, #0x84
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	movne r6, #1
	ldr r0, _02035D60 ; =g3DGameChar
	str r6, [sp, #8]
	ldr r0, [r0]
	mov r1, r5
	mov r2, r8
	mov r3, r7
	bl FUN_0205a828
	str r0, [r4, #4]
	cmp r0, #0
	movlt r0, #0
	ldrgeh r0, [r4, #0xa]
	orrge r0, r0, #0x11
	strgeh r0, [r4, #0xa]
	ldrgesh r0, [r4, #8]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02035D60: .word g3DGameChar
	arm_func_end FUN_02035c98

	arm_func_start FUN_02035d64
FUN_02035d64: ; 0x02035D64
	stmfd sp!, {r4, lr}
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_02035c50
	movs r4, r0
	ldmeqfd sp!, {r4, pc}
	ldrh r0, [r4, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r4, pc}
	ldr r0, _02035DAC ; =g3DGameChar
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_0205aa80
	mov r0, r4
	mov r1, #0
	mov r2, #0x28
	bl MI_CpuFill8
	ldmfd sp!, {r4, pc}
_02035DAC: .word g3DGameChar
	arm_func_end FUN_02035d64

	arm_func_start FUN_02035db0
FUN_02035db0: ; 0x02035DB0
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_02035c50
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r1, [r0, #0xa]
	tst r1, #1
	ldmeqfd sp!, {r3, pc}
	ldr r2, _02035DE8 ; =g3DGameChar
	ldr r1, [r0, #4]
	ldr r0, [r2]
	bl FUN_0205a9f8
	ldmfd sp!, {r3, pc}
_02035DE8: .word g3DGameChar
	arm_func_end FUN_02035db0

	arm_func_start FUN_02035dec
FUN_02035dec: ; 0x02035DEC
	stmfd sp!, {r4, lr}
	mov r4, r3
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_02035c50
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrh r1, [r0, #0xa]
	tst r1, #1
	ldmeqfd sp!, {r4, pc}
	ldr r2, _02035E2C ; =g3DGameChar
	ldr r1, [r0, #4]
	ldr r0, [r2]
	mov r2, r4
	bl FUN_0205adf8
	ldmfd sp!, {r4, pc}
_02035E2C: .word g3DGameChar
	arm_func_end FUN_02035dec

	arm_func_start FUN_02035e30
FUN_02035e30: ; 0x02035E30
	stmfd sp!, {r4, lr}
	mov r4, r3
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_02035c50
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrh r1, [r0, #0xa]
	tst r1, #1
	ldmeqfd sp!, {r4, pc}
	ldr r2, _02035E70 ; =g3DGameChar
	ldr r1, [r0, #4]
	ldr r0, [r2]
	rsb r2, r4, r4, lsl #3
	bl FUN_0205ada4
	ldmfd sp!, {r4, pc}
_02035E70: .word g3DGameChar
	arm_func_end FUN_02035e30

	arm_func_start FUN_02035e74
FUN_02035e74: ; 0x02035E74
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x28
	ldr r5, [sp, #0x4c]
	cmp r1, #0
	mov r6, r3
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_02035c50
	movs r4, r0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r4, #0xa]
	tst r0, #1
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _02035FE0 ; =g3DGameChar
	ldr r1, [r4, #4]
	ldr r0, [r7]
	mov r2, #1
	bl FUN_0205acb0
	ldr r1, [r7]
	ldr r2, [r4, #4]
	add r0, sp, #4
	bl FUN_0205afb4
	ldr r12, [sp, #4]
	ldr r7, [sp, #8]
	ldr r3, [sp, #0xc]
	ldr r2, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #0x48]
	str r12, [sp, #0x1c]
	str r7, [sp, #0x20]
	str r3, [sp, #0x24]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	cmp r6, #0
	beq _02035F1C
	add r1, sp, #0x10
	add r0, sp, #0x1c
	mov r2, r1
	bl VEC_Add
_02035F1C:
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _02035F40
	add r0, sp, #0x1c
	add r1, sp, #0x10
	bl VEC_Distance
	ldr r1, [sp, #0x50]
	bl FX_Div
	mov r5, r0, asr #0xc
_02035F40:
	cmp r5, #0
	bne _02035F70
	ldr r1, [sp, #0x18]
	ldr r0, _02035FE0 ; =g3DGameChar
	str r1, [sp]
	ldr r0, [r0]
	ldr r1, [r4, #4]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl FUN_0205aea0
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02035F70:
	add r0, sp, #0x10
	add r1, sp, #0x1c
	mov r2, r0
	bl VEC_Subtract
	ldr r0, [sp, #0x10]
	mov r1, r5, lsl #0xc
	bl FX_Div
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r1, r5, lsl #0xc
	bl FX_Div
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, r5, lsl #0xc
	bl FX_Div
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x18]
	str r1, [r4, #0x10]
	ldr r0, [sp, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0x18]
	strh r5, [r4, #0xc]
	ldrh r0, [r4, #0xa]
	orr r0, r0, #0x100
	strh r0, [r4, #0xa]
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02035FE0: .word g3DGameChar
	arm_func_end FUN_02035e74

	arm_func_start FUN_02035fe4
FUN_02035fe4: ; 0x02035FE4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	cmp r1, #0
	mov r5, r3
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	bl FUN_02035c50
	movs r4, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldrh r0, [r4, #0xa]
	tst r0, #1
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _02036070
	ldr r0, _02036110 ; =0x0B60B60B
	mov r1, #0xb6
	umull r12, r6, r5, r0
	mla r6, r5, r1, r6
	mov r3, r5, asr #0x1f
	mla r6, r3, r0, r6
	mov r2, #0
	adds r0, r12, #0
	adc r0, r6, #0x800
	mov r3, r0, lsl #4
	ldr r1, _02036114 ; =g3DGameChar
	str r2, [sp]
	ldr r0, [r1]
	ldr r1, [r4, #4]
	mov r3, r3, lsr #0x10
	bl FUN_0205aefc
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02036070:
	ldr r0, _02036114 ; =g3DGameChar
	ldr r2, [r4, #4]
	ldr r1, [r0]
	add r0, sp, #4
	bl FUN_0205b04c
	ldr lr, [sp, #8]
	mov r0, #0x1680000
	umull r3, r2, lr, r0
	mov r1, lr, asr #0x1f
	mla r2, r1, r0, r2
	adds r3, r3, #0x80000
	adc r0, r2, #0
	mov r2, r3, lsr #0x14
	ldr r6, [sp, #4]
	ldr r12, [sp, #0xc]
	orr r2, r2, r0, lsl #12
	ldr r1, [sp, #0x30]
	sub r0, r5, r2
	str r6, [sp, #0x10]
	str lr, [sp, #0x14]
	str r12, [sp, #0x18]
	bl _s32_div_f
	ldr r1, _02036110 ; =0x0B60B60B
	mov r2, #0xb6
	umull r5, r3, r0, r1
	mla r3, r0, r2, r3
	mov r0, r0, asr #0x1f
	mla r3, r0, r1, r3
	adds r0, r5, #0
	adc r0, r3, #0x800
	mov r0, r0, lsl #4
	mov r1, r0, lsr #0x10
	ldr r0, [sp, #0x30]
	str r1, [r4, #0x20]
	strh r0, [r4, #0xe]
	ldrh r0, [r4, #0xa]
	orr r0, r0, #0x200
	strh r0, [r4, #0xa]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02036110: .word 0x0B60B60B
_02036114: .word g3DGameChar
	arm_func_end FUN_02035fe4

	arm_func_start FUN_02036118
FUN_02036118: ; 0x02036118
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r3
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_02035c50
	cmp r0, #0
	beq _02036144
	ldrh r1, [r0, #0xa]
	tst r1, #1
	bne _0203614C
_02036144:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0203614C:
	ldr r2, _020361B4 ; =g3DGameChar
	ldr r1, [r0, #4]
	ldr r0, [r2]
	bl FUN_0205ad10
	mov r7, #0
	mov r6, r0
	mov r8, r7
	ldr r5, [sp, #0x18]
	b _020361A4
_02036170:
	ldr r1, [r5, r8, lsl #2]
	mov r0, r6
	bl FUN_ov16_020fb110
	mov r1, r0
	mov r0, r6
	bl FUN_ov16_020fb050
	ldr r3, [r0, #0x10]
	ldr r2, [r0, #0xc]
	ldr r1, [r0, #0x14]
	sub r0, r3, r2
	bl FX_Div
	add r7, r7, r0, asr #12
	add r8, r8, #1
_020361A4:
	cmp r8, r4
	blt _02036170
	mov r0, r7
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020361B4: .word g3DGameChar
	arm_func_end FUN_02036118

	arm_func_start FUN_020361b8
FUN_020361b8: ; 0x020361B8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r3
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_02035c50
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrh r0, [r4, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _02036208 ; =g3DGameChar
	ldr r1, [r4, #4]
	ldr r0, [r0]
	ldr r3, [sp, #0x10]
	mov r2, r5
	bl FUN_0205ab68
	ldrh r0, [r4, #0xa]
	orr r0, r0, #0x10
	strh r0, [r4, #0xa]
	ldmfd sp!, {r3, r4, r5, pc}
_02036208: .word g3DGameChar
	arm_func_end FUN_020361b8

	arm_func_start FUN_0203620c
FUN_0203620c: ; 0x0203620C
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_02035c50
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r1, [r0, #0xa]
	tst r1, #1
	ldmeqfd sp!, {r3, pc}
	ldr r2, _02036244 ; =g3DGameChar
	ldr r1, [r0, #4]
	ldr r0, [r2]
	bl FUN_0205a9f8
	ldmfd sp!, {r3, pc}
_02036244: .word g3DGameChar
	arm_func_end FUN_0203620c

	arm_func_start FUN_02036248
FUN_02036248: ; 0x02036248
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r3
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_02035c50
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrh r0, [r4, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _020362AC ; =g3DGameChar
	ldr r1, [r4, #4]
	ldr r0, [r0]
	ldr r3, [sp, #0x10]
	mov r2, r5
	bl FUN_0205b0e4
	ldr r0, [sp, #0x10]
	cmp r0, #1
	ldreqh r0, [r4, #0xa]
	orreq r0, r0, #4
	streqh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	orr r0, r0, #8
	strh r0, [r4, #0xa]
	ldmfd sp!, {r3, r4, r5, pc}
_020362AC: .word g3DGameChar
	arm_func_end FUN_02036248

	arm_func_start FUN_020362b0
FUN_020362b0: ; 0x020362B0
	stmfd sp!, {r3, lr}
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_02035c50
	cmp r0, #0
	beq _020362D8
	ldrh r0, [r0, #0xa]
	tst r0, #1
	ldmnefd sp!, {r3, pc}
_020362D8:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020362b0

	arm_func_start FUN_020362e0
FUN_020362e0: ; 0x020362E0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r6, #0
	add r0, r0, #0x570
	mov r9, #0x28
	add r4, r0, #0x1000
	mov r10, r6
	ldr r8, _02036344 ; =g3DGameChar
	mov r7, r9
	b _02036338
_02036304:
	mul r1, r6, r7
	ldr r0, [r4, r1]
	add r5, r4, r1
	cmp r0, #0
	beq _02036334
	ldr r0, [r8]
	ldr r1, [r5, #4]
	bl FUN_0205aa80
	mov r0, r5
	mov r1, r10
	mov r2, r9
	bl MI_CpuFill8
_02036334:
	add r6, r6, #1
_02036338:
	cmp r6, #6
	blt _02036304
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02036344: .word g3DGameChar
	arm_func_end FUN_020362e0

	arm_func_start FUN_02036348
FUN_02036348: ; 0x02036348
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x40
	mov r9, r0
	ldr r4, _0203657C ; =g3DGameChar
	mov r7, #0
	b _0203656C
_02036360:
	mov r0, #0x28
	mul r1, r7, r0
	add r0, r9, #0x570
	add r2, r0, #0x1000
	ldr r0, [r2, r1]
	add r6, r2, r1
	cmp r0, #0
	beq _02036568
	ldrh r0, [r6, #0xa]
	tst r0, #0x10
	beq _020363AC
	ldr r0, [r4]
	ldr r1, [r6, #4]
	bl FUN_0205ac70
	cmp r0, #0
	ldreqh r1, [r6, #0xa]
	ldreq r0, _02036580 ; =0x0000FFEF
	andeq r0, r1, r0
	streqh r0, [r6, #0xa]
_020363AC:
	ldr r0, [r4]
	ldr r1, [r6, #4]
	bl FUN_0205b264
	cmp r0, #0
	ldrneh r0, [r6, #0xa]
	orrne r0, r0, #2
	strneh r0, [r6, #0xa]
	ldrh r0, [r6, #0xa]
	tst r0, #8
	beq _020363FC
	tst r0, #4
	bne _020363FC
	ldr r0, [r4]
	ldr r1, [r6, #4]
	bl FUN_0205b204
	cmp r0, #0
	ldrneh r1, [r6, #0xa]
	ldrne r0, _02036584 ; =0x0000FFF7
	andne r0, r1, r0
	strneh r0, [r6, #0xa]
_020363FC:
	ldrh r0, [r6, #0xa]
	tst r0, #0x100
	beq _020364AC
	ldr r1, [r4]
	ldr r2, [r6, #4]
	add r0, sp, #0x1c
	bl FUN_0205afb4
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r2, [sp, #0x34]
	str r1, [sp, #0x38]
	str r0, [sp, #0x3c]
	mov r8, #0
	add r10, r9, #0x1000
	add r5, sp, #0x34
	b _0203646C
_02036440:
	mov r0, r5
	mov r2, r5
	add r1, r6, #0x10
	bl VEC_Add
	ldrh r0, [r6, #0xc]
	sub r0, r0, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	strh r0, [r6, #0xc]
	beq _02036478
	add r8, r8, #1
_0203646C:
	ldr r0, [r10, #0x3e0]
	cmp r8, r0
	blo _02036440
_02036478:
	ldr r0, [sp, #0x3c]
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r6, #4]
	ldr r2, [sp, #0x34]
	ldr r3, [sp, #0x38]
	bl FUN_0205aea0
	ldrh r0, [r6, #0xc]
	cmp r0, #0
	ldreqh r1, [r6, #0xa]
	ldreq r0, _02036588 ; =0x0000FEFF
	andeq r0, r1, r0
	streqh r0, [r6, #0xa]
_020364AC:
	ldrh r0, [r6, #0xa]
	tst r0, #0x200
	beq _02036568
	ldr r1, [r4]
	ldr r2, [r6, #4]
	add r0, sp, #0x10
	bl FUN_0205b04c
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	str r2, [sp, #0x28]
	str r0, [sp, #0x30]
	str r1, [sp, #0x2c]
	mov r8, #0
	add r0, r9, #0x1000
	b _02036518
_020364EC:
	ldrh r1, [r6, #0xe]
	ldr r3, [sp, #0x2c]
	ldr r2, [r6, #0x20]
	sub r1, r1, #1
	mov r1, r1, lsl #0x10
	add r2, r3, r2
	movs r1, r1, lsr #0x10
	str r2, [sp, #0x2c]
	strh r1, [r6, #0xe]
	beq _02036524
	add r8, r8, #1
_02036518:
	ldr r1, [r0, #0x3e0]
	cmp r8, r1
	blo _020364EC
_02036524:
	add r0, sp, #0x28
	add r3, sp, #4
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, [r6, #4]
	ldr r0, [r4]
	ldr r2, [sp, #0xc]
	str r2, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl FUN_0205aefc
	ldrh r0, [r6, #0xe]
	cmp r0, #0
	ldreqh r1, [r6, #0xa]
	ldreq r0, _0203658C ; =0x0000FDFF
	andeq r0, r1, r0
	streqh r0, [r6, #0xa]
_02036568:
	add r7, r7, #1
_0203656C:
	cmp r7, #6
	blt _02036360
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0203657C: .word g3DGameChar
_02036580: .word 0x0000FFEF
_02036584: .word 0x0000FFF7
_02036588: .word 0x0000FEFF
_0203658C: .word 0x0000FDFF
	arm_func_end FUN_02036348

	arm_func_start FUN_02036590
FUN_02036590: ; 0x02036590
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x104
	mov r3, #0x28
	mul r6, r1, r3
	add r0, r0, #0xf60
	add r5, sp, #4
	add r7, r0, #0x1000
	ldr r4, _020365FC ; =g3DGameMapObject
	ldr r1, _02036600 ; =0x0208FDF4
	ldr r0, [r4]
	mov r9, r2
	mov r3, r5
	add r8, r7, r6
	bl FUN_0205e674
	str r9, [r7, r6]
	mov r2, #1
	ldr r0, [r4]
	mov r1, r5
	mov r3, r2
	str r2, [sp]
	bl FUN_0205f26c
	str r0, [r8, #4]
	ldrh r0, [r8, #0xa]
	orr r0, r0, #0x11
	strh r0, [r8, #0xa]
	add sp, sp, #0x104
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020365FC: .word g3DGameMapObject
_02036600: .word unk_0208FDF4
	arm_func_end FUN_02036590

	arm_func_start FUN_02036604
FUN_02036604: ; 0x02036604
	stmfd sp!, {r3, r4, r5, lr}
	add r0, r0, #0xf60
	add r0, r0, #0x1000
	mov r4, #0x28
	mla r5, r1, r4, r0
	ldrh r0, [r5, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _02036648 ; =g3DGameMapObject
	ldr r1, [r5, #4]
	ldr r0, [r0]
	bl FUN_0205f5ec
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
_02036648: .word g3DGameMapObject
	arm_func_end FUN_02036604

	arm_func_start FUN_0203664c
FUN_0203664c: ; 0x0203664C
	stmfd sp!, {r3, r4, r5, lr}
	add r0, r0, #0xf60
	add r2, r0, #0x1000
	mov r0, #0x28
	mla r5, r1, r0, r2
	ldrh r0, [r5, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r4, _0203669C ; =g3DGameMapObject
	ldr r1, [r5, #4]
	ldr r0, [r4]
	bl FUN_0205f56c
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r5, #4]
	mov r2, #0x3000
	mov r3, #8
	bl FUN_0205fd68
	ldmfd sp!, {r3, r4, r5, pc}
_0203669C: .word g3DGameMapObject
	arm_func_end FUN_0203664c

	arm_func_start FUN_020366a0
FUN_020366a0: ; 0x020366A0
	stmfd sp!, {r3, lr}
	add r0, r0, #0xf60
	add r3, r0, #0x1000
	mov r0, #0x28
	mla r3, r1, r0, r3
	ldrh r0, [r3, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020366D4 ; =g3DGameMapObject
	ldr r1, [r3, #4]
	ldr r0, [r0]
	bl FUN_0205fdf0
	ldmfd sp!, {r3, pc}
_020366D4: .word g3DGameMapObject
	arm_func_end FUN_020366a0

	arm_func_start FUN_020366d8
FUN_020366d8: ; 0x020366D8
	stmfd sp!, {r3, lr}
	add r0, r0, #0xf60
	add r3, r0, #0x1000
	mov r0, #0x28
	mla r3, r1, r0, r3
	ldrh r0, [r3, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, pc}
	ldr r0, _02036710 ; =g3DGameMapObject
	ldr r1, [r3, #4]
	ldr r0, [r0]
	add r2, r2, r2, lsl #1
	bl FUN_0205fdac
	ldmfd sp!, {r3, pc}
_02036710: .word g3DGameMapObject
	arm_func_end FUN_020366d8

	arm_func_start FUN_02036714
FUN_02036714: ; 0x02036714
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	add r0, r0, #0xf60
	add r4, r0, #0x1000
	mov r0, #0x28
	mla r4, r1, r0, r4
	ldrh r0, [r4, #0xa]
	ldr r5, [sp, #0x3c]
	mov r7, r2
	tst r0, #1
	mov r6, r3
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r8, _02036818 ; =g3DGameMapObject
	ldr r1, [r4, #4]
	ldr r0, [r8]
	mov r2, #1
	bl FUN_0205f9c0
	cmp r5, #0
	bne _02036788
	ldr r0, [sp, #0x38]
	mov r2, r7
	str r0, [sp]
	ldr r0, [r8]
	ldr r1, [r4, #4]
	mov r3, r6
	bl FUN_0205fa48
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02036788:
	ldr r1, [r8]
	ldr r2, [r4, #4]
	add r0, sp, #4
	bl FUN_0205fb80
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	sub r3, r6, r1
	sub r0, r7, r0
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x38]
	str r0, [sp, #0x10]
	sub r2, r1, r2
	str r3, [sp, #0x14]
	mov r1, r5, lsl #0xc
	str r2, [sp, #0x18]
	bl FX_Div
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r1, r5, lsl #0xc
	bl FX_Div
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, r5, lsl #0xc
	bl FX_Div
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	str r2, [r4, #0x10]
	str r1, [r4, #0x14]
	str r0, [r4, #0x18]
	strh r5, [r4, #0xc]
	ldrh r1, [r4, #0xa]
	str r0, [sp, #0x18]
	orr r0, r1, #0x100
	strh r0, [r4, #0xa]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02036818: .word g3DGameMapObject
	arm_func_end FUN_02036714

	arm_func_start FUN_0203681c
FUN_0203681c: ; 0x0203681C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x104
	add r0, r0, #0xf60
	add r3, r0, #0x1000
	mov r0, #0x28
	mla r6, r1, r0, r3
	ldrh r0, [r6, #0xa]
	tst r0, #1
	addeq sp, sp, #0x104
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	add r5, sp, #4
	str r5, [sp]
	ldr r4, _02036888 ; =g3DGameMapObject
	ldr r3, [r6]
	ldr r0, [r4]
	ldr r1, _0203688C ; =0x0208FDFC
	bl FUN_0205e6c0
	ldr r0, [r4]
	ldr r1, [r6, #4]
	mov r2, r5
	mov r3, #1
	bl FUN_0205f790
	ldrh r0, [r6, #0xa]
	orr r0, r0, #0x10
	strh r0, [r6, #0xa]
	add sp, sp, #0x104
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02036888: .word g3DGameMapObject
_0203688C: .word unk_0208FDFC
	arm_func_end FUN_0203681c

	arm_func_start FUN_02036890
FUN_02036890: ; 0x02036890
	stmfd sp!, {r3, lr}
	add r0, r0, #0xf60
	add r2, r0, #0x1000
	mov r0, #0x28
	mla r2, r1, r0, r2
	ldrh r0, [r2, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020368C4 ; =g3DGameMapObject
	ldr r1, [r2, #4]
	ldr r0, [r0]
	bl FUN_0205f56c
	ldmfd sp!, {r3, pc}
_020368C4: .word g3DGameMapObject
	arm_func_end FUN_02036890

	arm_func_start FUN_020368c8
FUN_020368c8: ; 0x020368C8
	stmfd sp!, {r3, r4, r5, lr}
	add r0, r0, #0xf60
	add r12, r0, #0x1000
	mov r0, #0x28
	mla r4, r1, r0, r12
	ldrh r0, [r4, #0xa]
	mov r5, r3
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0203691C ; =g3DGameMapObject
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_0205fc78
	cmp r5, #1
	ldreqh r0, [r4, #0xa]
	orreq r0, r0, #4
	streqh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	orr r0, r0, #8
	strh r0, [r4, #0xa]
	ldmfd sp!, {r3, r4, r5, pc}
_0203691C: .word g3DGameMapObject
	arm_func_end FUN_020368c8

	arm_func_start FUN_02036920
FUN_02036920: ; 0x02036920
	mov r2, #0x28
	mla r0, r1, r2, r0
	add r0, r0, #0x1f00
	ldrh r0, [r0, #0x6a]
	bx lr
	arm_func_end FUN_02036920

	arm_func_start FUN_02036934
FUN_02036934: ; 0x02036934
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r6, #0
	add r0, r0, #0xf60
	mov r9, #0x28
	add r4, r0, #0x1000
	mov r10, r6
	ldr r8, _02036994 ; =g3DGameMapObject
	mov r7, r9
	b _02036988
_02036958:
	mla r5, r6, r7, r4
	ldrh r0, [r5, #0xa]
	tst r0, #1
	beq _02036984
	ldr r0, [r8]
	ldr r1, [r5, #4]
	bl FUN_0205f5ec
	mov r0, r5
	mov r1, r10
	mov r2, r9
	bl MI_CpuFill8
_02036984:
	add r6, r6, #1
_02036988:
	cmp r6, #4
	blt _02036958
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02036994: .word g3DGameMapObject
	arm_func_end FUN_02036934

	arm_func_start FUN_02036998
FUN_02036998: ; 0x02036998
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x20
	mov r9, r0
	ldr r4, _02036B2C ; =g3DGameMapObject
	mov r7, #0
	b _02036B1C
_020369B0:
	add r0, r9, #0xf60
	add r1, r0, #0x1000
	mov r0, #0x28
	mla r6, r7, r0, r1
	ldrh r0, [r6, #0xa]
	tst r0, #1
	beq _02036B18
	tst r0, #0x10
	beq _020369F4
	ldr r0, [r4]
	ldr r1, [r6, #4]
	bl FUN_0205f990
	cmp r0, #0
	ldreqh r1, [r6, #0xa]
	ldreq r0, _02036B30 ; =0x0000FFEF
	andeq r0, r1, r0
	streqh r0, [r6, #0xa]
_020369F4:
	ldr r1, [r6, #4]
	mov r5, #0
	ldr r0, [r4]
	add r2, sp, #4
	str r5, [sp, #4]
	bl FUN_0205e754
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02036A24
	ldrb r0, [r0, #0xc]
	cmp r0, #3
	moveq r5, #1
_02036A24:
	cmp r5, #0
	ldrneh r0, [r6, #0xa]
	orrne r0, r0, #2
	strneh r0, [r6, #0xa]
	ldrh r0, [r6, #0xa]
	tst r0, #8
	beq _02036A68
	tst r0, #4
	bne _02036A68
	ldr r0, [r4]
	ldr r1, [r6, #4]
	bl FUN_0205fd1c
	cmp r0, #0
	ldrneh r1, [r6, #0xa]
	ldrne r0, _02036B34 ; =0x0000FFF7
	andne r0, r1, r0
	strneh r0, [r6, #0xa]
_02036A68:
	ldrh r0, [r6, #0xa]
	tst r0, #0x100
	beq _02036B18
	ldr r1, [r4]
	ldr r2, [r6, #4]
	add r0, sp, #8
	bl FUN_0205fb80
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	mov r8, #0
	add r10, r9, #0x1000
	add r5, sp, #0x14
	b _02036AD8
_02036AAC:
	mov r0, r5
	mov r2, r5
	add r1, r6, #0x10
	bl VEC_Add
	ldrh r0, [r6, #0xc]
	sub r0, r0, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	strh r0, [r6, #0xc]
	beq _02036AE4
	add r8, r8, #1
_02036AD8:
	ldr r0, [r10, #0x3e0]
	cmp r8, r0
	blo _02036AAC
_02036AE4:
	ldr r0, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r6, #4]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	bl FUN_0205fa48
	ldrh r0, [r6, #0xc]
	cmp r0, #0
	ldreqh r1, [r6, #0xa]
	ldreq r0, _02036B38 ; =0x0000FEFF
	andeq r0, r1, r0
	streqh r0, [r6, #0xa]
_02036B18:
	add r7, r7, #1
_02036B1C:
	cmp r7, #4
	blt _020369B0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02036B2C: .word g3DGameMapObject
_02036B30: .word 0x0000FFEF
_02036B34: .word 0x0000FFF7
_02036B38: .word 0x0000FEFF
	arm_func_end FUN_02036998

	arm_func_start FUN_02036b3c
FUN_02036b3c: ; 0x02036B3C
	stmfd sp!, {r4, lr}
	mov r3, #0x28
	mul r3, r1, r3
	add r1, r0, #0x2000
	ldr r0, [r1, r3]
	add r4, r1, r3
	cmp r0, r2
	ldmeqfd sp!, {r4, pc}
	ldr r0, _02036B88 ; =0x02099F10
	str r2, [r4]
	ldr r0, [r0]
	mov r1, r2
	bl FUN_0205c394
	str r0, [r4, #4]
	cmp r0, #0
	ldrgeh r0, [r4, #0xa]
	orrge r0, r0, #0x11
	strgeh r0, [r4, #0xa]
	ldmfd sp!, {r4, pc}
_02036B88: .word g3DGameEffect
	arm_func_end FUN_02036b3c

	arm_func_start FUN_02036b8c
FUN_02036b8c: ; 0x02036B8C
	stmfd sp!, {r3, r4, r5, lr}
	add r0, r0, #0x2000
	mov r4, #0x28
	mla r5, r1, r4, r0
	ldrh r0, [r5, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _02036BCC ; =0x02099F10
	ldr r1, [r5, #4]
	ldr r0, [r0]
	bl FUN_0205c438
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
_02036BCC: .word g3DGameEffect
	arm_func_end FUN_02036b8c

	arm_func_start FUN_02036bd0
FUN_02036bd0: ; 0x02036BD0
	stmfd sp!, {r3, r4, r5, lr}
	add r2, r0, #0x2000
	mov r0, #0x28
	mla r5, r1, r0, r2
	ldrh r0, [r5, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r4, _02036C10 ; =0x02099F10
	ldr r1, [r5, #4]
	ldr r0, [r4]
	bl FUN_0205c3a4
	ldr r0, [r4]
	ldr r1, [r5, #4]
	mov r2, #1
	bl FUN_0205c5b8
	ldmfd sp!, {r3, r4, r5, pc}
_02036C10: .word g3DGameEffect
	arm_func_end FUN_02036bd0

	arm_func_start FUN_02036c14
FUN_02036c14: ; 0x02036C14
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	add r4, r0, #0x2000
	mov r0, #0x28
	mla r4, r1, r0, r4
	ldrh r0, [r4, #0xa]
	ldr r5, [sp, #0x3c]
	mov r7, r2
	tst r0, #1
	mov r6, r3
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r8, _02036D14 ; =0x02099F10
	ldr r1, [r4, #4]
	ldr r0, [r8]
	mov r2, #1
	bl FUN_0205c558
	cmp r5, #0
	bne _02036C84
	ldr r0, [sp, #0x38]
	mov r2, r7
	str r0, [sp]
	ldr r0, [r8]
	ldr r1, [r4, #4]
	mov r3, r6
	bl FUN_0205c5e8
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02036C84:
	ldr r1, [r8]
	ldr r2, [r4, #4]
	add r0, sp, #4
	bl FUN_0205c690
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	sub r3, r6, r1
	sub r0, r7, r0
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x38]
	str r0, [sp, #0x10]
	sub r2, r1, r2
	str r3, [sp, #0x14]
	mov r1, r5, lsl #0xc
	str r2, [sp, #0x18]
	bl FX_Div
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r1, r5, lsl #0xc
	bl FX_Div
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, r5, lsl #0xc
	bl FX_Div
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	str r2, [r4, #0x10]
	str r1, [r4, #0x14]
	str r0, [r4, #0x18]
	strh r5, [r4, #0xc]
	ldrh r1, [r4, #0xa]
	str r0, [sp, #0x18]
	orr r0, r1, #0x100
	strh r0, [r4, #0xa]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02036D14: .word g3DGameEffect
	arm_func_end FUN_02036c14

	arm_func_start FUN_02036d18
FUN_02036d18: ; 0x02036D18
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1c
	add r4, r0, #0x2000
	mov r0, #0x28
	mla r4, r1, r0, r4
	ldrh r0, [r4, #0xa]
	ldr r6, [sp, #0x40]
	ldr r5, [sp, #0x44]
	tst r0, #1
	mov r8, r2
	mov r7, r3
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _02036F48 ; =0x02099F10
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_0205c924
	tst r0, #0x4000
	subne r6, r6, #0x8000
	cmp r5, #0
	bne _02036DF0
	ldr r0, _02036F4C ; =0x0B60B60B
	mov r1, #0xb6
	umull r3, r10, r8, r0
	umull lr, r12, r7, r0
	umull r9, r5, r6, r0
	adds r3, r3, #0
	mla r10, r8, r1, r10
	mov r2, r8, asr #0x1f
	mla r10, r2, r0, r10
	adc r2, r10, #0x800
	mov r2, r2, lsl #4
	mla r12, r7, r1, r12
	mla r5, r6, r1, r5
	mov r3, r7, asr #0x1f
	mov r1, r6, asr #0x1f
	mla r12, r3, r0, r12
	adds r3, lr, #0
	adc r3, r12, #0x800
	mla r5, r1, r0, r5
	adds r0, r9, #0
	adc r0, r5, #0x800
	mov r0, r0, lsl #4
	mov r0, r0, lsr #0x10
	str r0, [sp]
	ldr r0, _02036F48 ; =0x02099F10
	mov r3, r3, lsl #4
	ldr r1, [r4, #4]
	ldr r0, [r0]
	mov r2, r2, lsr #0x10
	mov r3, r3, lsr #0x10
	bl FUN_0205c620
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02036DF0:
	ldr r0, _02036F48 ; =0x02099F10
	ldr r2, [r4, #4]
	ldr r1, [r0]
	add r0, sp, #4
	bl FUN_0205c70c
	ldr r9, [sp, #4]
	mov r3, #0x1680000
	umull r0, lr, r9, r3
	mov r9, r9, asr #0x1f
	adds r0, r0, #0x80000
	mla lr, r9, r3, lr
	ldr r2, [sp, #8]
	adc lr, lr, #0
	umull r12, r9, r2, r3
	mov r2, r2, asr #0x1f
	mov r0, r0, lsr #0x14
	orr r0, r0, lr, lsl #12
	sub r0, r8, r0
	adds r8, r12, #0x80000
	mla r9, r2, r3, r9
	ldr r1, [sp, #0xc]
	adc r2, r9, #0
	mov r8, r8, lsr #0x14
	orr r8, r8, r2, lsl #12
	sub r2, r7, r8
	umull r8, r7, r1, r3
	mov r1, r1, asr #0x1f
	str r2, [sp, #0x14]
	adds r2, r8, #0x80000
	mla r7, r1, r3, r7
	adc r1, r7, #0
	mov r2, r2, lsr #0x14
	orr r2, r2, r1, lsl #12
	sub r2, r6, r2
	mov r1, r5
	str r0, [sp, #0x10]
	str r2, [sp, #0x18]
	bl _s32_div_f
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r1, r5
	bl _s32_div_f
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, r5
	bl _s32_div_f
	ldr r12, [sp, #0x10]
	ldr r2, _02036F4C ; =0x0B60B60B
	ldr r8, [sp, #0x14]
	umull r9, lr, r12, r2
	mov r3, #0xb6
	mla lr, r12, r3, lr
	mov r1, r12, asr #0x1f
	mla lr, r1, r2, lr
	adds r9, r9, #0
	adc r1, lr, #0x800
	mov r1, r1, lsl #4
	mov r1, r1, lsr #0x10
	str r1, [sp, #0x10]
	str r1, [r4, #0x1c]
	umull r12, r1, r8, r2
	mla r1, r8, r3, r1
	mov r7, r8, asr #0x1f
	mla r1, r7, r2, r1
	adds r12, r12, #0
	adc r1, r1, #0x800
	mov r1, r1, lsl #4
	mov r1, r1, lsr #0x10
	str r1, [sp, #0x14]
	str r1, [r4, #0x20]
	umull r7, r1, r0, r2
	mla r1, r0, r3, r1
	mov r6, r0, asr #0x1f
	mla r1, r6, r2, r1
	adds r0, r7, #0
	adc r0, r1, #0x800
	mov r0, r0, lsl #4
	mov r0, r0, lsr #0x10
	str r0, [r4, #0x24]
	strh r5, [r4, #0xe]
	str r0, [sp, #0x18]
	ldrh r0, [r4, #0xa]
	orr r0, r0, #0x200
	strh r0, [r4, #0xa]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02036F48: .word g3DGameEffect
_02036F4C: .word 0x0B60B60B
	arm_func_end FUN_02036d18

	arm_func_start FUN_02036f50
FUN_02036f50: ; 0x02036F50
	stmfd sp!, {r3, lr}
	add r12, r0, #0x2000
	mov r0, #0x28
	mla r12, r1, r0, r12
	ldrh r0, [r12, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, pc}
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r1, [sp, #8]
	ldr r0, _02036F94 ; =0x02099F10
	str r1, [sp]
	ldr r0, [r0]
	ldr r1, [r12, #4]
	bl FUN_0205c658
	ldmfd sp!, {r3, pc}
_02036F94: .word g3DGameEffect
	arm_func_end FUN_02036f50

	arm_func_start FUN_02036f98
FUN_02036f98: ; 0x02036F98
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0x2000
	mov r0, #0x28
	mla r5, r1, r0, r4
	ldrh r0, [r5, #0xa]
	mov r7, r2
	mov r6, r3
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _02037004 ; =0x02099F10
	ldr r1, [r5, #4]
	ldr r0, [r4]
	mov r2, #1
	bl FUN_0205c558
	ldr r0, [r4]
	ldr r1, [r5, #4]
	mov r2, r7
	mov r3, r6
	bl FUN_0205c788
	cmp r6, #1
	ldreqh r0, [r5, #0xa]
	orreq r0, r0, #4
	streqh r0, [r5, #0xa]
	ldrh r0, [r5, #0xa]
	orr r0, r0, #8
	strh r0, [r5, #0xa]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02037004: .word g3DGameEffect
	arm_func_end FUN_02036f98

	arm_func_start FUN_02037008
FUN_02037008: ; 0x02037008
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	mov r5, r0
	add r4, r5, #0x2000
	mov r0, #0x28
	mla r4, r1, r0, r4
	ldrh r0, [r4, #0xa]
	mov r8, r2
	mov r7, r3
	tst r0, #1
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r6, _0203714C ; =0x02099F10
	ldr r1, [r4, #4]
	ldr r0, [r6]
	bl FUN_0205c5b8
	ldrb r3, [sp, #0x3c]
	ldr r0, [r6]
	ldr r1, [r4, #4]
	mov r2, #0x2000
	bl FUN_0205c86c
	ldrb r3, [sp, #0x40]
	ldr r0, [r6]
	ldr r1, [r4, #4]
	mov r2, #0x4000
	bl FUN_0205c86c
	cmp r8, #4
	addls pc, pc, r8, lsl #2
	b _020370F4
_0203707C: ; jump table
	b _020370F4 ; case 0
	b _020370F4 ; case 1
	b _020370F4 ; case 2
	b _02037090 ; case 3
	b _020370F4 ; case 4
_02037090:
	ldr r0, _02037150 ; 0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _020370AC
	bl FUN_ov132_02148398
	cmp r0, #0
	bne _020370CC
_020370AC:
	ldr r2, [sp, #0x38]
	mov r0, r5
	mov r1, r7
	bl FUN_02035c50
	cmp r0, #0
	beq _020370F4
	ldr r2, [r0, #4]
	b _020370E4
_020370CC:
	mov r0, r7
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _020370F4
	ldrsh r2, [r0, #0x94]
_020370E4:
	ldr r0, _0203714C ; =0x02099F10
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_0205c82c
_020370F4:
	ldrb r0, [sp, #0x40]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r5, _0203714C ; =0x02099F10
	ldr r2, [r4, #4]
	ldr r1, [r5]
	add r0, sp, #4
	bl FUN_0205c70c
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	sub r6, r0, #0x8000
	str r6, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #4]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	str r6, [sp, #0x18]
	bl FUN_0205c620
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0203714C: .word g3DGameEffect
_02037150: .word gUtilGame
	arm_func_end FUN_02037008

	arm_func_start FUN_02037154
FUN_02037154: ; 0x02037154
	mov r2, #0x28
	mla r0, r1, r2, r0
	add r0, r0, #0x2000
	ldrh r0, [r0, #0xa]
	tst r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02037154

	arm_func_start FUN_02037170
FUN_02037170: ; 0x02037170
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r10, #0
	mov r6, #0x28
	add r8, r0, #0x2000
	mov r7, r10
	ldr r5, _020371C8 ; =0x02099F10
	mov r4, r6
	b _020371BC
_02037190:
	mla r9, r10, r4, r8
	ldr r1, [r9, #4]
	cmp r1, #0
	blt _020371B8
	ldr r0, [r5]
	bl FUN_0205c438
	mov r0, r9
	mov r1, r7
	mov r2, r6
	bl MI_CpuFill8
_020371B8:
	add r10, r10, #1
_020371BC:
	cmp r10, #4
	blt _02037190
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020371C8: .word g3DGameEffect
	arm_func_end FUN_02037170

	arm_func_start FUN_020371cc
FUN_020371cc: ; 0x020371CC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x38
	mov r8, r0
	add r0, r8, #0x1000
	ldr r5, [r0, #0x3e0]
	ldr r9, _02037428 ; =0x02099F10
	mov r6, #0
	b _02037418
_020371EC:
	add r1, r8, #0x2000
	mov r0, #0x28
	mla r4, r6, r0, r1
	ldrh r0, [r4, #0xa]
	tst r0, #1
	beq _02037414
	tst r0, #0x10
	beq _02037250
	ldr r0, [r9]
	ldr r1, [r4, #4]
	bl FUN_0205c4bc
	cmp r0, #0
	ldreqh r1, [r4, #0xa]
	ldreq r0, _0203742C ; =0x0000FFEF
	andeq r0, r1, r0
	streqh r0, [r4, #0xa]
	ldr r0, [r9]
	ldr r1, [r4, #4]
	bl FUN_0205c4bc
	cmn r0, #1
	ldreqh r1, [r4, #0xa]
	ldreq r0, _02037430 ; =0x0000FFEE
	andeq r0, r1, r0
	streqh r0, [r4, #0xa]
	beq _02037414
_02037250:
	ldr r1, [r4, #4]
	mov r7, #0
	ldr r0, [r9]
	add r2, sp, #4
	str r7, [sp, #4]
	bl FUN_0205b564
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02037280
	ldrb r0, [r0, #0xb]
	cmp r0, #3
	moveq r7, #1
_02037280:
	cmp r7, #0
	ldrneh r0, [r4, #0xa]
	orrne r0, r0, #2
	strneh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	tst r0, #8
	beq _020372C4
	tst r0, #4
	bne _020372C4
	ldr r0, [r9]
	ldr r1, [r4, #4]
	bl FUN_0205c7f8
	cmp r0, #0
	ldrneh r1, [r4, #0xa]
	ldrne r0, _02037434 ; =0x0000FFF7
	andne r0, r1, r0
	strneh r0, [r4, #0xa]
_020372C4:
	ldrh r0, [r4, #0xa]
	tst r0, #0x100
	beq _0203736C
	ldr r1, [r9]
	ldr r2, [r4, #4]
	add r0, sp, #0x14
	bl FUN_0205c690
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r2, [sp, #0x2c]
	str r1, [sp, #0x30]
	str r0, [sp, #0x34]
	mov r7, #0
	add r10, sp, #0x2c
	b _02037330
_02037304:
	mov r0, r10
	mov r2, r10
	add r1, r4, #0x10
	bl VEC_Add
	ldrh r0, [r4, #0xc]
	sub r0, r0, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	strh r0, [r4, #0xc]
	beq _02037338
	add r7, r7, #1
_02037330:
	cmp r7, r5
	blo _02037304
_02037338:
	ldr r0, [sp, #0x34]
	str r0, [sp]
	ldr r0, [r9]
	ldr r1, [r4, #4]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	bl FUN_0205c5e8
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	ldreqh r1, [r4, #0xa]
	ldreq r0, _02037438 ; =0x0000FEFF
	andeq r0, r1, r0
	streqh r0, [r4, #0xa]
_0203736C:
	ldrh r0, [r4, #0xa]
	tst r0, #0x200
	beq _02037414
	ldr r1, [r9]
	ldr r2, [r4, #4]
	add r0, sp, #8
	bl FUN_0205c70c
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	str r0, [sp, #0x28]
	mov r7, #0
	add r10, sp, #0x20
	b _020373D8
_020373AC:
	mov r0, r10
	mov r2, r10
	add r1, r4, #0x1c
	bl VEC_Add
	ldrh r0, [r4, #0xe]
	sub r0, r0, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	strh r0, [r4, #0xe]
	beq _020373E0
	add r7, r7, #1
_020373D8:
	cmp r7, r5
	blo _020373AC
_020373E0:
	ldr r0, [sp, #0x28]
	str r0, [sp]
	ldr r0, [r9]
	ldr r1, [r4, #4]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl FUN_0205c620
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	ldreqh r1, [r4, #0xa]
	ldreq r0, _0203743C ; =0x0000FDFF
	andeq r0, r1, r0
	streqh r0, [r4, #0xa]
_02037414:
	add r6, r6, #1
_02037418:
	cmp r6, #6
	blt _020371EC
	add sp, sp, #0x38
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02037428: .word g3DGameEffect
_0203742C: .word 0x0000FFEF
_02037430: .word 0x0000FFEE
_02037434: .word 0x0000FFF7
_02037438: .word 0x0000FEFF
_0203743C: .word 0x0000FDFF
	arm_func_end FUN_020371cc

	arm_func_start FUN_02037440
FUN_02037440: ; 0x02037440
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10c
	add r0, r0, #0xf0
	add r4, r0, #0x2000
	mov r0, #0x3c
	mla r8, r1, r0, r4
	add r11, sp, #0xc
	ldr r1, _02037504 ; =0x0208FE00
	mov r0, r11
	mov r10, r2
	mov r9, r3
	bl STD_TSPrintf
	ldr r5, _02037508 ; =0x0209A200
	ldr r4, _0203750C ; =g3DSpriteCtrl
	ldr r2, [r5, #0x24]
	ldr r0, [r4]
	mov r7, #1
	str r7, [sp]
	mov r6, #0
	str r6, [sp, #4]
	add r0, r0, #4
	mov r1, #2
	mov r3, r11
	str r6, [sp, #8]
	bl FUN_02058684
	str r0, [r8, #4]
	ldr r1, _02037510 ; =0x0208FE08
	mov r2, r10
	mov r0, r11
	bl STD_TSPrintf
	ldr r0, [r4]
	ldr r2, [r5, #0x24]
	mov r3, r11
	str r7, [sp]
	str r6, [sp, #4]
	add r0, r0, #4
	str r6, [sp, #8]
	mov r1, #3
	bl FUN_02058684
	str r0, [r8, #8]
	ldrh r0, [r8, #0xe]
	cmp r9, #2
	orr r0, r0, #5
	strh r0, [r8, #0xe]
	ldreqh r0, [r8, #0xe]
	orreq r0, r0, #0x40
	streqh r0, [r8, #0xe]
	add sp, sp, #0x10c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02037504: .word unk_0208FE00
_02037508: .word unk_0209A200
_0203750C: .word g3DSpriteCtrl
_02037510: .word unk_0208FE08
	arm_func_end FUN_02037440

	arm_func_start FUN_02037514
FUN_02037514: ; 0x02037514
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	add r0, r5, #0xf0
	mov r2, r1
	add r0, r0, #0x2000
	mov r7, #0x3c
	mla r4, r2, r7, r0
	ldrh r0, [r4, #0xe]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r6, _020375B8 ; =g3DSpriteCtrl
	add r1, r5, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x3ec]
	ldr r3, _020375BC ; =0x0000FFFE
	add r2, r2, #1
	bl FUN_ov16_021172cc
	ldr r0, [r6]
	ldr r1, [r4, #4]
	bl FUN_ov16_02116910
	ldr r0, [r6]
	ldr r1, [r4, #4]
	add r0, r0, #4
	bl FUN_02058ee0
	ldr r0, [r6]
	ldr r1, [r4, #8]
	bl FUN_ov16_02116910
	ldr r0, [r6]
	ldr r1, [r4, #8]
	add r0, r0, #4
	bl FUN_02058ee0
	add r0, r5, #0x1000
	ldr r1, [r0, #0x3ec]
	ldr r0, _020375C0 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl _ZN12C3DPlaneCtrl7destroyEi
	mov r0, r4
	mov r2, r7
	mov r1, #0
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020375B8: .word g3DSpriteCtrl
_020375BC: .word 0x0000FFFE
_020375C0: .word g3DPlaneCtrl
	arm_func_end FUN_02037514

	arm_func_start FUN_020375c4
FUN_020375c4: ; 0x020375C4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
_020375D0:
	mov r0, r5
	mov r1, r4
	bl FUN_02037514
	add r4, r4, #1
	cmp r4, #0x20
	blt _020375D0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_020375c4

	arm_func_start FUN_020375ec
FUN_020375ec: ; 0x020375EC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	add r0, r7, #0xf0
	mov r6, r1
	add r1, r0, #0x2000
	mov r0, #0x3c
	mla r5, r6, r0, r1
	ldrh r0, [r5, #0xe]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _02037720 ; =g3DSpriteCtrl
	ldr r1, [r5, #4]
	ldr r0, [r4]
	add r0, r0, #4
	bl FUN_02059004
	cmp r0, #0
	bne _02037648
	ldr r0, [r4]
	ldr r1, [r5, #4]
	mov r2, #1
	bl FUN_ov16_021168f8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_02037648:
	ldr r4, _02037720 ; =g3DSpriteCtrl
	ldr r1, [r5, #8]
	ldr r0, [r4]
	add r0, r0, #4
	bl FUN_02059004
	cmp r0, #0
	bne _0203767C
	ldr r0, [r4]
	ldr r1, [r5, #8]
	mov r2, #1
	bl FUN_ov16_021168f8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_0203767C:
	ldr r0, [r5, #8]
	ldr r4, _02037720 ; =g3DSpriteCtrl
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp]
	ldr r0, [r5, #4]
	add r1, r7, #0x1000
	mov r3, r0, lsl #0x10
	ldr r0, [r4]
	ldr r1, [r1, #0x3ec]
	add r2, r6, #1
	mov r3, r3, lsr #0x10
	bl FUN_ov16_02117180
	add r1, r7, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x3ec]
	ldr r3, _02037724 ; =0x0000FFFE
	add r2, r6, #1
	bl FUN_ov16_021172cc
	mov r3, #0x32
	str r3, [sp]
	add r0, r7, #0x1000
	ldr r1, [r0, #0x3ec]
	ldr r0, [r4]
	add r2, r6, #1
	bl FUN_ov16_0211746c
	ldrh r0, [r5, #0xe]
	tst r0, #0x40
	beq _02037710
	mov r0, #1
	str r0, [sp]
	add r1, r7, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x3ec]
	add r2, r6, #1
	mov r3, #0x3000
	bl FUN_ov16_02117284
_02037710:
	ldrh r0, [r5, #0xe]
	orr r0, r0, #2
	strh r0, [r5, #0xe]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02037720: .word g3DSpriteCtrl
_02037724: .word 0x0000FFFE
	arm_func_end FUN_020375ec

	arm_func_start FUN_02037728
FUN_02037728: ; 0x02037728
	mov r2, #0x3c
	mla r0, r1, r2, r0
	add r0, r0, #0x2000
	ldrh r0, [r0, #0xfe]
	tst r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02037728

	arm_func_start FUN_02037744
FUN_02037744: ; 0x02037744
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	add lr, r0, #0xf0
	mov r12, r1
	add lr, lr, #0x2000
	mov r1, #0x3c
	mla r4, r12, r1, lr
	ldrh lr, [r4, #0xe]
	mov r5, #1
	tst lr, #1
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, pc}
	cmp r2, #0
	beq _020377E0
	orr r1, lr, #8
	strh r1, [r4, #0xe]
	cmp r3, #1
	beq _02037798
	cmp r3, #2
	moveq r5, #4
	b _0203779C
_02037798:
	mov r5, #3
_0203779C:
	and r1, r5, #0xff
	str r1, [sp]
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	str r2, [sp, #4]
	mov r3, r1, lsl #0x10
	mov lr, #1
	ldr r2, _02037810 ; =g3DSpriteCtrl
	str lr, [sp, #8]
	add r1, r0, #0x1000
	ldr r0, [r2]
	ldr r1, [r1, #0x3ec]
	add r2, r12, #1
	mov r3, r3, asr #0x10
	bl FUN_ov16_02117414
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_020377E0:
	ldr r1, _02037814 ; =0x0000FFF7
	ldr r2, _02037810 ; =g3DSpriteCtrl
	and r1, lr, r1
	strh r1, [r4, #0xe]
	add r1, r0, #0x1000
	ldr r0, [r2]
	ldr r1, [r1, #0x3ec]
	add r2, r12, #1
	mov r3, #2
	bl FUN_ov16_021172cc
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_02037810: .word g3DSpriteCtrl
_02037814: .word 0x0000FFF7
	arm_func_end FUN_02037744

	arm_func_start FUN_02037818
FUN_02037818: ; 0x02037818
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	add r0, r0, #0xf0
	add r4, r0, #0x2000
	mov r0, #0x3c
	mla r4, r1, r0, r4
	ldrh r0, [r4, #0xe]
	ldr r5, [sp, #0x18]
	mov r7, r2
	mov r6, r3
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, #0
	mov r0, r7, lsl #0xc
	ble _02037864
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _02037870
_02037864:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_02037870:
	bl _ffix
	mov r7, r0
	cmp r6, #0
	mov r0, r6, lsl #0xc
	ble _02037898
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _020378A4
_02037898:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_020378A4:
	bl _ffix
	ldrh r1, [r4, #0xe]
	mov r6, r0
	tst r1, #0x40
	ldrne r0, _02037938 ; =0x0209A720
	ldrne r1, [r0, #0xd4]
	ldrne r0, [r0, #0xd8]
	addne r7, r7, r1
	addne r6, r6, r0
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	ldrne r1, [r4, #0x14]
	ldrne r0, [r4, #0x18]
	addne r7, r7, r1
	addne r6, r6, r0
	cmp r5, #0
	streq r7, [r4, #0x14]
	streq r6, [r4, #0x18]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	strh r5, [r4, #0x10]
	ldr r0, [r4, #0x14]
	mov r1, r5
	sub r0, r7, r0
	str r0, [r4, #0x1c]
	ldr r2, [r4, #0x18]
	sub r2, r6, r2
	str r2, [r4, #0x20]
	bl _s32_div_f
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	mov r1, r5
	bl _s32_div_f
	str r0, [r4, #0x20]
	ldrh r0, [r4, #0xe]
	orr r0, r0, #0x10
	strh r0, [r4, #0xe]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02037938: .word unk_0209A720
	arm_func_end FUN_02037818

	arm_func_start FUN_0203793c
FUN_0203793c: ; 0x0203793C
	stmfd sp!, {r3, r4, r5, lr}
	add r4, r0, #0xf0
	mov r12, r1
	add r4, r4, #0x2000
	mov r1, #0x3c
	mla r4, r12, r1, r4
	ldrh r1, [r4, #0xe]
	mov r5, r3
	tst r1, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [sp, #0x10]
	ldr r3, [r4, #0x24]
	cmp r1, #0
	addne r2, r2, r3
	cmp r5, #0
	bne _020379A4
	ldr lr, _020379C8 ; =g3DSpriteCtrl
	str r2, [r4, #0x24]
	add r1, r0, #0x1000
	mov r3, r2, lsl #0x10
	ldr r0, [lr]
	ldr r1, [r1, #0x3ec]
	add r2, r12, #1
	mov r3, r3, lsr #0x10
	bl FUN_ov16_02117454
	ldmfd sp!, {r3, r4, r5, pc}
_020379A4:
	mov r1, r5
	sub r0, r2, r3
	bl _s32_div_f
	str r0, [r4, #0x28]
	strh r5, [r4, #0x12]
	ldrh r0, [r4, #0xe]
	orr r0, r0, #0x80
	strh r0, [r4, #0xe]
	ldmfd sp!, {r3, r4, r5, pc}
_020379C8: .word g3DSpriteCtrl
	arm_func_end FUN_0203793c

	arm_func_start FUN_020379cc
FUN_020379cc: ; 0x020379CC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	add r0, r7, #0xf0
	add r4, r0, #0x2000
	mov r5, #0
	b _02037C34
_020379E4:
	ldrh r0, [r4, #0xe]
	tst r0, #1
	beq _02037C2C
	tst r0, #4
	beq _02037A60
	ldr r6, _02037C40 ; =g3DSpriteCtrl
	ldr r1, [r4, #4]
	ldr r0, [r6]
	add r0, r0, #4
	bl FUN_02058e30
	ldr r2, [r6]
	mov r6, r0
	ldr r1, [r4, #8]
	add r0, r2, #4
	bl FUN_02058e30
	cmp r6, #0
	cmpeq r0, #0
	ldreqh r2, [r4, #0xe]
	ldreq r1, _02037C44 ; =0x0000FFFB
	andeq r1, r2, r1
	streqh r1, [r4, #0xe]
	mvn r1, #0
	cmp r6, r1
	beq _02037A4C
	cmp r0, r1
	bne _02037C2C
_02037A4C:
	ldrh r1, [r4, #0xe]
	ldr r0, _02037C48 ; =0x0000FFFA
	and r0, r1, r0
	strh r0, [r4, #0xe]
	b _02037C2C
_02037A60:
	tst r0, #2
	beq _02037C2C
	tst r0, #0x20
	beq _02037AF4
	mov r0, #0
	add r1, r7, #0x1000
	b _02037AA0
_02037A7C:
	ldr r3, [r4, #0x30]
	ldr r2, [r4, #0x34]
	add r2, r3, r2
	str r2, [r4, #0x30]
	ldr r2, [r4, #0x2c]
	subs r2, r2, #1
	str r2, [r4, #0x2c]
	beq _02037AAC
	add r0, r0, #1
_02037AA0:
	ldr r2, [r1, #0x3e0]
	cmp r0, r2
	blo _02037A7C
_02037AAC:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	bne _02037AD0
	ldrh r1, [r4, #0xe]
	ldr r0, _02037C4C ; =0x0000FFDF
	and r0, r1, r0
	strh r0, [r4, #0xe]
	ldr r0, [r4, #0x38]
	str r0, [r4, #0x30]
_02037AD0:
	ldr r2, [r4, #0x30]
	ldr r0, _02037C40 ; =g3DSpriteCtrl
	add r1, r7, #0x1000
	mov r3, r2, asr #0xc
	ldr r0, [r0]
	ldr r1, [r1, #0x3ec]
	add r2, r5, #1
	and r3, r3, #0xff
	bl FUN_ov16_02117304
_02037AF4:
	ldrh r0, [r4, #0xe]
	tst r0, #0x10
	beq _02037B6C
	mov r0, #0
	add r1, r7, #0x1000
	b _02037B48
_02037B0C:
	ldr r3, [r4, #0x14]
	ldr r2, [r4, #0x1c]
	add r2, r3, r2
	str r2, [r4, #0x14]
	ldr r3, [r4, #0x18]
	ldr r2, [r4, #0x20]
	add r2, r3, r2
	str r2, [r4, #0x18]
	ldrh r2, [r4, #0x10]
	sub r2, r2, #1
	mov r2, r2, lsl #0x10
	movs r2, r2, lsr #0x10
	strh r2, [r4, #0x10]
	beq _02037B54
	add r0, r0, #1
_02037B48:
	ldr r2, [r1, #0x3e0]
	cmp r0, r2
	blo _02037B0C
_02037B54:
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	ldreqh r1, [r4, #0xe]
	ldreq r0, _02037C50 ; =0x0000FFEF
	andeq r0, r1, r0
	streqh r0, [r4, #0xe]
_02037B6C:
	ldrh r0, [r4, #0xe]
	tst r0, #0x80
	beq _02037BF8
	mov r0, #0
	add r1, r7, #0x1000
	b _02037BB0
_02037B84:
	ldr r3, [r4, #0x24]
	ldr r2, [r4, #0x28]
	add r2, r3, r2
	str r2, [r4, #0x24]
	ldrh r2, [r4, #0x12]
	sub r2, r2, #1
	mov r2, r2, lsl #0x10
	movs r2, r2, lsr #0x10
	strh r2, [r4, #0x12]
	beq _02037BBC
	add r0, r0, #1
_02037BB0:
	ldr r2, [r1, #0x3e0]
	cmp r0, r2
	blo _02037B84
_02037BBC:
	ldrh r0, [r4, #0x12]
	cmp r0, #0
	ldreqh r1, [r4, #0xe]
	ldreq r0, _02037C54 ; =0x0000FF7F
	andeq r0, r1, r0
	streqh r0, [r4, #0xe]
	ldr r2, [r4, #0x24]
	ldr r0, _02037C40 ; =g3DSpriteCtrl
	mov r3, r2, lsl #0x10
	add r1, r7, #0x1000
	ldr r0, [r0]
	ldr r1, [r1, #0x3ec]
	add r2, r5, #1
	mov r3, r3, lsr #0x10
	bl FUN_ov16_02117454
_02037BF8:
	ldr r0, [r4, #0x18]
	ldr r2, [r4, #0x14]
	mov r0, r0, lsl #4
	mov r1, r0, asr #0x10
	ldr r0, _02037C40 ; =g3DSpriteCtrl
	str r1, [sp]
	add r1, r7, #0x1000
	mov r3, r2, lsl #4
	ldr r0, [r0]
	ldr r1, [r1, #0x3ec]
	add r2, r5, #1
	mov r3, r3, asr #0x10
	bl FUN_ov16_02117390
_02037C2C:
	add r5, r5, #1
	add r4, r4, #0x3c
_02037C34:
	cmp r5, #0x20
	blt _020379E4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02037C40: .word g3DSpriteCtrl
_02037C44: .word 0x0000FFFB
_02037C48: .word 0x0000FFFA
_02037C4C: .word 0x0000FFDF
_02037C50: .word 0x0000FFEF
_02037C54: .word 0x0000FF7F
	arm_func_end FUN_020379cc

	arm_func_start FUN_02037c58
FUN_02037c58: ; 0x02037C58
	add r1, r0, #0x870
	add r2, r0, #0x170
	add r0, r1, #0x2000
	add r1, r2, #0x3000
	ldr r12, _02037C74 ; =MI_CpuCopy8
	mov r2, #0x900
	bx r12
_02037C74: .word MI_CpuCopy8
	arm_func_end FUN_02037c58

	arm_func_start FUN_02037c78
FUN_02037c78: ; 0x02037C78
	add r1, r0, #0x170
	add r2, r0, #0x870
	add r0, r1, #0x3000
	add r1, r2, #0x2000
	ldr r12, _02037C94 ; =MI_CpuCopy8
	mov r2, #0x900
	bx r12
_02037C94: .word MI_CpuCopy8
	arm_func_end FUN_02037c78

	arm_func_start FUN_02037c98
FUN_02037c98: ; 0x02037C98
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10c
	add r0, r0, #0x870
	add r4, r0, #0x2000
	mov r0, #0x48
	mla r4, r1, r0, r4
	ldrh r0, [r4, #0xa]
	mov r7, r2
	mov r6, r3
	tst r0, #1
	ldr r5, [sp, #0x128]
	ldr r8, _02037DD4 ; =g3DGameMapObject
	beq _02037D0C
	mov r1, r7
	add r0, r4, #0x30
	bl STD_CompareString
	cmp r0, #0
	bne _02037CF0
	ldr r0, [r4]
	cmp r0, r5
	addeq sp, sp, #0x10c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02037CF0:
	ldr r0, [r8]
	ldr r1, [r4, #4]
	bl FUN_0205f5ec
	mov r0, r4
	mov r1, #0
	mov r2, #0x48
	bl MI_CpuFill8
_02037D0C:
	cmp r5, #0
	ldr r0, [r8]
	bge _02037D28
	add r2, sp, #0xc
	mov r1, r7
	bl FUN_0205e71c
	b _02037D38
_02037D28:
	add r3, sp, #0xc
	mov r1, r7
	mov r2, r5
	bl FUN_0205e674
_02037D38:
	ldr r1, [sp, #0x134]
	str r5, [r4]
	cmp r1, #0
	beq _02037D70
	ldr r0, [r8]
	mov r8, #0
	str r8, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r1, sp, #0xc
	mov r2, r6
	mov r3, r5
	str r8, [sp, #8]
	b _02037D90
_02037D70:
	mov r0, #0
	stmia sp, {r0, r1}
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r8]
	add r1, sp, #0xc
	mov r2, r6
	mov r3, r5
_02037D90:
	bl FUN_0205f214
	str r0, [r4, #4]
	movs r0, r0
	addmi sp, sp, #0x10c
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrh r1, [r4, #0xa]
	ldr r0, [sp, #0x12c]
	ldr r2, [sp, #0x130]
	orr r1, r1, #0x11
	strh r1, [r4, #0xa]
	str r0, [r4, #0x28]
	mov r1, r7
	add r0, r4, #0x30
	str r2, [r4, #0x2c]
	bl STD_CopyString
	add sp, sp, #0x10c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02037DD4: .word g3DGameMapObject
	arm_func_end FUN_02037c98

	arm_func_start FUN_02037dd8
FUN_02037dd8: ; 0x02037DD8
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x104
	add r0, r0, #0x870
	add r4, r0, #0x2000
	mov r0, #0x48
	mla r4, r1, r0, r4
	ldrh r0, [r4, #0xa]
	mov r5, r2
	mov r7, r3
	tst r0, #1
	ldr r6, _02037EEC ; =g3DGameMapObject
	beq _02037E48
	mov r1, r5
	add r0, r4, #0x30
	bl STD_CompareString
	cmp r0, #0
	bne _02037E2C
	ldr r0, [r4]
	cmp r0, r7
	addeq sp, sp, #0x104
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
_02037E2C:
	ldr r0, [r6]
	ldr r1, [r4, #4]
	bl FUN_0205f5ec
	mov r0, r4
	mov r1, #0
	mov r2, #0x48
	bl MI_CpuFill8
_02037E48:
	cmp r7, #0
	ldr r0, [r6]
	bge _02037E64
	add r2, sp, #4
	mov r1, r5
	bl FUN_0205e71c
	b _02037E74
_02037E64:
	add r3, sp, #4
	mov r1, r5
	mov r2, r7
	bl FUN_0205e674
_02037E74:
	ldr r0, [sp, #0x120]
	str r7, [r4]
	cmp r0, #0
	mov r2, #0
	ldr r0, [r6]
	add r1, sp, #4
	beq _02037E9C
	str r2, [sp]
	mov r3, #1
	b _02037EA8
_02037E9C:
	mov r6, #1
	mov r3, r2
	str r6, [sp]
_02037EA8:
	bl FUN_0205f26c
	str r0, [r4, #4]
	movs r0, r0
	addmi sp, sp, #0x104
	ldmmifd sp!, {r4, r5, r6, r7, pc}
	ldrh r1, [r4, #0xa]
	ldr r0, [sp, #0x118]
	ldr r2, [sp, #0x11c]
	orr r1, r1, #0x11
	strh r1, [r4, #0xa]
	str r0, [r4, #0x28]
	mov r1, r5
	add r0, r4, #0x30
	str r2, [r4, #0x2c]
	bl STD_CopyString
	add sp, sp, #0x104
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02037EEC: .word g3DGameMapObject
	arm_func_end FUN_02037dd8

	arm_func_start FUN_02037ef0
FUN_02037ef0: ; 0x02037EF0
	stmfd sp!, {r3, r4, r5, lr}
	add r0, r0, #0x870
	add r0, r0, #0x2000
	mov r4, #0x48
	mla r5, r1, r4, r0
	ldrh r0, [r5, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _02037F34 ; =g3DGameMapObject
	ldr r1, [r5, #4]
	ldr r0, [r0]
	bl FUN_0205f5ec
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
_02037F34: .word g3DGameMapObject
	arm_func_end FUN_02037ef0

	arm_func_start FUN_02037f38
FUN_02037f38: ; 0x02037F38
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, #0
	add r0, r0, #0x870
	mov r10, r1
	add r7, r0, #0x2000
	mov r11, r9
	mvn r4, #0
	ldr r6, _02037FAC ; =g3DGameMapObject
	mov r5, #0x48
	b _02037FA0
_02037F60:
	mla r8, r9, r5, r7
	ldrh r0, [r8, #0xa]
	tst r0, #1
	beq _02037F9C
	ldr r0, [r8, #0x28]
	cmp r0, r4
	cmpne r0, r10
	bne _02037F9C
	ldr r0, [r6]
	ldr r1, [r8, #4]
	bl FUN_0205f5ec
	mov r0, r8
	mov r1, r11
	mov r2, #0x48
	bl MI_CpuFill8
_02037F9C:
	add r9, r9, #1
_02037FA0:
	cmp r9, #0x20
	blt _02037F60
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02037FAC: .word g3DGameMapObject
	arm_func_end FUN_02037f38

	arm_func_start FUN_02037fb0
FUN_02037fb0: ; 0x02037FB0
	stmfd sp!, {r3, lr}
	add r0, r0, #0x870
	add r2, r0, #0x2000
	mov r0, #0x48
	mla r2, r1, r0, r2
	ldrh r0, [r2, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, pc}
	ldr r0, _02037FE4 ; =g3DGameMapObject
	ldr r1, [r2, #4]
	ldr r0, [r0]
	bl FUN_0205f56c
	ldmfd sp!, {r3, pc}
_02037FE4: .word g3DGameMapObject
	arm_func_end FUN_02037fb0

	arm_func_start FUN_02037fe8
FUN_02037fe8: ; 0x02037FE8
	stmfd sp!, {r3, lr}
	add r0, r0, #0x870
	add r3, r0, #0x2000
	mov r0, #0x48
	mla r3, r1, r0, r3
	ldrh r0, [r3, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, pc}
	ldr r0, _0203801C ; =g3DGameMapObject
	ldr r1, [r3, #4]
	ldr r0, [r0]
	bl FUN_0205fdf0
	ldmfd sp!, {r3, pc}
_0203801C: .word g3DGameMapObject
	arm_func_end FUN_02037fe8

	arm_func_start FUN_02038020
FUN_02038020: ; 0x02038020
	stmfd sp!, {r3, lr}
	add r0, r0, #0x870
	add r3, r0, #0x2000
	mov r0, #0x48
	mla r3, r1, r0, r3
	ldrh r0, [r3, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, pc}
	ldr r0, _02038054 ; =g3DGameMapObject
	ldr r1, [r3, #4]
	ldr r0, [r0]
	bl FUN_0205fdac
	ldmfd sp!, {r3, pc}
_02038054: .word g3DGameMapObject
	arm_func_end FUN_02038020

	arm_func_start FUN_02038058
FUN_02038058: ; 0x02038058
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	add r0, r0, #0x870
	add r4, r0, #0x2000
	mov r0, #0x48
	mla r4, r1, r0, r4
	ldrh r0, [r4, #0xa]
	ldr r5, [sp, #0x34]
	mov r7, r2
	tst r0, #1
	mov r6, r3
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, _02038198 ; =g3DGameMapObject
	ldr r1, [r4, #4]
	ldr r0, [r0]
	mov r2, #1
	bl FUN_0205f9c0
	ldr r0, [sp, #0x30]
	str r7, [sp, #0x10]
	str r6, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bge _020380D0
	ldr r0, _0203819C ; =g3DGameMap
	add r1, sp, #0x10
	ldr r0, [r0]
	bl FUN_ov0_020cd234
	str r0, [r4, #0x28]
_020380D0:
	cmp r5, #0
	bne _02038100
	ldr r1, [sp, #0x30]
	ldr r0, _02038198 ; =g3DGameMapObject
	str r1, [sp]
	ldr r0, [r0]
	ldr r1, [r4, #4]
	mov r2, r7
	mov r3, r6
	bl FUN_0205fa48
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02038100:
	ldr r0, _02038198 ; =g3DGameMapObject
	ldr r2, [r4, #4]
	ldr r1, [r0]
	add r0, sp, #4
	bl FUN_0205fb80
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	sub r3, r6, r1
	sub r0, r7, r0
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x30]
	str r0, [sp, #0x10]
	sub r2, r1, r2
	str r3, [sp, #0x14]
	mov r1, r5, lsl #0xc
	str r2, [sp, #0x18]
	bl FX_Div
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r1, r5, lsl #0xc
	bl FX_Div
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, r5, lsl #0xc
	bl FX_Div
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x18]
	str r1, [r4, #0x10]
	ldr r0, [sp, #0x14]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0x18]
	strh r5, [r4, #0xc]
	ldrh r0, [r4, #0xa]
	orr r0, r0, #0x100
	strh r0, [r4, #0xa]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02038198: .word g3DGameMapObject
_0203819C: .word g3DGameMap
	arm_func_end FUN_02038058

	arm_func_start FUN_020381a0
FUN_020381a0: ; 0x020381A0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1c
	add r0, r0, #0x870
	add r4, r0, #0x2000
	mov r0, #0x48
	mla r4, r1, r0, r4
	ldrh r0, [r4, #0xa]
	ldr r6, [sp, #0x40]
	ldr r5, [sp, #0x44]
	tst r0, #1
	mov r8, r2
	mov r7, r3
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r5, #0
	bne _02038264
	ldr r0, _020383BC ; =0x0B60B60B
	mov r1, #0xb6
	umull r3, r10, r8, r0
	umull lr, r12, r7, r0
	umull r9, r5, r6, r0
	adds r3, r3, #0
	mla r10, r8, r1, r10
	mov r2, r8, asr #0x1f
	mla r10, r2, r0, r10
	adc r2, r10, #0x800
	mov r2, r2, lsl #4
	mla r12, r7, r1, r12
	mla r5, r6, r1, r5
	mov r3, r7, asr #0x1f
	mov r1, r6, asr #0x1f
	mla r12, r3, r0, r12
	adds r3, lr, #0
	adc r3, r12, #0x800
	mla r5, r1, r0, r5
	adds r0, r9, #0
	adc r0, r5, #0x800
	mov r0, r0, lsl #4
	mov r0, r0, lsr #0x10
	str r0, [sp]
	ldr r0, _020383C0 ; =g3DGameMapObject
	mov r3, r3, lsl #4
	ldr r1, [r4, #4]
	ldr r0, [r0]
	mov r2, r2, lsr #0x10
	mov r3, r3, lsr #0x10
	bl FUN_0205fab4
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02038264:
	ldr r0, _020383C0 ; =g3DGameMapObject
	ldr r2, [r4, #4]
	ldr r1, [r0]
	add r0, sp, #4
	bl FUN_0205fbfc
	ldr r9, [sp, #4]
	mov r3, #0x1680000
	umull r0, lr, r9, r3
	mov r9, r9, asr #0x1f
	adds r0, r0, #0x80000
	mla lr, r9, r3, lr
	ldr r2, [sp, #8]
	adc lr, lr, #0
	umull r12, r9, r2, r3
	mov r2, r2, asr #0x1f
	mov r0, r0, lsr #0x14
	orr r0, r0, lr, lsl #12
	sub r0, r8, r0
	adds r8, r12, #0x80000
	mla r9, r2, r3, r9
	ldr r1, [sp, #0xc]
	adc r2, r9, #0
	mov r8, r8, lsr #0x14
	orr r8, r8, r2, lsl #12
	sub r2, r7, r8
	umull r8, r7, r1, r3
	mov r1, r1, asr #0x1f
	str r2, [sp, #0x14]
	adds r2, r8, #0x80000
	mla r7, r1, r3, r7
	adc r1, r7, #0
	mov r2, r2, lsr #0x14
	orr r2, r2, r1, lsl #12
	sub r2, r6, r2
	mov r1, r5
	str r0, [sp, #0x10]
	str r2, [sp, #0x18]
	bl _s32_div_f
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r1, r5
	bl _s32_div_f
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, r5
	bl _s32_div_f
	ldr r12, [sp, #0x10]
	ldr r2, _020383BC ; =0x0B60B60B
	ldr r8, [sp, #0x14]
	umull r9, lr, r12, r2
	mov r3, #0xb6
	mla lr, r12, r3, lr
	mov r1, r12, asr #0x1f
	mla lr, r1, r2, lr
	adds r9, r9, #0
	adc r1, lr, #0x800
	mov r1, r1, lsl #4
	mov r1, r1, lsr #0x10
	str r1, [sp, #0x10]
	str r1, [r4, #0x1c]
	umull r12, r1, r8, r2
	mla r1, r8, r3, r1
	mov r7, r8, asr #0x1f
	mla r1, r7, r2, r1
	adds r12, r12, #0
	adc r1, r1, #0x800
	mov r1, r1, lsl #4
	mov r1, r1, lsr #0x10
	str r1, [sp, #0x14]
	str r1, [r4, #0x20]
	umull r7, r1, r0, r2
	mla r1, r0, r3, r1
	mov r6, r0, asr #0x1f
	mla r1, r6, r2, r1
	adds r0, r7, #0
	adc r0, r1, #0x800
	mov r0, r0, lsl #4
	mov r0, r0, lsr #0x10
	str r0, [r4, #0x24]
	strh r5, [r4, #0xe]
	str r0, [sp, #0x18]
	ldrh r0, [r4, #0xa]
	orr r0, r0, #0x200
	strh r0, [r4, #0xa]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020383BC: .word 0x0B60B60B
_020383C0: .word g3DGameMapObject
	arm_func_end FUN_020381a0

	arm_func_start FUN_020383c4
FUN_020383c4: ; 0x020383C4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x100
	add r0, r0, #0x870
	add r3, r0, #0x2000
	mov r0, #0x48
	mla r5, r1, r0, r3
	ldrh r0, [r5, #0xa]
	tst r0, #1
	addeq sp, sp, #0x100
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r4, sp, #0
	ldr r1, _02038428 ; =0x0208FE10
	mov r0, r4
	bl STD_TSPrintf
	ldr r0, _0203842C ; =g3DGameMapObject
	ldr r1, [r5, #4]
	ldr r0, [r0]
	mov r2, r4
	mov r3, #1
	bl FUN_0205f664
	ldrh r0, [r5, #0xa]
	orr r0, r0, #0x10
	strh r0, [r5, #0xa]
	add sp, sp, #0x100
	ldmfd sp!, {r3, r4, r5, pc}
_02038428: .word unk_0208FE10
_0203842C: .word g3DGameMapObject
	arm_func_end FUN_020383c4

	arm_func_start FUN_02038430
FUN_02038430: ; 0x02038430
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x104
	add r0, r0, #0x870
	add r4, r0, #0x2000
	mov r0, #0x48
	mla r6, r1, r0, r4
	ldrh r0, [r6, #0xa]
	tst r0, #1
	addeq sp, sp, #0x104
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	add r5, sp, #4
	ldr r4, _020384A0 ; =g3DGameMapObject
	str r5, [sp]
	mov r1, r2
	mov r2, r3
	ldr r0, [r4]
	ldr r3, [r6]
	bl FUN_0205e6c0
	ldr r0, [r4]
	ldr r1, [r6, #4]
	mov r2, r5
	mov r3, #1
	bl FUN_0205f790
	ldrh r0, [r6, #0xa]
	orr r0, r0, #0x10
	strh r0, [r6, #0xa]
	add sp, sp, #0x104
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020384A0: .word g3DGameMapObject
	arm_func_end FUN_02038430

	arm_func_start FUN_020384a4
FUN_020384a4: ; 0x020384A4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x100
	add r0, r0, #0x870
	add r3, r0, #0x2000
	mov r0, #0x48
	mla r6, r1, r0, r3
	ldrh r0, [r6, #0xa]
	tst r0, #1
	addeq sp, sp, #0x100
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r5, sp, #0
	ldr r1, _02038514 ; =0x0208FE18
	mov r0, r5
	bl STD_TSPrintf
	ldr r4, _02038518 ; =g3DGameMapObject
	ldr r1, [r6, #4]
	ldr r0, [r4]
	mov r2, r5
	mov r3, #0
	bl FUN_0205f664
	ldr r0, [r4]
	ldr r1, [r6, #4]
	bl FUN_0205f56c
	ldrh r0, [r6, #0xa]
	orr r0, r0, #0x10
	strh r0, [r6, #0xa]
	add sp, sp, #0x100
	ldmfd sp!, {r4, r5, r6, pc}
_02038514: .word unk_0208FE18
_02038518: .word g3DGameMapObject
	arm_func_end FUN_020384a4

	arm_func_start FUN_0203851c
FUN_0203851c: ; 0x0203851C
	stmfd sp!, {r3, lr}
	add r0, r0, #0x870
	add r2, r0, #0x2000
	mov r0, #0x48
	mla r2, r1, r0, r2
	ldrh r0, [r2, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, pc}
	ldr r0, _02038550 ; =g3DGameMapObject
	ldr r1, [r2, #4]
	ldr r0, [r0]
	bl FUN_0205f56c
	ldmfd sp!, {r3, pc}
_02038550: .word g3DGameMapObject
	arm_func_end FUN_0203851c

	arm_func_start FUN_02038554
FUN_02038554: ; 0x02038554
	stmfd sp!, {r3, r4, r5, lr}
	add r0, r0, #0x870
	add r12, r0, #0x2000
	mov r0, #0x48
	mla r4, r1, r0, r12
	ldrh r0, [r4, #0xa]
	mov r5, r3
	tst r0, #1
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _020385BC ; =g3DGameMapObject
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_0205fc78
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #1
	ldreqh r0, [r4, #0xa]
	orreq r0, r0, #4
	streqh r0, [r4, #0xa]
	ldrh r1, [r4, #0xa]
	mov r0, #1
	orr r1, r1, #8
	strh r1, [r4, #0xa]
	ldmfd sp!, {r3, r4, r5, pc}
_020385BC: .word g3DGameMapObject
	arm_func_end FUN_02038554

	arm_func_start FUN_020385c0
FUN_020385c0: ; 0x020385C0
	mov r2, #0x48
	mla r0, r1, r2, r0
	add r0, r0, #0x2800
	ldrh r0, [r0, #0x7a]
	tst r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_020385c0

	arm_func_start FUN_020385dc
FUN_020385dc: ; 0x020385DC
	add r0, r0, #0x870
	add r2, r0, #0x2000
	mov r0, #0x48
	mla r2, r1, r0, r2
	ldrh r0, [r2, #0xa]
	tst r0, #1
	ldrne r0, [r2, #4]
	moveq r0, #0
	bx lr
	arm_func_end FUN_020385dc

	arm_func_start FUN_02038600
FUN_02038600: ; 0x02038600
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r6, #0
	add r0, r0, #0x870
	mov r9, #0x48
	add r4, r0, #0x2000
	mov r10, r6
	ldr r8, _0203866C ; =g3DGameMapObject
	mov r7, r9
	b _02038660
_02038624:
	mla r5, r6, r7, r4
	ldrh r0, [r5, #0xa]
	tst r0, #1
	beq _0203865C
	ldr r0, [r5, #0x28]
	cmp r0, #0
	bgt _0203865C
	ldr r0, [r8]
	ldr r1, [r5, #4]
	bl FUN_0205f5ec
	mov r0, r5
	mov r1, r10
	mov r2, r9
	bl MI_CpuFill8
_0203865C:
	add r6, r6, #1
_02038660:
	cmp r6, #0x20
	blt _02038624
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0203866C: .word g3DGameMapObject
	arm_func_end FUN_02038600

	arm_func_start FUN_02038670
FUN_02038670: ; 0x02038670
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x38
	mov r8, r0
	add r0, r8, #0x1000
	ldr r5, [r0, #0x3e0]
	ldr r9, _020388AC ; =g3DGameMapObject
	mov r6, #0
	b _0203889C
_02038690:
	add r0, r8, #0x870
	add r1, r0, #0x2000
	mov r0, #0x48
	mla r4, r6, r0, r1
	ldrh r0, [r4, #0xa]
	tst r0, #1
	beq _02038898
	tst r0, #0x10
	beq _020386D4
	ldr r0, [r9]
	ldr r1, [r4, #4]
	bl FUN_0205f990
	cmp r0, #0
	ldreqh r1, [r4, #0xa]
	ldreq r0, _020388B0 ; =0x0000FFEF
	andeq r0, r1, r0
	streqh r0, [r4, #0xa]
_020386D4:
	ldr r1, [r4, #4]
	mov r7, #0
	ldr r0, [r9]
	add r2, sp, #4
	str r7, [sp, #4]
	bl FUN_0205e754
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02038704
	ldrb r0, [r0, #0xc]
	cmp r0, #3
	moveq r7, #1
_02038704:
	cmp r7, #0
	ldrneh r0, [r4, #0xa]
	orrne r0, r0, #2
	strneh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	tst r0, #8
	beq _02038748
	tst r0, #4
	bne _02038748
	ldr r0, [r9]
	ldr r1, [r4, #4]
	bl FUN_0205fd1c
	cmp r0, #0
	ldrneh r1, [r4, #0xa]
	ldrne r0, _020388B4 ; =0x0000FFF7
	andne r0, r1, r0
	strneh r0, [r4, #0xa]
_02038748:
	ldrh r0, [r4, #0xa]
	tst r0, #0x100
	beq _020387F0
	ldr r1, [r9]
	ldr r2, [r4, #4]
	add r0, sp, #0x14
	bl FUN_0205fb80
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r2, [sp, #0x2c]
	str r1, [sp, #0x30]
	str r0, [sp, #0x34]
	mov r7, #0
	add r10, sp, #0x2c
	b _020387B4
_02038788:
	mov r0, r10
	mov r2, r10
	add r1, r4, #0x10
	bl VEC_Add
	ldrh r0, [r4, #0xc]
	sub r0, r0, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	strh r0, [r4, #0xc]
	beq _020387BC
	add r7, r7, #1
_020387B4:
	cmp r7, r5
	blo _02038788
_020387BC:
	ldr r0, [sp, #0x34]
	str r0, [sp]
	ldr r0, [r9]
	ldr r1, [r4, #4]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	bl FUN_0205fa48
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	ldreqh r1, [r4, #0xa]
	ldreq r0, _020388B8 ; =0x0000FEFF
	andeq r0, r1, r0
	streqh r0, [r4, #0xa]
_020387F0:
	ldrh r0, [r4, #0xa]
	tst r0, #0x200
	beq _02038898
	ldr r1, [r9]
	ldr r2, [r4, #4]
	add r0, sp, #8
	bl FUN_0205fbfc
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	str r0, [sp, #0x28]
	mov r7, #0
	add r10, sp, #0x20
	b _0203885C
_02038830:
	mov r0, r10
	mov r2, r10
	add r1, r4, #0x1c
	bl VEC_Add
	ldrh r0, [r4, #0xe]
	sub r0, r0, #1
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	strh r0, [r4, #0xe]
	beq _02038864
	add r7, r7, #1
_0203885C:
	cmp r7, r5
	blo _02038830
_02038864:
	ldr r0, [sp, #0x28]
	str r0, [sp]
	ldr r0, [r9]
	ldr r1, [r4, #4]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl FUN_0205fab4
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	ldreqh r1, [r4, #0xa]
	ldreq r0, _020388BC ; =0x0000FDFF
	andeq r0, r1, r0
	streqh r0, [r4, #0xa]
_02038898:
	add r6, r6, #1
_0203889C:
	cmp r6, #0x20
	blt _02038690
	add sp, sp, #0x38
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020388AC: .word g3DGameMapObject
_020388B0: .word 0x0000FFEF
_020388B4: .word 0x0000FFF7
_020388B8: .word 0x0000FEFF
_020388BC: .word 0x0000FDFF
	arm_func_end FUN_02038670

	arm_func_start FUN_020388c0
FUN_020388c0: ; 0x020388C0
	stmfd sp!, {r3, lr}
	add r0, r0, #0x870
	add r3, r0, #0x2000
	mov r0, #0x48
	mla r3, r1, r0, r3
	ldrh r0, [r3, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020388F4 ; =g3DGameMapObject
	ldr r1, [r3, #4]
	ldr r0, [r0]
	bl FUN_0205fe64
	ldmfd sp!, {r3, pc}
_020388F4: .word g3DGameMapObject
	arm_func_end FUN_020388c0

	arm_func_start FUN_020388f8
FUN_020388f8: ; 0x020388F8
	add r0, r0, #0x870
	add r2, r0, #0x2000
	mov r0, #0x48
	mla r2, r1, r0, r2
	ldrh r1, [r2, #0xa]
	tst r1, #1
	ldrne r0, [r2, #0x2c]
	subeq r0, r0, #0x49
	bx lr
	arm_func_end FUN_020388f8

	arm_func_start FUN_0203891c
FUN_0203891c: ; 0x0203891C
	stmfd sp!, {r3, r4, r5, lr}
	add r0, r0, #0x870
	add r3, r0, #0x2000
	mov r0, #0x48
	mla r5, r1, r0, r3
	ldrh r0, [r5, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r2, #4
	addls pc, pc, r2, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_02038948: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	ldmfd sp!, {r3, r4, r5, pc} ; case 1
	ldmfd sp!, {r3, r4, r5, pc} ; case 2
	ldmfd sp!, {r3, r4, r5, pc} ; case 3
	b _0203895C ; case 4
_0203895C:
	ldr r4, _02038980 ; =g3DGameMapObject
	ldr r1, [r5, #4]
	ldr r0, [r4]
	bl FUN_0205f02c
	ldr r0, [r4]
	ldr r1, [r5, #4]
	mov r2, #1
	bl FUN_0205fe34
	ldmfd sp!, {r3, r4, r5, pc}
_02038980: .word g3DGameMapObject
	arm_func_end FUN_0203891c

	arm_func_start FUN_02038984
FUN_02038984: ; 0x02038984
	stmfd sp!, {r3, lr}
	add r0, r0, #0x870
	add r12, r0, #0x2000
	mov r0, #0x48
	mla r12, r1, r0, r12
	ldrh r0, [r12, #0xa]
	tst r0, #1
	ldmeqfd sp!, {r3, pc}
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r1, [sp, #8]
	ldr r0, _020389CC ; =g3DGameMapObject
	str r1, [sp]
	ldr r0, [r0]
	ldr r1, [r12, #4]
	bl FUN_0205faf8
	ldmfd sp!, {r3, pc}
_020389CC: .word g3DGameMapObject
	arm_func_end FUN_02038984

	arm_func_start FUN_020389d0
FUN_020389d0: ; 0x020389D0
	stmfd sp!, {r0, r1, r2, r3}
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	orr r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsl #0x10
	str r2, [sp]
	mov r0, r0, lsr #0x10
	str r0, [sp, #4]
	ldr r2, [sp, #0x28]
	ldr r0, _02038A2C ; =gCameraCtrl
	str r2, [sp, #8]
	add r1, sp, #0x14
	ldr r0, [r0]
	ldmia r1, {r1, r2, r3}
	bl FUN_ov16_020f794c
	add sp, sp, #0xc
	ldmia sp!, {lr}
	add sp, sp, #0x10
	bx lr
_02038A2C: .word gCameraCtrl
	arm_func_end FUN_020389d0

	arm_func_start FUN_02038a30
FUN_02038a30: ; 0x02038A30
	stmfd sp!, {r0, r1, r2, r3}
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	orr r1, r1, #2
	mov r1, r1, lsl #0x10
	add r0, r0, #0x4000
	mov r3, #0
	strb r3, [r0, #0x254]
	mov r0, r1, lsr #0x10
	mov r2, r2, lsl #0x10
	str r0, [sp]
	mov r0, r2, lsr #0x10
	str r0, [sp, #4]
	ldr r2, [sp, #0x28]
	ldr r0, _02038A98 ; =gCameraCtrl
	str r2, [sp, #8]
	add r1, sp, #0x14
	ldr r0, [r0]
	ldmia r1, {r1, r2, r3}
	bl FUN_ov16_020f79ec
	add sp, sp, #0xc
	ldmia sp!, {lr}
	add sp, sp, #0x10
	bx lr
_02038A98: .word gCameraCtrl
	arm_func_end FUN_02038a30

	arm_func_start FUN_02038a9c
FUN_02038a9c: ; 0x02038A9C
	stmfd sp!, {r0, r1, r2, r3}
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	orr r0, r0, #4
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsl #0x10
	str r2, [sp]
	mov r0, r0, lsr #0x10
	str r0, [sp, #4]
	ldr r2, [sp, #0x28]
	ldr r0, _02038AF8 ; =gCameraCtrl
	str r2, [sp, #8]
	add r1, sp, #0x14
	ldr r0, [r0]
	ldmia r1, {r1, r2, r3}
	bl FUN_ov16_020f7a8c
	add sp, sp, #0xc
	ldmia sp!, {lr}
	add sp, sp, #0x10
	bx lr
_02038AF8: .word gCameraCtrl
	arm_func_end FUN_02038a9c

	arm_func_start FUN_02038afc
FUN_02038afc: ; 0x02038AFC
	stmfd sp!, {r3, lr}
	ldr r12, [sp, #8]
	ldr r0, _02038B2C ; =gCameraCtrl
	str r12, [sp]
	orr r2, r2, #4
	mov r2, r2, lsl #0x10
	mov r3, r3, lsl #0x10
	ldr r0, [r0]
	mov r2, r2, lsr #0x10
	mov r3, r3, lsr #0x10
	bl FUN_ov16_020f7b50
	ldmfd sp!, {r3, pc}
_02038B2C: .word gCameraCtrl
	arm_func_end FUN_02038afc

	arm_func_start FUN_02038b30
FUN_02038b30: ; 0x02038B30
	stmfd sp!, {r4, lr}
	cmp r1, #0
	mov r1, r2
	mov r4, r0
	mov r2, r3
	beq _02038B5C
	bl FUN_02035c50
	add r1, r4, #0x4000
	str r0, [r1, #0x250]
	mov r12, #2
	b _02038B6C
_02038B5C:
	bl FUN_ov131_0214aabc ; may be ov132 ; ov131(Mica)
	add r1, r4, #0x4000
	str r0, [r1, #0x250]
	mov r12, #1
_02038B6C:
	add r0, r4, #0x4000
	ldr r1, [r0, #0x250]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r3, [sp, #0xc]
	ldr r2, [sp, #8]
	ldr r1, [sp, #0x10]
	strb r12, [r0, #0x254]
	strb r3, [r0, #0x256]
	strb r2, [r0, #0x255]
	str r1, [r0, #0x258]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02038b30

	arm_func_start FUN_02038b9c
FUN_02038b9c: ; 0x02038B9C
	add r0, r0, #0x4000
	mov r1, #0
	strb r1, [r0, #0x254]
	bx lr
	arm_func_end FUN_02038b9c

	arm_func_start FUN_02038bac
FUN_02038bac: ; 0x02038BAC
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	ldr r1, _02038CD0 ; =gCameraCtrl
	mov r5, r0
	ldr r0, [r1]
	bl FUN_ov16_020f7c24
	mov r4, r0
	add r0, r5, #0x4200
	ldrsb r0, [r0, #0x54]
	ldr r3, [r4]
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	str r3, [sp, #0x18]
	str r2, [sp, #0x1c]
	str r1, [sp, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, pc}
	cmp r0, #1
	beq _02038C08
	cmp r0, #2
	beq _02038C38
	b _02038C6C
_02038C08:
	add r0, r5, #0x4000
	ldr r1, [r0, #0x250]
	ldr r0, _02038CD4 ; =g2DAdventureLogic
	ldr r1, [r1, #4]
	ldr r0, [r0]
	bl FUN_020552cc
	cmp r0, #0
	beq _02038C6C
	ldr r2, [r0, #0x84]
	ldr r1, [r0, #0x88]
	ldr r0, [r0, #0x8c]
	b _02038C60
_02038C38:
	add r0, r5, #0x4000
	ldr r1, [r0, #0x250]
	ldr r0, _02038CD8 ; =g3DGameChar
	ldr r2, [r1, #4]
	ldr r1, [r0]
	add r0, sp, #0xc
	bl FUN_0205afb4
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
_02038C60:
	str r2, [sp, #0x18]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
_02038C6C:
	ldr r1, [r4]
	ldr r0, [sp, #0x18]
	cmp r1, r0
	ldreq r1, [r4, #4]
	ldreq r0, [sp, #0x1c]
	cmpeq r1, r0
	ldreq r1, [r4, #8]
	ldreq r0, [sp, #0x20]
	cmpeq r1, r0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, pc}
	add r0, r5, #0x4200
	ldrsb r2, [r0, #0x55]
	add r4, r5, #0x4000
	add r1, sp, #0x18
	str r2, [sp]
	ldrsb r12, [r0, #0x56]
	mov r0, r5
	ldmia r1, {r1, r2, r3}
	str r12, [sp, #4]
	ldr r4, [r4, #0x258]
	str r4, [sp, #8]
	bl FUN_02038a30
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, pc}
_02038CD0: .word gCameraCtrl
_02038CD4: .word g2DAdventureLogic
_02038CD8: .word g3DGameChar
	arm_func_end FUN_02038bac

	arm_func_start FUN_02038cdc
FUN_02038cdc: ; 0x02038CDC
	ldr r0, _02038CF0 ; =g3DMagicCamera
	ldr r12, _02038CF4 ; =FUN_020529d8
	ldr r0, [r0]
	mov r2, #1
	bx r12
_02038CF0: .word g3DMagicCamera
_02038CF4: .word FUN_020529d8
	arm_func_end FUN_02038cdc

	arm_func_start FUN_02038cf8
FUN_02038cf8: ; 0x02038CF8
	stmfd sp!, {r4, lr}
	ldr r4, _02038D24 ; =g3DMagicCamera
	ldr r0, [r4]
	bl FUN_02052b20
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4]
	bl FUN_02052c70
	mov r0, #1
	ldmfd sp!, {r4, pc}
_02038D24: .word g3DMagicCamera
	arm_func_end FUN_02038cf8

	arm_func_start FUN_02038d28
FUN_02038d28: ; 0x02038D28
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _02038D54 ; =g3DMagicCamera
	mov r5, r1
	ldr r0, [r4]
	bl FUN_0205302c
	ldr r0, [r4]
	mov r1, r5
	bl FUN_02053080
	ldr r0, [r4]
	bl FUN_020530a0
	ldmfd sp!, {r3, r4, r5, pc}
_02038D54: .word g3DMagicCamera
	arm_func_end FUN_02038d28

	arm_func_start FUN_02038d58
FUN_02038d58: ; 0x02038D58
	ldr r0, _02038D68 ; =g3DMagicCamera
	ldr r12, _02038D6C ; =FUN_020530e0
	ldr r0, [r0]
	bx r12
_02038D68: .word g3DMagicCamera
_02038D6C: .word FUN_020530e0
	arm_func_end FUN_02038d58

	arm_func_start FUN_02038d70
FUN_02038d70: ; 0x02038D70
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r0, _02038DE8 ; =g3DMagicCamera
	mov r5, r1
	ldr r0, [r0]
	mov r4, r2
	adds r6, r0, #0x22c
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r7, #0
	mov r8, r7
	b _02038DD8
_02038D9C:
	ldr r1, [r4, r8, lsl #2]
	mov r0, r6
	bl FUN_ov16_020fb110
	mov r1, r0
	mov r0, r6
	bl FUN_ov16_020fb050
	cmp r0, #0
	beq _02038DD4
	ldr r3, [r0, #0x10]
	ldr r2, [r0, #0xc]
	ldr r1, [r0, #0x14]
	sub r0, r3, r2
	bl FX_Div
	add r7, r7, r0, asr #12
_02038DD4:
	add r8, r8, #1
_02038DD8:
	cmp r8, r5
	blt _02038D9C
	mov r0, r7
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02038DE8: .word g3DMagicCamera
	arm_func_end FUN_02038d70

	arm_func_start FUN_02038dec
FUN_02038dec: ; 0x02038DEC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	ldr r1, _02038F38 ; =0x0208FC20
	ldr r4, _02038F3C ; =g3DPlaneCtrl
	mov r6, r0
	mov r5, #0
	ldr r2, [r1]
	ldr r0, [r4]
	mov r8, #5
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	mov r1, r8
	mov r3, r5
	str r5, [sp, #0x10]
	bl FUN_02058800
	mov r1, r0
	add r0, r6, #0x1000
	str r1, [r0, #0x350]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
	mov r7, #1
	ldr r0, [r4]
	mov r1, r8
	mov r2, r7
	bl _ZN12C3DPlaneCtrl6createEib
	mov r1, r0
	add r0, r6, #0x1000
	ldr r2, [r0, #0x350]
	str r1, [r0, #0x35c]
	ldr r0, [r4]
	and r2, r2, #0xff
	bl _ZN12C3DPlaneCtrl9setTexAllEih
	add r1, r6, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x35c]
	mov r2, #0x64
	bl _ZN12C3DPlaneCtrl11setDepthAllEij
	add r1, r6, #0x1000
	mov r3, r7
	mov r7, #2
	ldr r0, [r4]
	ldr r1, [r1, #0x35c]
	mov r2, r7
	bl _ZN12C3DPlaneCtrl10setFlagAllEitb
	add r1, r6, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x35c]
	mov r2, r7
	bl _ZN12C3DPlaneCtrl9clearFlagEit
	add r1, r6, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x35c]
	mov r2, #0x30
	mov r3, #0x60
	bl _ZN12C3DPlaneCtrl6setPosEiss
	add r7, r6, #0x1000
	mov r8, r5
	b _02038F04
_02038EE4:
	str r8, [sp]
	mov r3, r5, lsl #0x15
	ldr r0, [r4]
	ldr r1, [r7, #0x35c]
	add r2, r5, #1
	mov r3, r3, asr #0x10
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	add r5, r5, #1
_02038F04:
	cmp r5, #5
	blt _02038EE4
	mov r1, #0
	ldr r0, _02038F3C ; =g3DPlaneCtrl
	str r1, [sp]
	add r1, r6, #0x1000
	ldr r0, [r0]
	ldr r1, [r1, #0x35c]
	mov r2, #3
	mov r3, #0xb
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02038F38: .word unk_0208FC20
_02038F3C: .word g3DPlaneCtrl
	arm_func_end FUN_02038dec

	arm_func_start FUN_02038f40
FUN_02038f40: ; 0x02038F40
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r7, r0
	ldr r5, _020390A0 ; =g3DPlaneCtrl
	add r1, r7, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x35c]
	mov r2, #2
	mov r3, #1
	bl _ZN12C3DPlaneCtrl10setFlagAllEitb
	mov r10, #0
	add r4, r7, #0x1000
	mov r6, r10
	b _02038F94
_02038F74:
	str r6, [sp]
	mov r3, r10, lsl #0x15
	ldr r0, [r5]
	ldr r1, [r4, #0x35c]
	add r2, r10, #1
	mov r3, r3, asr #0x10
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	add r10, r10, #1
_02038F94:
	cmp r10, #5
	blt _02038F74
	mov r10, #0
	add r4, r7, #0x1000
	mov r8, r10
	ldr r7, _020390A4 ; 0x02099EF0
	ldr r6, _020390A0 ; =g3DPlaneCtrl
	ldr r5, _020390A8 ; =0x66666667
	mov r11, #0xa
	b _02039094
_02038FBC:
	ldr r0, [r7]
	bl FUN_ov132_02144f4c
	cmp r0, #0
	ldr r0, [r7]
	mov r1, r10
	bne _02038FDC
	bl FUN_ov132_02143c28
	b _02038FE0
_02038FDC:
	bl FUN_ov132_02143c34
_02038FE0:
	mov r9, r0
	cmp r9, #0x63
	movgt r9, #0x63
	smull r1, r3, r5, r9
	str r8, [sp]
	mov r0, r9, lsr #0x1f
	add r3, r0, r3, asr #2
	add r2, r10, r10, lsl #1
	ldr r0, [r6]
	ldr r1, [r4, #0x35c]
	add r2, r2, #1
	add r3, r3, #1
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
	smull r12, r3, r5, r9
	str r8, [sp]
	mov r12, r9, lsr #0x1f
	add r3, r12, r3, asr #2
	smull r3, r12, r11, r3
	add r2, r10, r10, lsl #1
	sub r3, r9, r3
	ldr r0, [r6]
	ldr r1, [r4, #0x35c]
	add r2, r2, #2
	add r3, r3, #1
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
	cmp r9, #0xa
	bge _02039090
	add r2, r10, r10, lsl #1
	ldr r0, [r6]
	ldr r1, [r4, #0x35c]
	mov r3, #2
	add r2, r2, #1
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
	mov r3, #0x60
	str r8, [sp]
	mul r3, r10, r3
	add r3, r3, #0x10
	add r2, r10, r10, lsl #1
	mov r3, r3, lsl #0x10
	ldr r0, [r6]
	ldr r1, [r4, #0x35c]
	add r2, r2, #2
	mov r3, r3, asr #0x10
	bl _ZN12C3DPlaneCtrl6setPosEiiss
_02039090:
	add r10, r10, #1
_02039094:
	cmp r10, #2
	blt _02038FBC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020390A0: .word g3DPlaneCtrl
_020390A4: .word gUtilGame
_020390A8: .word 0x66666667
	arm_func_end FUN_02038f40

	arm_func_start FUN_020390ac
FUN_020390ac: ; 0x020390AC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldr r1, [r0, #0x35c]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020390E4 ; =g3DPlaneCtrl
	mov r2, #2
	ldr r0, [r0]
	mov r3, #1
	bl _ZN12C3DPlaneCtrl7setFlagEitb
	mov r0, r4
	bl FUN_02038f40
	ldmfd sp!, {r4, pc}
_020390E4: .word g3DPlaneCtrl
	arm_func_end FUN_020390ac

	arm_func_start FUN_020390e8
FUN_020390e8: ; 0x020390E8
	stmfd sp!, {r4, lr}
	ldr r1, _02039120 ; 0x02099EF0
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _02039104
	bl FUN_ov132_02143c40
_02039104:
	add r0, r4, #0x1000
	ldr r0, [r0, #0x35c]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_02038f40
	ldmfd sp!, {r4, pc}
_02039120: .word gUtilGame
	arm_func_end FUN_020390e8

	arm_func_start FUN_02039124
FUN_02039124: ; 0x02039124
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x1000
	ldr r1, [r0, #0x35c]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r4, _020391A4 ; =g3DPlaneCtrl
	mov r2, #2
	ldr r0, [r4]
	bl _ZN12C3DPlaneCtrl9clearFlagEit
	add r0, r5, #0x1000
	ldr r1, [r0, #0x350]
	ldr r0, [r4]
	bl FUN_020591e8
	add r0, r5, #0x1000
	ldr r1, [r0, #0x350]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r5, #0x1000
	ldr r1, [r0, #0x350]
	ldr r0, [r4]
	bl FUN_02058ee0
	ldr r0, [r4]
	add r1, r5, #0x1000
	ldr r1, [r1, #0x35c]
	bl _ZN12C3DPlaneCtrl7destroyEi
	add r0, r5, #0x348
	add r0, r0, #0x1000
	mov r1, #0
	mov r2, #0x1c
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
_020391A4: .word g3DPlaneCtrl
	arm_func_end FUN_02039124

	arm_func_start FUN_020391a8
FUN_020391a8: ; 0x020391A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x90
	mov r10, r0
	ldr r0, _0203956C ; =gLogicThink
	mov r1, #0
	bl FUN_0207249c
	ldr r1, _02039570 ; =0x020A0640
	mov r4, r0
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	bne _020391E0
	bl FUN_ov16_020f068c
	cmp r0, #0
	beq _02039200
_020391E0:
	bl FUN_ov16_020f081c
	cmp r0, #0
	add r0, sp, #0x10
	bne _020391F8
	ldr r1, _02039574 ; =0x0208FE24
	b _02039214
_020391F8:
	ldr r1, _02039578 ; =0x0208FE38
	b _02039214
_02039200:
	ldrh r2, [r4, #0x2a]
	ldr r1, _0203957C ; =0x0208FE4C
	add r0, sp, #0x10
	cmp r2, #0
	ldreqh r2, [r4, #0x20]
_02039214:
	bl STD_TSPrintf
	ldr r0, _0203956C ; =gLogicThink
	mov r1, #1
	bl FUN_0207249c
	ldr r1, _02039570 ; =0x020A0640
	mov r4, r0
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	bne _02039244
	bl FUN_ov16_020f068c
	cmp r0, #0
	beq _02039264
_02039244:
	bl FUN_ov16_020f081c
	cmp r0, #0
	add r0, sp, #0x50
	bne _0203925C
	ldr r1, _02039580 ; =0x0208FE5C
	b _02039278
_0203925C:
	ldr r1, _02039584 ; =0x0208FE70
	b _02039278
_02039264:
	ldrh r2, [r4, #0x2a]
	ldr r1, _02039588 ; =0x0208FE84
	add r0, sp, #0x50
	cmp r2, #0
	ldreqh r2, [r4, #0x20]
_02039278:
	bl STD_TSPrintf
	ldr r4, _0203958C ; =0x0209A200
	ldr r5, _02039590 ; =g3DPlaneCtrl
	ldr r2, [r4, #0x18]
	ldr r0, [r5]
	mov r9, #0
	str r9, [sp]
	mov r6, #5
	str r9, [sp, #4]
	add r3, sp, #0x10
	mov r1, r6
	str r9, [sp, #8]
	bl FUN_02058684
	add r1, r10, #0x1000
	str r0, [r1, #0x334]
	ldr r2, [r4, #0x18]
	ldr r0, [r5]
	add r3, sp, #0x50
	str r9, [sp]
	str r9, [sp, #4]
	mov r1, r6
	str r9, [sp, #8]
	bl FUN_02058684
	add r1, r10, #0x1000
	str r0, [r1, #0x338]
	ldr r2, [r4]
	ldr r0, [r5]
	ldr r3, _02039594 ; =0x0208FE94
	str r9, [sp]
	str r9, [sp, #4]
	mov r1, r6
	str r9, [sp, #8]
	bl FUN_02058684
	add r1, r10, #0x1000
	str r0, [r1, #0x33c]
	ldr r1, [r1, #0x334]
	ldr r0, [r5]
	mov r2, r9
	mov r3, r9
	bl FUN_02059038
	add r0, r10, #0x1000
	ldr r1, [r0, #0x338]
	ldr r0, [r5]
	mov r2, r9
	mov r3, r9
	bl FUN_02059038
	add r0, r10, #0x1000
	ldr r1, [r0, #0x33c]
	ldr r0, [r5]
	mov r2, r9
	mov r3, r9
	bl FUN_02059038
	mvn r11, #7
	sub r0, r11, #0x10
	str r0, [sp, #0xc]
	add r4, r10, #0x1000
	mov r8, #1
	mov r7, r9
	mov r6, #0xe
	b _02039544
_02039368:
	ldr r0, [r5]
	mov r1, #4
	mov r2, r8
	bl _ZN12C3DPlaneCtrl6createEib
	mov r1, r0
	add r0, r10, r9, lsl #2
	add r0, r0, #0x1000
	str r1, [r0, #0x340]
	ldr r2, [r4, #0x33c]
	ldr r0, [r5]
	and r2, r2, #0xff
	bl _ZN12C3DPlaneCtrl9setTexAllEih
	add r1, r10, r9, lsl #2
	add r1, r1, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x340]
	mov r2, r7
	mov r3, r7
	bl _ZN12C3DPlaneCtrl16setGraphicIdxAllEihb
	add r1, r10, r9, lsl #2
	add r1, r1, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x340]
	mov r2, #0x63
	bl _ZN12C3DPlaneCtrl11setDepthAllEij
	add r1, r10, r9, lsl #2
	str r6, [sp]
	add r1, r1, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x340]
	mov r2, #2
	mov r3, #9
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	add r1, r10, r9, lsl #2
	str r6, [sp]
	add r1, r1, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x340]
	mov r2, #3
	mov r3, r11
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	add r1, r10, r9, lsl #2
	str r6, [sp]
	add r1, r1, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x340]
	ldr r3, [sp, #0xc]
	mov r2, #4
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	add r1, r10, r9, lsl #2
	add r2, r1, #0x1000
	ldr r3, [r2, #0x334]
	ldr r1, [r2, #0x340]
	ldr r0, [r5]
	mov r2, r8
	and r3, r3, #0xff
	bl _ZN12C3DPlaneCtrl6setTexEiih
	add r1, r10, r9, lsl #2
	str r7, [sp]
	add r1, r1, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x340]
	mov r2, r8
	mov r3, r7
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
	add r1, r10, r9, lsl #2
	str r7, [sp]
	add r1, r1, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x340]
	mov r2, r8
	mov r3, r7
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	add r1, r10, r9, lsl #2
	add r1, r1, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x340]
	mov r2, r8
	mov r3, #0x64
	bl _ZN12C3DPlaneCtrl8setDepthEiij
	str r7, [sp]
	add r1, r10, r9, lsl #2
	tst r9, #1
	ldr r0, [r5]
	add r1, r1, #0x1000
	bne _020394D0
	ldr r1, [r1, #0x340]
	mov r2, r8
	mov r3, #0x28
	b _020394DC
_020394D0:
	ldr r1, [r1, #0x340]
	mov r2, r8
	mov r3, #0x3c
_020394DC:
	bl _ZN12C3DPlaneCtrl12setPosAnchorEiihh
	add r1, r10, r9, lsl #2
	add r1, r1, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x340]
	mov r2, #2
	mov r3, #1
	bl _ZN12C3DPlaneCtrl10setFlagAllEitb
	add r1, r10, r9, lsl #2
	add r1, r1, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x340]
	mov r2, #2
	bl _ZN12C3DPlaneCtrl9clearFlagEit
	add r1, r10, r9, lsl #2
	add r1, r1, #0x1000
	tst r9, #1
	ldr r0, [r5]
	mov r3, #0x80
	ldr r1, [r1, #0x340]
	bne _02039538
	mov r2, #0x20
	b _0203953C
_02039538:
	mov r2, #0xe0
_0203953C:
	bl _ZN12C3DPlaneCtrl6setPosEiss
	add r9, r9, #1
_02039544:
	cmp r9, #2
	blt _02039368
	add r0, r10, #0x1000
	ldr r1, [r0, #0x32c]
	mov r2, #0x14
	add r1, r1, #1
	str r2, [r0, #0x330]
	str r1, [r0, #0x32c]
	add sp, sp, #0x90
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203956C: .word gLogicThink
_02039570: .word unk_020A0640
_02039574: .word unk_0208FE24
_02039578: .word unk_0208FE38
_0203957C: .word unk_0208FE4C
_02039580: .word unk_0208FE5C
_02039584: .word unk_0208FE70
_02039588: .word unk_0208FE84
_0203958C: .word unk_0209A200
_02039590: .word g3DPlaneCtrl
_02039594: .word unk_0208FE94
	arm_func_end FUN_020391a8

	arm_func_start FUN_02039598
FUN_02039598: ; 0x02039598
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldr r2, _02039744 ; 0x02099EF0
	mov r3, #0
	str r0, [sp, #4]
	ldr r0, [r2]
	str r1, [sp, #8]
	str r3, [sp, #0x10]
	str r3, [sp, #0xc]
	bl FUN_ov126_0213246c
	movs r4, r0
	beq _02039604
	ldrsb r0, [r4, #4]
	bl FUN_ov16_020f07f4
	cmp r0, #0
	mov r0, r4
	bne _020395F0
	bl FUN_ov126_02132718
	str r0, [sp, #0xc]
	mov r0, r4
	bl FUN_ov126_02132730
	b _02039600
_020395F0:
	bl FUN_ov126_02132730
	str r0, [sp, #0xc]
	mov r0, r4
	bl FUN_ov126_02132718
_02039600:
	str r0, [sp, #0x10]
_02039604:
	mov r7, #0
	b _020396F0
_0203960C:
	ldr r0, [sp, #4]
	ldr r10, _02039748 ; =g3DPlaneCtrl
	add r0, r0, r7, lsl #2
	add r1, r0, #0x1000
	ldr r0, [r10]
	ldr r1, [r1, #0x340]
	mov r2, #2
	mov r3, #1
	bl _ZN12C3DPlaneCtrl7setFlagEitb
	ldr r0, [sp, #4]
	mov r6, #0
	add r0, r0, r7, lsl #2
	add r9, r0, #0x1000
	add r5, sp, #0xc
	mov r4, r6
	ldr r8, _0203974C ; =0x66666667
	mov r11, #0xa
	b _020396B8
_02039654:
	ldr r0, [r5, r7, lsl #2]
	cmp r0, #0
	bne _02039674
	ldr r0, [r10]
	ldr r1, [r9, #0x340]
	mov r3, #2
	add r2, r6, #2
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
_02039674:
	ldr r12, [r5, r7, lsl #2]
	str r4, [sp]
	mov r0, r12, lsr #0x1f
	smull r1, r3, r8, r12
	add r3, r0, r3, asr #2
	ldr r0, [r10]
	ldr r1, [r9, #0x340]
	add r2, r6, #2
	smull r3, lr, r11, r3
	sub r3, r12, r3
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
	ldr r1, [r5, r7, lsl #2]
	add r6, r6, #1
	smull r0, r2, r8, r1
	mov r0, r1, lsr #0x1f
	add r2, r0, r2, asr #2
	str r2, [r5, r7, lsl #2]
_020396B8:
	cmp r6, #3
	blt _02039654
	ldr r0, [sp, #4]
	mov r3, #1
	add r1, r0, r7, lsl #2
	ldr r0, _02039748 ; =g3DPlaneCtrl
	str r3, [sp]
	add r1, r1, #0x1000
	mov r2, #2
	ldr r0, [r0]
	ldr r1, [r1, #0x340]
	mov r3, r2
	bl _ZN12C3DPlaneCtrl7setFlagEiitb
	add r7, r7, #1
_020396F0:
	cmp r7, #2
	blt _0203960C
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02039728
	rsb r1, r0, #2
	ldr r0, [sp, #4]
	mov r2, #2
	add r1, r0, r1, lsl #2
	ldr r0, _02039748 ; =g3DPlaneCtrl
	add r1, r1, #0x1000
	ldr r0, [r0]
	ldr r1, [r1, #0x340]
	bl _ZN12C3DPlaneCtrl9clearFlagEit
_02039728:
	ldr r0, [sp, #4]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x32c]
	add r1, r1, #1
	str r1, [r0, #0x32c]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02039744: .word gUtilGame
_02039748: .word g3DPlaneCtrl
_0203974C: .word 0x66666667
	arm_func_end FUN_02039598

	arm_func_start FUN_02039750
FUN_02039750: ; 0x02039750
	add r0, r0, #0x1000
	ldr r1, [r0, #0x32c]
	add r1, r1, #1
	str r1, [r0, #0x32c]
	bx lr
	arm_func_end FUN_02039750

	arm_func_start FUN_02039764
FUN_02039764: ; 0x02039764
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, #0
	mov r5, #2
	ldr r4, _020397B0 ; =g3DPlaneCtrl
	b _02039798
_0203977C:
	add r0, r7, r6, lsl #2
	add r1, r0, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x340]
	mov r2, r5
	bl _ZN12C3DPlaneCtrl9clearFlagEit
	add r6, r6, #1
_02039798:
	cmp r6, #2
	blt _0203977C
	add r0, r7, #0x1000
	mov r1, #1
	str r1, [r0, #0x32c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020397B0: .word g3DPlaneCtrl
	arm_func_end FUN_02039764

	arm_func_start FUN_020397b4
FUN_020397b4: ; 0x020397B4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	add r0, r5, #0x1000
	ldr r0, [r0, #0x32c]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #0
	ldr r6, _02039864 ; =g3DPlaneCtrl
	b _02039818
_020397D8:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0x334]
	ldr r0, [r6]
	bl FUN_020591e8
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0x334]
	ldr r0, [r6]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0x334]
	ldr r0, [r6]
	bl FUN_02058ee0
	add r4, r4, #1
_02039818:
	cmp r4, #3
	blt _020397D8
	mov r4, #0
	ldr r6, _02039864 ; =g3DPlaneCtrl
	b _02039844
_0203982C:
	add r0, r5, r4, lsl #2
	add r1, r0, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x340]
	bl _ZN12C3DPlaneCtrl7destroyEi
	add r4, r4, #1
_02039844:
	cmp r4, #2
	blt _0203982C
	add r0, r5, #0x32c
	add r0, r0, #0x1000
	mov r1, #0
	mov r2, #0x1c
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, pc}
_02039864: .word g3DPlaneCtrl
	arm_func_end FUN_020397b4

	arm_func_start FUN_02039868
FUN_02039868: ; 0x02039868
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	str r0, [sp, #4]
	add r0, r0, #0x1000
	ldr r3, [r0, #0x32c]
	mov r4, #1
	cmp r3, #4
	mov r11, #0
	addls pc, pc, r3, lsl #2
	b _02039B58
_02039890: ; jump table
	b _02039B58 ; case 0
	b _02039B58 ; case 1
	b _020398A4 ; case 2
	b _020398C8 ; case 3
	b _020399A4 ; case 4
_020398A4:
	ldr r2, [r0, #0x330]
	ldr r1, [r0, #0x3e0]
	add sp, sp, #0x1c
	sub r1, r2, r1
	str r1, [r0, #0x330]
	cmp r1, #0
	addle r1, r3, #1
	strle r1, [r0, #0x32c]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020398C8:
	mov r9, r11
	b _02039994
_020398D0:
	ldr r0, _02039B60 ; =0x000003E7
	bl _ZN6Random5RandBEm
	ldr r1, [sp, #4]
	ldr r6, _02039B64 ; =g3DPlaneCtrl
	add r1, r1, r9, lsl #2
	add r1, r1, #0x1000
	add r0, r0, #1
	add r7, sp, #0x14
	str r0, [r7, r9, lsl #2]
	ldr r1, [r1, #0x340]
	ldr r0, [r6]
	mov r2, #2
	mov r3, #1
	bl _ZN12C3DPlaneCtrl10setFlagAllEitb
	ldr r0, [sp, #4]
	mov r8, #0
	add r0, r0, r9, lsl #2
	add r5, r0, #0x1000
	ldr r4, _02039B68 ; =0x66666667
	b _02039988
_02039920:
	ldr r0, [r7, r9, lsl #2]
	cmp r0, #0
	bne _02039940
	ldr r0, [r6]
	ldr r1, [r5, #0x340]
	add r2, r8, #2
	mov r3, #2
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
_02039940:
	ldr r12, [r7, r9, lsl #2]
	str r11, [sp]
	smull lr, r3, r4, r12
	mov r10, r12, lsr #0x1f
	add r3, r10, r3, asr #2
	mov r10, #0xa
	smull r3, lr, r10, r3
	ldr r0, [r6]
	ldr r1, [r5, #0x340]
	add r2, r8, #2
	sub r3, r12, r3
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
	ldr r1, [r7, r9, lsl #2]
	add r8, r8, #1
	smull r0, r2, r4, r1
	mov r0, r1, lsr #0x1f
	add r2, r0, r2, asr #2
	str r2, [r7, r9, lsl #2]
_02039988:
	cmp r8, #3
	blt _02039920
	add r9, r9, #1
_02039994:
	cmp r9, #2
	blt _020398D0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020399A4:
	ldr r0, _02039B6C ; 0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_0213246c
	mov r5, r0
	mov r1, r11
	ldrsb r0, [r5, #4]
	str r1, [sp, #0x10]
	bl FUN_ov16_020f07f4
	cmp r0, #0
	mov r0, r5
	mov r1, r4
	bne _020399F8
	bl FUN_ov126_021327b8
	cmp r0, #0
	mov r0, r5
	streq r4, [sp, #0x10]
	bl FUN_ov126_02132718
	str r0, [sp, #0x14]
	mov r0, r5
	bl FUN_ov126_02132730
	b _02039A18
_020399F8:
	bl FUN_ov126_021327b8
	cmp r0, #0
	mov r0, r5
	strne r4, [sp, #0x10]
	bl FUN_ov126_02132730
	str r0, [sp, #0x14]
	mov r0, r5
	bl FUN_ov126_02132718
_02039A18:
	str r0, [sp, #0x18]
	mov r9, #0
	b _02039B3C
_02039A24:
	ldr r0, [sp, #4]
	ldr r6, _02039B64 ; =g3DPlaneCtrl
	add r0, r0, r9, lsl #2
	add r1, r0, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x340]
	mov r2, #2
	mov r3, #1
	bl _ZN12C3DPlaneCtrl10setFlagAllEitb
	ldr r0, [sp, #4]
	mov r8, #0
	add r0, r0, r9, lsl #2
	add r5, r0, #0x1000
	add r7, sp, #0x14
	ldr r4, _02039B68 ; =0x66666667
	b _02039B04
_02039A64:
	ldr r0, [r7, r9, lsl #2]
	cmp r0, #0
	bne _02039A84
	ldr r0, [r6]
	ldr r1, [r5, #0x340]
	add r2, r8, #2
	mov r3, #2
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
_02039A84:
	ldr r0, [sp, #0x10]
	str r11, [sp]
	cmp r9, r0
	ldr r0, [r6]
	ldr r1, [r5, #0x340]
	add r2, r8, #2
	bne _02039AC8
	ldr lr, [r7, r9, lsl #2]
	mov r12, #0xa
	smull r10, r3, r4, lr
	mov r10, lr, lsr #0x1f
	add r3, r10, r3, asr #2
	smull r10, r3, r12, r3
	str r3, [sp, #8]
	sub r3, lr, r10
	add r3, r3, #0xa
	b _02039AE8
_02039AC8:
	ldr r12, [r7, r9, lsl #2]
	mov lr, #0xa
	smull r10, r3, r4, r12
	mov r10, r12, lsr #0x1f
	add r3, r10, r3, asr #2
	smull r10, r3, lr, r3
	str r3, [sp, #0xc]
	sub r3, r12, r10
_02039AE8:
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
	ldr r1, [r7, r9, lsl #2]
	add r8, r8, #1
	smull r0, r2, r4, r1
	mov r0, r1, lsr #0x1f
	add r2, r0, r2, asr #2
	str r2, [r7, r9, lsl #2]
_02039B04:
	cmp r8, #3
	blt _02039A64
	ldr r0, [sp, #4]
	mov r3, #1
	add r1, r0, r9, lsl #2
	ldr r0, _02039B64 ; =g3DPlaneCtrl
	str r3, [sp]
	add r1, r1, #0x1000
	mov r2, #2
	ldr r0, [r0]
	ldr r1, [r1, #0x340]
	mov r3, r2
	bl _ZN12C3DPlaneCtrl7setFlagEiitb
	add r9, r9, #1
_02039B3C:
	cmp r9, #2
	blt _02039A24
	ldr r0, [sp, #4]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x32c]
	add r1, r1, #1
	str r1, [r0, #0x32c]
_02039B58:
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02039B60: .word 0x000003E7
_02039B64: .word g3DPlaneCtrl
_02039B68: .word 0x66666667
_02039B6C: .word gUtilGame
	arm_func_end FUN_02039868

	arm_func_start FUN_02039b70
FUN_02039b70: ; 0x02039B70
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x94
	ldr r3, _02039EF0 ; =0x0208C374
	ldr r2, _02039EF4 ; 0x02099EF0
	ldrb r8, [r3]
	ldrb r7, [r3, #1]
	ldrb r6, [r3, #2]
	ldrb r5, [r3, #3]
	ldrb r4, [r3, #4]
	ldrb r3, [r3, #5]
	mov r10, r0
	ldr r0, [r2]
	mov r11, r1
	strb r8, [sp, #0xc]
	strb r7, [sp, #0xd]
	strb r6, [sp, #0xe]
	strb r5, [sp, #0xf]
	strb r4, [sp, #0x10]
	strb r3, [sp, #0x11]
	cmp r0, #0
	mov r6, #0
	beq _02039BD8
	bl FUN_ov132_021434f8
	cmp r0, #0
	addne sp, sp, #0x94
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02039BD8:
	cmp r11, #0
	bge _02039BF8
	ldr r0, _02039EF4 ; 0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02148398
	cmp r0, #0
	addeq sp, sp, #0x94
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02039BF8:
	ldr r4, _02039EF4 ; 0x02099EF0
	ldr r0, [r4]
	bl FUN_ov132_02148398
	cmp r0, #0
	beq _02039C38
	ldr r0, [r4]
	bl FUN_ov132_02159df0
	cmp r0, #0
	beq _02039C38
	ldrb r0, [r0, #4]
	tst r0, #0x40
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addne sp, sp, #0x94
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02039C38:
	ldr r0, _02039EF8 ; =g3DPlaneCtrl
	mov r9, #3
	ldr r0, [r0]
	mov r1, r9
	mov r2, #1
	bl _ZN12C3DPlaneCtrl6createEib
	add r1, r10, #0x1000
	ldr r2, _02039EF4 ; 0x02099EF0
	str r0, [r1, #0x374]
	ldr r0, [r2]
	bl FUN_ov132_02148398
	cmp r0, #0
	moveq r9, #0
	mov r8, #0
	add r4, r10, #0x1000
	add r7, sp, #0x12
	ldr r5, _02039EF8 ; =g3DPlaneCtrl
	b _02039D38
_02039C80:
	add r0, sp, #0xc
	ldrb r2, [r0, r9]
	ldr r1, _02039EFC ; =0x0208FEA4
	mov r0, r7
	bl STD_TSPrintf
	ldr r0, _02039F00 ; =0x0209A200
	mov r1, #5
	ldr r2, [r0]
	ldr r0, [r5]
	mov r3, r7
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	bl FUN_02058684
	add r1, r10, r8, lsl #2
	add r1, r1, #0x1000
	str r0, [r1, #0x368]
	mov r1, r0
	ldr r0, [r5]
	mov r2, r6
	mov r3, r6
	bl FUN_02059038
	add r3, r10, r8, lsl #2
	add r3, r3, #0x1000
	ldr r3, [r3, #0x368]
	ldr r0, [r5]
	ldr r1, [r4, #0x374]
	add r2, r8, #1
	and r3, r3, #0xff
	bl _ZN12C3DPlaneCtrl6setTexEiih
	str r6, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x374]
	add r2, r8, #1
	mov r3, r6
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
	add r1, r10, r8, lsl #2
	str r6, [sp]
	add r1, r1, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x374]
	mov r2, r8
	mov r3, r6
	bl _ZN12C3DPlaneCtrl12setPosAnchorEiihh
	add r8, r8, #1
	add r9, r9, #1
_02039D38:
	cmp r8, #3
	blt _02039C80
	ldr r4, _02039EF8 ; =g3DPlaneCtrl
	add r1, r10, #0x1000
	mov r6, #2
	ldr r0, [r4]
	ldr r1, [r1, #0x374]
	mov r2, r6
	bl _ZN12C3DPlaneCtrl9clearFlagEit
	mov r5, #8
	str r5, [sp]
	add r1, r10, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x374]
	mov r3, r5
	mov r2, #3
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	str r5, [sp]
	add r0, r10, #0x1000
	ldr r1, [r0, #0x374]
	mov r2, r6
	ldr r0, [r4]
	mov r6, #0x28
	mov r3, r6
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	str r5, [sp]
	ldr r0, [r4]
	mov r3, r6
	add r1, r10, #0x1000
	ldr r1, [r1, #0x374]
	mov r4, #1
	mov r2, r4
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	sub r0, r4, #2
	cmp r11, r0
	bne _02039E18
	bl FUN_ov16_020f081c
	ldr r5, _02039F04 ; =gLogicThink
	mov r1, r0
	mov r0, r5
	bl FUN_0207249c
	mov r4, r0
	ldrb r6, [r4, #0x43]
	bl FUN_ov16_020f081c
_02039DE8:
	mov r1, r0
	mov r0, r5
	bl FUN_020724e8
	mov r2, #0x64
	mov r1, r0
	smulbb r0, r6, r2
	bl _s32_div_f
	ldrb r2, [r4, #0x43]
	add r1, r10, #0x1000
	mov r4, r0
	str r2, [r1, #0x37c]
	b _02039E8C
_02039E18:
	sub r0, r4, #3
	cmp r11, r0
	bne _02039E48
	bl FUN_ov16_020f083c
	ldr r5, _02039F04 ; =gLogicThink
	mov r1, r0
	mov r0, r5
	bl FUN_0207249c
	mov r4, r0
	ldrb r6, [r4, #0x43]
	bl FUN_ov16_020f083c
	b _02039DE8
_02039E48:
	mov r0, r11
	mov r1, #0
	bl FUN_ov16_020efa9c
	mov r5, r0
	bl FUN_0206cc84
	mov r4, r0
	mov r0, r5
	bl FUN_0206cc94
	mov r2, #0x64
	mov r1, r0
	smulbb r0, r4, r2
	bl _s32_div_f
	mov r4, r0
	mov r0, r5
	bl FUN_0206cc84
	add r1, r10, #0x1000
	str r0, [r1, #0x37c]
_02039E8C:
	add r1, r10, #0x1000
	str r11, [r1, #0x378]
	mov r6, #0x64
	str r6, [sp]
	ldr r5, _02039EF8 ; =g3DPlaneCtrl
	mov r2, r4, lsl #0x10
	ldr r0, [r5]
	ldr r1, [r1, #0x374]
	mov r3, r2, asr #0x10
	mov r2, #2
	bl _ZN12C3DPlaneCtrl11setTexScaleEiiss
	str r6, [sp]
	add r1, r10, #0x1000
	mov r2, r4, lsl #0x10
	ldr r0, [r5]
	ldr r1, [r1, #0x374]
	mov r3, r2, asr #0x10
	mov r2, #1
	bl _ZN12C3DPlaneCtrl11setTexScaleEiiss
	add r0, r10, #0x1000
	ldr r1, [r0, #0x364]
	add r1, r1, #1
	str r1, [r0, #0x364]
	add sp, sp, #0x94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02039EF0: .word unk_0208C374
_02039EF4: .word gUtilGame
_02039EF8: .word g3DPlaneCtrl
_02039EFC: .word unk_0208FEA4
_02039F00: .word unk_0209A200
_02039F04: .word gLogicThink
	arm_func_end FUN_02039b70

	arm_func_start FUN_02039f08
FUN_02039f08: ; 0x02039F08
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	add r0, r5, #0x1000
	ldr r0, [r0, #0x364]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #0
	ldr r6, _02039FA0 ; =g3DPlaneCtrl
	b _02039F6C
_02039F2C:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0x368]
	ldr r0, [r6]
	bl FUN_020591e8
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0x368]
	ldr r0, [r6]
	bl FUN_02058ee0
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0x368]
	ldr r0, [r6]
	bl FUN_02058ee0
	add r4, r4, #1
_02039F6C:
	cmp r4, #3
	blt _02039F2C
	ldr r0, _02039FA0 ; =g3DPlaneCtrl
	add r1, r5, #0x1000
	ldr r0, [r0]
	ldr r1, [r1, #0x374]
	bl _ZN12C3DPlaneCtrl7destroyEi
	add r0, r5, #0x364
	add r0, r0, #0x1000
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, pc}
_02039FA0: .word g3DPlaneCtrl
	arm_func_end FUN_02039f08

	arm_func_start FUN_02039fa4
FUN_02039fa4: ; 0x02039FA4
	ldr r2, _02039FC4 ; =g3DPlaneCtrl
	add r1, r0, #0x1000
	ldr r0, [r2]
	ldr r1, [r1, #0x374]
	ldr r12, _02039FC8 ; =_ZN12C3DPlaneCtrl7setFlagEitb
	mov r2, #2
	mov r3, #1
	bx r12
_02039FC4: .word g3DPlaneCtrl
_02039FC8: .word _ZN12C3DPlaneCtrl7setFlagEitb
	arm_func_end FUN_02039fa4

	arm_func_start FUN_02039fcc
FUN_02039fcc: ; 0x02039FCC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x364]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _0203A040
_02039FF0: ; jump table
	b _0203A040 ; case 0
	b _0203A004 ; case 1
	b _0203A014 ; case 2
	b _0203A024 ; case 3
	b _0203A034 ; case 4
_0203A004:
	ldr r0, _0203A054 ; 0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_021455b8
	b _0203A040
_0203A014:
	ldr r0, _0203A054 ; 0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_021456d0
	b _0203A040
_0203A024:
	ldr r0, _0203A054 ; 0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_021455e8
	b _0203A040
_0203A034:
	ldr r0, _0203A054 ; 0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_021457b8
_0203A040:
	add r0, r4, #0x1000
	ldr r1, [r0, #0x364]
	add r1, r1, #1
	str r1, [r0, #0x364]
	ldmfd sp!, {r4, pc}
_0203A054: .word gUtilGame
	arm_func_end FUN_02039fcc

	arm_func_start FUN_0203a058
FUN_0203a058: ; 0x0203A058
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r0
	add r0, r5, #0x1000
	ldr r1, [r0, #0x364]
	mov r6, #0
	mov r7, r6
	cmp r1, #0
	mov r4, r6
	beq _0203A110
	ldr r0, [r0, #0x378]
	sub r1, r6, #1
	cmp r0, r1
	bne _0203A0C0
	bl FUN_ov16_020f081c
	ldr r7, _0203A2F8 ; =gLogicThink
	mov r1, r0
	mov r0, r7
	bl FUN_0207249c
	ldrb r6, [r0, #0x43]
	bl FUN_ov16_020f081c
_0203A0A8:
	mov r1, r0
	mov r0, r7
	bl FUN_020724e8
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	b _0203A110
_0203A0C0:
	sub r1, r6, #2
	cmp r0, r1
	bne _0203A0EC
	bl FUN_ov16_020f083c
	ldr r7, _0203A2F8 ; =gLogicThink
	mov r1, r0
	mov r0, r7
	bl FUN_0207249c
	ldrb r6, [r0, #0x43]
	bl FUN_ov16_020f083c
	b _0203A0A8
_0203A0EC:
	mov r1, r6
	bl FUN_ov16_020efa9c
	movs r8, r0
	beq _0203A110
	bl FUN_0206cc84
	mov r6, r0
	mov r0, r8
	bl FUN_0206cc94
	mov r7, r0
_0203A110:
	add r0, r5, #0x1000
	ldr r1, [r0, #0x364]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203A124: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 1
	b _0203A13C ; case 2
	b _0203A158 ; case 3
	b _0203A20C ; case 4
	b _0203A248 ; case 5
_0203A13C:
	ldr r2, [r0, #0x37c]
	add r1, r1, #1
	sub r3, r2, r6
	mov r2, #8
	str r3, [r0, #0x37c]
	str r2, [r0, #0x380]
	str r1, [r0, #0x364]
_0203A158:
	add r0, r5, #0x1000
	ldr r2, [r0, #0x380]
	ldr r1, [r0, #0x3e0]
	mov r8, #0x64
	subs r1, r2, r1
	str r1, [r0, #0x380]
	strmi r4, [r0, #0x380]
	add r0, r5, #0x1000
	ldr r1, [r0, #0x37c]
	ldr r0, [r0, #0x380]
	smulbb r2, r6, r8
	mul r0, r1, r0
	mul r1, r0, r8
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r1, r7
	add r0, r2, r0, asr #3
	bl _s32_div_f
	mov r9, r0
	mov r3, r9, lsl #0x10
	mov r7, #1
	ldr r6, _0203A2FC ; =g3DPlaneCtrl
	str r8, [sp]
	add r1, r5, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x374]
	mov r2, r7
	mov r3, r3, asr #0x10
	bl _ZN12C3DPlaneCtrl11setTexScaleEiiss
	cmp r9, #0
	bne _0203A1EC
	add r1, r5, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x374]
	mov r2, r7
	mov r3, #2
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
_0203A1EC:
	add r0, r5, #0x1000
	ldr r1, [r0, #0x380]
	cmp r1, #0
	ldreq r1, [r0, #0x364]
	streq r4, [r0, #0x380]
	addeq r1, r1, #1
	streq r1, [r0, #0x364]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203A20C:
	ldr r2, [r0, #0x380]
	ldr r1, [r0, #0x3e0]
	subs r1, r2, r1
	str r1, [r0, #0x380]
	strmi r4, [r0, #0x380]
	add r0, r5, #0x1000
	ldr r1, [r0, #0x380]
	cmp r1, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r0, #0x364]
	mov r2, #0x20
	add r1, r1, #1
	str r2, [r0, #0x380]
	str r1, [r0, #0x364]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203A248:
	ldr r2, [r0, #0x380]
	ldr r1, [r0, #0x3e0]
	mov r8, #0x64
	subs r1, r2, r1
	str r1, [r0, #0x380]
	strmi r4, [r0, #0x380]
	add r0, r5, #0x1000
	ldr r1, [r0, #0x37c]
	ldr r0, [r0, #0x380]
	smulbb r2, r6, r8
	mul r0, r1, r0
	mul r1, r0, r8
	mov r0, r1, asr #4
	add r0, r1, r0, lsr #27
	mov r1, r7
	add r0, r2, r0, asr #5
	bl _s32_div_f
	mov r9, r0
	mov r3, r9, lsl #0x10
	mov r7, #2
	ldr r6, _0203A2FC ; =g3DPlaneCtrl
	str r8, [sp]
	add r1, r5, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x374]
	mov r2, r7
	mov r3, r3, asr #0x10
	bl _ZN12C3DPlaneCtrl11setTexScaleEiiss
	cmp r9, #0
	bne _0203A2D8
	add r1, r5, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x374]
	mov r2, r7
	mov r3, r7
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
_0203A2D8:
	add r0, r5, #0x1000
	ldr r1, [r0, #0x380]
	cmp r1, #0
	ldreq r1, [r0, #0x364]
	streq r4, [r0, #0x380]
	addeq r1, r1, #1
	streq r1, [r0, #0x364]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203A2F8: .word gLogicThink
_0203A2FC: .word g3DPlaneCtrl
	arm_func_end FUN_0203a058

	arm_func_start FUN_0203a300
FUN_0203a300: ; 0x0203A300
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	ldr r1, _0203A460 ; 0x02099EF0
	mov r7, r0
	ldr r0, [r1]
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	bl FUN_ov132_021434f8
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r4, _0203A464 ; =gConfig
	ldr r1, _0203A468 ; =0x0208FEB4
	mov r0, r4
	bl _ZN7CConfig8getParamEPKc
	mov r3, r0, lsl #1
	add r2, r7, #0x1000
	ldr r1, _0203A46C ; =0x0208FECC
	mov r0, r4
	str r3, [r2, #0x3b8]
	bl _ZN7CConfig8getParamEPKc
	mov r2, r0, lsl #1
	add r0, r7, #0x1000
	ldr r1, _0203A470 ; =0x0209A200
	str r2, [r0, #0x3bc]
	ldr r4, _0203A474 ; =g3DPlaneCtrl
	ldr r2, [r1]
	ldr r0, [r4]
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	ldr r3, _0203A478 ; =0x0208FEE4
	str r6, [sp, #8]
	mov r1, #5
	bl FUN_02058684
	mov r1, r0
	add r0, r7, #0x1000
	str r1, [r0, #0x3ac]
	ldr r0, [r4]
	mov r5, #1
	mov r2, r5
	mov r3, r6
	bl FUN_02059038
	ldr r0, [r4]
	mov r1, r5
	mov r2, r5
	bl _ZN12C3DPlaneCtrl6createEib
	mov r1, r0
	add r0, r7, #0x1000
	str r1, [r0, #0x3b0]
	ldr r2, [r0, #0x3ac]
	ldr r0, [r4]
	and r2, r2, #0xff
	bl _ZN12C3DPlaneCtrl9setTexAllEih
	str r6, [sp]
	ldr r0, [r4]
	add r1, r7, #0x1000
	ldr r1, [r1, #0x3b0]
	mov r2, r5
	mov r3, r6
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
	str r6, [sp]
	mov r3, r6
	ldr r0, [r4]
	add r1, r7, #0x1000
	ldr r1, [r1, #0x3b0]
	mov r2, r5
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	ldr r0, [r4]
	add r1, r7, #0x1000
	ldr r1, [r1, #0x3b0]
	mov r6, #2
	mov r2, r6
	bl _ZN12C3DPlaneCtrl9clearFlagEit
	add r1, r7, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x3b0]
	mov r2, r6
	mov r3, r5
	bl _ZN12C3DPlaneCtrl10setFlagAllEitb
	add r1, r7, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x3b0]
	mov r2, #0x32
	bl _ZN12C3DPlaneCtrl11setDepthAllEij
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0203A460: .word gUtilGame
_0203A464: .word gConfig
_0203A468: .word unk_0208FEB4
_0203A46C: .word unk_0208FECC
_0203A470: .word unk_0209A200
_0203A474: .word g3DPlaneCtrl
_0203A478: .word unk_0208FEE4
	arm_func_end FUN_0203a300

	arm_func_start FUN_0203a47c
FUN_0203a47c: ; 0x0203A47C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _0203A514 ; 0x02099EF0
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r5, _0203A518 ; =g3DPlaneCtrl
	add r0, r4, #0x1000
	ldr r1, [r0, #0x3ac]
	ldr r0, [r5]
	bl FUN_020591e8
	add r0, r4, #0x1000
	ldr r1, [r0, #0x3ac]
	ldr r0, [r5]
	bl FUN_02058ee0
	add r0, r4, #0x1000
	ldr r1, [r0, #0x3ac]
	ldr r0, [r5]
	bl FUN_02058ee0
	mov r6, #0
	b _0203A4F4
_0203A4DC:
	add r0, r4, r6, lsl #2
	add r1, r0, #0x1000
	ldr r0, [r5]
	ldr r1, [r1, #0x3b0]
	bl _ZN12C3DPlaneCtrl7destroyEi
	add r6, r6, #1
_0203A4F4:
	cmp r6, #1
	blt _0203A4DC
	add r0, r4, #0x3a8
	add r0, r0, #0x1000
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, pc}
_0203A514: .word gUtilGame
_0203A518: .word g3DPlaneCtrl
	arm_func_end FUN_0203a47c

	arm_func_start FUN_0203a51c
FUN_0203a51c: ; 0x0203A51C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0203A5DC ; 0x02099EF0
	mov r5, r0
	ldr r0, [r1]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r1, r5, #0x1000
	ldr r3, [r1, #0x3b4]
	ldr r2, [r1, #0x3e0]
	ldr r0, [r1, #0x3a8]
	add r2, r3, r2
	str r2, [r1, #0x3b4]
	cmp r0, #0
	beq _0203A56C
	cmp r0, #1
	beq _0203A5A8
	ldmfd sp!, {r3, r4, r5, pc}
_0203A56C:
	ldr r0, _0203A5E0 ; =g3DPlaneCtrl
	mov r4, #1
	ldr r0, [r0]
	ldr r1, [r1, #0x3b0]
	mov r3, r4
	mov r2, #2
	bl _ZN12C3DPlaneCtrl7setFlagEitb
	add r0, r5, #0x1000
	ldr r2, [r0, #0x3b4]
	ldr r1, [r0, #0x3b8]
	cmp r2, r1
	movgt r1, #0
	strgt r1, [r0, #0x3b4]
	strgt r4, [r0, #0x3a8]
	ldmfd sp!, {r3, r4, r5, pc}
_0203A5A8:
	ldr r0, _0203A5E0 ; =g3DPlaneCtrl
	ldr r1, [r1, #0x3b0]
	ldr r0, [r0]
	mov r2, #2
	bl _ZN12C3DPlaneCtrl9clearFlagEit
	add r0, r5, #0x1000
	ldr r2, [r0, #0x3b4]
	ldr r1, [r0, #0x3bc]
	cmp r2, r1
	movgt r1, #0
	strgt r1, [r0, #0x3b4]
	strgt r1, [r0, #0x3a8]
	ldmfd sp!, {r3, r4, r5, pc}
_0203A5DC: .word gUtilGame
_0203A5E0: .word g3DPlaneCtrl
	arm_func_end FUN_0203a51c

	arm_func_start FUN_0203a5e4
FUN_0203a5e4: ; 0x0203A5E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x58
	mov r5, r0
	mov r8, #0
	add r0, r5, #0x1000
	sub r6, r8, #1
	ldr r4, _0203AA2C ; =0x0208C35C
	str r8, [r0, #0x398]
	str r6, [r0, #0x388]
	ldr r11, _0203AA30 ; =gLogicThink
	ldrb r6, [r4]
	ldrb r12, [r4, #1]
	ldrb r7, [r4, #2]
	strb r6, [sp, #0x14]
	mov r10, r3
	mov r4, r1
	mov r0, r11
	mov r1, r10
	mov r6, r2
	strb r12, [sp, #0x15]
	strb r7, [sp, #0x16]
	bl FUN_0204a2c4
	movs r7, r0
	bne _0203A660
	add r0, r5, #0x1300
	ldrsb r1, [r0, #0x84]
	add r0, r5, #0x1000
	add sp, sp, #0x58
	add r1, r1, #1
	strb r1, [r0, #0x384]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203A660:
	mov r0, r6
	mov r1, r8
	bl FUN_ov16_020efa9c
	movs r1, r0
	bne _0203A690
	add r0, r5, #0x1300
	ldrsb r1, [r0, #0x84]
	add r0, r5, #0x1000
	add sp, sp, #0x58
	add r1, r1, #1
	strb r1, [r0, #0x384]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203A690:
	ldr r6, _0203AA34 ; 0x02099EF0
	ldr r0, [r6]
	cmp r0, #0
	addeq sp, sp, #0x58
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r7, #0x14]
	add r3, r5, #0x1000
	ands r2, r0, #0xff
	addeq sp, sp, #0x58
	strb r0, [r3, #0x395]
	streqb r8, [r3, #0x394]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r12, _0203AA38 ; =0x51EB851F
	mov r0, r2, lsr #0x1f
	smull r2, r8, r12, r2
	add r8, r0, r8, asr #5
	mov r0, r11
	mov r2, r10
	strb r8, [r3, #0x395]
	bl FUN_0207224c
	add r1, r5, #0x1000
	strb r0, [r1, #0x394]
	ldr r0, [r6]
	bl FUN_ov132_021434f8
	cmp r0, #0
	beq _0203A734
	ldr r0, _0203AA3C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _0203A734
	ldr r0, [r6]
	bl FUN_ov126_02130a30
	cmp r0, #0
	addeq sp, sp, #0x58
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r2, [r0]
	mov r0, r11
	mov r1, r7
	bl FUN_020721bc
	add r1, r5, #0x1000
	strb r0, [r1, #0x394]
_0203A734:
	add r0, r5, #0x1000
	ldrb r1, [r0, #0x394]
	cmp r1, #1
	bhi _0203A768
	ldrb r0, [r0, #0x395]
	cmp r0, #0
	cmpne r0, #1
	cmpne r0, #2
	addeq r0, r5, #0x1000
	moveq r1, #0
	streqb r1, [r0, #0x394]
	addeq sp, sp, #0x58
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203A768:
	ldr r6, _0203AA40 ; =g3DPlaneCtrl
	mov r8, #1
	ldr r0, [r6]
	mov r1, r8
	mov r2, r8
	bl _ZN12C3DPlaneCtrl6createEib
	add r1, r5, #0x1000
	ldrb r7, [r1, #0x395]
	add r3, sp, #0x14
	ldrb r2, [r1, #0x394]
	ldrsb r3, [r3, r7]
	str r0, [r1, #0x390]
	add r7, sp, #0x17
	add r0, r3, r2
	sub r0, r0, #1
	and r2, r0, #0xff
	ldr r1, _0203AA44 ; =0x0208FEF4
	mov r0, r7
	add r2, r2, #0x32
	bl STD_TSPrintf
	ldr r1, _0203AA48 ; =0x0209A200
	mov r3, r7
	ldr r2, [r1, #0x1c]
	ldr r0, [r6]
	mov r7, #0
	str r8, [sp]
	str r7, [sp, #4]
	mov r1, #5
	str r7, [sp, #8]
	bl FUN_02058684
	add r1, r5, #0x1000
	str r0, [r1, #0x38c]
	ldr r1, [r1, #0x390]
	ldr r0, [r6]
	mov r2, r8
	mov r3, #0xa
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
	add r1, r5, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x390]
	mov r2, r8
	mov r3, #0xc8
	bl _ZN12C3DPlaneCtrl8setDepthEiij
	add r1, r5, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x390]
	mov r2, r8
	mov r3, #0x1f
	bl _ZN12C3DPlaneCtrl8setAlphaEiih
	add r1, r5, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x390]
	mov r2, r8
	rsb r3, r8, #0x8000
	bl _ZN12C3DPlaneCtrl12setColorMaskEiit
	str r7, [sp]
	add r1, r5, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x390]
	mov r2, r8
	mov r3, r7
	bl _ZN12C3DPlaneCtrl12setPosAnchorEiihh
	add r1, sp, #0xc
	add r0, r5, #0x1000
	str r1, [sp]
	ldr r1, [r0, #0x3e4]
	ldr r0, [r6]
	add r2, r4, #1
	add r3, sp, #0x10
	bl _ZN12C3DPlaneCtrl13getDimensionsEiiPiS0_
	add r1, r5, #0x1000
	ldr r0, [r6]
	ldr r1, [r1, #0x3e4]
	add r2, r4, #1
	bl _ZN12C3DPlaneCtrl13getAnchorPctXEii
	add r1, r5, #0x1000
	mov r7, r0
	ldr r0, [r6]
	ldr r1, [r1, #0x3e4]
	add r2, r4, #1
	bl _ZN12C3DPlaneCtrl13getAnchorPctYEii
	ldr r1, [sp, #0x10]
	mov r6, r0
	cmp r1, #0
	ble _0203A8DC
	mov r0, #0x960
	bl _s32_div_f
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	bl _ffixu
	and r9, r0, #0xff
_0203A8DC:
	add r0, r5, #0x1000
	ldrb r1, [r0, #0x395]
	ldr r2, _0203AA38 ; =0x51EB851F
	cmp r1, #1
	ldreqb r0, [r0, #0x394]
	cmpeq r0, #3
	bne _0203A92C
	subs r1, r7, r9
	movmi r1, #0
	ldr r0, [sp, #0x10]
	and r9, r1, #0xff
	mul r1, r0, r9
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #5
	mvn r0, #0x2f
	sub r1, r0, r3
	add r0, r5, #0x1000
	str r1, [r0, #0x3a0]
	b _0203A95C
_0203A92C:
	add r0, r7, r9
	cmp r0, #0x64
	movgt r0, #0x64
	and r9, r0, #0xff
	ldr r1, [sp, #0x10]
	rsb r0, r9, #0x64
	mul r3, r1, r0
	mov r0, r3, lsr #0x1f
	smull r1, r3, r2, r3
	add r3, r0, r3, asr #5
	add r0, r5, #0x1000
	str r3, [r0, #0x3a0]
_0203A95C:
	ldr r8, [sp, #0xc]
	add r3, r5, #0x1000
	mul r1, r6, r8
	ldr r2, _0203AA38 ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r7, r2, r1
	ldr r1, [r3, #0x3a0]
	sub r2, r8, #0x2c
	add r7, r0, r7, asr #5
	sub r0, r2, r7
	str r0, [r3, #0x3a4]
	strb r9, [r3, #0x39c]
	strb r6, [r3, #0x39d]
	cmp r1, #0
	mov r0, r1, lsl #0xc
	ble _0203A9B0
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0203A9BC
_0203A9B0:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0203A9BC:
	bl _ffix
	add r1, r5, #0x1000
	ldr r2, [r1, #0x3a4]
	str r0, [r1, #0x3a0]
	cmp r2, #0
	mov r0, r2, lsl #0xc
	ble _0203A9EC
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0203A9F8
_0203A9EC:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0203A9F8:
	bl _ffix
	add r2, r5, #0x1000
	add r1, r5, #0x1300
	ldrsb r3, [r1, #0x84]
	ldr r1, [r2, #0x398]
	str r0, [r2, #0x3a4]
	add r3, r3, #1
	orr r0, r1, #1
	strb r3, [r2, #0x384]
	str r0, [r2, #0x398]
	str r4, [r2, #0x388]
	add sp, sp, #0x58
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203AA2C: .word unk_0208C35C
_0203AA30: .word gLogicThink
_0203AA34: .word gUtilGame
_0203AA38: .word 0x51EB851F
_0203AA3C: .word unk_020A0640
_0203AA40: .word g3DPlaneCtrl
_0203AA44: .word unk_0208FEF4
_0203AA48: .word unk_0209A200
	arm_func_end FUN_0203a5e4

	arm_func_start FUN_0203aa4c
FUN_0203aa4c: ; 0x0203AA4C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	cmp r1, #0
	add r1, r5, #0x1000
	ldr r0, [r1, #0x398]
	ldrneb r4, [r1, #0x39c]
	orrne r2, r0, #0x40
	ldrneb r0, [r1, #0x39d]
	strne r2, [r1, #0x398]
	bne _0203AAB4
	ldr r6, _0203AAF0 ; =g3DPlaneCtrl
	ldr r2, [r1, #0x388]
	bic r0, r0, #0x40
	str r0, [r1, #0x398]
	ldr r0, [r6]
	ldr r1, [r1, #0x3e4]
	add r2, r2, #1
	bl _ZN12C3DPlaneCtrl13getAnchorPctXEii
	add r1, r5, #0x1000
	ldr r2, [r1, #0x388]
	mov r4, r0
	ldr r0, [r6]
	ldr r1, [r1, #0x3e4]
	add r2, r2, #1
	bl _ZN12C3DPlaneCtrl13getAnchorPctYEii
_0203AAB4:
	add r1, r5, #0x1000
	ldr r2, [r1, #0x388]
	cmp r2, #0
	addlt sp, sp, #4
	ldmltfd sp!, {r3, r4, r5, r6, pc}
	str r0, [sp]
	ldr r0, _0203AAF0 ; =g3DPlaneCtrl
	ldr r2, [r1, #0x388]
	ldr r0, [r0]
	ldr r1, [r1, #0x3e4]
	mov r3, r4
	add r2, r2, #1
	bl _ZN12C3DPlaneCtrl12setPosAnchorEiihh
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0203AAF0: .word g3DPlaneCtrl
	arm_func_end FUN_0203aa4c

	arm_func_start FUN_0203aaf4
FUN_0203aaf4: ; 0x0203AAF4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldr r1, [r0, #0x38c]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r5, _0203AB7C ; =g3DPlaneCtrl
	ldr r1, [r0, #0x390]
	ldr r0, [r5]
	mov r2, #1
	mov r3, #2
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
	add r0, r4, #0x1000
	ldr r1, [r0, #0x38c]
	ldr r0, [r5]
	bl FUN_020591e8
	add r0, r4, #0x1000
	ldr r1, [r0, #0x38c]
	ldr r0, [r5]
	bl FUN_02058ee0
	add r0, r4, #0x1000
	ldr r1, [r0, #0x38c]
	ldr r0, [r5]
	bl FUN_02058ee0
	ldr r0, [r5]
	add r1, r4, #0x1000
	ldr r1, [r1, #0x390]
	bl _ZN12C3DPlaneCtrl7destroyEi
	add r0, r4, #0x384
	add r0, r0, #0x1000
	mov r1, #0
	mov r2, #0x24
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
_0203AB7C: .word g3DPlaneCtrl
	arm_func_end FUN_0203aaf4

	arm_func_start FUN_0203ab80
FUN_0203ab80: ; 0x0203AB80
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	add r1, r6, #0x1000
	ldrb r0, [r1, #0x394]
	cmp r0, #0
	ldrne r3, [r1, #0x38c]
	cmpne r3, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, #0x1300
	ldrsb r0, [r0, #0x84]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0203ABB4: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	b _0203ABC4 ; case 1
	b _0203AC24 ; case 2
	b _0203ACB8 ; case 3
_0203ABC4:
	ldr r4, _0203AD5C ; =g3DPlaneCtrl
	mov r1, r3
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, #0x1000
	mov r2, #0
	ldr r1, [r0, #0x38c]
	ldr r0, [r4]
	mov r3, r2
	bl FUN_02059038
	add r1, r6, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x390]
	mov r2, #1
	mov r3, #2
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
	add r0, r6, #0x1300
	ldrsb r1, [r0, #0x84]
	add r0, r6, #0x1000
	add r1, r1, #1
	strb r1, [r0, #0x384]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0203AC24:
	ldr r4, _0203AD5C ; =g3DPlaneCtrl
	mov r7, #1
	ldr r0, [r4]
	ldr r1, [r1, #0x390]
	mov r2, r7
	and r3, r3, #0xff
	bl _ZN12C3DPlaneCtrl6setTexEiih
	mov r5, #0
	str r5, [sp]
	add r1, r6, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x390]
	mov r2, r7
	mov r3, r5
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
	str r5, [sp]
	add r1, r6, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x390]
	mov r2, r7
	mov r3, r5
	bl _ZN12C3DPlaneCtrl12setPosAnchorEiihh
	add r0, r6, #0x1000
	ldr r2, [r0, #0x398]
	ldr r1, [r0, #0x38c]
	orr r2, r2, #2
	str r2, [r0, #0x398]
	ldr r0, [r4]
	bl FUN_02059328
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, #0x1300
	ldrsb r1, [r0, #0x84]
	add r0, r6, #0x1000
	add r1, r1, #1
	strb r1, [r0, #0x384]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0203ACB8:
	ldr r0, [r1, #0x398]
	mov r5, #1
	and r0, r0, #0x40
	cmp r0, #0
	movgt r0, #1
	movle r0, #0
	ldr r4, _0203AD5C ; =g3DPlaneCtrl
	str r0, [sp]
	add r1, r6, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x390]
	mov r2, r5
	mov r3, #2
	bl _ZN12C3DPlaneCtrl7setFlagEiitb
	add r2, r6, #0x1000
	ldr r1, [r2, #0x388]
	cmp r1, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0x30
	mla r0, r1, r0, r6
	add r0, r0, #0x1000
	ldr r3, [r2, #0x3a4]
	ldr r1, [r0, #0x404]
	ldr r12, [r2, #0x3a0]
	add r3, r3, r1
	mov r1, r3, asr #0xb
	ldr r6, [r0, #0x400]
	add r0, r3, r1, lsr #20
	add r1, r12, r6
	mov r0, r0, lsl #4
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r3, r0, lsl #4
	ldr r0, [r4]
	ldr r1, [r2, #0x390]
	mov r2, r5
	mov r3, r3, asr #0x10
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0203AD5C: .word g3DPlaneCtrl
	arm_func_end FUN_0203ab80

	arm_func_start FUN_0203ad60
FUN_0203ad60: ; 0x0203AD60
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x1000
	ldr r1, [r0, #0x38c]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r4, _0203ADD8 ; =g3DPlaneCtrl
	ldr r1, [r0, #0x390]
	ldr r0, [r4]
	mov r2, #1
	mov r3, #2
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
	add r0, r5, #0x1000
	ldr r1, [r0, #0x38c]
	ldr r0, [r4]
	bl FUN_020591e8
	add r0, r5, #0x1000
	ldr r1, [r0, #0x38c]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r5, #0x1000
	ldr r1, [r0, #0x38c]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r5, #0x384
	add r0, r0, #0x1000
	mov r1, #0
	mov r2, #0x24
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
_0203ADD8: .word g3DPlaneCtrl
	arm_func_end FUN_0203ad60

	arm_func_start FUN_0203addc
FUN_0203addc: ; 0x0203ADDC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	ldr r4, _0203B850 ; =g3DFieldSprite
	mov r10, r0
	ldr r0, [r4]
	mov r1, #0xc
	bl FUN_ov1_020e500c
	str r0, [sp, #0x10]
	ldr r0, [r4]
	mov r1, #5
	bl FUN_ov1_020e500c
	ldr r0, _0203B854 ; 0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02148398
	cmp r0, #0
	bne _0203AE30
	ldr r0, _0203B854 ; 0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02147e24
	cmp r0, #0
	beq _0203AE74
_0203AE30:
	ldr r0, _0203B858 ; =0x0209A2C0
	ldr r0, [r0, #0x48]
	cmn r0, #1
	bgt _0203AE74
	add r0, r10, #0x1000
	ldrb r0, [r0, #0x3c0]
	tst r0, #1
	beq _0203AE5C
	ldr r0, _0203B854 ; 0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_0212dba0
_0203AE5C:
	mov r0, r10
	bl FUN_0203c5d4
	mov r1, r0
	ldr r0, _0203B854 ; 0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_0212e7f0
_0203AE74:
	add r1, r10, #0x1000
	ldrb r0, [r1, #0x3c0]
	tst r0, #4
	beq _0203AF3C
	add r0, r10, #0x1300
	ldrh r2, [r0, #0xc2]
	ldr r0, [r1, #0x3e0]
	add r1, r10, #0x1000
	sub r6, r2, r0
	ldr r5, [r1, #0x3c4]
	ldr r3, [r1, #0x3c8]
	ldr r2, [r1, #0x3e0]
	cmp r6, #0
	mla r2, r3, r2, r5
	movle r6, #0
	add r0, r10, #0x1300
	strh r6, [r0, #0xc2]
	cmp r2, #0x1000
	ldrb r0, [r1, #0x3c0]
	str r2, [r1, #0x3c4]
	movlt r6, #0
	andlt r0, r0, #0xfd
	strlt r6, [r1, #0x3c4]
	orrge r0, r0, #2
	strb r0, [r1, #0x3c0]
	movge r6, #1
	mov r1, #1
	cmp r6, #0
	ldr r0, [r4]
	moveq r1, #0
	bl FUN_ov1_020e1a50
	add r0, r10, #0x1300
	ldrh r0, [r0, #0xc2]
	cmp r0, #0
	add r0, r10, #0x1000
	bne _0203AF28
	ldrb r2, [r0, #0x3c0]
	ldr r1, [r0, #0x3c8]
	and r2, r2, #0xfb
	cmp r1, #0
	movgt r1, #0x1f
	strb r2, [r0, #0x3c0]
	movle r1, #0
	ldr r0, [r4]
	b _0203AF34
_0203AF28:
	ldr r1, [r0, #0x3c4]
	ldr r0, [r4]
	mov r1, r1, asr #0xc
_0203AF34:
	and r1, r1, #0xff
	bl FUN_ov1_020e19c0
_0203AF3C:
	mov r11, #0
	b _0203B840
_0203AF44:
	mov r4, #0x58
	mla r0, r11, r4, r10
	add r0, r0, #0x3a00
	ldrh r0, [r0, #0xd6]
	tst r0, #1
	beq _0203B83C
	ldr r0, _0203B854 ; 0x02099EF0
	mov r1, r11
	ldr r0, [r0]
	bl FUN_ov126_0213922c
	mov r5, r0
	ldr r0, _0203B854 ; 0x02099EF0
	mov r1, r11
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov132_02143088
	cmp r5, #0
	cmpne r0, #0
	beq _0203B83C
	mov r0, r5
	bl FUN_0206d688
	cmp r0, #0
	beq _0203B83C
	mul r0, r11, r4
	add r1, r10, #0x3ac0
	adds r7, r1, r0
	beq _0203B83C
	ldrh r0, [r7, #0x16]
	tst r0, #1
	beq _0203B83C
	ldrh r1, [r7, #0x34]
	ldr r0, _0203B85C ; =g2DGChar
	ldr r2, _0203B860 ; =0x51EB851F
	mov r3, r1, lsl #0xc
	smull r1, r9, r2, r3
	mov r2, r3, lsr #0x1f
	add r9, r2, r9, asr #5
	ldr r0, [r0]
	mov r2, #0
	add r1, r11, #1
	str r2, [sp, #0xc]
	bl FUN_020571e0
	ldrh r1, [r7, #0x16]
	mov r4, r0
	tst r1, #4
	beq _0203B158
	add r0, r10, #0x1000
	ldrh r1, [r7, #0xa]
	ldr r0, [r0, #0x3e0]
	sub r0, r1, r0
	cmp r0, #0
	ldrle r0, [sp, #0xc]
	strh r0, [r7, #0xa]
	add r0, r10, #0x1000
	ldr r2, [r7, #0xc]
	ldr r1, [r7, #0x10]
	ldr r0, [r0, #0x3e0]
	mla r0, r1, r0, r2
	cmp r0, #0x1000
	str r0, [r7, #0xc]
	ldrgeh r0, [r7, #0x16]
	movge r6, #1
	orrge r0, r0, #2
	strgeh r0, [r7, #0x16]
	bge _0203B060
	mov r6, #0
	mov r0, r10
	mov r1, r11
	mov r2, #2
	str r6, [r7, #0xc]
	bl FUN_0203c86c
_0203B060:
	ldr r0, _0203B864 ; =g3DSpriteCtrl
	mov r8, #2
	ldr r0, [r0]
	mov r1, r4
	mov r2, r8
	mov r3, r6
	bl FUN_ov16_02116cb4
	str r6, [sp]
	ldr r6, _0203B868 ; =g3DPlaneCtrl
	ldr r1, [sp, #0x10]
	ldr r0, [r6]
	add r2, r11, #1
	mov r3, r8
	bl _ZN12C3DPlaneCtrl7setFlagEiitb
	ldrh r0, [r7, #0xa]
	cmp r0, #0
	bne _0203B100
	ldrh r1, [r7, #0x16]
	ldr r0, _0203B86C ; =0x0000FFFB
	mov r2, #0x1f
	and r0, r1, r0
	strh r0, [r7, #0x16]
	ldr r0, [r7, #0x10]
	mov r1, r4
	cmp r0, #0
	ldr r0, _0203B864 ; =g3DSpriteCtrl
	movle r2, #0
	ldr r0, [r0]
	and r2, r2, #0xff
	bl FUN_ov16_02116d94
	ldr r0, [r7, #0x10]
	mov r3, #0x10
	cmp r0, #0
	ldr r0, _0203B868 ; =g3DPlaneCtrl
	movle r3, #0
	ldr r1, [sp, #0x10]
	ldr r0, [r0]
	add r2, r11, #1
	and r3, r3, #0xff
	b _0203B154
_0203B100:
	ldr r0, _0203B864 ; =g3DSpriteCtrl
	ldr r2, [r7, #0xc]
	ldr r0, [r0]
	mov r2, r2, asr #0xc
	mov r1, r4
	and r2, r2, #0xff
	bl FUN_ov16_02116d94
	add r2, r8, #0x840
	ldr r8, [r7, #0xc]
	ldr r0, [r6]
	umull r6, r4, r8, r2
	mov r3, r8, asr #0x1f
	mla r4, r3, r2, r4
	adds r3, r6, #0x800
	adc r2, r4, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	mov r2, r3, asr #0xc
	and r3, r2, #0xff
	ldr r1, [sp, #0x10]
	add r2, r11, #1
_0203B154:
	bl _ZN12C3DPlaneCtrl8setAlphaEiih
_0203B158:
	ldrh r0, [r7, #0x16]
	ldr r8, _0203B854 ; 0x02099EF0
	tst r0, #0x80
	beq _0203B204
	ldr r0, _0203B858 ; =0x0209A2C0
	ldrsh r1, [r5, #0x94]
	ldr r0, [r0, #0x48]
	cmp r1, r0
	bne _0203B204
	ldrsb r0, [r7, #0x4c]
	cmp r0, #0
	beq _0203B198
	cmp r0, #1
	beq _0203B1BC
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203B198:
	ldrsb r1, [r7, #0x50]
	ldr r0, [r8]
	bl FUN_ov126_0213922c
	cmp r0, #0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r0, #0x84]
	ldmia r0, {r4, r6}
	b _0203B1C4
_0203B1BC:
	ldr r4, [r7, #0x50]
	ldr r6, [r7, #0x54]
_0203B1C4:
	ldrsb r0, [r7, #0x4d]
	mov r1, r11, lsl #0x18
	mov r2, r4
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r1, asr #0x18
	mov r3, r6
	bl FUN_ov126_0212ca1c
	cmp r0, #0
	beq _0203B204
	mov r0, r10
	mov r1, r11
	mov r2, #0x80
	bl FUN_0203c86c
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203B204:
	ldrh r4, [r7, #0x16]
	tst r4, #8
	beq _0203B2AC
	ldr r1, [r5, #0x84]
	ldr r0, _0203B854 ; 0x02099EF0
	ldrb r2, [r1, #0x1d]
	mov r1, r5
	mov r3, r9
	str r4, [sp]
	ldr r0, [r0]
	bl FUN_ov132_02147ec8
	ldr r1, [r5, #0x88]
	ldr r0, [r1]
	cmp r0, #0x80000000
	ldreq r0, [r1, #4]
	cmpeq r0, #0x80000000
	beq _0203B26C
	ldr r3, [r5, #0x84]
	ldr r2, [r5, #0x88]
	ldr r1, [r3]
	ldr r0, [r2]
	cmp r0, r1
	ldreq r1, [r3, #4]
	ldreq r0, [r2, #4]
	cmpeq r0, r1
	bne _0203B288
_0203B26C:
	mov r0, r10
	mov r1, r11
	mov r2, #8
	bl FUN_0203c86c
	ldr r1, [r5, #0x84]
	mov r0, #0
	strb r0, [r1, #0x1d]
_0203B288:
	ldr r0, _0203B858 ; =0x0209A2C0
	ldrsh r2, [r5, #0x94]
	ldr r1, [r0, #0x48]
	ldr r0, _0203B854 ; 0x02099EF0
	cmp r2, r1
	bne _0203B2AC
	ldr r0, [r0]
	mov r1, r5
	bl FUN_ov126_0212fab8
_0203B2AC:
	ldrh r0, [r7, #0x16]
	tst r0, #0x30
	beq _0203B528
	tst r0, #0x10
	ldrh r8, [r7, #0x40]
	ldr r0, _0203B854 ; 0x02099EF0
	beq _0203B318
	ldrsb r1, [r7]
	ldr r0, [r0]
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _0203B328
	ldr r2, [r0, #0x84]
	ldr r1, [r2]
	str r1, [sp, #0x14]
	ldr r1, [r2, #4]
	str r1, [sp, #0x18]
	ldrh r1, [r7, #0x16]
	tst r1, #0x40
	ldrne r0, [r0, #0x84]
	ldrneh r0, [r0, #0x18]
	addne r0, r8, r0
	movne r0, r0, lsl #0x10
	movne r8, r0, lsr #0x10
	mov r0, #1
	str r0, [sp, #0xc]
	b _0203B328
_0203B318:
	ldr r0, [r7]
	str r0, [sp, #0x14]
	ldr r0, [r7, #4]
	str r0, [sp, #0x18]
_0203B328:
	ldrh r0, [r7, #0x16]
	ldr r4, [sp, #0x14]
	ldr r6, [sp, #0x18]
	tst r0, #0x600
	beq _0203B3B4
	ldr lr, _0203B870 ; =0x00001333
	tst r0, #0x200
	umull r12, r8, r9, lr
	mov r2, r9, asr #0x1f
	ldr r1, [r7, #0x3c]
	movne r3, #1
	mla r8, r2, lr, r8
	moveq r3, #0
	adds r2, r12, #0x800
	add r0, sp, #0x1c
	str r1, [sp]
	stmib sp, {r0, r3}
	ldr r0, _0203B854 ; 0x02099EF0
	ldr r1, [r5, #0x84]
	ldr r0, [r0]
	adc r8, r8, #0
	mov r2, r2, lsr #0xc
	add r3, sp, #0x14
	orr r2, r2, r8, lsl #20
	bl FUN_ov132_02148e5c
	cmp r0, #0
	ldrne r4, [sp, #0x1c]
	ldr r1, [sp, #0x14]
	ldrne r6, [sp, #0x20]
	ldr r0, [sp, #0x18]
	sub r1, r1, r4
	sub r0, r0, r6
	bl FX_Atan2Idx
	strh r0, [r7, #0x40]
	b _0203B408
_0203B3B4:
	mov r0, r8, asr #4
	mov r0, r0, lsl #1
	add r1, r0, #1
	mov r2, r1, lsl #1
	mov r1, r0, lsl #1
	ldr r3, _0203B874 ; =FX_SinCosTable_
	ldr r0, [r7, #0x3c]
	ldrsh r2, [r3, r2]
	ldrsh r1, [r3, r1]
	smull r8, r3, r0, r2
	smull r2, r1, r0, r1
	adds r8, r8, #0x800
	adc r0, r3, #0
	mov r3, r8, lsr #0xc
	orr r3, r3, r0, lsl #20
	add r4, r4, r3
	adds r2, r2, #0x800
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	add r6, r6, r1
_0203B408:
	ldr r1, [r5, #0x84]
	ldr r0, [r1]
	cmp r4, r0
	bne _0203B424
	ldr r0, [r1, #4]
	cmp r6, r0
	beq _0203B490
_0203B424:
	ldr r1, [r5, #0x88]
	ldr r0, [r1]
	cmp r0, #0x80000000
	ldrne r0, [r1, #4]
	cmpne r0, #0x80000000
	beq _0203B490
	str r4, [r1]
	ldr r0, [r5, #0x88]
	ldr r4, _0203B854 ; 0x02099EF0
	str r6, [r0, #4]
	ldr r1, [r5, #0x84]
	ldrh r0, [r7, #0x16]
	ldrb r2, [r1, #0x1d]
	mov r1, r5
	mov r3, r9
	str r0, [sp]
	ldr r0, [r4]
	bl FUN_ov132_02147ec8
	ldr r0, _0203B858 ; =0x0209A2C0
	ldrsh r1, [r5, #0x94]
	ldr r0, [r0, #0x48]
	cmp r1, r0
	bne _0203B4DC
	ldr r0, [r4]
	mov r1, r5
	bl FUN_ov126_0212fab8
	b _0203B4DC
_0203B490:
	ldr r0, [sp, #0xc]
	ldr r4, _0203B850 ; =g3DFieldSprite
	cmp r0, #0
	mov r6, #0
	beq _0203B4DC
	ldrsb r1, [r7]
	mov r0, #0x58
	mla r0, r1, r0, r10
	add r0, r0, #0x3a00
	ldrh r0, [r0, #0xd6]
	tst r0, #8
	bne _0203B4DC
	ldr r0, [r5, #0x84]
	mov r1, r5
	ldrb r3, [r0, #0x1a]
	ldrb r2, [r0, #0x1d]
	str r6, [sp]
	ldr r0, [r4]
	bl FUN_ov1_020e3c14
_0203B4DC:
	ldrsh r2, [r7, #0x48]
	mov r1, #0
	cmp r2, #0
	beq _0203B528
	ble _0203B510
	add r0, r10, #0x1000
	ldr r0, [r0, #0x3e0]
	mov r0, r0, lsl #0x10
	sub r0, r2, r0, asr #16
	strh r0, [r7, #0x48]
	ldrsh r0, [r7, #0x48]
	cmp r0, #0
	strleh r1, [r7, #0x48]
_0203B510:
	add r0, r10, #0x1000
	ldr r2, [r7, #0x3c]
	ldr r1, [r7, #0x44]
	ldr r0, [r0, #0x3e0]
	mla r0, r1, r0, r2
	str r0, [r7, #0x3c]
_0203B528:
	mov r0, r10
	mov r1, r5
	mov r2, r7
	bl FUN_0203c75c
	ldrsh r2, [r7, #0x38]
	cmp r2, #0
	beq _0203B5B0
	cmp r2, #0
	mov r1, #1
	ble _0203B574
	add r0, r10, #0x1000
	ldr r0, [r0, #0x3e0]
	mov r0, r0, lsl #0x10
	sub r0, r2, r0, asr #16
	strh r0, [r7, #0x38]
	ldrsh r0, [r7, #0x38]
	cmp r0, #0
	movle r0, #0
	strleh r0, [r7, #0x38]
_0203B574:
	add r0, r10, #0x1000
	ldrsh r2, [r7, #0x36]
	ldr r0, [r0, #0x3e0]
	ldrh r3, [r7, #0x34]
	mul r0, r2, r0
	mov r0, r0, lsl #0x10
	add r0, r3, r0, lsr #16
	strh r0, [r7, #0x34]
	ldrh r2, [r7, #0x34]
	cmp r2, #0
	streqh r1, [r7, #0x34]
	beq _0203B5B0
	ldr r0, _0203B878 ; =0x00002710
	cmp r2, r0
	strhih r0, [r7, #0x34]
_0203B5B0:
	ldrh r0, [r7, #0x16]
	tst r0, #0x4000
	beq _0203B68C
	mov r8, #0
	b _0203B684
_0203B5C4:
	ldr r0, _0203B854 ; 0x02099EF0
	mov r1, r8
	ldr r0, [r0]
	bl FUN_ov126_0213922c
	movs r6, r0
	cmpne r6, r5
	beq _0203B680
	bl FUN_0206d5f0
	mov r4, r0
	mov r0, r5
	bl FUN_0206d5f0
	cmp r4, r0
	beq _0203B680
	ldr r0, [r6, #0x84]
	add r1, sp, #0x14
	ldr r2, [r0, #4]
	ldr r0, [r0]
	mov r3, r1
	str r2, [sp, #0x18]
	str r0, [sp, #0x14]
	ldr r0, [r7, #0x18]
	str r0, [sp]
	ldr r0, _0203B854 ; 0x02099EF0
	ldr r2, [r5, #0x84]
	ldr r0, [r0]
	bl FUN_ov132_021488a0
	ldr r0, [sp, #0x14]
	cmp r0, #0x80000000
	ldreq r0, [sp, #0x18]
	cmpeq r0, #0x80000000
	beq _0203B680
	mov r0, #0x58
	mla r0, r8, r0, r10
	ldr r4, [sp, #0x18]
	ldr r3, [sp, #0x14]
	ldr r2, [r6, #0x88]
	add r0, r0, #0x3a00
	stmia r2, {r3, r4}
	ldr r2, [r6, #0x84]
	ldrh r0, [r0, #0xd6]
	ldrb r2, [r2, #0x1d]
	mov r1, r6
	mov r3, r9
	str r0, [sp]
	ldr r0, _0203B854 ; 0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02147ec8
_0203B680:
	add r8, r8, #1
_0203B684:
	cmp r8, #0x16
	blt _0203B5C4
_0203B68C:
	ldrh r0, [r7, #0x16]
	ldr r6, _0203B850 ; =g3DFieldSprite
	mov r4, #0
	tst r0, #0x1000
	beq _0203B71C
	mov r8, r4
	add r0, r10, #0x1000
	b _0203B6D8
_0203B6AC:
	ldr r2, [r7, #0x20]
	ldr r1, [r7, #0x1c]
	add r3, r2, r1
	str r3, [r7, #0x20]
	ldr r2, [r7, #0x1c]
	ldr r1, [r7, #0x24]
	cmp r3, #0
	sub r1, r2, r1
	str r1, [r7, #0x1c]
	ble _0203B6E4
	add r8, r8, #1
_0203B6D8:
	ldr r1, [r0, #0x3e0]
	cmp r8, r1
	blo _0203B6AC
_0203B6E4:
	ldr r1, [r7, #0x20]
	mov r0, #0
	cmp r1, #0
	bgt _0203B710
	str r0, [r7, #0x20]
	str r0, [r7, #0x1c]
	str r0, [r7, #0x24]
	ldrh r1, [r7, #0x16]
	ldr r0, _0203B87C ; =0x0000EFFF
	and r0, r1, r0
	strh r0, [r7, #0x16]
_0203B710:
	ldr r1, [r7, #0x20]
	ldr r0, [r5, #0x84]
	str r1, [r0, #8]
_0203B71C:
	ldrh r0, [r7, #0x16]
	tst r0, #0x800
	beq _0203B7C0
	ldrsh r1, [r7, #0x30]
	cmp r1, #0
	ble _0203B754
	add r0, r10, #0x1000
	ldr r0, [r0, #0x3e0]
	mov r0, r0, lsl #0x10
	sub r0, r1, r0, asr #16
	strh r0, [r7, #0x30]
	ldrsh r0, [r7, #0x30]
	cmp r0, #0
	strleh r4, [r7, #0x30]
_0203B754:
	ldr r1, [r5, #0x84]
	add r0, r10, #0x1000
	ldrh r8, [r1, #0x18]
	ldr r2, [r0, #0x3e0]
	ldr r3, [r7, #0x2c]
	add r0, r8, #0xff
	add r0, r0, #0xff00
	mla r0, r3, r2, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	strh r0, [r1, #0x18]
	bl FUN_ov16_020efd3c
	ldr r2, [r5, #0x84]
	mov r1, r5
	strb r0, [r2, #0x1a]
	ldr r0, [r5, #0x84]
	ldrb r3, [r0, #0x1a]
	ldrb r2, [r0, #0x1d]
	str r4, [sp]
	ldr r0, [r6]
	bl FUN_ov1_020e3c14
	ldrsh r0, [r7, #0x30]
	cmp r0, #0
	ldreqh r1, [r7, #0x16]
	ldreq r0, _0203B880 ; =0x0000F7FF
	andeq r0, r1, r0
	streqh r0, [r7, #0x16]
_0203B7C0:
	ldrh r0, [r7, #0x16]
	tst r0, #0x2000
	beq _0203B83C
	ldr r2, [r5, #0x84]
	ldrb r0, [r7, #0x28]
	ldrb r1, [r2, #0x1d]
	cmp r0, r1
	beq _0203B7F8
	ldrb r3, [r2, #0x1a]
	mov r1, r5
	str r4, [sp]
	ldrb r2, [r7, #0x28]
	ldr r0, [r6]
	bl FUN_ov1_020e3c14
_0203B7F8:
	ldrsh r1, [r7, #0x2a]
	cmp r1, #0
	ble _0203B824
	add r0, r10, #0x1000
	ldr r0, [r0, #0x3e0]
	mov r0, r0, lsl #0x10
	sub r0, r1, r0, asr #16
	strh r0, [r7, #0x2a]
	ldrsh r0, [r7, #0x2a]
	cmp r0, #0
	strleh r4, [r7, #0x2a]
_0203B824:
	ldrsh r0, [r7, #0x2a]
	cmp r0, #0
	ldreqh r1, [r7, #0x16]
	ldreq r0, _0203B884 ; =0x0000DFFF
	andeq r0, r1, r0
	streqh r0, [r7, #0x16]
_0203B83C:
	add r11, r11, #1
_0203B840:
	cmp r11, #0x16
	blt _0203AF44
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203B850: .word g3DFieldSprite
_0203B854: .word gUtilGame
_0203B858: .word unk_0209A2C0
_0203B85C: .word g2DGChar
_0203B860: .word 0x51EB851F
_0203B864: .word g3DSpriteCtrl
_0203B868: .word g3DPlaneCtrl
_0203B86C: .word 0x0000FFFB
_0203B870: .word 0x00001333
_0203B874: .word FX_SinCosTable_
_0203B878: .word 0x00002710
_0203B87C: .word 0x0000EFFF
_0203B880: .word 0x0000F7FF
_0203B884: .word 0x0000DFFF
	arm_func_end FUN_0203addc

	arm_func_start FUN_0203b888
FUN_0203b888: ; 0x0203B888
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, _0203B9EC ; =g3DFieldSprite
	mov r10, r0
	ldr r0, [r4]
	mov r1, #0xc
	bl FUN_ov1_020e500c
	mov r7, r0
	ldr r0, [r4]
	mov r1, #5
	bl FUN_ov1_020e500c
	mov r6, #0
	mov r11, #1
	ldr r5, _0203B9F0 ; =g3DSpriteCtrl
	ldr r4, _0203B9F4 ; =g3DPlaneCtrl
	b _0203B9C0
_0203B8C4:
	mov r0, #0x58
	mla r0, r6, r0, r10
	add r0, r0, #0x3a00
	ldrh r0, [r0, #0xd6]
	tst r0, #1
	beq _0203B9BC
	ldr r0, _0203B9F8 ; =g2DGChar
	add r1, r6, #1
	ldr r0, [r0]
	bl FUN_020571e0
	mov r8, r0
	ldr r0, [r5]
	mov r1, r8
	mov r2, #2
	mov r3, r11
	bl FUN_ov16_02116cb4
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r7
	add r2, r6, #1
	mov r3, #2
	bl _ZN12C3DPlaneCtrl7setFlagEiitb
	ldr r0, [r5]
	mov r1, r8
	mov r2, #0x1f
	bl FUN_ov16_02116d94
	ldr r0, [r4]
	mov r1, r7
	add r2, r6, #1
	mov r3, #0x10
	bl _ZN12C3DPlaneCtrl8setAlphaEiih
	ldr r0, _0203B9FC ; 0x02099EF0
	mov r1, r6
	ldr r0, [r0]
	bl FUN_ov126_0213922c
	movs r8, r0
	beq _0203B9BC
	ldr r1, [r8, #0x84]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1, #8]
	ldr r0, _0203BA00 ; =gLogicThink
	mov r1, r8
	bl FUN_0204fb20
	movs r9, r0
	beq _0203B9BC
	ldr r2, [r8, #0x88]
	ldrh r0, [r9, #0x30]
	ldrh r1, [r2, #0x1e]
	add r0, r0, r1
	strh r0, [r2, #0x1e]
	ldrb r0, [r9, #0x32]
	cmp r0, #0
	beq _0203B9A8
	mov r0, r8
	mov r1, #0x100
	bl FUN_0206dac4
_0203B9A8:
	mov r0, #0x80000000
	str r0, [r9, #0x28]
	str r0, [r9, #0x2c]
	mov r0, #0
	strb r0, [r9, #0x24]
_0203B9BC:
	add r6, r6, #1
_0203B9C0:
	cmp r6, #0x16
	blt _0203B8C4
	ldr r0, _0203B9EC ; =g3DFieldSprite
	mov r1, #0x1f
	ldr r0, [r0]
	bl FUN_ov1_020e19c0
	add r0, r10, #0x3ac0
	mov r1, #0
	mov r2, #0x790
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203B9EC: .word g3DFieldSprite
_0203B9F0: .word g3DSpriteCtrl
_0203B9F4: .word g3DPlaneCtrl
_0203B9F8: .word g2DGChar
_0203B9FC: .word gUtilGame
_0203BA00: .word gLogicThink
	arm_func_end FUN_0203b888

	arm_func_start FUN_0203ba04
FUN_0203ba04: ; 0x0203BA04
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r11, r2
	mov r8, #0
	mov r9, r1
	mov r1, r8
	add r0, r10, #0x3ac0
	mov r2, #0x790
	bl MI_CpuFill8
	ldr r0, _0203BBE4 ; 0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02159df0
	cmp r0, #0
	beq _0203BA44
	bl FUN_ov132_0215a3ec
	mov r8, r0
_0203BA44:
	add r0, r10, #0xd6
	mov r6, #0
	add r5, r0, #0x3a00
	mvn r4, #1
	b _0203BB94
_0203BA58:
	ldr r0, _0203BBE4 ; 0x02099EF0
	mov r1, r6
	ldr r0, [r0]
	bl FUN_ov126_0213922c
	movs r7, r0
	beq _0203BB90
	bl FUN_0206d688
	cmp r0, #0
	beq _0203BB90
	mov r0, #0x58
	mla r0, r6, r0, r10
	add r2, r0, #0x3a00
	add r1, r0, #0x3000
	mov r0, #3
	strh r0, [r2, #0xd6]
	mov r0, #0x1f000
	str r0, [r1, #0xacc]
	mov r0, #0x64
	strh r0, [r2, #0xf4]
	mov r0, r7
	bl FUN_0206d5f0
	cmp r8, r0
	bne _0203BAD8
	mov r0, #0x58
	mul r0, r6, r0
	add r1, r10, r0
	add r2, r1, #0x3000
	mov r1, #4
	strb r1, [r2, #0xac8]
	ldrh r1, [r5, r0]
	orr r1, r1, #0x100
	strh r1, [r5, r0]
_0203BAD8:
	mov r0, #0x58
	mla r0, r6, r0, r10
	add r1, r0, #0x3000
	mov r0, #0
	strb r0, [r1, #0xac9]
	mov r0, r7
	bl FUN_0206d5f0
	cmp r0, #0
	mov r0, #0x58
	mla r0, r6, r0, r10
	add r1, r4, #1
	movne r1, r4
	add r0, r0, #0x3000
	strb r1, [r0, #0xad4]
	ldr r0, _0203BBE8 ; =gLogicThink
	mov r1, r7
	bl FUN_0204fb20
	cmp r0, #0
	beq _0203BB90
	cmp r9, #0
	beq _0203BB4C
	ldr r1, [r7, #0x84]
	ldr r2, [r1, #4]
	ldr r1, [r1]
	str r1, [r0, #0x28]
	str r2, [r0, #0x2c]
	ldr r1, [r7, #0x84]
	ldrb r1, [r1, #0x1a]
	strb r1, [r0, #0x24]
_0203BB4C:
	cmp r11, #0
	beq _0203BB78
	ldr r1, [r7, #0x88]
	ldrh r1, [r1, #0x1e]
	strh r1, [r0, #0x30]
	ldr r1, [r7, #0x84]
	ldrh r1, [r1, #0x16]
	tst r1, #0x100
	movne r1, #1
	moveq r1, #0
	strb r1, [r0, #0x32]
_0203BB78:
	ldr r2, [r7, #0x88]
	mov r1, #0
	strh r1, [r2, #0x1e]
	mov r0, r7
	mov r1, #0x100
	bl FUN_0206dadc
_0203BB90:
	add r6, r6, #1
_0203BB94:
	cmp r6, #0x16
	blt _0203BA58
	mov r3, #0
	add r1, r10, #0x1300
	add r0, r10, #0x1000
	mov r5, #2
	mov r4, #0x1f000
	ldr r2, _0203BBE4 ; 0x02099EF0
	strh r3, [r1, #0xcc]
	strb r5, [r0, #0x3c0]
	str r4, [r0, #0x3c4]
	strb r3, [r0, #0x3c1]
	ldr r0, [r2]
	bl FUN_ov132_02149b0c
	ldr r0, _0203BBEC ; =g3DFieldSprite
	ldr r0, [r0]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl FUN_ov1_020e3b14 ; may be ov15 ; ov1(Mica)
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203BBE4: .word gUtilGame
_0203BBE8: .word gLogicThink
_0203BBEC: .word g3DFieldSprite
	arm_func_end FUN_0203ba04

	arm_func_start FUN_0203bbf0
FUN_0203bbf0: ; 0x0203BBF0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r5, _0203BD44 ; 0x02099EF0
	str r0, [sp]
	ldr r0, [r5]
	mov r10, r1
	cmp r0, #0
	str r3, [sp, #4]
	mov r9, r2
	addeq sp, sp, #8
	moveq r0, #0x16
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r10, #0
	addeq sp, sp, #8
	moveq r0, #0x16
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp]
	mov r7, #0
	add r6, r0, #0x3ac0
	mov r11, #0x58
	mvn r4, #0
_0203BC44:
	ldr r0, [r5]
	mov r1, r7
	bl FUN_ov126_0213922c
	cmp r0, #0
	ldrnesh r1, [r0, #0x94]
	cmpne r1, r4
	ble _0203BD2C
	ldrsh r0, [r10, #0x94]
	cmp r1, r0
	bne _0203BD2C
	mul r0, r7, r11
	adds r8, r6, r0
	beq _0203BD2C
	ldrh r0, [r8, #0x16]
	cmn r9, #1
	orr r0, r0, #4
	strh r0, [r8, #0x16]
	bne _0203BC98
	ldr r0, [r8, #0xc]
	cmp r0, #0
	ble _0203BCAC
_0203BC98:
	cmp r9, #1
	bne _0203BCB4
	ldr r0, [r8, #0xc]
	cmp r0, #0x1f000
	blt _0203BCB4
_0203BCAC:
	mov r0, #0
	str r0, [sp, #4]
_0203BCB4:
	ldr r0, [sp, #4]
	strh r0, [r8, #0xa]
	cmp r0, #0
	bgt _0203BD0C
	mov r4, #0
	strh r4, [r8, #0xa]
	sub r0, r4, #1
	str r9, [r8, #0x10]
	cmp r9, r0
	bne _0203BCF4
	ldr r0, [sp]
	mov r1, r7
	mov r2, #2
	bl FUN_0203c86c
	str r4, [r8, #0xc]
	b _0203BD20
_0203BCF4:
	ldrh r1, [r8, #0x16]
	mov r0, #0x1f000
	orr r1, r1, #2
	strh r1, [r8, #0x16]
	str r0, [r8, #0xc]
	b _0203BD20
_0203BD0C:
	mov r1, r0
	mov r0, #0x1f000
	bl _s32_div_f
	mul r1, r0, r9
	str r1, [r8, #0x10]
_0203BD20:
	add sp, sp, #8
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203BD2C:
	add r7, r7, #1
	cmp r7, #0x16
	blt _0203BC44
	mov r0, #0x16
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203BD44: .word gUtilGame
	arm_func_end FUN_0203bbf0

	arm_func_start FUN_0203bd48
FUN_0203bd48: ; 0x0203BD48
	stmfd sp!, {r4, lr}
	add r2, r1, #2
	cmp r2, #1
	mov r2, #0
	bhi _0203BDA0
	mov r1, r1, lsl #0x18
	mov lr, r1, asr #0x18
	mov r4, r2
	mov r1, #0x58
_0203BD6C:
	mla r3, r4, r1, r0
	add r3, r3, #0x3a00
	ldrsb r12, [r3, #0xd4]
	cmp lr, r12
	bne _0203BD90
	ldrh r3, [r3, #0xd6]
	tst r3, #4
	movne r2, #1
	bne _0203BDC4
_0203BD90:
	add r4, r4, #1
	cmp r4, #0x16
	blt _0203BD6C
	b _0203BDC4
_0203BDA0:
	cmp r1, #0x16
	moveq r0, r2
	ldmeqfd sp!, {r4, pc}
	mov r3, #0x58
	mla r0, r1, r3, r0
	add r0, r0, #0x3a00
	ldrh r0, [r0, #0xd6]
	tst r0, #4
	movne r2, #1
_0203BDC4:
	mov r0, r2
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0203bd48

	arm_func_start FUN_0203bdcc
FUN_0203bdcc: ; 0x0203BDCC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldr r6, _0203BF30 ; 0x02099EF0
	mov r11, r0
	ldr r0, [r6]
	str r2, [sp, #4]
	cmp r0, #0
	str r3, [sp, #8]
	addeq sp, sp, #0x14
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r8, #0
	mov r0, r1
	mov r1, r8
	bl FUN_ov16_020efa9c
	mov r9, r0
	add r7, r11, #0x3ac0
	mov r4, #0x58
	mvn r5, #0
_0203BE18:
	ldr r0, [r6]
	mov r1, r8
	bl FUN_ov126_0213922c
	cmp r0, #0
	ldrnesh r1, [r0, #0x94]
	cmpne r1, r5
	ble _0203BF18
	ldrsh r0, [r9, #0x94]
	cmp r1, r0
	bne _0203BF18
	mul r0, r8, r4
	adds r10, r7, r0
	beq _0203BF18
	mov r0, r9
	bl FUN_0206da98
	ldrh r0, [r10, #0x16]
	ldr r4, [r9, #0x88]
	mov r1, r8
	tst r0, #8
	orreq r0, r0, #8
	streqh r0, [r10, #0x16]
	ldreqb r0, [r10, #8]
	mov r2, #0x10
	addeq r0, r0, #1
	streqb r0, [r10, #8]
	mov r0, r11
	bl FUN_0203c86c
	mov r0, r11
	mov r1, r8
	mov r2, #0x40
	bl FUN_0203c86c
	mov r5, #0
	mov r0, r10
	mov r1, r5
	mov r2, #8
	bl MI_CpuFill8
	mov r1, r5
	mov r5, #0xc
	add r0, r10, #0x3c
	mov r2, r5
	bl MI_CpuFill8
	ldr r1, [sp, #0x38]
	ldr r0, _0203BF30 ; 0x02099EF0
	str r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	ldr r0, [r0]
	add r1, sp, #0xc
	bl FUN_ov132_02148610
	cmp r0, #0
	addeq sp, sp, #0x14
	subeq r0, r5, #0xd
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0xc]
	mov r0, r8
	str r1, [r4]
	ldr r1, [sp, #0x10]
	str r1, [r4, #4]
	ldr r1, [sp, #0xc]
	str r1, [r10, #0x3c]
	ldr r1, [sp, #0x10]
	add sp, sp, #0x14
	str r1, [r10, #0x40]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203BF18:
	add r8, r8, #1
	cmp r8, #0x16
	blt _0203BE18
	mvn r0, #0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203BF30: .word gUtilGame
	arm_func_end FUN_0203bdcc

	arm_func_start FUN_0203bf34
FUN_0203bf34: ; 0x0203BF34
	cmn r1, #1
	ble _0203BF44
	cmp r1, #0x16
	blt _0203BF4C
_0203BF44:
	mov r0, #0
	bx lr
_0203BF4C:
	mov r2, #0x58
	mla r0, r1, r2, r0
	add r0, r0, #0x3a00
	ldrh r0, [r0, #0xd6]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0203bf34

	arm_func_start FUN_0203bf6c
FUN_0203bf6c: ; 0x0203BF6C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r4, _0203C224 ; 0x02099EF0
	mov r10, r0
	ldr r0, [r4]
	ldr r11, [sp, #0x34]
	cmp r0, #0
	str r3, [sp, #4]
	mov r4, r2
	addeq sp, sp, #0xc
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r1, r4
	addeq sp, sp, #0xc
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r8, #0x16
	sub r0, r8, #0x17
	cmp r1, r0
	movle r6, r0
	mov r9, r8
	movle r8, r6
	ble _0203BFE8
	mov r0, r1
	mov r1, #0
	bl FUN_ov16_020efa9c
	cmp r0, #0
	addeq sp, sp, #0xc
	subeq r0, r8, #0x17
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r6, [r0, #0x94]
_0203BFE8:
	mov r5, #0
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020efa9c
	str r0, [sp, #8]
	cmp r0, #0
	addeq sp, sp, #0xc
	subeq r0, r5, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r7, [r0, #0x94]
	mvn r4, #0
	b _0203C050
_0203C018:
	ldr r0, _0203C224 ; 0x02099EF0
	mov r1, r5
	ldr r0, [r0]
	bl FUN_ov126_0213922c
	cmp r0, #0
	ldrnesh r1, [r0, #0x94]
	cmpne r1, r4
	ble _0203C04C
	ldrsh r0, [r0, #0x94]
	cmp r1, r6
	moveq r8, r5
	cmp r0, r7
	moveq r9, r5
_0203C04C:
	add r5, r5, #1
_0203C050:
	cmp r5, #0x16
	blt _0203C018
	cmp r8, #0x16
	cmpne r9, #0x16
	addeq sp, sp, #0xc
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #8]
	bl FUN_0206da98
	mov r1, #0x58
	mul r0, r9, r1
	add r2, r10, #0x3ac0
	adds r4, r2, r0
	addeq sp, sp, #0xc
	sub r0, r1, #0x59
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r6, r0
	bne _0203C104
	mov r0, r10
	mov r1, r9
	mov r2, #0x10
	bl FUN_0203c86c
	mov r0, r10
	mov r1, r9
	mov r2, #0x20
	bl FUN_0203c86c
	mov r0, r10
	mov r1, r9
	mov r2, #0x40
	bl FUN_0203c86c
	mov r5, #0
	mov r6, #0xc
	add r0, r4, #0x3c
	mov r1, r5
	mov r2, r6
	bl MI_CpuFill8
	mov r0, r4
	mov r1, r5
	mov r2, #8
	bl MI_CpuFill8
	add r0, r4, #0x3c
	mov r2, r6
	mov r1, r5
	bl MI_CpuFill8
	b _0203C1F0
_0203C104:
	ldrh r0, [r4, #0x16]
	tst r0, #0x10
	bne _0203C128
	orr r0, r0, #0x10
	strh r0, [r4, #0x16]
	ldrb r0, [r4, #8]
	add r0, r0, #2
	strb r0, [r4, #8]
	b _0203C144
_0203C128:
	ldrsb r2, [r4]
	add r0, r10, #0x2c8
	add r3, r0, #0x3800
	mul r1, r2, r1
	ldrb r0, [r3, r1]
	sub r0, r0, #3
	strb r0, [r3, r1]
_0203C144:
	mov r0, r10
	mov r1, r9
	mov r2, #8
	bl FUN_0203c86c
	mov r0, r10
	mov r1, r9
	mov r2, #0x40
	bl FUN_0203c86c
	ldr r6, [sp, #0x30]
	ldr r0, [sp, #4]
	ldr r2, _0203C228 ; =0xB60B60B7
	mov r7, r6, lsl #0x10
	mov r5, r0, lsl #0xc
	smull r1, r0, r2, r7
	cmp r11, #1
	mov r3, #0x58
	add r0, r0, r6, lsl #16
	mov r1, r7, lsr #0x1f
	add r0, r1, r0, asr #8
	strb r8, [r4]
	strh r0, [r4, #0x40]
	add r0, r10, #0x2c8
	str r5, [r4, #0x3c]
	mul r1, r8, r3
	add r2, r0, #0x3800
	ldrb r0, [r2, r1]
	mov r5, #1
	moveq r11, #0x200
	add r0, r0, #3
	strb r0, [r2, r1]
	beq _0203C1CC
	cmp r11, #2
	moveq r11, #0x400
	movne r11, #0
_0203C1CC:
	mov r0, r10
	mov r1, r9
	mov r2, r11
	bl FUN_0203cd48
	ldr r0, [sp, #0x38]
	cmp r0, #0
	ldreqh r0, [r4, #0x16]
	orreq r0, r0, #0x40
	streqh r0, [r4, #0x16]
_0203C1F0:
	ldr r0, [sp, #8]
	mov r2, #1
	ldr r0, [r0, #0x84]
	ldr r1, [sp, #8]
	ldrb r3, [r0, #0x1a]
	ldr r0, _0203C22C ; =g3DFieldSprite
	str r2, [sp]
	ldr r0, [r0]
	mov r2, r5
	bl FUN_ov1_020e3c14
	mov r0, r9
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203C224: .word gUtilGame
_0203C228: .word 0xB60B60B7
_0203C22C: .word g3DFieldSprite
	arm_func_end FUN_0203bf6c

	arm_func_start FUN_0203c230
FUN_0203c230: ; 0x0203C230
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	mov r8, #0
	mov r4, r0
	mov r0, r1
	mov r1, r8
	mov r10, r2
	mov r7, r3
	ldr r9, [sp, #0x3c]
	bl FUN_ov16_020efa9c
	movs r6, r0
	ldrne r0, _0203C3EC ; =0x0209A7FC
	cmpne r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [sp, #0x30]
	ldr r5, _0203C3F0 ; 0x02099EF0
	str r0, [sp]
	ldr r0, [r5]
	add r1, sp, #4
	mov r2, r10
	mov r3, r7
	bl FUN_ov132_02148610
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r6
	bl FUN_0206da98
	sub r7, r8, #1
	mvn r10, #0
	b _0203C2D8
_0203C2AC:
	ldr r0, [r5]
	mov r1, r8
	bl FUN_ov126_0213922c
	cmp r0, #0
	ldrnesh r1, [r0, #0x94]
	cmpne r1, r10
	ble _0203C2D4
	ldrsh r0, [r6, #0x94]
	cmp r1, r0
	moveq r7, r8
_0203C2D4:
	add r8, r8, #1
_0203C2D8:
	cmp r8, #0x16
	blt _0203C2AC
	cmn r7, #1
	addle sp, sp, #0xc
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r1, #0x58
	mul r0, r7, r1
	add r2, r4, #0x3ac0
	adds r5, r2, r0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldrh r0, [r5, #0x16]
	tst r0, #0x10
	bne _0203C328
	orr r0, r0, #0x20
	strh r0, [r5, #0x16]
	ldrb r0, [r5, #8]
	add r0, r0, #2
	strb r0, [r5, #8]
	b _0203C360
_0203C328:
	ldrsb r2, [r5]
	add r0, r4, #0x2c8
	add r6, r0, #0x3800
	mul r3, r2, r1
	ldrb r1, [r6, r3]
	ldr r0, _0203C3F4 ; =0x0000FFEF
	sub r1, r1, #3
	strb r1, [r6, r3]
	ldrh r1, [r5, #0x16]
	and r0, r1, r0
	strh r0, [r5, #0x16]
	ldrh r0, [r5, #0x16]
	orr r0, r0, #0x20
	strh r0, [r5, #0x16]
_0203C360:
	mov r0, r4
	mov r1, r7
	mov r2, #8
	bl FUN_0203c86c
	mov r0, r4
	mov r1, r7
	mov r2, #0x40
	bl FUN_0203c86c
	ldr r6, [sp, #0x38]
	cmp r9, #1
	mov r1, r6, lsl #0x10
	ldr r2, _0203C3F8 ; =0xB60B60B7
	mov r0, r1, lsr #0x1f
	smull r1, r8, r2, r1
	add r8, r8, r6, lsl #16
	add r8, r0, r8, asr #8
	ldr r3, [sp, #0x34]
	strh r8, [r5, #0x40]
	mov r0, r3, lsl #0xc
	str r0, [r5, #0x3c]
	ldr r0, [sp, #4]
	moveq r9, #0x200
	str r0, [r5]
	ldr r0, [sp, #8]
	str r0, [r5, #4]
	beq _0203C3D4
	cmp r9, #2
	moveq r9, #0x400
	movne r9, #0
_0203C3D4:
	mov r0, r4
	mov r1, r7
	mov r2, r9
	bl FUN_0203cd48
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0203C3EC: .word unk_0209A7FC
_0203C3F0: .word gUtilGame
_0203C3F4: .word 0x0000FFEF
_0203C3F8: .word 0xB60B60B7
	arm_func_end FUN_0203c230

	arm_func_start FUN_0203c3fc
FUN_0203c3fc: ; 0x0203C3FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, _0203C4E0 ; 0x02099EF0
	str r0, [sp]
	ldr r0, [r4]
	mov r10, r1
	cmp r0, #0
	mov r9, r2
	mov r11, r3
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r10, r9
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mvn r7, #0
	mov r8, r7
	mov r6, #0
_0203C43C:
	ldr r0, [r4]
	mov r1, r6
	bl FUN_ov126_0213922c
	movs r5, r0
	beq _0203C470
	bl FUN_0206cbf8
	cmp r10, r0
	moveq r7, r6
	beq _0203C470
	mov r0, r5
	bl FUN_0206cbf8
	cmp r9, r0
	moveq r8, r6
_0203C470:
	add r6, r6, #1
	cmp r6, #0x16
	blt _0203C43C
	mvn r0, #0
	cmp r7, r0
	cmpne r8, r0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, #0x58
	mul r2, r7, r1
	ldr r1, [sp]
	add r1, r1, #0x3ac0
	adds r2, r1, r2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r0, [r2, #0x16]
	cmp r11, #0
	orr r0, r0, #0x80
	strh r0, [r2, #0x16]
	strb r8, [r2, #0x50]
	blt _0203C4C8
	cmp r11, #1
	ble _0203C4CC
_0203C4C8:
	mov r11, #0
_0203C4CC:
	strb r11, [r2, #0x4d]
	mov r1, #0
	mov r0, r7
	strb r1, [r2, #0x4c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203C4E0: .word gUtilGame
	arm_func_end FUN_0203c3fc

	arm_func_start FUN_0203c4e4
FUN_0203c4e4: ; 0x0203C4E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	ldr r5, _0203C5D0 ; 0x02099EF0
	mov r10, r1
	ldr r1, [r5]
	ldr r9, [sp, #0x38]
	cmp r1, #0
	str r3, [sp, #4]
	mov r11, r2
	addeq sp, sp, #0x10
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r8, #0
	add r6, r0, #0x3ac0
	mov r4, #0x58
_0203C520:
	ldr r0, [r5]
	mov r1, r8
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _0203C5B8
	bl FUN_0206cbf8
	cmp r10, r0
	bne _0203C5B8
	mul r0, r8, r4
	adds r7, r6, r0
	beq _0203C5B8
	ldr r1, [sp, #0x3c]
	ldr r0, _0203C5D0 ; 0x02099EF0
	str r1, [sp]
	ldr r0, [r0]
	ldr r3, [sp, #4]
	add r1, sp, #8
	mov r2, r11
	bl FUN_ov132_02148610
	cmp r0, #0
	ldrne r0, [sp, #8]
	strne r0, [r7, #0x50]
	ldrne r0, [sp, #0xc]
	strne r0, [r7, #0x54]
	ldrh r0, [r7, #0x16]
	cmp r9, #0
	orr r0, r0, #0x80
	strh r0, [r7, #0x16]
	blt _0203C59C
	cmp r9, #1
	ble _0203C5A0
_0203C59C:
	mov r9, #0
_0203C5A0:
	strb r9, [r7, #0x4d]
	mov r1, #1
	add sp, sp, #0x10
	mov r0, r8
	strb r1, [r7, #0x4c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203C5B8:
	add r8, r8, #1
	cmp r8, #0x16
	blt _0203C520
	mvn r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203C5D0: .word gUtilGame
	arm_func_end FUN_0203c4e4

	arm_func_start FUN_0203c5d4
FUN_0203c5d4: ; 0x0203C5D4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _0203C6B8 ; 0x02099EF0
	mov r7, r0
	ldr r0, [r1]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0203C6BC ; =0x0209A2C0
	mov r4, #1
	ldr r0, [r0, #0x4c]
	sub r5, r4, #2
	bl FUN_ov16_020efa80
	movs r1, r0
	beq _0203C63C
	ldr r0, _0203C6C0 ; =g3DFieldSprite
	ldr r0, [r0]
	bl FUN_ov1_020e2830
	mov r1, r5
	cmp r0, r1
	ble _0203C63C
	mov r1, #0x58
	mla r1, r0, r1, r7
	add r0, r1, #0x3b00
	ldrsb r4, [r0, #0xc]
	cmp r4, #0
	ldreqsb r5, [r0, #0x10]
_0203C63C:
	ldr r0, _0203C6B8 ; 0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_0212f530
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _0203C6B0
	ldr r0, _0203C6C0 ; =g3DFieldSprite
	mov r1, r6
	ldr r0, [r0]
	bl FUN_ov1_020e2830
	cmn r0, #1
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0x58
	mla r1, r0, r1, r7
	add r1, r1, #0x3a00
	ldrh r1, [r1, #0xd6]
	tst r1, #2
	beq _0203C6B0
	cmp r4, #1
	beq _0203C69C
	cmp r4, #0
	cmpeq r5, r0
	bne _0203C6B0
_0203C69C:
	mov r0, r6
	bl FUN_0206d9f8
	cmp r0, #0
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_0203C6B0:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0203C6B8: .word gUtilGame
_0203C6BC: .word unk_0209A2C0
_0203C6C0: .word g3DFieldSprite
	arm_func_end FUN_0203c5d4

	arm_func_start FUN_0203c6c4
FUN_0203c6c4: ; 0x0203C6C4
	cmn r1, #1
	ble _0203C6D4
	cmp r1, #0x16
	blt _0203C6DC
_0203C6D4:
	mov r0, #0
	bx lr
_0203C6DC:
	mov r2, #0x58
	mla r0, r1, r2, r0
	add r0, r0, #0x3a00
	ldrh r1, [r0, #0xd6]
	mov r0, #0
	mov r3, #1
	tst r1, #0x80
	bne _0203C730
	ldr r1, _0203C758 ; =0x0209A2C0
	mov r12, r0
	ldrb r2, [r1, #0x5a]
	cmp r2, #2
	beq _0203C728
	ldrb r1, [r1, #0x5b]
	tst r1, #1
	movne r1, r3
	moveq r1, r0
	cmp r1, #0
	moveq r12, #1
_0203C728:
	cmp r12, #0
	moveq r3, #0
_0203C730:
	cmp r3, #0
	bxeq lr
	ldr r1, _0203C758 ; =0x0209A2C0
	ldr r1, [r1, #0x48]
	cmp r1, #0
	movge r1, #1
	movlt r1, #0
	cmp r1, #0
	moveq r0, #1
	bx lr
_0203C758: .word unk_0209A2C0
	arm_func_end FUN_0203c6c4

	arm_func_start FUN_0203c75c
FUN_0203c75c: ; 0x0203C75C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r11, _0203C868 ; 0x02099EF0
	mov r4, r0
	ldr r0, [r11]
	mov r10, r1
	mov r9, r2
	bl FUN_ov132_021434f8
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r10, #0
	cmpne r9, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r0, [r9, #0x16]
	tst r0, #2
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r5, r4, #0x3ac0
	mov r6, #0
	add r4, r4, #0x1300
_0203C7B4:
	mov r0, #0x58
	mul r0, r6, r0
	adds r7, r5, r0
	beq _0203C854
	ldrh r0, [r7, #0x16]
	tst r0, #1
	beq _0203C854
	tst r0, #2
	beq _0203C854
	ldr r0, [r11]
	mov r1, r6
	bl FUN_ov126_0213922c
	movs r8, r0
	beq _0203C854
	bl FUN_0206d688
	cmp r0, #0
	beq _0203C854
	ldrb r1, [r7, #8]
	ldrsb r0, [r7, #9]
	adds r0, r1, r0
	movmi r0, #0
	bmi _0203C814
	cmp r0, #0xff
	movgt r0, #0xff
_0203C814:
	and r2, r0, #0xff
	ldrb r1, [r9, #8]
	ldrsb r0, [r9, #9]
	adds r1, r1, r0
	movmi r1, #0
	bmi _0203C834
	cmp r1, #0xff
	movgt r1, #0xff
_0203C834:
	str r2, [sp]
	ldrsh r0, [r4, #0xcc]
	mov r2, r8
	and r3, r1, #0xff
	str r0, [sp, #4]
	ldr r0, [r11]
	mov r1, r10
	bl FUN_ov132_02151958
_0203C854:
	add r6, r6, #1
	cmp r6, #0x16
	blt _0203C7B4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203C868: .word gUtilGame
	arm_func_end FUN_0203c75c

	arm_func_start FUN_0203c86c
FUN_0203c86c: ; 0x0203C86C
	stmfd sp!, {r3, r4, r5, lr}
	cmp r1, #0
	ldmltfd sp!, {r3, r4, r5, pc}
	cmp r1, #0x16
	ldmgefd sp!, {r3, r4, r5, pc}
	mov lr, #0x58
	mul r3, r1, lr
	add r1, r0, #0xd6
	add r1, r1, #0x3a00
	ldrh r4, [r1, r3]
	and r4, r2, r4
	cmp r4, #0x20
	bgt _0203C8D4
	bge _0203C95C
	cmp r4, #8
	bgt _0203C8C8
	cmp r4, #2
	ldmltfd sp!, {r3, r4, r5, pc}
	cmpne r4, #4
	beq _0203C970
	cmp r4, #8
	beq _0203C8F0
	ldmfd sp!, {r3, r4, r5, pc}
_0203C8C8:
	cmp r4, #0x10
	beq _0203C908
	ldmfd sp!, {r3, r4, r5, pc}
_0203C8D4:
	cmp r4, #0x40
	bgt _0203C8E4
	beq _0203C970
	ldmfd sp!, {r3, r4, r5, pc}
_0203C8E4:
	cmp r4, #0x80
	beq _0203C970
	ldmfd sp!, {r3, r4, r5, pc}
_0203C8F0:
	add r0, r0, #0x2c8
	add r4, r0, #0x3800
	ldrb r0, [r4, r3]
	sub r0, r0, #1
	strb r0, [r4, r3]
	b _0203C970
_0203C908:
	add r12, r0, #0x2c8
	add r5, r12, #0x3800
	ldrb r4, [r5, r3]
	add r12, r0, r3
	add r12, r12, #0x3a00
	sub r4, r4, #2
	strb r4, [r5, r3]
	ldrsb r4, [r12, #0xc0]
	sub r12, lr, #0x59
	cmp r4, r12
	bgt _0203C93C
	cmp r4, #0x16
	bge _0203C970
_0203C93C:
	mov r12, #0x58
	mul r12, r4, r12
	add r0, r0, #0x2c8
	add lr, r0, #0x3800
	ldrb r0, [lr, r12]
	sub r0, r0, #3
	strb r0, [lr, r12]
	b _0203C970
_0203C95C:
	add r0, r0, #0x2c8
	add r12, r0, #0x3800
	ldrb r0, [r12, r3]
	sub r0, r0, #2
	strb r0, [r12, r3]
_0203C970:
	ldrh r12, [r1, r3]
	mvn r0, r2
	mov r0, r0, lsl #0x10
	and r0, r12, r0, lsr #16
	strh r0, [r1, r3]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0203c86c

	arm_func_start FUN_0203c988
FUN_0203c988: ; 0x0203C988
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r7, _0203CA34 ; 0x02099EF0
	mov r6, r0
	ldr r0, [r7]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r5, #2
	cmp r0, #1
	bhi _0203C9F0
	mov r0, r4, lsl #0x10
	mov r1, r5, lsl #0x18
	mov r2, r0, lsr #0x10
	mov r7, #0
	mov r4, r1, asr #0x18
	mov r0, #0x58
_0203C9CC:
	mla r1, r7, r0, r6
	add r1, r1, #0x3a00
	ldrsb r3, [r1, #0xd4]
	add r7, r7, #1
	cmp r4, r3
	streqh r2, [r1, #0xf4]
	cmp r7, #0x16
	blt _0203C9CC
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0203C9F0:
	mov r8, #0
_0203C9F4:
	ldr r0, [r7]
	mov r1, r8
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _0203CA24
	bl FUN_0206cbf8
	cmp r5, r0
	moveq r0, #0x58
	mlaeq r0, r8, r0, r6
	addeq r0, r0, #0x3a00
	streqh r4, [r0, #0xf4]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_0203CA24:
	add r8, r8, #1
	cmp r8, #0x16
	blt _0203C9F4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0203CA34: .word gUtilGame
	arm_func_end FUN_0203c988

	arm_func_start FUN_0203ca38
FUN_0203ca38: ; 0x0203CA38
	ldr r3, _0203CA80 ; 0x02099EF0
	ldr r3, [r3]
	cmp r3, #0
	bxeq lr
	cmp r1, #0
	beq _0203CA68
	cmp r1, #1
	addeq r3, r0, #0x1000
	addeq r0, r0, #0x1300
	streqb r1, [r3, #0x3c1]
	streqh r2, [r0, #0xcc]
	bx lr
_0203CA68:
	add r2, r0, #0x1000
	add r0, r0, #0x1300
	mov r3, #0
	strb r1, [r2, #0x3c1]
	strh r3, [r0, #0xcc]
	bx lr
_0203CA80: .word gUtilGame
	arm_func_end FUN_0203ca38

	arm_func_start FUN_0203ca84
FUN_0203ca84: ; 0x0203CA84
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _0203CAB0 ; =gLogicThink
	mov r5, r2
	mov r4, r3
	bl FUN_0204fb20
	cmp r0, #0
	strneb r5, [r0, #0x1f]
	ldrne r1, [sp, #0x10]
	strneb r4, [r0, #0x20]
	strneh r1, [r0, #0x22]
	ldmfd sp!, {r3, r4, r5, pc}
_0203CAB0: .word gLogicThink
	arm_func_end FUN_0203ca84

	arm_func_start FUN_0203cab4
FUN_0203cab4: ; 0x0203CAB4
	add r0, r0, #0x1000
	cmp r1, #0
	ldrb r1, [r0, #0x3c0]
	andeq r1, r1, #0xfe
	orrne r1, r1, #1
	strb r1, [r0, #0x3c0]
	bx lr
	arm_func_end FUN_0203cab4

	arm_func_start FUN_0203cad0
FUN_0203cad0: ; 0x0203CAD0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r12, r5, #0x1000
	ldrb r0, [r12, #0x3c0]
	mov r4, r1
	tst r0, #4
	ldmnefd sp!, {r3, r4, r5, pc}
	orr lr, r0, #4
	add r3, r5, #0x1300
	strb lr, [r12, #0x3c0]
	strh r2, [r3, #0xc2]
	cmp r2, #0
	add r0, r5, #0x13c0
	bgt _0203CB40
	mov r2, #0
	sub r1, r2, #1
	cmp r4, r1
	and r1, lr, #0xff
	andeq r1, r1, #0xfd
	strh r2, [r3, #0xc2]
	streq r2, [r12, #0x3c4]
	streqb r1, [r0]
	orrne r2, r1, #2
	movne r1, #0x1f000
	strneb r2, [r0]
	strne r1, [r12, #0x3c4]
	str r4, [r12, #0x3c8]
	ldmfd sp!, {r3, r4, r5, pc}
_0203CB40:
	mov r1, r2
	mov r0, #0x1f000
	bl _s32_div_f
	mul r1, r0, r4
	add r0, r5, #0x1000
	str r1, [r0, #0x3c8]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0203cad0

	arm_func_start FUN_0203cb5c
FUN_0203cb5c: ; 0x0203CB5C
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x3c0]
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0203cb5c

	arm_func_start FUN_0203cb74
FUN_0203cb74: ; 0x0203CB74
	add r0, r0, #0x1000
	cmp r1, #0
	ldrb r1, [r0, #0x3c0]
	orrne r1, r1, #0x10
	andeq r1, r1, #0xef
	strb r1, [r0, #0x3c0]
	bx lr
	arm_func_end FUN_0203cb74

	arm_func_start FUN_0203cb90
FUN_0203cb90: ; 0x0203CB90
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x3c0]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_0203cb90

	arm_func_start FUN_0203cba8
FUN_0203cba8: ; 0x0203CBA8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r6, r1
	cmp r2, #1
	beq _0203CBC8
	cmp r2, #2
	beq _0203CBD0
	b _0203CBD8
_0203CBC8:
	mov r5, #0x200
	b _0203CBDC
_0203CBD0:
	mov r5, #0x400
	b _0203CBDC
_0203CBD8:
	mov r5, #0
_0203CBDC:
	add r0, r6, #2
	cmp r0, #1
	bhi _0203CC24
	mov r4, #0
	mov r8, #0x58
_0203CBF0:
	mla r0, r4, r8, r7
	add r0, r0, #0x3a00
	ldrsb r0, [r0, #0xd4]
	cmp r6, r0
	bne _0203CC14
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl FUN_0203cd48
_0203CC14:
	add r4, r4, #1
	cmp r4, #0x16
	blt _0203CBF0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0203CC24:
	ldr r4, _0203CC70 ; 0x02099EF0
	mov r8, #0
_0203CC2C:
	ldr r0, [r4]
	mov r1, r8
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _0203CC60
	bl FUN_0206cbf8
	cmp r6, r0
	bne _0203CC60
	mov r0, r7
	mov r1, r8
	mov r2, r5
	bl FUN_0203cd48
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0203CC60:
	add r8, r8, #1
	cmp r8, #0x16
	blt _0203CC2C
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0203CC70: .word gUtilGame
	arm_func_end FUN_0203cba8

	arm_func_start FUN_0203cc74
FUN_0203cc74: ; 0x0203CC74
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r4, _0203CD3C ; =0xFFFFD8F0
	mov r6, r2
	mov r8, r0
	cmp r6, r4
	ldr r0, _0203CD40 ; =0x00002710
	movlt r6, r4
	cmp r6, r0
	mov r7, r1
	movgt r6, r0
	add r0, r7, #2
	mov r5, r3
	cmp r0, #1
	bhi _0203CCEC
	mov r0, r6, lsl #0x10
	mov r1, r5, lsl #0x10
	mov r3, r0, asr #0x10
	mov r9, #0
	mov r2, r1, asr #0x10
	mov r0, #0x58
_0203CCC4:
	mla r1, r9, r0, r8
	add r1, r1, #0x3a00
	ldrsb r4, [r1, #0xd4]
	add r9, r9, #1
	cmp r7, r4
	streqh r3, [r1, #0xf6]
	streqh r2, [r1, #0xf8]
	cmp r9, #0x16
	blt _0203CCC4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203CCEC:
	ldr r9, _0203CD44 ; 0x02099EF0
	mov r4, #0
_0203CCF4:
	ldr r0, [r9]
	mov r1, r4
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _0203CD2C
	bl FUN_0206cbf8
	cmp r7, r0
	bne _0203CD2C
	mov r0, #0x58
	mla r0, r4, r0, r8
	add r0, r0, #0x3a00
	strh r6, [r0, #0xf6]
	strh r5, [r0, #0xf8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203CD2C:
	add r4, r4, #1
	cmp r4, #0x16
	blt _0203CCF4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203CD3C: .word 0xFFFFD8F0
_0203CD40: .word 0x00002710
_0203CD44: .word gUtilGame
	arm_func_end FUN_0203cc74

	arm_func_start FUN_0203cd48
FUN_0203cd48: ; 0x0203CD48
	cmp r1, #0
	bxlt lr
	cmp r1, #0x16
	bxgt lr
	mov r3, #0x58
	mul r3, r1, r3
	add r0, r0, #0xd6
	add r1, r0, #0x3a00
	cmp r2, #0x200
	ldrh r12, [r1, r3]
	beq _0203CD80
	cmp r2, #0x400
	beq _0203CD94
	b _0203CDA8
_0203CD80:
	tst r12, #0x400
	ldrne r0, _0203CDB8 ; =0x0000FBFF
	andne r12, r12, r0
	orr r12, r12, #0x200
	b _0203CDB0
_0203CD94:
	tst r12, #0x200
	ldrne r0, _0203CDBC ; =0x0000FDFF
	andne r12, r12, r0
	orr r12, r12, #0x400
	b _0203CDB0
_0203CDA8:
	ldr r0, _0203CDC0 ; =0x0000F9FF
	and r12, r12, r0
_0203CDB0:
	strh r12, [r1, r3]
	bx lr
_0203CDB8: .word 0x0000FBFF
_0203CDBC: .word 0x0000FDFF
_0203CDC0: .word 0x0000F9FF
	arm_func_end FUN_0203cd48

	arm_func_start FUN_0203cdc4
FUN_0203cdc4: ; 0x0203CDC4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #0
	mov r6, r1
	ldr r4, [sp, #0x18]
	ldr r8, [sp, #0x1c]
	mov r0, r2
	mov r1, r7
	mov r5, r3
	bl FUN_ov16_020efa9c
	cmp r0, #0
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, _0203CF24 ; =0x0209A7FC
	cmp r1, #0
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, _0203CF28 ; 0x02099EF0
	ldr r2, [r2]
	cmp r2, #0
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, _0203CF2C ; =0xB60B60B7
	mov r12, r8, lsl #0x10
	smull r2, lr, r3, r12
	add lr, lr, r8, lsl #16
	mov r2, r12, lsr #0x1f
	add lr, r2, lr, asr #8
	mov r2, lr, lsl #0x10
	cmp r6, #0
	mov r2, r2, lsr #0x10
	mov r4, r4, lsl #0xc
	beq _0203CE8C
	mov r2, r2, asr #4
	mov r2, r2, lsl #1
	add r3, r2, #1
	ldr r2, _0203CF30 ; =FX_SinCosTable_
	mov r3, r3, lsl #1
	ldrsh r2, [r2, r3]
	ldr r0, [r0, #0x84]
	ldr r8, [r1, #8]
	smull r3, r2, r4, r2
	adds r12, r3, #0x800
	ldr r3, [r1]
	adc r7, r2, r7
	mov r2, r12, lsr #0xc
	sub r1, r8, r3
	orr r2, r2, r7, lsl #20
	mov r7, r1, asr #1
	ldr r1, [r0]
	b _0203CEC8
_0203CE8C:
	mov r3, r2, asr #4
	ldr r2, _0203CF30 ; =FX_SinCosTable_
	mov r3, r3, lsl #2
	ldrsh r2, [r2, r3]
	ldr r0, [r0, #0x84]
	ldr r8, [r1, #0xc]
	smull r3, r2, r4, r2
	adds lr, r3, #0x800
	ldr r3, [r1, #4]
	adc r12, r2, r7
	mov r2, lr, lsr #0xc
	sub r7, r8, r3
	ldr r1, [r0, #4]
	orr r2, r2, r12, lsl #20
	mov r7, r7, asr #1
_0203CEC8:
	cmp r4, #0
	addgt r1, r1, r2
	cmp r5, #0
	beq _0203CF08
	cmp r5, #1
	beq _0203CF00
	cmp r5, #2
	bne _0203CF08
	ldr r0, _0203CF28 ; 0x02099EF0
	mov r2, r6
	ldr r0, [r0]
	bl FUN_ov132_021483b0
	mov r1, r0
	b _0203CF1C
_0203CF00:
	sub r1, r1, r3
	b _0203CF10
_0203CF08:
	sub r0, r1, r7
	sub r1, r0, r3
_0203CF10:
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r1, r0, asr #0xc
_0203CF1C:
	mov r0, r1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0203CF24: .word unk_0209A7FC
_0203CF28: .word gUtilGame
_0203CF2C: .word 0xB60B60B7
_0203CF30: .word FX_SinCosTable_
	arm_func_end FUN_0203cdc4

	arm_func_start FUN_0203cf34
FUN_0203cf34: ; 0x0203CF34
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r1
	mov r0, r7
	mov r1, #0
	mov r6, r2
	mov r5, r3
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldrne r1, _0203CFBC ; =0x0209A7FC
	cmpne r1, #0
	ldrne r4, _0203CFC0 ; 0x02099EF0
	ldrne r1, [r4]
	cmpne r1, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	bl FUN_0206da98
	ldr r0, [sp, #0x20]
	add r1, sp, #4
	str r0, [sp]
	ldr r0, [r4]
	mov r2, r6
	mov r3, r5
	bl FUN_ov132_02148610
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r4]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	mov r1, r7
	bl FUN_ov126_02139c58
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0203CFBC: .word unk_0209A7FC
_0203CFC0: .word gUtilGame
	arm_func_end FUN_0203cf34

	arm_func_start FUN_0203cfc4
FUN_0203cfc4: ; 0x0203CFC4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r1
	mov r6, r2
	add r1, r7, #2
	mov r8, r0
	mov r5, r3
	cmp r1, #1
	mov r6, r6, lsl #0xc
	mov r4, #0
	bhi _0203D028
	mov r0, r5, lsl #0x10
	mov r2, r0, asr #0x10
	mov r1, #0x58
_0203CFF8:
	mla r3, r4, r1, r8
	add r0, r3, #0x3a00
	ldrsb r0, [r0, #0xd4]
	add r4, r4, #1
	cmp r7, r0
	addeq r0, r3, #0x3000
	streq r6, [r0, #0xb04]
	addeq r0, r3, #0x3b00
	streqh r2, [r0, #8]
	cmp r4, #0x16
	blt _0203CFF8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203D028:
	ldr r9, _0203D078 ; 0x02099EF0
_0203D02C:
	ldr r0, [r9]
	mov r1, r4
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _0203D068
	bl FUN_0206cbf8
	cmp r7, r0
	bne _0203D068
	mov r0, #0x58
	mla r1, r4, r0, r8
	add r0, r1, #0x3000
	str r6, [r0, #0xb04]
	add r0, r1, #0x3b00
	strh r5, [r0, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203D068:
	add r4, r4, #1
	cmp r4, #0x16
	blt _0203D02C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203D078: .word gUtilGame
	arm_func_end FUN_0203cfc4

	arm_func_start FUN_0203d07c
FUN_0203d07c: ; 0x0203D07C
	stmfd sp!, {r4, lr}
	add r2, r1, #2
	cmp r2, #1
	mov r2, #0
	bhi _0203D0D4
	mov r1, r1, lsl #0x18
	mov lr, r1, asr #0x18
	mov r4, r2
	mov r1, #0x58
_0203D0A0:
	mla r3, r4, r1, r0
	add r3, r3, #0x3a00
	ldrsb r12, [r3, #0xd4]
	cmp lr, r12
	bne _0203D0C4
	ldrh r3, [r3, #0xd6]
	tst r3, #0x800
	movne r2, #1
	bne _0203D0F8
_0203D0C4:
	add r4, r4, #1
	cmp r4, #0x16
	blt _0203D0A0
	b _0203D0F8
_0203D0D4:
	cmp r1, #0x16
	moveq r0, r2
	ldmeqfd sp!, {r4, pc}
	mov r3, #0x58
	mla r0, r1, r3, r0
	add r0, r0, #0x3a00
	ldrh r0, [r0, #0xd6]
	tst r0, #0x800
	movne r2, #1
_0203D0F8:
	mov r0, r2
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0203d07c

	arm_func_start FUN_0203d100
FUN_0203d100: ; 0x0203D100
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r8, r2
	mov r4, r8, lsl #0x10
	ldr r2, _0203D2D0 ; =0xB60B60B7
	mov r9, r1
	smull r1, r8, r2, r4
	add r2, r9, #2
	add r8, r8, r4
	mov r1, r4, lsr #0x1f
	mov r10, r0
	mov r7, r3
	cmp r2, #1
	add r8, r1, r8, asr #8
	ldr r6, [sp, #0x28]
	bhi _0203D1F0
	mov r0, r7, lsl #0x10
	mov r4, #0
	mov r11, r0, asr #0x10
_0203D148:
	mov r0, #0x58
	mla r5, r4, r0, r10
	add r0, r5, #0x3a00
	ldrsb r0, [r0, #0xd4]
	cmp r9, r0
	bne _0203D1E0
	ldr r0, _0203D2D4 ; 0x02099EF0
	mov r1, r4
	ldr r0, [r0]
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _0203D1E0
	cmp r7, #0
	add r1, r5, #0x3a00
	bgt _0203D1A8
	ldrh r3, [r1, #0xd6]
	ldr r0, _0203D2D8 ; =0x0000F7FF
	add r2, r5, #0x3000
	and r0, r3, r0
	strh r0, [r1, #0xd6]
	mov r0, #0
	strh r0, [r1, #0xf0]
	str r0, [r2, #0xaec]
	b _0203D1E0
_0203D1A8:
	ldrh r2, [r1, #0xd6]
	cmp r6, #0
	mov r3, r8
	orr r2, r2, #0x800
	strh r2, [r1, #0xd6]
	strh r11, [r1, #0xf0]
	ldreq r0, [r0, #0x84]
	mov r1, r7
	ldreqh r0, [r0, #0x18]
	subeq r3, r8, r0
	mov r0, r3
	bl _s32_div_f
	add r1, r5, #0x3000
	str r0, [r1, #0xaec]
_0203D1E0:
	add r4, r4, #1
	cmp r4, #0x16
	blt _0203D148
	b _0203D2C8
_0203D1F0:
	ldr r11, _0203D2D4 ; 0x02099EF0
	mov r5, #0
_0203D1F8:
	ldr r0, [r11]
	mov r1, r5
	bl FUN_ov126_0213922c
	movs r4, r0
	beq _0203D2B4
	bl FUN_0206cbf8
	cmp r9, r0
	bne _0203D2B4
	cmp r7, #0
	mov r0, #0x58
	bgt _0203D260
	mul r6, r5, r0
	add r0, r10, #0xd6
	add r4, r0, #0x3a00
	ldrh r3, [r4, r6]
	ldr r0, _0203D2D8 ; =0x0000F7FF
	add r2, r10, r6
	and r0, r3, r0
	strh r0, [r4, r6]
	add r1, r2, #0x3a00
	mov r3, #0
	strh r3, [r1, #0xf0]
	add r1, r2, #0x3000
	mov r0, r5
	str r3, [r1, #0xaec]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203D260:
	mul r9, r5, r0
	add r0, r10, #0xd6
	add r2, r0, #0x3a00
	ldrh r1, [r2, r9]
	add r0, r10, r9
	add r0, r0, #0x3a00
	orr r1, r1, #0x800
	strh r1, [r2, r9]
	strh r7, [r0, #0xf0]
	cmp r6, #0
	ldreq r0, [r4, #0x84]
	mov r1, r7
	ldreqh r0, [r0, #0x18]
	subeq r8, r8, r0
	mov r0, r8
	bl _s32_div_f
	add r1, r10, r9
	add r1, r1, #0x3000
	str r0, [r1, #0xaec]
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203D2B4:
	add r5, r5, #1
	cmp r5, #0x16
	blt _0203D1F8
	mov r0, #0x16
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203D2C8:
	mov r0, r9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203D2D0: .word 0xB60B60B7
_0203D2D4: .word gUtilGame
_0203D2D8: .word 0x0000F7FF
	arm_func_end FUN_0203d100

	arm_func_start FUN_0203d2dc
FUN_0203d2dc: ; 0x0203D2DC
	stmfd sp!, {r4, lr}
	add r2, r1, #2
	cmp r2, #1
	mov r2, #0
	bhi _0203D334
	mov r1, r1, lsl #0x18
	mov lr, r1, asr #0x18
	mov r4, r2
	mov r1, #0x58
_0203D300:
	mla r3, r4, r1, r0
	add r3, r3, #0x3a00
	ldrsb r12, [r3, #0xd4]
	cmp lr, r12
	bne _0203D324
	ldrh r3, [r3, #0xd6]
	tst r3, #0x2000
	movne r2, #1
	bne _0203D358
_0203D324:
	add r4, r4, #1
	cmp r4, #0x16
	blt _0203D300
	b _0203D358
_0203D334:
	cmp r1, #0x16
	moveq r0, r2
	ldmeqfd sp!, {r4, pc}
	mov r3, #0x58
	mla r0, r1, r3, r0
	add r0, r0, #0x3a00
	ldrh r0, [r0, #0xd6]
	tst r0, #0x2000
	movne r2, #1
_0203D358:
	mov r0, r2
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0203d2dc

	arm_func_start FUN_0203d360
FUN_0203d360: ; 0x0203D360
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, r2
	mov r9, r1
	mov r1, r4
	mov r10, r0
	mov r8, r3
	bl FUN_0203d4b8
	cmp r0, #0
	moveq r0, #0x16
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r9, #2
	cmp r8, #0
	mvnlt r8, #0
	cmp r0, #1
	bhi _0203D41C
	mov r0, r8, lsl #0x10
	ldr r11, _0203D4B0 ; 0x02099EF0
	mov r6, #0
	mov r5, r0, asr #0x10
	and r4, r4, #0xff
_0203D3B0:
	mov r0, #0x58
	mla r7, r6, r0, r10
	add r0, r7, #0x3a00
	ldrsb r0, [r0, #0xd4]
	cmp r9, r0
	bne _0203D40C
	ldr r0, [r11]
	mov r1, r6
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _0203D40C
	add r1, r7, #0x3a00
	strh r5, [r1, #0xea]
	add r0, r7, #0x3000
	strb r4, [r0, #0xae8]
	cmp r8, #0
	ldrneh r0, [r1, #0xd6]
	orrne r0, r0, #0x2000
	strneh r0, [r1, #0xd6]
	ldreqh r2, [r1, #0xd6]
	ldreq r0, _0203D4B4 ; =0x0000DFFF
	andeq r0, r2, r0
	streqh r0, [r1, #0xd6]
_0203D40C:
	add r6, r6, #1
	cmp r6, #0x16
	blt _0203D3B0
	b _0203D4A8
_0203D41C:
	ldr r6, _0203D4B0 ; 0x02099EF0
	mov r5, #0
_0203D424:
	ldr r0, [r6]
	mov r1, r5
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _0203D494
	bl FUN_0206cbf8
	cmp r9, r0
	bne _0203D494
	mov r0, #0x58
	mul r0, r5, r0
	add r2, r10, r0
	add r1, r2, #0x3a00
	strh r8, [r1, #0xea]
	add r1, r2, #0x3000
	strb r4, [r1, #0xae8]
	add r1, r10, #0xd6
	cmp r8, #0
	addne r2, r1, #0x3a00
	ldrneh r1, [r2, r0]
	orrne r1, r1, #0x2000
	addeq r3, r1, #0x3a00
	strneh r1, [r2, r0]
	ldreqh r2, [r3, r0]
	ldreq r1, _0203D4B4 ; =0x0000DFFF
	andeq r1, r2, r1
	streqh r1, [r3, r0]
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203D494:
	add r5, r5, #1
	cmp r5, #0x16
	blt _0203D424
	mov r0, #0x16
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203D4A8:
	mov r0, r9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203D4B0: .word gUtilGame
_0203D4B4: .word 0x0000DFFF
	arm_func_end FUN_0203d360

	arm_func_start FUN_0203d4b8
FUN_0203d4b8: ; 0x0203D4B8
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _0203D4F4
_0203D4C4: ; jump table
	b _0203D4EC ; case 0
	b _0203D4EC ; case 1
	b _0203D4EC ; case 2
	b _0203D4EC ; case 3
	b _0203D4EC ; case 4
	b _0203D4EC ; case 5
	b _0203D4EC ; case 6
	b _0203D4EC ; case 7
	b _0203D4EC ; case 8
	b _0203D4EC ; case 9
_0203D4EC:
	mov r0, #1
	bx lr
_0203D4F4:
	mov r0, #0
	bx lr
	arm_func_end FUN_0203d4b8

	arm_func_start FUN_0203d4fc
FUN_0203d4fc: ; 0x0203D4FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	movs r4, r2
	mov r5, r1
	mov r7, r3
	mov r6, #1
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r5, #0
	addeq sp, sp, #8
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r8, _0203D728 ; =0x0209A7FC
	cmp r8, #0
	addeq sp, sp, #8
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r5
	bl FUN_ov16_020f07d0
	cmp r0, #0
	ldr r0, _0203D72C ; 0x02099EF0
	ldr r2, [r8]
	ldr r1, [r8, #8]
	mov r9, r6
	sub r1, r1, r2
	add r12, r2, r1, asr #1
	ldr r2, [r8, #4]
	ldr r1, [r8, #0xc]
	ldr r0, [r0]
	sub r1, r1, r2
	add lr, r2, r1, asr #1
	mov r1, r7
	mov r3, r6
	mov r2, #0
	movne r9, #0
	str r12, [sp]
	str lr, [sp, #4]
	bl FUN_ov132_0213f368
	mov r7, r0
	tst r4, #1
	beq _0203D5C0
	ldr r0, _0203D730 ; =0x0209A2C0
	ldrsh r1, [r5, #0x94]
	ldr r0, [r0, #0x48]
	cmp r0, r1
	addeq sp, sp, #8
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203D5C0:
	tst r4, #2
	beq _0203D5E0
	mov r0, r5
	bl FUN_0206d6d8
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203D5E0:
	tst r4, #4
	beq _0203D60C
	ldr r0, [r5, #0x84]
	ldr r0, [r0, #4]
	cmp r0, r7
	movlt r0, #1
	movge r0, #0
	teq r9, r0
	addeq sp, sp, #8
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203D60C:
	tst r4, #8
	beq _0203D65C
	ldr r2, [r5, #0x84]
	ldr r0, [r8]
	ldr r1, [r2]
	cmp r1, r0
	blt _0203D650
	ldr r0, [r8, #8]
	cmp r1, r0
	bgt _0203D650
	ldr r1, [r2, #4]
	ldr r0, [r8, #4]
	cmp r1, r0
	blt _0203D650
	ldr r0, [r8, #0xc]
	cmp r1, r0
	ble _0203D65C
_0203D650:
	add sp, sp, #8
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203D65C:
	tst r4, #0x10
	beq _0203D68C
	ldr r1, [r5, #0x84]
	ldr r0, [sp, #4]
	ldr r1, [r1, #4]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	teq r9, r0
	addeq sp, sp, #8
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203D68C:
	tst r4, #0x20
	beq _0203D6BC
	ldr r1, [r5, #0x84]
	ldr r0, [sp, #4]
	ldr r1, [r1, #4]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	teq r9, r0
	addne sp, sp, #8
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203D6BC:
	tst r4, #0x40
	beq _0203D6EC
	ldr r1, [r5, #0x84]
	ldr r0, [sp]
	ldr r1, [r1]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	teq r9, r0
	addeq sp, sp, #8
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203D6EC:
	tst r4, #0x80
	beq _0203D71C
	ldr r1, [r5, #0x84]
	ldr r0, [sp]
	ldr r1, [r1]
	cmp r1, r0
	movlt r0, #1
	movge r0, #0
	teq r9, r0
	addne sp, sp, #8
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203D71C:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0203D728: .word unk_0209A7FC
_0203D72C: .word gUtilGame
_0203D730: .word unk_0209A2C0
	arm_func_end FUN_0203d4fc

	arm_func_start FUN_0203d734
FUN_0203d734: ; 0x0203D734
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r5, r2
	mov r10, r0
	mov r9, r1
	mov r6, r3
	cmp r5, #0
	ldr r4, [sp, #0x28]
	bgt _0203D764
	cmp r5, #0
	movne r0, #0x16
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r5, #0x1e
_0203D764:
	cmp r6, #0
	bgt _0203D778
	movne r0, #0x16
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r6, #8
_0203D778:
	cmp r6, #0
	mov r0, r6, lsl #0xc
	ble _0203D798
	bl _fflt
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0203D7A4
_0203D798:
	bl _fflt
	mov r1, #0x3f000000
	bl _fsub
_0203D7A4:
	bl _ffix
	cmp r4, #0
	ldrle r4, _0203D908 ; =0x00000FAE
	mov r6, r0, asr #1
	mov r0, #0x6000
	umull r3, r2, r4, r0
	mov r1, r4, asr #0x1f
	mla r2, r1, r0, r2
	adds r3, r3, #0x800
	adc r0, r2, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r0, lsl #20
	ldr r1, _0203D90C ; =0x88888889
	mov r2, r3, lsr #0x1f
	smull r0, r4, r1, r3
	add r4, r3, r4
	mov r0, r5
	mov r1, r6
	add r4, r2, r4, asr #5
	mov r8, #0
	bl FX_Div
	smull r2, r1, r4, r6
	adds r2, r2, #0x800
	adc r1, r1, #0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	add r5, r0, r2
	mov r0, r5
	mov r1, r6
	bl FX_Div
	add r1, r9, #2
	cmp r1, #1
	mov r7, r0
	bhi _0203D894
	ldr r11, _0203D910 ; 0x02099EF0
	mov r4, r8
_0203D834:
	mov r0, #0x58
	mla r6, r8, r0, r10
	add r0, r6, #0x3a00
	ldrsb r0, [r0, #0xd4]
	cmp r9, r0
	bne _0203D880
	ldr r0, [r11]
	mov r1, r8
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _0203D880
	add r0, r6, #0x3000
	str r5, [r0, #0xadc]
	str r4, [r0, #0xae0]
	str r7, [r0, #0xae4]
	add r0, r6, #0x3a00
	ldrh r1, [r0, #0xd6]
	orr r1, r1, #0x1000
	strh r1, [r0, #0xd6]
_0203D880:
	add r8, r8, #1
	cmp r8, #0x16
	blt _0203D834
	mov r0, r9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203D894:
	ldr r4, _0203D910 ; 0x02099EF0
_0203D898:
	ldr r0, [r4]
	mov r1, r8
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _0203D8F4
	bl FUN_0206cbf8
	cmp r9, r0
	bne _0203D8F4
	mov r0, #0x58
	mul r3, r8, r0
	add r0, r10, r3
	add r0, r0, #0x3000
	str r5, [r0, #0xadc]
	mov r1, #0
	str r1, [r0, #0xae0]
	add r1, r10, #0xd6
	str r7, [r0, #0xae4]
	add r2, r1, #0x3a00
	ldrh r1, [r2, r3]
	mov r0, r8
	orr r1, r1, #0x1000
	strh r1, [r2, r3]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203D8F4:
	add r8, r8, #1
	cmp r8, #0x16
	blt _0203D898
	mov r0, #0x16
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203D908: .word 0x00000FAE
_0203D90C: .word 0x88888889
_0203D910: .word gUtilGame
	arm_func_end FUN_0203d734

	arm_func_start FUN_0203d914
FUN_0203d914: ; 0x0203D914
	stmfd sp!, {r4, lr}
	add r2, r1, #2
	cmp r2, #1
	mov r2, #0
	bhi _0203D96C
	mov r1, r1, lsl #0x18
	mov lr, r1, asr #0x18
	mov r4, r2
	mov r1, #0x58
_0203D938:
	mla r3, r4, r1, r0
	add r3, r3, #0x3a00
	ldrsb r12, [r3, #0xd4]
	cmp lr, r12
	bne _0203D95C
	ldrh r3, [r3, #0xd6]
	tst r3, #0x1000
	movne r2, #1
	bne _0203D990
_0203D95C:
	add r4, r4, #1
	cmp r4, #0x16
	blt _0203D938
	b _0203D990
_0203D96C:
	cmp r1, #0x16
	moveq r0, r2
	ldmeqfd sp!, {r4, pc}
	mov r3, #0x58
	mla r0, r1, r3, r0
	add r0, r0, #0x3a00
	ldrh r0, [r0, #0xd6]
	tst r0, #0x1000
	movne r2, #1
_0203D990:
	mov r0, r2
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0203d914

	arm_func_start FUN_0203d998
FUN_0203d998: ; 0x0203D998
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r11, #0
	ldr r5, _0203DB2C ; 0x02099EF0
	mov r4, r0
	mov r9, r1
	mov r10, r2
	mov r8, r3
	mov r7, r11
_0203D9BC:
	ldr r0, [r5]
	mov r1, r7
	bl FUN_ov126_0213922c
	movs r6, r0
	beq _0203D9DC
	bl FUN_0206cbf8
	cmp r9, r0
	beq _0203D9E8
_0203D9DC:
	add r7, r7, #1
	cmp r7, #0x16
	blt _0203D9BC
_0203D9E8:
	cmp r7, #0x16
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x30]
	mov r9, #1
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	moveq r9, #0
	cmn r8, #1
	beq _0203DAF8
	cmp r8, #0
	beq _0203DA2C
	cmp r8, #1
	beq _0203DAC8
	b _0203DAF8
_0203DA2C:
	ldr r4, _0203DB2C ; 0x02099EF0
	mov r8, #0
	add r11, sp, #4
_0203DA38:
	ldr r0, [r4]
	mov r1, r8
	bl FUN_ov126_0213922c
	movs r7, r0
	ldrnesh r2, [r7, #0x94]
	ldrnesh r1, [r6, #0x94]
	cmpne r2, r1
	beq _0203DAB4
	bl FUN_ov16_020f0810
	mov r5, r0
	mov r0, r6
	bl FUN_ov16_020f0810
	cmp r5, r0
	beq _0203DAB4
	cmp r9, #0
	bne _0203DA88
	mov r0, r7
	bl FUN_0206d6d8
	cmp r0, #0
	bne _0203DAB4
_0203DA88:
	str r10, [sp]
	ldr r0, [r4]
	ldr r2, [r6, #0x84]
	ldr r3, [r7, #0x84]
	mov r1, r11
	bl FUN_ov132_021488a0
	cmp r0, #0
	ldrne r2, [sp, #8]
	ldrne r1, [r7, #0x84]
	ldrne r0, [sp, #4]
	stmneia r1, {r0, r2}
_0203DAB4:
	add r8, r8, #1
	cmp r8, #0x16
	blt _0203DA38
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203DAC8:
	mov r0, #0x58
	mul r3, r7, r0
	add r0, r4, #0xd6
	add r2, r0, #0x3a00
	ldrh r1, [r2, r3]
	add r0, r4, r3
	add r0, r0, #0x3000
	orr r1, r1, #0x4000
	strh r1, [r2, r3]
	add sp, sp, #0xc
	str r10, [r0, #0xad8]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203DAF8:
	mov r0, #0x58
	mul r5, r7, r0
	add r0, r4, #0xd6
	add r3, r0, #0x3a00
	ldrh r2, [r3, r5]
	ldr r0, _0203DB30 ; =0x0000BFFF
	add r1, r4, r5
	and r0, r2, r0
	strh r0, [r3, r5]
	add r0, r1, #0x3000
	str r11, [r0, #0xad8]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0203DB2C: .word gUtilGame
_0203DB30: .word 0x0000BFFF
	arm_func_end FUN_0203d998

	arm_func_start FUN_0203db34
FUN_0203db34: ; 0x0203DB34
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mvn r3, #0x63
	cmp r2, r3
	mov r10, r0
	mov r9, r1
	movlt r2, r3
	blt _0203DB58
	cmp r2, #0x64
	movgt r2, #0x64
_0203DB58:
	mov r0, r2, lsl #0x18
	add r1, r9, #2
	cmp r1, #1
	mov r7, r0, asr #0x18
	bhi _0203DBB4
	ldr r5, _0203DBFC ; 0x02099EF0
	mov r6, #0
	mov r4, #0x58
_0203DB78:
	mla r8, r6, r4, r10
	add r0, r8, #0x3a00
	ldrsb r0, [r0, #0xd4]
	cmp r9, r0
	bne _0203DBA4
	ldr r0, [r5]
	mov r1, r6
	bl FUN_ov126_0213922c
	cmp r0, #0
	addne r0, r8, #0x3000
	strneb r7, [r0, #0xac9]
_0203DBA4:
	add r6, r6, #1
	cmp r6, #0x16
	blt _0203DB78
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0203DBB4:
	ldr r4, _0203DBFC ; 0x02099EF0
	mov r5, #0
_0203DBBC:
	ldr r0, [r4]
	mov r1, r5
	bl FUN_ov126_0213922c
	cmp r0, #0
	beq _0203DBEC
	bl FUN_0206cbf8
	cmp r9, r0
	moveq r0, #0x58
	mlaeq r0, r5, r0, r10
	addeq r0, r0, #0x3000
	streqb r7, [r0, #0xac9]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0203DBEC:
	add r5, r5, #1
	cmp r5, #0x16
	blt _0203DBBC
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0203DBFC: .word gUtilGame
	arm_func_end FUN_0203db34

	arm_func_start FUN_0203dc00
FUN_0203dc00: ; 0x0203DC00
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	ldr r1, _0203DDC0 ; =0x020A0640
	ldr r2, _0203DDC4 ; 0x02099EF0
	ldrb r1, [r1, #0x8f]
	mov r8, r0
	ldr r0, [r2]
	bl FUN_ov132_02145c40 ; may be ov131 ; ov132(Mica)
	cmp r0, #0xc
	bgt _0203DC68
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _0203DC98
_0203DC34: ; jump table
	b _0203DC98 ; case 0
	b _0203DC98 ; case 1
	b _0203DC98 ; case 2
	b _0203DC74 ; case 3
	b _0203DC98 ; case 4
	b _0203DC98 ; case 5
	b _0203DC78 ; case 6
	b _0203DC98 ; case 7
	b _0203DC98 ; case 8
	b _0203DC80 ; case 9
	b _0203DC98 ; case 10
	b _0203DC98 ; case 11
	b _0203DC90 ; case 12
_0203DC68:
	cmp r0, #0xf
	beq _0203DC88
	b _0203DC98
_0203DC74:
	b _0203DC98
_0203DC78:
	mov r7, #1
	b _0203DC9C
_0203DC80:
	mov r7, #2
	b _0203DC9C
_0203DC88:
	mov r7, #4
	b _0203DC9C
_0203DC90:
	mov r7, #5
	b _0203DC9C
_0203DC98:
	mov r7, #0
_0203DC9C:
	cmp r0, #0xf
	ldreq r0, _0203DDC0 ; =0x020A0640
	moveq r1, #1
	streqb r1, [r0, #0x8c]
	ldr r0, _0203DDC8 ; =0x0209A200
	ldr r4, _0203DDCC ; =g3DPlaneCtrl
	ldr r2, [r0]
	ldr r0, [r4]
	mov r6, #0
	str r6, [sp]
	str r6, [sp, #4]
	ldr r3, _0203DDD0 ; =0x0208FF04
	mov r1, #5
	str r6, [sp, #8]
	bl FUN_02058684
	mov r1, r0
	add r0, r8, #0x1000
	str r1, [r0, #0x3d8]
	ldr r0, [r4]
	mov r2, r6
	mov r3, r6
	bl FUN_02059038
	mov r5, #1
	ldr r0, [r4]
	mov r1, r5
	mov r2, r5
	bl _ZN12C3DPlaneCtrl6createEib
	mov r1, r0
	add r0, r8, #0x1000
	ldr r2, [r0, #0x3d8]
	str r1, [r0, #0x3dc]
	ldr r0, [r4]
	and r2, r2, #0xff
	bl _ZN12C3DPlaneCtrl9setTexAllEih
	add r1, r8, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x3dc]
	mov r2, r7
	mov r3, r6
	bl _ZN12C3DPlaneCtrl16setGraphicIdxAllEihb
	add r1, r8, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x3dc]
	mov r2, #0xc8
	bl _ZN12C3DPlaneCtrl11setDepthAllEij
	mov r0, #0x50
	str r0, [sp]
	add r1, r8, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x3dc]
	mov r3, r6
	mov r2, r5
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	add r1, r8, #0x1000
	mov r3, r5
	mov r5, #2
	ldr r0, [r4]
	ldr r1, [r1, #0x3dc]
	mov r2, r5
	bl _ZN12C3DPlaneCtrl10setFlagAllEitb
	add r1, r8, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x3dc]
	mov r2, r5
	bl _ZN12C3DPlaneCtrl9clearFlagEit
	add r0, r8, #0x1000
	mov r1, #0x5a
	str r1, [r0, #0x3d4]
	ldr r1, [r0, #0x3d0]
	add r1, r1, #1
	str r1, [r0, #0x3d0]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0203DDC0: .word unk_020A0640
_0203DDC4: .word gUtilGame
_0203DDC8: .word unk_0209A200
_0203DDCC: .word g3DPlaneCtrl
_0203DDD0: .word unk_0208FF04
	arm_func_end FUN_0203dc00

	arm_func_start FUN_0203ddd4
FUN_0203ddd4: ; 0x0203DDD4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x1000
	ldr r1, [r0, #0x3d0]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r4, _0203DE44 ; =g3DPlaneCtrl
	ldr r1, [r0, #0x3d8]
	ldr r0, [r4]
	bl FUN_020591e8
	add r0, r5, #0x1000
	ldr r1, [r0, #0x3d8]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r5, #0x1000
	ldr r1, [r0, #0x3d8]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r1, r5, #0x1000
	ldr r0, [r4]
	ldr r1, [r1, #0x3dc]
	bl _ZN12C3DPlaneCtrl7destroyEi
	add r0, r5, #0x3d0
	add r0, r0, #0x1000
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
_0203DE44: .word g3DPlaneCtrl
	arm_func_end FUN_0203ddd4

	arm_func_start FUN_0203de48
FUN_0203de48: ; 0x0203DE48
	add r0, r0, #0x1000
	ldr r0, [r0, #0x3d0]
	cmp r0, #0xa
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_0203de48

	arm_func_start FUN_0203de60
FUN_0203de60: ; 0x0203DE60
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldr r1, [r0, #0x3d0]
	cmp r1, #0xa
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_0203DE7C: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _0203DEA8 ; case 1
	b _0203DED0 ; case 2
	b _0203DF2C ; case 3
	ldmfd sp!, {r4, pc} ; case 4
	ldmfd sp!, {r4, pc} ; case 5
	ldmfd sp!, {r4, pc} ; case 6
	ldmfd sp!, {r4, pc} ; case 7
	ldmfd sp!, {r4, pc} ; case 8
	ldmfd sp!, {r4, pc} ; case 9
	ldmfd sp!, {r4, pc} ; case 10
_0203DEA8:
	ldr r2, _0203DF68 ; =g3DPlaneCtrl
	ldr r1, [r0, #0x3d8]
	ldr r0, [r2]
	bl FUN_02058e30
	cmp r0, #0
	addeq r0, r4, #0x1000
	ldreq r1, [r0, #0x3d0]
	addeq r1, r1, #1
	streq r1, [r0, #0x3d0]
	ldmfd sp!, {r4, pc}
_0203DED0:
	ldr r2, _0203DF68 ; =g3DPlaneCtrl
	ldr r1, [r0, #0x3dc]
	ldr r0, [r2]
	mov r2, #2
	mov r3, #1
	bl _ZN12C3DPlaneCtrl7setFlagEitb
	ldr r0, _0203DF6C ; =0x020A0640
	ldr r2, _0203DF70 ; 0x02099EF0
	ldrb r1, [r0, #0x8f]
	ldr r0, [r2]
	bl FUN_ov132_02145c40 ; may be ov131 ; ov132(Mica)
	cmp r0, #0xf
	beq _0203DF10
	ldr r0, _0203DF74 ; =gAudioPlayer
	ldr r1, _0203DF78 ; =0x0000407D
	b _0203DF18
_0203DF10:
	ldr r0, _0203DF74 ; =gAudioPlayer
	ldr r1, _0203DF7C ; =0x0000407C
_0203DF18:
	bl _ZN11AudioPlayer10playEffectEi
	add r0, r4, #0x1000
	ldr r1, [r0, #0x3d0]
	add r1, r1, #1
	str r1, [r0, #0x3d0]
_0203DF2C:
	add r0, r4, #0x1000
	ldr r1, [r0, #0x3d4]
	sub r1, r1, #1
	str r1, [r0, #0x3d4]
	cmp r1, #0
	ldmgtfd sp!, {r4, pc}
	ldr r2, _0203DF68 ; =g3DPlaneCtrl
	ldr r1, [r0, #0x3dc]
	ldr r0, [r2]
	mov r2, #2
	bl _ZN12C3DPlaneCtrl12clearFlagAllEit
	add r0, r4, #0x1000
	mov r1, #0xa
	str r1, [r0, #0x3d0]
	ldmfd sp!, {r4, pc}
_0203DF68: .word g3DPlaneCtrl
_0203DF6C: .word unk_020A0640
_0203DF70: .word gUtilGame
_0203DF74: .word gAudioPlayer
_0203DF78: .word 0x0000407D
_0203DF7C: .word 0x0000407C
	arm_func_end FUN_0203de60

	.rodata
	.global unk_0208C35C
unk_0208C35C:
	.byte 0x04, 0xFF, 0x01, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global unk_0208C364
unk_0208C364:
	.byte 0x48, 0x00, 0xF9, 0xFF, 0x78, 0x00, 0xF9, 0xFF
	.global unk_0208C36C
unk_0208C36C:
	.byte 0xE8, 0x00, 0xA8, 0x00
	.byte 0xD0, 0x00, 0xA8, 0x00
	.global unk_0208C374
unk_0208C374:
	.byte 0x01, 0x02, 0x00, 0x04, 0x02, 0x03, 0x00, 0x00
	.global unk_0208C37C
unk_0208C37C:
	.byte 0x00, 0x00, 0x77, 0x00
	.byte 0x1A, 0x00, 0x37, 0x00

	.data
	.global unk_0208FC08
unk_0208FC08:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_0208FC20
unk_0208FC20:
	.word unk_0208FCD4
	.global unk_0208FC24
unk_0208FC24:
	.asciz "ppu.pkb"
	.balign 4, 0
	.global unk_0208FC2C
unk_0208FC2C:
	.asciz "fac.pkb"
	.balign 4, 0
	.global unk_0208FC34
unk_0208FC34:
	.asciz "fab.pkb"
	.balign 4, 0
	.global unk_0208FC3C
unk_0208FC3C:
	.word unk_0208FC2C
	.word unk_0208FC34
	.word unk_0208FC24
	.global unk_0208FC48
unk_0208FC48:
	.asciz "mln_w02.pac_"
	.balign 4, 0
	.global unk_0208FC58
unk_0208FC58:
	.asciz "mln_w00.pac_"
	.balign 4, 0
	.global unk_0208FC68
unk_0208FC68:
	.asciz "mln_p02.pac_"
	.balign 4, 0
	.global unk_0208FC78
unk_0208FC78:
	.asciz "mln_w01.pac_"
	.balign 4, 0
	.global unk_0208FC88
unk_0208FC88:
	.asciz "mln_p00.pac_"
	.balign 4, 0
	.global unk_0208FC98
unk_0208FC98:
	.asciz "mln_p01.pac_"
	.balign 4, 0
	.global unk_0208FCA8
unk_0208FCA8:
	.asciz "mln_w03.pac_"
	.balign 4, 0
	.global unk_0208FCB8
unk_0208FCB8:
	.word unk_0208FC88
	.word unk_0208FC98
	.word unk_0208FCA8
	.word unk_0208FC48
	.word unk_0208FC58
	.word unk_0208FC68
	.word unk_0208FC78
	.global unk_0208FCD4
unk_0208FCD4:
	.asciz "/data_iz/pic3d/script/goalImg.pac_"
	.balign 4, 0
	.global unk_0208FCF8
unk_0208FCF8:
	.asciz "globalmap"
	.balign 4, 0
	.global unk_0208FD04
unk_0208FD04:
	.asciz "%s.pac_"
	.balign 4, 0
	.global unk_0208FD0C
unk_0208FD0C:
	.asciz "%s.pac_"
	.balign 4, 0
	.global unk_0208FD14
unk_0208FD14:
	.asciz "/data_iz/pic3d/script/%s.pac_"
	.balign 4, 0
	.global unk_0208FD34
unk_0208FD34:
	.asciz "/data_iz/face2d/fac.pkh"
	.balign 4, 0
	.global unk_0208FD4C
unk_0208FD4C:
	.asciz "/data_iz/face2d/fab.pkh"
	.balign 4, 0
	.global unk_0208FD64
unk_0208FD64:
	.asciz "/data_iz/face2d/ppu.pkh"
	.balign 4, 0
	.global unk_0208FD7C
unk_0208FD7C:
	.asciz "/data_iz/face2d/"
	.balign 4, 0
	.global unk_0208FD90
unk_0208FD90:
	.asciz ".pac_"
	.balign 4, 0
	.global unk_0208FD98
unk_0208FD98:
	.asciz ".nbfp"
	.balign 4, 0
	.global unk_0208FDA0
unk_0208FDA0:
	.asciz "fac%08d"
	.balign 4, 0
	.global unk_0208FDA8
unk_0208FDA8:
	.asciz "fab%08d"
	.balign 4, 0
	.global unk_0208FDB0
unk_0208FDB0:
	.asciz "ppu%04d"
	.balign 4, 0
	.global unk_0208FDB8
unk_0208FDB8:
	.asciz "/data_iz/face2d/"
	.balign 4, 0
	.global unk_0208FDCC
unk_0208FDCC:
	.asciz ".pac_"
	.balign 4, 0
	.global unk_0208FDD4
unk_0208FDD4:
	.asciz ".nbfp"
	.balign 4, 0
	.global unk_0208FDDC
unk_0208FDDC:
	.asciz "fac%08d"
	.balign 4, 0
	.global unk_0208FDE4
unk_0208FDE4:
	.asciz "fab%08d"
	.balign 4, 0
	.global unk_0208FDEC
unk_0208FDEC:
	.asciz "ppu%04d"
	.balign 4, 0
	.global unk_0208FDF4
unk_0208FDF4:
	.asciz "ball"
	.balign 4, 0
	.global unk_0208FDFC
unk_0208FDFC:
	.asciz "bal"
	.balign 4, 0
	.global unk_0208FE00
unk_0208FE00:
	.asciz "%s.pac"
	.balign 4, 0
	.global unk_0208FE08
unk_0208FE08:
	.asciz "%s.PLT"
	.balign 4, 0
	.global unk_0208FE10
unk_0208FE10:
	.asciz "%s.pac_"
	.balign 4, 0
	.global unk_0208FE18
unk_0208FE18:
	.asciz "mo%04d.pac_"
	.balign 4, 0
	.global unk_0208FE24
unk_0208FE24:
	.asciz "mbd_s001lp1.pac_"
	.balign 4, 0
	.global unk_0208FE38
unk_0208FE38:
	.asciz "mbd_s001lp2.pac_"
	.balign 4, 0
	.global unk_0208FE4C
unk_0208FE4C:
	.asciz "mbd_s%03dl.pac_"
	.balign 4, 0
	.global unk_0208FE5C
unk_0208FE5C:
	.asciz "mbd_s001rp2.pac_"
	.balign 4, 0
	.global unk_0208FE70
unk_0208FE70:
	.asciz "mbd_s001rp1.pac_"
	.balign 4, 0
	.global unk_0208FE84
unk_0208FE84:
	.asciz "mbd_s%03dr.pac_"
	.balign 4, 0
	.global unk_0208FE94
unk_0208FE94:
	.asciz "mbd_p01.pac_"
	.balign 4, 0
	.global unk_0208FEA4
unk_0208FEA4:
	.asciz "mbd_g0%d.pac_"
	.balign 4, 0
	.global unk_0208FEB4
unk_0208FEB4:
	.asciz "REPLAY_FLICKER_TIME_ON"
	.balign 4, 0
	.global unk_0208FECC
unk_0208FECC:
	.asciz "REPLAY_FLICKER_TIME_OFF"
	.balign 4, 0
	.global unk_0208FEE4
unk_0208FEE4:
	.asciz "gmdn_r00.pac_"
	.balign 4, 0
	.global unk_0208FEF4
unk_0208FEF4:
	.asciz "mbv_c0%d.pac_"
	.balign 4, 0
	.global unk_0208FF04
unk_0208FF04:
	.asciz "gmdn_u00.pac_"
	.balign 4, 0

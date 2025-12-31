
	.include "/macros/function.inc"
	.include "/include/arm9_0206f0b8.inc"

	.text

	arm_func_start FUN_0206f0b8
FUN_0206f0b8: ; 0x0206F0B8
	ldr r3, _0206F14C ; =0x020912F8
	mov r2, #0
	add r1, r0, #0x700
	str r3, [r0]
	str r2, [r0, #0x7bc]
	strh r2, [r1, #0xc4]
	str r2, [r0, #0x7cc]
	str r2, [r0, #0x7d0]
	str r2, [r0, #0x7d4]
	str r2, [r0, #0x7dc]
	str r2, [r0, #0x7e0]
	str r2, [r0, #0x7e4]
	str r2, [r0, #0x7e8]
	str r2, [r0, #0x7ec]
	str r2, [r0, #0x7f0]
	str r2, [r0, #0x7f4]
	str r2, [r0, #0x800]
	str r2, [r0, #0x804]
	str r2, [r0, #0x808]
	str r2, [r0, #0x80c]
	str r2, [r0, #0x810]
	str r2, [r0, #0x814]
	str r2, [r0, #0x818]
	str r2, [r0, #0x81c]
	str r2, [r0, #0x820]
	str r2, [r0, #0x824]
	str r2, [r0, #0x828]
	str r2, [r0, #0x82c]
	str r2, [r0, #0x830]
	str r2, [r0, #0x838]
	str r2, [r0, #0x83c]
	str r2, [r0, #0x844]
	strb r2, [r0, #0x849]
	strb r2, [r0, #0x88f]
	strb r2, [r0, #0x890]
	str r2, [r0, #0x89c]
	bx lr
_0206F14C: .word unk_020912F8
	arm_func_end FUN_0206f0b8

	arm_func_start FUN_0206f150
FUN_0206f150: ; 0x0206F150
	stmfd sp!, {r4, lr}
	ldr r1, _0206F16C ; =0x020912F8
	mov r4, r0
	str r1, [r4]
	bl FUN_0206f198
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0206F16C: .word unk_020912F8
	arm_func_end FUN_0206f150

	arm_func_start FUN_0206f170
FUN_0206f170: ; 0x0206F170
	stmfd sp!, {r4, lr}
	ldr r1, _0206F194 ; =0x020912F8
	mov r4, r0
	str r1, [r4]
	bl FUN_0206f198
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0206F194: .word unk_020912F8
	arm_func_end FUN_0206f170

	arm_func_start FUN_0206f198
FUN_0206f198: ; 0x0206F198
	bx lr
	arm_func_end FUN_0206f198

	arm_func_start FUN_0206f19c
FUN_0206f19c: ; 0x0206F19C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r3, #3
	mov r12, #1
	mov r1, #0xb
_0206F1B0:
	mla r5, r4, r1, r0
	mov lr, r12
	strb r12, [r5, #0x84a]
_0206F1BC:
	add r2, r5, lr
	add lr, lr, #1
	strb r3, [r2, #0x84a]
	cmp lr, #0xb
	blt _0206F1BC
	add r4, r4, #1
	cmp r4, #2
	blt _0206F1B0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0206f19c

	arm_func_start _ZN11CLogicThink12FUN_0206f1e0Ev
_ZN11CLogicThink12FUN_0206f1e0Ev: ; 0x0206F1E0
	mov r1, #0
	str r1, [r0, #0x7d0]
	str r1, [r0, #0x7d4]
	str r1, [r0, #0x7d8]
	str r1, [r0, #0x7dc]
	str r1, [r0, #0x7fc]
	str r1, [r0, #0x7e0]
	str r1, [r0, #0x7e4]
	str r1, [r0, #0x7e8]
	str r1, [r0, #0x7ec]
	str r1, [r0, #0x7f0]
	str r1, [r0, #0x7f4]
	str r1, [r0, #0x808]
	str r1, [r0, #0x80c]
	str r1, [r0, #0x810]
	str r1, [r0, #0x814]
	str r1, [r0, #0x818]
	str r1, [r0, #0x81c]
	str r1, [r0, #0x820]
	str r1, [r0, #0x824]
	str r1, [r0, #0x828]
	str r1, [r0, #0x82c]
	str r1, [r0, #0x830]
	str r1, [r0, #0x800]
	bx lr
	arm_func_end _ZN11CLogicThink12FUN_0206f1e0Ev

	arm_func_start _ZN11CLogicThink12FUN_0206f244Ev
_ZN11CLogicThink12FUN_0206f244Ev: ; 0x0206F244
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _0206F298 ; =0x0000FFFF
	add r1, r0, #0x800
	strh r5, [r1, #0x6e]
	strh r5, [r1, #0x72]
	ldrh r4, [r1, #0x6e]
	mov r12, #0
	ldrh lr, [r1, #0x72]
	add r2, r0, #0x700
	mov r3, #1
	strh r4, [r1, #0x6c]
	strh lr, [r1, #0x70]
	strh r5, [r1, #0x74]
	strb r12, [r0, #0x87e]
	strb r12, [r0, #0x88c]
	strb r3, [r0, #0x889]
	strb r12, [r0, #0x88a]
	strh r12, [r1, #0x76]
	strb r12, [r0, #0x882]
	strh r12, [r2, #0xc4]
	ldmfd sp!, {r3, r4, r5, pc}
_0206F298: .word 0x0000FFFF
	arm_func_end _ZN11CLogicThink12FUN_0206f244Ev

	arm_func_start FUN_0206f29c
FUN_0206f29c: ; 0x0206F29C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r0, _0206F57C ; =gConfig
	ldr r1, _0206F580 ; =0x02091300
	mov r4, #1
	mov r5, #0
	bl _ZN6Config8getParamEPc
	add r1, r6, #0x700
	strh r0, [r1, #0xc0]
	ldrh r0, [r1, #0xc0]
	cmp r0, #0
	moveq r0, #0xc
	streqh r0, [r1, #0xc0]
	ldr r0, [r6, #0x81c]
	cmp r0, #0
	bne _0206F2FC
	mov r7, #0x1b00
	ldr r0, _0206F584 ; =gAllocator
	mov r1, r7
	bl _ZN9Allocator8allocateEm
	mov r2, r7
	mov r1, #0
	str r0, [r6, #0x81c]
	bl MI_CpuFill8
_0206F2FC:
	ldr r0, [r6, #0x810]
	cmp r0, #0
	bne _0206F318
	ldr r0, _0206F584 ; =gAllocator
	mov r1, #0x200
	bl _ZN9Allocator8allocateEm
	str r0, [r6, #0x810]
_0206F318:
	ldr r1, [r6, #0x810]
	mov r0, r5
	mov r2, #0x200
	bl MIi_CpuClear32
	ldr r0, [r6, #0x7f4]
	cmp r0, #0
	bne _0206F354
	mov r7, #0x1400
	ldr r0, _0206F584 ; =gAllocator
	mov r1, r7
	bl _ZN9Allocator8allocateEm
	mov r1, r5
	mov r2, r7
	str r0, [r6, #0x7f4]
	bl MI_CpuFill8
_0206F354:
	ldr r0, _0206F584 ; =gAllocator
	ldr r1, _0206F588 ; =0x000004EC
	str r5, [r6, #0x7f8]
	bl _ZN9Allocator8allocateEm
	str r0, [r6, #0x800]
	mov r0, r6
	bl FUN_ov16_020ef2bc
	mov r0, r6
	bl FUN_ov16_020ef41c
	mov r0, r6
	bl FUN_020713e4
	mov r0, r6
	bl FUN_020716a4
	mov r0, r6
	bl FUN_0207171c
	mov r0, r6
	bl FUN_020719e0
	mov r0, r6
	bl FUN_02071968
	mov r0, r6
	bl FUN_02071458
	mov r0, r6
	bl FUN_ov16_020eeca0
	mov r0, r6
	bl FUN_02071aac
	mov r0, r6
	bl FUN_020717a8
	mov r0, r6
	bl FUN_02071b24
	mov r0, r6
	bl FUN_020724f4
	mov r0, r6
	mov r1, #1
	bl FUN_0206f9dc
	add r0, r6, #0xc
	add r0, r0, #0x400
	mov r1, r5
	mov r2, #0xc0
	bl MI_CpuFill8
	add r0, r6, #0xcc
	add r0, r0, #0x400
	mov r1, r5
	mov r2, #0x20
	bl MI_CpuFill8
	add r0, r6, #0x2bc
	mov r1, r5
	mov r2, #0x30
	bl MI_CpuFill8
	ldr r0, [r6, #0x860]
	cmp r0, #0
	bne _0206F438
	mov r0, #0x1c
	bl _Znwm
	cmp r0, #0
	beq _0206F434
	bl FUN_02043ac8
_0206F434:
	str r0, [r6, #0x860]
_0206F438:
	ldr r0, [r6, #0x860]
	bl FUN_02043b30
	ldr r0, [r6, #0x860]
	bl FUN_02043b44
	mov r0, r6
	mov r1, #2
	bl FUN_0207287c
	mov r0, r6
	mov r1, r4
	bl FUN_020728a8
	ldr r0, _0206F58C ; =0x020A0B00
	mov r1, r4
	bl FUN_02074580
	mov r0, r6
	mov r1, r5
	mov r2, r5
	bl FUN_020726d0
	ldr r1, _0206F590 ; =0x020A0640
	sub r2, r5, #1
	strb r2, [r1, #0xac]
	ldr r0, _0206F57C ; =gConfig
	ldr r1, _0206F594 ; =0x02091310
	strb r5, [r6, #0x881]
	strb r5, [r6, #0x883]
	bl _ZN6Config8getParamEPc
	cmp r0, #0
	movlt r0, r5
	cmp r0, #0x64
	movgt r0, #0x64
	strb r0, [r6, #0x880]
	ldr r0, _0206F57C ; =gConfig
	ldr r1, _0206F598 ; =0x02091328
	bl _ZN6Config8getParamEPc
	add r1, r6, #0x800
	strh r0, [r1, #0x68]
	ldrsh r0, [r1, #0x68]
	mov r7, #0
	strb r7, [r6, #0x888]
	cmp r0, #0
	strlth r5, [r1, #0x68]
	ldr r0, _0206F57C ; =gConfig
	ldr r1, _0206F59C ; =0x0209133C
	bl _ZN6Config8getParamEPc
	cmp r0, #0
	movne r7, #1
	ldr r0, [r6, #0x820]
	strb r7, [r6, #0x887]
	strb r4, [r6, #0x884]
	cmp r0, #0
	bne _0206F520
	mov r7, #0x880
	ldr r0, _0206F584 ; =gAllocator
	mov r1, r7
	bl _ZN9Allocator8allocateEm
	mov r2, r7
	mov r1, #0
	str r0, [r6, #0x820]
	bl MI_CpuFill8
_0206F520:
	ldr r7, _0206F5A0 ; =0x0209A320
	mov r1, r6
	mov r0, r7
	bl FUN_02049a30
	ldr r0, _0206F5A4 ; =0x0209A380
	mov r1, r6
	ldr r2, [r0]
	ldr r2, [r2, #0x38]
	blx r2
	mov r0, r6
	str r7, [r6, #0x7bc]
	bl FUN_0206f19c
	add r0, r6, #0x2ec
	strb r5, [r6, #0x885]
	strb r5, [r6, #0x886]
	bl FUN_02073d8c
	add r0, r6, #0x274
	add r0, r0, #0x400
	bl FUN_0205072c
	mov r0, r6
	bl FUN_02074478
	strb r4, [r6, #0x88f]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0206F57C: .word gConfig
_0206F580: .word unk_02091300
_0206F584: .word gAllocator
_0206F588: .word 0x000004EC
_0206F58C: .word unk_020A0B00
_0206F590: .word unk_020A0640
_0206F594: .word unk_02091310
_0206F598: .word unk_02091328
_0206F59C: .word unk_0209133C
_0206F5A0: .word unk_0209A320
_0206F5A4: .word unk_0209A380
	arm_func_end FUN_0206f29c

	arm_func_start FUN_0206f5a8
FUN_0206f5a8: ; 0x0206F5A8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, #0
	ldr r0, _0206F694 ; =0x020A0700
	ldr r2, _0206F698 ; =0x000010BC
	mov r1, r7
	bl MI_CpuFill8
	ldr r4, _0206F69C ; =0x020A0B00
	mov r6, #1
	mov r0, r4
	mov r1, r6
	bl FUN_02074784
	sub r5, r6, #2
	mov r0, r4
	mov r1, r5
	bl FUN_0207478c
	mov r1, #0x7f
	ldr r0, _0206F6A0 ; =0x020A1140
	ldr r4, _0206F6A4 ; =0x020A0640
	strh r1, [r0, #0x94]
	strh r1, [r0, #0x96]
	strb r7, [r4, #0xb92]
	strb r7, [r4, #0xb93]
	ldr r0, _0206F6A8 ; =0x020A17BC
	mov r1, r7
	mov r2, #0x30
	bl MI_CpuFill8
	add r0, r8, #0xc
	add r0, r0, #0x400
	mov r1, r7
	mov r2, #0xc0
	bl MI_CpuFill8
	add r0, r8, #0xcc
	add r0, r0, #0x400
	mov r1, r7
	mov r2, #0x20
	bl MI_CpuFill8
	add r0, r8, #0x2ec
	bl FUN_02073d8c
	add r0, r8, #0x274
	add r0, r0, #0x400
	bl FUN_0205072c
	mov r0, r8
	bl FUN_0206f6b4
	ldr r0, _0206F6AC ; =0x020AF81C
	bl FUN_ov131_02149308
	mov r0, r8
	mov r1, #0x42
	ldr r8, _0206F6B0 ; =0x020A1640
	strh r1, [r8, #0xe]
	bl FUN_02074478
	strb r5, [r4, #0xac]
	strh r6, [r8, #0x16]
	strh r6, [r8, #0x18]
	strh r6, [r8, #0x1a]
	strh r7, [r8, #0x1c]
	strh r7, [r8, #0x1e]
	strh r7, [r8, #0x20]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0206F694: .word unk_020A0700
_0206F698: .word 0x000010BC
_0206F69C: .word unk_020A0B00
_0206F6A0: .word unk_020A1140
_0206F6A4: .word unk_020A0640
_0206F6A8: .word unk_020A17BC
_0206F6AC: .word unk_020AF81C
_0206F6B0: .word unk_020A1640
	arm_func_end FUN_0206f5a8

	arm_func_start FUN_0206f6b4
FUN_0206f6b4: ; 0x0206F6B4
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	ldr r0, _0206F770 ; =0x020A0640
	add r1, sp, #8
	ldr r0, [r0, #0x4dc]
	mov r4, #0
	str r4, [r1]
	str r4, [r1, #4]
	str r4, [r1, #8]
	str r4, [r1, #0xc]
	bl srand
	bl rand
	ldr r1, _0206F774 ; =0x02FFFC3C
	str r0, [sp, #8]
	ldr r0, [r1]
	bl srand
	bl rand
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl OS_GetMacAddress
	ldrb r1, [sp, #3]
	ldrb r0, [sp, #4]
	smulbb r0, r1, r0
	bl srand
	bl rand
	str r0, [sp, #0x10]
	ldrb r1, [sp, #1]
	ldrb r0, [sp, #5]
	smulbb r0, r1, r0
	bl srand
	bl rand
	mov r1, r4
	ldr r4, _0206F778 ; =0x020A0B00
	str r0, [sp, #0x14]
	ldr r3, [sp, #8]
	ldr r2, [sp, #0xc]
	mov r0, r4
	orr r2, r3, r2, lsl #16
	bl FUN_02074794
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #0x14]
	mov r0, r4
	mov r1, #1
	orr r2, r3, r2, lsl #16
	bl FUN_02074794
	add sp, sp, #0x18
	ldmfd sp!, {r4, pc}
_0206F770: .word unk_020A0640
_0206F774: .word 0x02FFFC3C
_0206F778: .word unk_020A0B00
	arm_func_end FUN_0206f6b4

	arm_func_start _ZN11CLogicThink12initLiveTalkEv
_ZN11CLogicThink12initLiveTalkEv: ; 0x0206F77C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r12, #0
	mov r4, r0
	str r12, [sp, #0x10]
	ldr r1, [r4, #0x824]
	cmp r1, #0
	ldrne r0, [r4, #0x828]
	cmpne r0, #0
	addne sp, sp, #0x14
	movne r0, #1
	ldmnefd sp!, {r3, r4, pc}
	cmp r1, #0
	ldreq r0, [r4, #0x828]
	cmpeq r0, #0
	bne _0206F820
	ldr r3, _0206F82C ; =gAllocator
	ldr r1, _0206F830 ; =0x02091350
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _0206F7F0
	str r12, [sp]
	str r12, [sp, #4]
	str r12, [sp, #8]
	mov r12, #1
	add r2, sp, #0x10
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_0206F7F0:
	cmp r0, #0x280
	addne sp, sp, #0x14
	movne r0, #0
	ldmnefd sp!, {r3, r4, pc}
	ldr r1, [sp, #0x10]
	mov r0, #1
	str r1, [r4, #0x824]
	ldr r1, [sp, #0x10]
	add sp, sp, #0x14
	add r1, r1, #0x200
	str r1, [r4, #0x828]
	ldmfd sp!, {r3, r4, pc}
_0206F820:
	mov r0, #0
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, pc}
_0206F82C: .word gAllocator
_0206F830: .word unk_02091350
	arm_func_end _ZN11CLogicThink12initLiveTalkEv

	arm_func_start FUN_0206f834
FUN_0206f834: ; 0x0206F834
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	ldr r2, _0206F8C4 ; =0x0209A720
	mov r5, r0
	str r2, [sp, #0x10]
	add r0, r5, #0x800
	ldrh r0, [r0, #0x74]
	mov r4, r1
	cmp r0, r4
	addeq sp, sp, #0x14
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, pc}
	ldr r3, _0206F8C8 ; =gAllocator
	ldr r1, _0206F8CC ; =0x0209136C
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _0206F8A8
	mov r0, #0x180
	mul r2, r4, r0
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r3]
	add r2, sp, #0x10
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_0206F8A8:
	cmp r0, #0
	moveq r0, #0
	addne r0, r5, #0x800
	strneh r4, [r0, #0x74]
	movne r0, #1
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
_0206F8C4: .word unk_0209A720
_0206F8C8: .word gAllocator
_0206F8CC: .word unk_0209136C
	arm_func_end FUN_0206f834

	arm_func_start FUN_0206f8d0
FUN_0206f8d0: ; 0x0206F8D0
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	cmp r2, #0
	mov r6, r0
	mov r5, r1
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	add r0, r6, #0x800
	ldrh r0, [r0, #0x74]
	cmp r0, r5
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, _0206F948 ; =0x0209A720
	mov r3, #0x180
	str r0, [r2]
	mov r1, r2
	mul r2, r5, r3
	mov r4, #0
	ldr r0, _0206F94C ; =0x02091388
	str r4, [sp]
	bl FUN_ov16_020f3234
	cmp r0, #0
	moveq r0, r4
	addne r0, r6, #0x800
	strneh r5, [r0, #0x74]
	movne r0, #1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0206F948: .word unk_0209A720
_0206F94C: .word unk_02091388
	arm_func_end FUN_0206f8d0

	arm_func_start FUN_0206f950
FUN_0206f950: ; 0x0206F950
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	cmp r2, #0
	str r2, [sp, #0x10]
	mov r4, r1
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, _0206F9D0 ; =gAudioPlayer
	mov r1, #8
	bl FUN_0202db98
	ldr r3, _0206F9D4 ; =gAllocator
	ldr r1, _0206F9D8 ; =0x020913A4
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _0206F9BC
	mov r2, #0x120
	mul r12, r4, r2
	str r12, [sp]
	str r2, [sp, #4]
	mov r12, #0
	str r12, [sp, #8]
	mov r12, #1
	add r2, sp, #0x10
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_0206F9BC:
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, pc}
_0206F9D0: .word gAudioPlayer
_0206F9D4: .word gAllocator
_0206F9D8: .word unk_020913A4
	arm_func_end FUN_0206f950

	arm_func_start FUN_0206f9dc
FUN_0206f9dc: ; 0x0206F9DC
	ldr r12, _0206F9E8 ; =FUN_0206f950
	add r2, r0, #0x2ec
	bx r12
_0206F9E8: .word FUN_0206f950
	arm_func_end FUN_0206f9dc

	arm_func_start FUN_0206f9ec
FUN_0206f9ec: ; 0x0206F9EC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	cmp r2, #0
	mov r4, r1
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, pc}
	add r0, r0, #0x2ec
	str r0, [r2]
	mov r3, #0x120
	mov r1, r2
	mul r2, r4, r3
	mov r4, #0
	ldr r0, _0206FA40 ; =0x020913C0
	str r4, [sp]
	bl FUN_ov16_020f3234
	cmp r0, #0
	movne r4, #1
	mov r0, r4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0206FA40: .word unk_020913C0
	arm_func_end FUN_0206f9ec

	arm_func_start FUN_0206fa44
FUN_0206fa44: ; 0x0206FA44
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	mov r0, #0
	mov r5, r1
	str r2, [sp, #0x14]
	str r0, [sp, #0x10]
	cmp r2, #0
	mov r4, r0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r3, _0206FB64 ; =gAllocator
	ldr r1, _0206FB68 ; =0x020913DC
	ldr lr, [r3]
	cmp lr, #0
	beq _0206FAA0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r12, #1
	add r2, sp, #0x10
	mov r0, lr
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_0206FAA0:
	str r0, [sp, #0x1c]
	cmp r0, #0
	addeq sp, sp, #0x20
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [sp, #0x10]
	add r2, sp, #0x18
	add r3, sp, #0x1c
	mov r1, r5
	bl FUN_ov16_020f34f0
	cmp r0, #0
	bne _0206FAE8
	ldr r1, [sp, #0x10]
	ldr r0, _0206FB64 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	add sp, sp, #0x20
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0206FAE8:
	ldr r3, _0206FB64 ; =gAllocator
	ldr r12, [sp, #0x18]
	ldr r0, [r3]
	ldr r1, _0206FB6C ; =0x020913F4
	cmp r0, #0
	moveq r0, #0
	beq _0206FB24
	ldr r2, _0206FB70 ; =0x00000618
	str r12, [sp]
	str r2, [sp, #4]
	add r2, sp, #0x14
	str r4, [sp, #8]
	mov r12, #1
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_0206FB24:
	ldr r1, _0206FB70 ; =0x00000618
	str r0, [sp, #0x1c]
	cmp r0, r1
	beq _0206FB4C
	ldr r1, [sp, #0x10]
	ldr r0, _0206FB64 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	add sp, sp, #0x20
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0206FB4C:
	ldr r1, [sp, #0x10]
	ldr r0, _0206FB64 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	mov r0, #1
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, pc}
_0206FB64: .word gAllocator
_0206FB68: .word unk_020913DC
_0206FB6C: .word unk_020913F4
_0206FB70: .word 0x00000618
	arm_func_end FUN_0206fa44

	arm_func_start FUN_0206fb74
FUN_0206fb74: ; 0x0206FB74
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x218
	sub sp, sp, #0x400
	movs r4, r3
	mov r7, r0
	movne r0, #0
	mov r5, r2
	strneb r0, [r4]
	add r0, r7, r5, lsl #1
	mov r6, r1
	add r1, r0, #0x800
	ldrh r0, [r1, #0x6c]
	cmp r6, r0
	addeq r0, r7, #0x800
	ldreqh r2, [r0, #0x74]
	ldreqh r0, [r1, #0x70]
	cmpeq r2, r0
	bne _0206FBD8
	mov r0, r7
	mov r1, r5
	bl FUN_0206fdac
	add sp, sp, #0x218
	add sp, sp, #0x400
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0206FBD8:
	add r8, sp, #0
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl FUN_0206fa44
	cmp r0, #0
	addeq sp, sp, #0x218
	addeq sp, sp, #0x400
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	mov r1, r5
	mov r2, r8
	bl FUN_0206fe04
	add r0, r7, r5, lsl #1
	add r1, r0, #0x800
	strh r6, [r1, #0x6c]
	add r0, r7, #0x800
	ldrh r0, [r0, #0x74]
	cmp r4, #0
	strh r0, [r1, #0x70]
	movne r0, #1
	strneb r0, [r4]
	mov r0, #1
	add sp, sp, #0x218
	add sp, sp, #0x400
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0206fb74

	arm_func_start FUN_0206fc44
FUN_0206fc44: ; 0x0206FC44
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	movs r4, r1
	mov r5, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_0206d6d8
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, #0x80
	bl FUN_0206d620
	mov r2, #3
	mov r0, r5
	mov r1, r4
	str r2, [sp]
	mov r3, #0
	mov r2, #1
	str r3, [sp, #4]
	bl FUN_0204e79c
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0206fc44

	arm_func_start FUN_0206fca4
FUN_0206fca4: ; 0x0206FCA4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	movs r4, r1
	mov r5, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_0206d6d8
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, #0x80
	bl FUN_0206d634
	mov r2, #3
	mov r0, r5
	mov r1, r4
	str r2, [sp]
	mov r3, #0
	mov r2, #1
	str r3, [sp, #4]
	bl FUN_0204e79c
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0206fca4

	arm_func_start FUN_0206fd04
FUN_0206fd04: ; 0x0206FD04
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r1
	mov r3, #0xb
	mul r5, r8, r3
	movs r7, r2
	mov r4, r0
	add r6, r5, #0xb
	bne _0206FD60
	bl FUN_ov126_0212ae80
	cmp r0, #0
	beq _0206FD60
	cmp r5, r6
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
_0206FD38:
	add r1, r4, r5
	ldrb r0, [r1, #0x84a]
	cmp r0, #0
	movne r0, #1
	strneb r0, [r1, #0x84a]
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	add r5, r5, #1
	cmp r5, r6
	blt _0206FD38
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0206FD60:
	cmp r7, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	mov r1, r8
	bl FUN_ov126_0212ae80
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r5, r6
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
_0206FD84:
	add r1, r4, r5
	ldrb r0, [r1, #0x84a]
	cmp r0, #1
	moveq r0, #3
	streqb r0, [r1, #0x84a]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r5, r5, #1
	cmp r5, r6
	blt _0206FD84
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0206fd04

	arm_func_start FUN_0206fdac
FUN_0206fdac: ; 0x0206FDAC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r2, #0xb
	mul r6, r1, r2
	add r7, r6, #0xb
	cmp r6, r7
	mov r2, #0
	bge _0206FDF8
	ldr r4, _0206FE00 ; =0x0209CC10
	mov r12, #1
	mov r3, #0x88
_0206FDD4:
	mul lr, r6, r3
	ldrb lr, [r4, lr]
	add r5, r0, r6
	add r6, r6, #1
	cmp lr, #1
	moveq r2, r12
	strb lr, [r5, #0x84a]
	cmp r6, r7
	blt _0206FDD4
_0206FDF8:
	bl FUN_0206fd04
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0206FE00: .word unk_0209CC10
	arm_func_end FUN_0206fdac

	arm_func_start FUN_0206fe04
FUN_0206fe04: ; 0x0206FE04
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r3, _02070128 ; =0x0209A720
	str r1, [sp]
	ldr r1, [r3, #0xdc]
	mov r10, r0
	str r1, [sp, #0x20]
	ldrsh r1, [r3, #0xac]
	str r2, [sp, #4]
	ldrsh r4, [r3, #0xae]
	str r1, [sp, #0x1c]
	bl FUN_ov126_0212af7c
	str r0, [sp, #0x18]
	mov r0, r10
	bl FUN_ov126_0212af98
	mov r5, r0
	ldr r0, [sp]
	bl FUN_ov16_020f07f4
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp]
	mov r1, #0xb
	mul r1, r0, r1
	add r0, r1, #0xb
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	str r1, [sp, #0x14]
	add r11, r0, #0x40
	mov r0, #0
	str r0, [sp, #8]
	b _02070030
_0206FE8C:
	ldr r3, _0207012C ; =0x0209CC10
	ldr r2, [sp, #0x14]
	mov r1, #0x88
	mla r1, r2, r1, r3
	mov r0, r11
	mov r2, #8
	bl MI_CpuCopy8
	ldrb r1, [r11]
	ldr r0, [sp, #0x14]
	ldr r2, _0207012C ; =0x0209CC10
	add r0, r10, r0
	strb r1, [r0, #0x84a]
	cmp r1, #1
	moveq r0, #1
	streq r0, [sp, #8]
	ldr r0, [sp, #0x14]
	mov r1, #0x88
	mla r1, r0, r1, r2
	add r0, r1, #8
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	mov r8, #0
	add r0, r10, r0
	str r0, [sp, #0x28]
	b _02070018
_0206FEF0:
	ldr r0, [sp, #0x24]
	add r9, r0, r8, lsl #3
	add r0, r11, r8, lsl #3
	ldr r6, [r0, #0xc]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #4]
	cmp r0, #1
	moveq r6, r6, lsl #1
	beq _0206FF30
	ldr r0, [sp, #0x28]
	ldrb r0, [r0, #0x84a]
	cmp r0, #1
	bne _0206FF30
	ldr r0, _02070130 ; =0x00000FAE
	cmp r6, r0
	movgt r6, r0
_0206FF30:
	add r0, r11, r8, lsl #3
	ldr r2, [r0, #8]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	cmp r6, #0x800
	mla r0, r1, r2, r0
	str r0, [r9]
	mov r0, r10
	bge _0206FF90
	mov r1, #1
	mov r2, #0
	bl FUN_020723c4
	mov r7, r0
	mov r0, r10
	mov r1, #1
	mov r2, #0
	bl FUN_0207238c
	cmp r7, r0
	subgt r1, r5, r7
	movgt r0, r1, asr #0xb
	addgt r0, r1, r0, lsr #20
	movgt r4, r0, asr #0xc
	mla r0, r6, r4, r7
	b _0206FFD0
_0206FF90:
	mov r1, #0
	mov r2, r1
	bl FUN_020723c4
	mov r1, #0
	mov r7, r0
	mov r0, r10
	mov r2, r1
	bl FUN_0207238c
	cmp r7, r0
	sublt r1, r7, r5
	movlt r0, r1, asr #0xb
	addlt r0, r1, r0, lsr #20
	rsb r6, r6, #0x1000
	movlt r4, r0, asr #0xc
	mul r0, r6, r4
	sub r0, r7, r0
_0206FFD0:
	str r0, [r9, #4]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #4]
	cmp r0, #1
	beq _02070014
	ldr r0, [sp]
	cmp r0, #1
	bne _02070014
	ldr r1, [r9]
	ldr r0, [sp, #0x18]
	sub r1, r1, r0
	sub r0, r0, r1
	str r0, [r9]
	ldr r0, [r9, #4]
	sub r0, r0, r5
	sub r0, r5, r0
	str r0, [r9, #4]
_02070014:
	add r8, r8, #1
_02070018:
	cmp r8, #0xe
	blt _0206FEF0
	ldr r0, [sp, #0x14]
	add r11, r11, #0x88
	add r0, r0, #1
	str r0, [sp, #0x14]
_02070030:
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blt _0206FE8C
	ldr r1, [sp]
	ldr r2, [sp, #8]
	mov r0, r10
	mov r6, #0
	bl FUN_0206fd04
	mov r5, #8
	ldr r0, [sp]
	mov r1, #0xb
	mul r8, r0, r1
	mov r0, r6
	str r0, [sp, #0x14]
	mov r4, r5
	b _02070114
_02070074:
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0xc]
	mov r0, r10
	mov r3, r6
	add r2, r2, #1
	bl FUN_0204bbe0
	movs r7, r0
	beq _02070104
	ldr r1, [sp, #0x14]
	cmp r1, #0xb
	bge _020700EC
	add r1, r10, r8
	ldrb r1, [r1, #0x84a]
	cmp r1, #0
	beq _020700EC
	mov r1, r5
	bl FUN_0206d620
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0xc]
	mov r0, r10
	add r2, r2, #1
	mov r3, r6
	bl FUN_02072434
	cmp r0, #0
	mov r0, r10
	mov r1, r7
	beq _020700E8
	bl FUN_0206fc44
	b _02070104
_020700E8:
	b _02070100
_020700EC:
	mov r0, r7
	mov r1, r4
	bl FUN_0206d634
	mov r0, r10
	mov r1, r7
_02070100:
	bl FUN_0206fca4
_02070104:
	ldr r0, [sp, #0x14]
	add r8, r8, #1
	add r0, r0, #1
	str r0, [sp, #0x14]
_02070114:
	ldr r0, [sp, #0x14]
	cmp r0, #0x10
	blt _02070074
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02070128: .word unk_0209A720
_0207012C: .word unk_0209CC10
_02070130: .word 0x00000FAE
	arm_func_end FUN_0206fe04

	arm_func_start FUN_02070134
FUN_02070134: ; 0x02070134
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r6, _020701C4 ; =0x0209A11C
	mov r5, r0
	mov r4, r1
	mov r8, #0
_02070148:
	mov r0, r8
	bl FUN_ov16_020efa80
	movs r7, r0
	beq _02070180
	bl FUN_0206d64c
	cmp r0, #0
	beq _02070180
	mov r0, r7
	bl FUN_ov16_020f0810
	cmp r4, r0
	bne _02070180
	ldr r0, [r6]
	mov r1, r8
	bl FUN_0206c5d8
_02070180:
	add r8, r8, #1
	cmp r8, #0x20
	blt _02070148
	add r0, r5, #0xc
	add r0, r0, #0x400
	mov r6, #0
	mov r1, r6
	add r0, r0, r4, lsl #5
	mov r2, #0x20
	bl MI_CpuFill8
	add r0, r5, #0xcc
	add r0, r0, #0x400
	mov r1, r6
	add r0, r0, r4, lsl #4
	mov r2, #0x10
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020701C4: .word unk_0209A11C
	arm_func_end FUN_02070134

	arm_func_start FUN_020701c8
FUN_020701c8: ; 0x020701C8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r6, r0
	ldr r4, [r6, #0x7f0]
	str r1, [sp, #8]
	mov r1, #0
	mov r5, r2
	mov r11, r3
	cmp r4, #0
	str r1, [sp, #0xc]
	bne _02070200
	bl FUN_02071fac
	mov r0, #1
	str r0, [sp, #0xc]
_02070200:
	ldr r0, [sp, #8]
	mov r9, #0
	add r8, r0, #0x4c
	ldrb r7, [sp, #0x38]
	b _02070340
_02070214:
	mov r0, r9, lsl #3
	ldrh r0, [r8, r0]
	cmp r0, #0
	beq _0207033C
	cmp r7, #0
	beq _02070260
	cmp r5, #1
	bne _02070260
	mov r0, r6
	bl FUN_020731a4
	cmp r0, #0
	bne _02070260
	mov r0, r9, lsl #3
	ldrh r1, [r8, r0]
	ldr r0, _02070394 ; =0x0209A0AC
	mov r2, #0
	bl FUN_0206c7dc
	cmp r0, #0
	bne _0207033C
_02070260:
	add r1, r8, r9, lsl #3
	ldrb r0, [r1, #2]
	cmp r0, #0x10
	movhi r0, #0
	strhib r0, [r1, #2]
	mov r0, r6
	mov r1, r5
	bl FUN_02071db0
	movs r10, r0
	bmi _02070348
	ldr r0, _02070398 ; =0x020A0640
	mov r4, #1
	ldrb r0, [r0, #0x1a]
	cmp r5, #0
	movne r4, #0
	cmp r0, #0
	beq _020702B4
	mov r0, r5
	bl FUN_ov16_020f0a30
	cmp r0, #0
	movne r4, #0
_020702B4:
	add r12, r8, r9, lsl #3
	mov r2, r10
	ldrb r10, [r12, #4]
	mov r1, r9, lsl #3
	mov r0, r6
	add r10, r11, r10
	str r10, [sp]
	ldrb r10, [r12, #5]
	mov r3, r5
	str r10, [sp, #4]
	ldrh r1, [r8, r1]
	bl FUN_02071d74
	add r1, r8, r9, lsl #3
	ldrb r1, [r1, #3]
	mov r10, r0
	mov r2, #0
	bl FUN_0206d9cc
	cmp r4, #0
	mov r0, r10
	beq _0207030C
	mov r1, #0x20
	b _02070310
_0207030C:
	mov r1, #0x40
_02070310:
	bl FUN_0206d620
	mov r0, r10
	bl FUN_0206cbf8
	mov r1, #1
	str r1, [sp]
	add r3, r8, r9, lsl #3
	mov r2, r0
	ldrb r3, [r3, #2]
	mov r0, r6
	mov r1, r5
	bl FUN_0204c92c
_0207033C:
	add r9, r9, #1
_02070340:
	cmp r9, #0x20
	blt _02070214
_02070348:
	ldr r0, [sp, #8]
	cmp r5, #1
	ldrh r4, [r0, #0x2e]
	orreq r4, r4, #0x8000
	bl FUN_ov16_020f068c
	cmp r0, #0
	bne _02070374
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_0204d864
_02070374:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r6
	bl FUN_02072020
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02070394: .word unk_0209A0AC
_02070398: .word unk_020A0640
	arm_func_end FUN_020701c8

	arm_func_start FUN_0207039c
FUN_0207039c: ; 0x0207039C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x180
	mov r6, #0
	mov r7, r1
	add r1, sp, #0x20
	mov r4, r2
	mov r0, r6
	mov r2, #0x160
	str r1, [sp, #0x14]
	str r6, [sp, #0x10]
	mov r5, r6
	bl MIi_CpuClearFast
	cmp r4, #0
	addeq sp, sp, #0x180
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r1, r6
	mov r2, #0x16c
	bl MI_CpuFill8
	ldr r3, _02070524 ; =gAllocator
	ldr r1, _02070528 ; =0x0209140C
	ldr r0, [r3]
	cmp r0, #0
	beq _02070420
	str r6, [sp]
	str r6, [sp, #4]
	add r2, sp, #0x10
	str r6, [sp, #8]
	mov r12, #1
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
	mov r6, r0
_02070420:
	cmp r6, #0
	str r6, [sp, #0x1c]
	addeq sp, sp, #0x180
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [sp, #0x10]
	add r2, sp, #0x18
	add r3, sp, #0x1c
	mov r1, r7
	bl FUN_ov16_020f34f0
	cmp r0, #0
	bne _02070468
	ldr r1, [sp, #0x10]
	ldr r0, _02070524 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	add sp, sp, #0x180
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02070468:
	ldr r3, _02070524 ; =gAllocator
	ldr r12, [sp, #0x1c]
	ldr r0, [r3]
	cmp r12, #0x160
	movhi r12, #0x160
	strhi r12, [sp, #0x1c]
	cmp r0, #0
	ldr r2, [sp, #0x18]
	ldr r1, _0207052C ; =0x02091424
	moveq r0, #0
	beq _020704AC
	stmia sp, {r2, r12}
	add r2, sp, #0x14
	str r5, [sp, #8]
	mov r12, #1
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_020704AC:
	str r0, [sp, #0x1c]
	cmp r0, #0
	bne _020704D0
	ldr r1, [sp, #0x10]
	ldr r0, _02070524 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	add sp, sp, #0x180
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020704D0:
	ldr r1, [sp, #0x10]
	ldr r0, _02070524 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	add r0, sp, #0x20
	mov r1, r4
	mov r2, #0x40
	bl MI_CpuCopy8
	add r0, sp, #0x60
	add r1, r4, #0x4c
	mov r2, #0x100
	bl MI_CpuCopy8
	ldr r0, [sp, #0x1c]
	cmp r0, #0x160
	bne _02070518
	add r0, sp, #0x160
	add r1, r4, #0x14c
	mov r2, #0x20
	bl MI_CpuCopy8
_02070518:
	mov r0, #1
	add sp, sp, #0x180
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02070524: .word gAllocator
_02070528: .word unk_0209140C
_0207052C: .word unk_02091424
	arm_func_end FUN_0207039c

	arm_func_start FUN_02070530
FUN_02070530: ; 0x02070530
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1b8
	sub sp, sp, #0x400
	mov r4, #0
	str r4, [sp, #0x1c]
	mov r11, r0
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	mov r4, r4
	bl FUN_ov16_020f068c
	cmp r0, #0
	beq _02070570
	ldr r0, [sp, #0x10]
	cmp r0, #1
	moveq r4, #1
_02070570:
	cmp r4, #0
	ldrne r0, _02071394 ; =0x020A1640
	ldr r1, [sp, #0x10]
	ldrne r0, [r0, #0x230]
	cmpne r0, #0
	movne r0, #1
	strne r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x40]
	ldr r2, [sp, #0x40]
	mov r0, r11
	str r2, [sp, #0x3c]
	ldr r2, [sp, #0x40]
	str r2, [sp, #0x38]
	ldr r2, [sp, #0x40]
	str r2, [sp, #0x34]
	bl FUN_02070134
	ldr r1, [sp, #0x10]
	mov r0, r11
	bl FUN_0207249c
	str r0, [sp, #0x44]
	ldr r1, [sp, #0x10]
	mov r0, r11
	bl FUN_020724ac
	ldr r1, [sp, #0x40]
	mov r2, #0x100
	mov r6, r0
	bl MI_CpuFill8
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bgt _0207060C
	ldr r0, [sp, #0x10]
	cmp r0, #1
	movne r0, #1
	strne r0, [sp, #0x18]
	bne _0207060C
	mov r0, r11
	bl FUN_020726f8
	str r0, [sp, #0x18]
_0207060C:
	mov r0, r11
	bl FUN_02073184
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	ldreq r0, _02071398 ; =0x020A0640
	ldreqb r0, [r0, #0x1a]
	cmpeq r0, #0
	bne _02070638
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _02070640
_02070638:
	mov r0, #1
	str r0, [sp, #0x3c]
_02070640:
	add r4, sp, #0x400
	add r4, r4, #0x4c
	mov r9, #0
	mov r0, r4
	mov r1, r9
	mov r2, #0x16c
	bl memset
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _02070784
	ldr r2, _02071394 ; =0x020A1640
	mov r1, r4
	ldr r4, [r2, #0x230]
	ldrb r3, [r2, #0x246]
	ldr r0, _0207139C ; =0x00000808
	add r4, r4, #8
	mla r7, r3, r0, r4
	add r0, r7, #0x394
	mov r2, #0x4c
	add r0, r0, #0x400
	bl MI_CpuCopy8
	ldr r0, [sp, #0x10]
	add r8, sp, #0x400
	ldrh r2, [r7, #0xd2]
	ldr r1, _020713A0 ; =0x020A06BC
	mov r0, r0, lsl #1
	strh r2, [r1, r0]
	add r8, r8, #0x98
	add r5, r7, #0xd4
	mov r10, r9
	mov r4, #0x6c
	b _02070730
_020706C0:
	add r0, r7, #0x7e0
	mov r1, r9
	bl FUN_0204fbe8
	mov r3, #0
	b _020706F0
_020706D4:
	mul r2, r3, r4
	add r1, r7, r2
	ldrh r1, [r1, #0xd8]
	cmp r0, r1
	addeq r1, r5, r2
	beq _020706FC
	add r3, r3, #1
_020706F0:
	cmp r3, #0x10
	blt _020706D4
	mov r1, #0
_020706FC:
	cmp r1, #0
	beq _02070728
	strh r0, [r8]
	add r0, r9, #1
	and r0, r0, #0xff
	strb r0, [r8, #2]
	strb r0, [r8, #3]
	ldrb r0, [r1, #0x4a]
	sub r0, r0, #1
	strb r0, [r8, #4]
	strb r10, [r8, #5]
_02070728:
	add r9, r9, #1
	add r8, r8, #8
_02070730:
	cmp r9, #0x10
	blt _020706C0
	add r0, sp, #0x400
	ldr r1, [sp, #0x44]
	add r0, r0, #0x4c
	mov r2, #0x4c
	bl MI_CpuCopy8
	add r4, sp, #0x3cc
	mov r0, r7
	mov r1, r4
	bl FUN_ov16_020ef5b8
	mov r2, #0
	b _02070778
_02070764:
	mov r0, r2, lsl #1
	ldrh r1, [r4, r0]
	mov r0, r2, lsl #2
	add r2, r2, #1
	strh r1, [r6, r0]
_02070778:
	cmp r2, #0x40
	blt _02070764
	b _02070FA0
_02070784:
	mov r0, r11
	bl FUN_020731a4
	cmp r0, #0
	beq _02070F54
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _02070F54
	ldr r0, _020713A4 ; =0x020A9C40
	bl FUN_02045ed0
	mov r4, r0
	add r6, sp, #0x24c
	mov r0, r9
	mov r1, r9
	mov r2, r9
	mov r3, r9
	mov r5, #0xc
_020707C4:
	stmia r6!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _020707C4
	mov r7, #0
	add r0, sp, #0x64
	b _020707E8
_020707E0:
	str r7, [r0, r7, lsl #2]
	add r7, r7, #1
_020707E8:
	cmp r7, #8
	blt _020707E0
	mov r7, #0
	add r5, sp, #0x64
	mov r6, r7
	b _02070874
_02070800:
	mov r0, r6
	mov r8, r7
	b _02070820
_0207080C:
	ldr r1, [r5, r8, lsl #2]
	add r8, r8, #1
	add r1, r4, r1, lsl #2
	ldrh r1, [r1, #6]
	add r0, r0, r1
_02070820:
	cmp r8, #8
	blt _0207080C
	cmp r0, #0
	beq _0207087C
	bl FUN_ov16_020ef928
	mov r8, r7
	b _02070858
_0207083C:
	ldr r1, [r5, r8, lsl #2]
	add r1, r4, r1, lsl #2
	ldrh r1, [r1, #6]
	sub r0, r0, r1
	cmp r0, #0
	ble _02070860
	add r8, r8, #1
_02070858:
	cmp r8, #7
	blt _0207083C
_02070860:
	ldr r1, [r5, r7, lsl #2]
	ldr r0, [r5, r8, lsl #2]
	str r0, [r5, r7, lsl #2]
	str r1, [r5, r8, lsl #2]
	add r7, r7, #1
_02070874:
	cmp r7, #7
	blt _02070800
_0207087C:
	add r8, sp, #0x204
	mov r0, r8
	bl FS_InitFile
	ldr r1, _020713A8 ; =0x0209143C
	mov r0, r8
	bl FS_OpenFile
	cmp r0, #0
	beq _02070904
	mov r10, #0x30
	mov r9, #0
	add r7, sp, #0x64
	add r6, sp, #0x24c
	mov r5, r10
	b _020708E8
_020708B4:
	ldr r1, [r7, r9, lsl #2]
	mov r0, r8
	add r1, r4, r1, lsl #2
	ldrh r3, [r1, #4]
	mov r2, #0
	mul r1, r3, r10
	bl FS_SeekFile
	ldr r2, [r7, r9, lsl #2]
	mov r0, r8
	mla r1, r2, r5, r6
	mov r2, #0x30
	bl FS_ReadFile
	add r9, r9, #1
_020708E8:
	cmp r9, #8
	blt _020708B4
	add r4, sp, #0x204
_020708F4:
	mov r0, r4
	bl FS_CloseFile
	cmp r0, #0
	beq _020708F4
_02070904:
	mov r7, #0
	add r4, sp, #0x64
	add r3, sp, #0x24c
	mov r1, #0x30
	b _02070934
_02070918:
	ldr r0, [r4, r7, lsl #2]
	mul r2, r0, r1
	ldrh r2, [r3, r2]
	ldr r0, [sp, #0x14]
	cmp r0, r2
	beq _0207093C
	add r7, r7, #1
_02070934:
	cmp r7, #8
	blt _02070918
_0207093C:
	mov r9, #0
	cmp r7, #8
	moveq r0, #1
	streq r0, [sp, #0x40]
	mov r3, #1
	add r0, sp, #0x84
	mov r1, r9
	mov r2, #0x180
	str r3, [sp, #0x30]
	str r9, [sp, #0x2c]
	str r9, [sp, #0x28]
	bl memset
	add r0, sp, #0x5c
	ldr r3, _020713AC ; =gAllocator
	strh r9, [r0]
	strh r9, [r0, #2]
	strh r9, [r0, #4]
	ldr r0, [r3]
	str r9, [sp, #0x58]
	str r9, [sp, #0x24]
	str r9, [sp, #0x20]
	ldr r1, _020713B0 ; =0x02091458
	cmp r0, #0
	beq _020709BC
	str r9, [sp]
	str r9, [sp, #4]
	str r9, [sp, #8]
	ldr r0, [sp, #0x30]
	add r2, sp, #0x58
	str r0, [sp, #0xc]
	ldr r0, [r3]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_020709BC:
	add r8, sp, #0x204
	mov r0, r8
	bl FS_InitFile
	ldr r1, _020713B4 ; =0x02091470
	mov r0, r8
	bl FS_OpenFile
	cmp r0, #0
	beq _02070AF4
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _02070A50
	mov r4, #0x160
	ldr r0, _020713AC ; =gAllocator
	mov r1, r4
	bl _ZN9Allocator8allocateEm
	str r0, [sp, #0x20]
	cmp r0, #0
	beq _02070AE0
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x54
	add r3, sp, #0x50
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _02070AE0
	ldr r1, [sp, #0x54]
	mov r0, r8
	mov r2, #0
	bl FS_SeekFile
	ldr r1, [sp, #0x20]
	mov r0, r8
	mov r2, r4
	bl FS_ReadFile
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	b _02070AE0
_02070A50:
	ldr r0, _020713AC ; =gAllocator
	mov r1, #0xb00
	bl _ZN9Allocator8allocateEm
	str r0, [sp, #0x20]
	mov r7, #0
	add r6, sp, #0x64
	add r5, sp, #0x24c
	mov r10, #0x160
	mov r4, #0x30
	b _02070AD8
_02070A78:
	ldr r0, [r6, r7, lsl #2]
	mul r1, r0, r4
	ldrh r1, [r5, r1]
	cmp r1, #0
	beq _02070AD4
	ldr r0, [sp, #0x58]
	add r2, sp, #0x54
	add r3, sp, #0x50
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _02070AD4
	ldr r1, [sp, #0x54]
	mov r0, r8
	mov r2, #0
	bl FS_SeekFile
	ldr r1, [sp, #0x20]
	mov r0, r8
	mla r1, r7, r10, r1
	mov r2, #0x160
	bl FS_ReadFile
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
_02070AD4:
	add r7, r7, #1
_02070AD8:
	cmp r7, #8
	blt _02070A78
_02070AE0:
	add r4, sp, #0x204
_02070AE4:
	mov r0, r4
	bl FS_CloseFile
	cmp r0, #0
	beq _02070AE4
_02070AF4:
	ldr r0, _020713AC ; =gAllocator
	ldr r1, [sp, #0x58]
	bl _ZN9Allocator10deallocateEPv
	mov r7, #0
_02070B04:
	ldr r0, [sp, #0x20]
	mov r1, #0x160
	mla r0, r7, r1, r0
	ldrh r2, [r0, #0x20]
	ldr r1, [sp, #0x14]
	cmp r1, r2
	bne _02070B2C
	ldr r1, [sp, #0x44]
	mov r2, #0x4c
	bl MI_CpuCopy8
_02070B2C:
	ldr r0, [sp, #0x20]
	mov r1, #0x160
	mla r0, r7, r1, r0
	str r0, [sp, #0x48]
	add r0, r11, #0x800
	mov r8, #0
	add r6, sp, #0x84
	mov r4, #6
	ldr r5, _020713B8 ; =0x0000EFFF
	str r0, [sp, #0x4c]
	b _02070D7C
_02070B58:
	ldr r0, [sp, #0x48]
	add r1, r0, r8, lsl #3
	ldrh r10, [r1, #0x40]
	cmp r10, #0
	beq _02070D78
	mov r0, #6
	mul r0, r9, r0
	strh r10, [r6, r0]
	ldrb r1, [r1, #0x42]
	add r2, r6, r0
	ldr r0, _020713BC ; =0x0209A0AC
	strh r1, [r2, #4]
	mov r1, #0
	strh r1, [r2, #2]
	mov r1, r10, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r2, #0
	bl FUN_0206c7dc
	cmp r0, #0
	beq _02070BB4
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _02070BB8
_02070BB4:
	b _02070BE4
_02070BB8:
	ldrb r0, [r11, #0x886]
	cmp r0, #0
	beq _02070C04
	mov r0, r11
	mov r1, #0
	bl FUN_0205106c
	mov r1, r10, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_020502a8
	cmp r0, #0
	bne _02070C04
_02070BE4:
	mov r0, #6
	mla r2, r9, r0, r6
	ldr r0, [sp, #0x28]
	ldrh r1, [r2, #2]
	add r0, r0, #1
	str r0, [sp, #0x28]
	orr r0, r1, #0x8000
	strh r0, [r2, #2]
_02070C04:
	mov r0, #6
	mla r0, r9, r0, r6
	ldrh r1, [r0, #4]
	cmp r1, #1
	bne _02070C9C
	ldr r1, [sp, #0x48]
	ldrh r2, [r1, #0x20]
	ldr r1, [sp, #0x14]
	cmp r1, r2
	bne _02070C74
	ldrh r0, [r0, #2]
	tst r0, #0x8000
	beq _02070C74
	mov r2, #0
	b _02070C54
_02070C40:
	mla r1, r2, r4, r6
	ldrh r0, [r1, #2]
	add r2, r2, #1
	and r0, r0, r5
	strh r0, [r1, #2]
_02070C54:
	cmp r2, r9
	blt _02070C40
	mov r0, #6
	mla r1, r9, r0, r6
	ldrh r0, [r1, #2]
	orr r0, r0, #0x4000
	strh r0, [r1, #2]
	b _02070C90
_02070C74:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	movne r0, #6
	mlane r1, r9, r0, r6
	ldrneh r0, [r1, #2]
	addne r0, r0, #0x1000
	strneh r0, [r1, #2]
_02070C90:
	mov r0, #0
	str r0, [sp, #0x30]
	b _02070CA8
_02070C9C:
	ldrh r1, [r0, #2]
	orr r1, r1, #0x400
	strh r1, [r0, #2]
_02070CA8:
	ldr r0, [sp, #0x48]
	ldrh r1, [r0, #0x20]
	ldr r0, [sp, #0x14]
	cmp r0, r1
	bne _02070CE4
	mov r0, #6
	mla r1, r9, r0, r6
	ldrh r0, [r1, #2]
	orr r0, r0, #0x2000
	strh r0, [r1, #2]
	ldrh r0, [r1, #2]
	tst r0, #0x8000
	ldrne r0, [sp, #0x2c]
	addne r0, r0, #1
	strne r0, [sp, #0x2c]
_02070CE4:
	ldr r0, [sp, #0x4c]
	ldrh r0, [r0, #0x76]
	cmp r0, #0
	beq _02070D1C
	cmp r10, r0
	bne _02070D1C
	mov r0, #6
	mul r1, r9, r0
	add r2, r6, r1
	ldrh r0, [r2, #2]
	orr r0, r0, #0x800
	strh r0, [r2, #2]
	ldrh r0, [r6, r1]
	str r0, [sp, #0x34]
_02070D1C:
	mov r0, r11
	bl FUN_02072b24
	cmp r0, #0
	beq _02070D50
	mov r0, #0xf0
	bl FUN_ov16_020ef928
	add r0, r0, #0xf
	mov r1, r0, lsl #0x10
	mov r0, #6
	mla r2, r9, r0, r6
	ldrh r0, [r2, #2]
	add r0, r0, r1, lsr #16
	b _02070D68
_02070D50:
	mov r0, #6
	mla r2, r9, r0, r6
	ldrh r1, [r2, #2]
	rsb r0, r8, #0xff
	mov r0, r0, lsl #0x10
	add r0, r1, r0, lsr #16
_02070D68:
	strh r0, [r2, #2]
	add r0, r9, #1
	mov r0, r0, lsl #0x10
	mov r9, r0, lsr #0x10
_02070D78:
	add r8, r8, #1
_02070D7C:
	cmp r8, #0x10
	blt _02070B58
	ldr r0, [sp, #0x24]
	add r7, r7, #1
	cmp r7, r0
	blt _02070B04
	ldr r0, _020713AC ; =gAllocator
	ldr r1, [sp, #0x20]
	bl _ZN9Allocator10deallocateEPv
	ldr r0, [sp, #0x28]
	cmp r0, #4
	bge _02070DE4
	mov r0, #1
	str r0, [sp, #0x3c]
	mov r7, #0
	add r3, sp, #0x84
	mov r0, #6
	ldr r1, _020713C0 ; =0x00007FFF
	b _02070DDC
_02070DC8:
	mla r4, r7, r0, r3
	ldrh r2, [r4, #2]
	add r7, r7, #1
	and r2, r2, r1
	strh r2, [r4, #2]
_02070DDC:
	cmp r7, r9
	blt _02070DC8
_02070DE4:
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x28]
	cmp r0, #4
	movlt r0, #1
	strlt r0, [sp, #0x38]
	mov r0, #0x64
	mul r0, r1, r0
	mov r1, r9
	bl _s32_div_f
	ldr r4, _020713A4 ; =0x020A9C40
	and r1, r0, #0xff
	mov r0, r4
	bl FUN_020463dc
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _02070E30
	mov r0, r4
	mov r1, #0
	bl FUN_020463dc
_02070E30:
	mov r7, #0
	b _02070ECC
_02070E38:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	mov r0, #6
	mul r4, r7, r0
	add r3, sp, #0x84
	mov r5, r0
	add r2, r3, r4
	b _02070EC0
_02070E5C:
	ldrh r10, [r2, #2]
	mul r1, r8, r5
	add r0, r3, r1
	ldrh r6, [r0, #2]
	cmp r10, r6
	bhs _02070EBC
	ldrh r12, [r3, r1]
	ldrh r10, [r0, #2]
	ldrh r6, [r0, #4]
	strh r12, [sp, #0x5c]
	strh r10, [sp, #0x5e]
	strh r6, [sp, #0x60]
	ldrh r12, [r3, r4]
	ldrh r10, [sp, #0x5c]
	ldrh r6, [sp, #0x5e]
	strh r12, [r3, r1]
	ldrh r12, [r2, #2]
	ldrh r1, [sp, #0x60]
	strh r12, [r0, #2]
	ldrh r12, [r2, #4]
	strh r12, [r0, #4]
	strh r10, [r3, r4]
	strh r6, [r2, #2]
	strh r1, [r2, #4]
_02070EBC:
	add r8, r8, #1
_02070EC0:
	cmp r8, r9
	blt _02070E5C
	add r7, r7, #1
_02070ECC:
	sub r0, r9, #1
	cmp r7, r0
	blt _02070E38
	add r2, sp, #0x400
	add r1, sp, #0x400
	mov r7, #0
	add r5, sp, #0x84
	add r2, r2, #0x98
	add r1, r1, #0x9a
	mov r0, #6
	b _02070F10
_02070EF8:
	mul r3, r7, r0
	ldrh r4, [r5, r3]
	mov r3, r7, lsl #3
	add r7, r7, #1
	strh r4, [r2, r3]
	strb r7, [r1, r3]
_02070F10:
	cmp r7, #4
	blt _02070EF8
	add r0, sp, #0x400
	mov r7, #4
	mov r2, #0
	add r0, r0, #0x98
	b _02070F38
_02070F2C:
	mov r1, r7, lsl #3
	strh r2, [r0, r1]
	add r7, r7, #1
_02070F38:
	cmp r7, #0x10
	blt _02070F2C
	add r1, sp, #0x400
	add r1, r1, #0x4c
	ldr r0, [sp, #0x44]
	mov r2, #0x4c
	b _02070F9C
_02070F54:
	add r4, sp, #0x400
	add r4, r4, #0x4c
	ldr r1, [sp, #0x14]
	mov r0, r11
	mov r2, r4
	bl FUN_0207039c
	cmp r0, #0
	addeq sp, sp, #0x1b8
	addeq sp, sp, #0x400
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x44]
	mov r0, r4
	mov r2, #0x4c
	bl MI_CpuCopy8
	add r0, sp, #0x500
	add r0, r0, #0x98
	mov r1, r6
	mov r2, #0x20
_02070F9C:
	bl MI_CpuCopy8
_02070FA0:
	ldr r0, [sp, #0x44]
	ldr r1, _020713C4 ; =0x020A06D2
	ldrh r3, [r0, #0x22]
	ldr r0, [sp, #0x10]
	mov r2, r0, lsl #1
	ldr r0, [sp, #0x44]
	strh r3, [r0, #0x48]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x18]
	strh r0, [r1, r2]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x10]
	cmp r0, #0
	ldreq r1, _02071398 ; =0x020A0640
	ldreqb r0, [r1, #0x1a]
	cmpeq r0, #0
	ldreq r0, [sp, #0x10]
	streqb r0, [r1, #0x9a]
	ldr r0, [sp, #0x44]
	ldrh r1, [r0, #0x34]
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	ldr r0, [sp, #0x44]
	moveq r4, #1
	strh r1, [r0, #0x4a]
	movne r4, #0
	add r1, sp, #0x400
	add r1, r1, #0x4c
	mov r0, r11
	str r4, [sp]
	bl FUN_020701c8
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _020710CC
	mov r0, r11
	mov r5, #1
	mov r7, #0
	bl FUN_020731a4
	cmp r0, #0
	beq _020710CC
	ldrb r0, [r11, #0x886]
	cmp r0, #0
	bne _020710CC
	mov r9, r7
	ldr r6, _020713C8 ; =0x02091488
	ldr r4, _020713CC ; =0x0209A11C
	b _020710BC
_0207105C:
	mov r0, r9
	bl FUN_ov16_020efa80
	movs r8, r0
	beq _020710B8
	bl FUN_0206d5f0
	cmp r0, #1
	bne _020710B8
	mov r0, r8
	mov r1, r7
	bl FUN_0206d824
	cmp r0, #0
	beq _020710B8
	ldrh r1, [r8, #0x4e]
	ldr r0, [r4]
	mov r2, r7
	bl FUN_0206c7dc
	cmp r0, #0
	beq _020710B8
	mov r0, r11
	mov r1, r8
	mov r2, r6
	bl FUN_0204ee18
	str r5, [sp, #0x38]
_020710B8:
	add r9, r9, #1
_020710BC:
	ldr r0, [r4]
	bl FUN_0206c2f8
	cmp r9, r0
	blt _0207105C
_020710CC:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _02071170
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _02071170
	mov r0, r11
	bl FUN_020731a4
	cmp r0, #0
	beq _02071170
	ldr r0, [sp, #0x34]
	mov r1, #0
	orr r0, r0, #0x8000
	bl FUN_ov16_020efa9c
	movs r4, r0
	beq _020711C4
	add r0, r4, #0x1c
	bl STD_GetStringLength
	add r0, r0, #1
	add r0, r0, r0, lsr #31
	mov r5, r0, asr #1
	cmp r5, #5
	bgt _020711C4
	ldr r1, [sp, #0x10]
	mov r0, r11
	bl FUN_0207249c
	add r1, r4, #0x1c
	str r0, [sp, #0x44]
	bl STD_CopyString
	ldr r4, _020713D0 ; =0x02091494
	b _02071158
_02071148:
	ldr r0, [sp, #0x44]
	mov r1, r4
	bl STD_ConcatenateString
	add r5, r5, #1
_02071158:
	cmp r5, #5
	blt _02071148
	ldr r1, _020713D4 ; =0x02091498
	ldr r0, [sp, #0x44]
	bl STD_ConcatenateString
	b _020711C4
_02071170:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	beq _020711C4
	ldrb r0, [r11, #0x88a]
	cmp r0, #0
	ldreqb r0, [r11, #0x886]
	cmpeq r0, #0
	bne _020711C4
	ldr r4, _020713D8 ; =0x020914A4
	mov r3, #0xf
_02071198:
	ldrb r2, [r4]
	ldrb r1, [r4, #1]
	ldr r0, [sp, #0x44]
	add r4, r4, #2
	strb r1, [r0, #1]
	strb r2, [r0], #2
	subs r3, r3, #1
	str r0, [sp, #0x44]
	bne _02071198
	ldrb r1, [r4]
	strb r1, [r0]
_020711C4:
	ldr r1, [sp, #0x10]
	mov r0, r11
	bl FUN_020724dc
	ldr r1, [sp, #0x14]
	strh r1, [r0, #8]
	ldrb r0, [r11, #0x88a]
	cmp r0, #0
	beq _02071260
	bl FUN_ov16_020f066c
	cmp r0, #0
	ldreq r0, [sp, #0x10]
	cmpeq r0, #1
	bne _02071260
	mov r7, #0x10
	ldr r5, _020713DC ; =0x020914B0
	ldr r4, _020713E0 ; =0x00000103
	b _02071258
_02071208:
	mov r0, r7
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _02071254
	bl FUN_0206d64c
	cmp r0, #0
	beq _02071254
	mov r0, r6
	bl FUN_0206d5f0
	cmp r0, #1
	bne _02071254
	ldr r0, [sp, #0x14]
	cmp r0, r4
	cmpne r0, #0x104
	beq _02071254
	mov r0, r11
	mov r1, r6
	mov r2, r5
	bl FUN_0204ee18
_02071254:
	add r7, r7, #1
_02071258:
	cmp r7, #0x20
	blt _02071208
_02071260:
	ldr r0, [sp, #0x1c]
	mov r4, #0
	cmp r0, #0
	beq _02071360
	ldr r1, _02071394 ; =0x020A1640
	ldr r0, _0207139C ; =0x00000808
	ldr r2, [r1, #0x230]
	ldrb r1, [r1, #0x246]
	add r2, r2, #8
	mov r6, #0x10
	mla r5, r1, r0, r2
	add r10, r5, #0xd4
	b _02071358
_02071294:
	mov r0, r6
	bl FUN_ov16_020efa80
	movs r7, r0
	beq _02071354
	bl FUN_0206cc00
	mov r8, r4
	mov r1, #0x6c
	b _020712D0
_020712B4:
	mul r3, r8, r1
	add r2, r5, r3
	ldrh r2, [r2, #0xd8]
	cmp r0, r2
	addeq r9, r10, r3
	beq _020712DC
	add r8, r8, #1
_020712D0:
	cmp r8, #0x10
	blt _020712B4
	mov r9, r4
_020712DC:
	cmp r9, #0
	beq _02071354
	mov r0, r7
	bl FUN_0206dcd4
	ldrb r8, [r0, #0x56]
	mov r0, r7
	bl FUN_0206dcd4
	mov r1, r9
	bl FUN_0206ed40
	mov r0, r7
	bl FUN_0206dcd4
	mov r1, r8
	bl FUN_0206e7e4
	mov r0, r7
	mov r1, #0x8000
	bl FUN_0206d434
	cmp r0, #0
	mov r0, r7
	mov r1, #0x2000
	beq _02071334
	bl FUN_0206d3c8
	b _02071338
_02071334:
	bl FUN_0206d3fc
_02071338:
	str r4, [sp]
	mov r0, r11
	mov r1, r7
	mov r2, #1
	mov r3, r4
	str r4, [sp, #4]
	bl FUN_0204e79c
_02071354:
	add r6, r6, #1
_02071358:
	cmp r6, #0x20
	blt _02071294
_02071360:
	mov r0, r11
	bl FUN_020731a4
	cmp r0, #0
	addne sp, sp, #0x1b8
	addne sp, sp, #0x400
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x10]
	mov r0, r11
	mov r2, #1
	bl FUN_02072560
	add sp, sp, #0x1b8
	add sp, sp, #0x400
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02071394: .word unk_020A1640
_02071398: .word unk_020A0640
_0207139C: .word 0x00000808
_020713A0: .word unk_020A06BC
_020713A4: .word unk_020A9C40
_020713A8: .word unk_0209143C
_020713AC: .word gAllocator
_020713B0: .word unk_02091458
_020713B4: .word unk_02091470
_020713B8: .word 0x0000EFFF
_020713BC: .word unk_0209A0AC
_020713C0: .word 0x00007FFF
_020713C4: .word unk_020A06D2
_020713C8: .word unk_02091488
_020713CC: .word unk_0209A11C
_020713D0: .word unk_02091494
_020713D4: .word unk_02091498
_020713D8: .word unk_020914A4
_020713DC: .word unk_020914B0
_020713E0: .word 0x00000103
	arm_func_end FUN_02070530

	arm_func_start FUN_020713e4
FUN_020713e4: ; 0x020713E4
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov lr, r0
	ldr r0, [lr, #0x7d0]
	cmp r0, #0
	bne _02071444
	ldr r3, _02071450 ; =gAllocator
	ldr r1, _02071454 ; =0x020914BC
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _02071434
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r12, #1
	add r2, lr, #0x7d0
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_02071434:
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
_02071444:
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_02071450: .word gAllocator
_02071454: .word unk_020914BC
	arm_func_end FUN_020713e4

	arm_func_start FUN_02071458
FUN_02071458: ; 0x02071458
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r4, #0
	mov r8, r0
	str r4, [sp]
	ldr r0, [r8, #0x7d8]
	mov r5, #0x2c
	cmp r0, #0
	ldr r6, _020715AC ; =0x020914D8
	bne _020714B0
	ldr r0, _020715B0 ; =0x00000101
	bl _ZN10FileSystem12SetNextArenaEi
	add r0, sp, #0
	mov r1, r6
	mov r2, r4
	mov r3, r4
	bl _ZN10FileSystem8ReadFileEPPvPKcll
	cmp r0, #0
	bne _020714BC
	add sp, sp, #4
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020714B0:
	add sp, sp, #4
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020714BC:
	mov r1, r4
	mov r0, #0x800
	bl _ZN10FileSystem8AllocateEii
	str r0, [r8, #0x7fc]
	mov r6, #1
	mov r7, r6
	strh r4, [r0]
_020714D8:
	ldr r1, [sp]
	mov r0, r8
	mla r1, r7, r5, r1
	mov r2, r5
	bl FUN_020748c8
	ldrsb r0, [r0]
	cmp r0, #0
	ldreq r1, [r8, #0x7fc]
	moveq r0, r7, lsl #1
	streqh r4, [r1, r0]
	beq _0207151C
	add r0, r6, #1
	ldr r2, [r8, #0x7fc]
	mov r1, r7, lsl #1
	mov r0, r0, lsl #0x10
	strh r6, [r2, r1]
	mov r6, r0, lsr #0x10
_0207151C:
	add r7, r7, #1
	cmp r7, #0x400
	blt _020714D8
	mul r0, r6, r5
	mov r1, #0
	bl _ZN10FileSystem8AllocateEii
	mov r1, r0
	str r1, [r8, #0x7d8]
	ldr r0, [sp]
	mov r2, r5
	mov r6, #1
	bl MI_CpuCopy8
	mov r4, r6
_02071550:
	ldr r1, [r8, #0x7fc]
	mov r0, r4, lsl #1
	ldrh r0, [r1, r0]
	cmp r0, #0
	beq _02071584
	ldr r0, [sp]
	mul r1, r6, r5
	ldr r3, [r8, #0x7d8]
	mla r0, r4, r5, r0
	mov r2, r5
	add r1, r3, r1
	add r6, r6, #1
	bl MI_CpuCopy8
_02071584:
	add r4, r4, #1
	cmp r4, #0x400
	blt _02071550
	ldr r0, [sp]
	cmp r0, #0
	beq _020715A0
	bl _ZN10FileSystem10DeallocateEPv
_020715A0:
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020715AC: .word unk_020914D8
_020715B0: .word 0x00000101
	arm_func_end FUN_02071458

	arm_func_start _ZN11CLogicThink10readUnitNoEv
_ZN11CLogicThink10readUnitNoEv: ; 0x020715B4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r0, [r5, #0x814]
	mov r4, #0
	cmp r0, #0
	bne _02071624
	ldr r3, _02071690 ; =gAllocator
	ldr r1, _02071694 ; =0x020914E8
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, r4
	beq _02071608
	str r4, [sp]
	str r4, [sp, #4]
	add r2, r5, #0x14
	str r4, [sp, #8]
	mov r12, #1
	add r2, r2, #0x800
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_02071608:
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, _02071698 ; =0x0209A120
	mov r0, r0, lsr #1
	str r0, [r1]
_02071624:
	ldr r0, [r5, #0x818]
	cmp r0, #0
	bne _02071684
	ldr r3, _02071690 ; =gAllocator
	ldr r1, _0207169C ; =0x02091504
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _02071668
	str r4, [sp]
	str r4, [sp, #4]
	add r2, r5, #0x18
	str r4, [sp, #8]
	mov r4, #1
	add r2, r2, #0x800
	str r4, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_02071668:
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, _020716A0 ; =0x0209A130
	mov r0, r0, lsr #1
	str r0, [r1]
_02071684:
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_02071690: .word gAllocator
_02071694: .word unk_020914E8
_02071698: .word unk_0209A120
_0207169C: .word unk_02091504
_020716A0: .word unk_0209A130
	arm_func_end _ZN11CLogicThink10readUnitNoEv

	arm_func_start FUN_020716a4
FUN_020716a4: ; 0x020716A4
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r2, r0
	ldr r0, [r2, #0x7d4]
	cmp r0, #0
	bne _02071708
	ldr r3, _02071714 ; =gAllocator
	ldr r1, _02071718 ; =0x02091524
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _020716F8
	mov r12, #0
	str r12, [sp]
	str r12, [sp, #4]
	add r2, r2, #0x3d4
	str r12, [sp, #8]
	mov r12, #1
	add r2, r2, #0x400
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_020716F8:
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
_02071708:
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_02071714: .word gAllocator
_02071718: .word unk_02091524
	arm_func_end FUN_020716a4

	arm_func_start FUN_0207171c
FUN_0207171c: ; 0x0207171C
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r1, [r4, #0x83c]
	cmp r1, #0
	bne _02071780
	ldr r3, _0207179C ; =gAllocator
	ldr r1, _020717A0 ; =0x02091540
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _02071770
	mov r12, #0
	str r12, [sp]
	str r12, [sp, #4]
	add r2, r4, #0x3c
	str r12, [sp, #8]
	mov r12, #1
	add r2, r2, #0x800
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_02071770:
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
_02071780:
	ldr r1, _020717A4 ; =0xC7CE0C7D
	umull r1, r2, r0, r1
	mov r2, r2, lsr #5
	str r2, [r4, #0x838]
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r4, pc}
_0207179C: .word gAllocator
_020717A0: .word unk_02091540
_020717A4: .word 0xC7CE0C7D
	arm_func_end FUN_0207171c

	arm_func_start FUN_020717a8
FUN_020717a8: ; 0x020717A8
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov lr, r0
	ldr r0, [lr, #0x840]
	cmp r0, #0
	bne _02071808
	ldr r3, _02071814 ; =gAllocator
	ldr r1, _02071818 ; =0x02091560
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _020717F8
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r12, #1
	add r2, lr, #0x840
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_020717F8:
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
_02071808:
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_02071814: .word gAllocator
_02071818: .word unk_02091560
	arm_func_end FUN_020717a8

	arm_func_start FUN_0207181c
FUN_0207181c: ; 0x0207181C
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r2, r0
	ldr r0, [r2, #0x808]
	cmp r0, #0
	bne _02071880
	ldr r3, _0207188C ; =gAllocator
	ldr r1, _02071890 ; =0x0209157C
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _02071870
	mov r12, #0
	str r12, [sp]
	str r12, [sp, #4]
	add r2, r2, #8
	str r12, [sp, #8]
	mov r12, #1
	add r2, r2, #0x800
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_02071870:
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
_02071880:
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_0207188C: .word gAllocator
_02071890: .word unk_0209157C
	arm_func_end FUN_0207181c

	arm_func_start FUN_02071894
FUN_02071894: ; 0x02071894
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r8, r0
	ldr r0, [r8, #0x808]
	mov r7, r1
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r6, _0207192C ; =gAllocator
	mov r5, #0x300
	mov r0, r6
	mov r1, r5
	bl _ZN9Allocator8allocateEm
	cmp r0, #0
	str r0, [r8, #0x808]
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	str r0, [r7]
	mov r4, #0
	ldr r0, _02071930 ; =0x02091598
	mov r1, r7
	mov r2, r4
	mov r3, r5
	str r4, [sp]
	bl FUN_ov16_020f3234
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [r8, #0x808]
	mov r0, r6
	bl _ZN9Allocator10deallocateEPv
	mov r0, r4
	str r4, [r8, #0x808]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0207192C: .word gAllocator
_02071930: .word unk_02091598
	arm_func_end FUN_02071894

	arm_func_start FUN_02071934
FUN_02071934: ; 0x02071934
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x808]
	cmp r1, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	ldr r0, _02071964 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	mov r0, #0
	str r0, [r4, #0x808]
	mov r0, #1
	ldmfd sp!, {r4, pc}
_02071964: .word gAllocator
	arm_func_end FUN_02071934

	arm_func_start FUN_02071968
FUN_02071968: ; 0x02071968
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r2, r0
	ldr r0, [r2, #0x80c]
	cmp r0, #0
	bne _020719CC
	ldr r3, _020719D8 ; =gAllocator
	ldr r1, _020719DC ; =0x020915B4
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _020719BC
	mov r12, #0
	str r12, [sp]
	str r12, [sp, #4]
	add r2, r2, #0xc
	str r12, [sp, #8]
	mov r12, #1
	add r2, r2, #0x800
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_020719BC:
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
_020719CC:
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_020719D8: .word gAllocator
_020719DC: .word unk_020915B4
	arm_func_end FUN_02071968

	arm_func_start FUN_020719e0
FUN_020719e0: ; 0x020719E0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r0, [r5, #0x7e0]
	mov r4, #0
	cmp r0, #0
	bne _02071A40
	ldr r3, _02071AA0 ; =gAllocator
	ldr r1, _02071AA4 ; =0x020915D4
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, r4
	beq _02071A30
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r12, #1
	add r2, r5, #0x7e0
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_02071A30:
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_02071A40:
	ldr r0, [r5, #0x7e4]
	cmp r0, #0
	bne _02071A94
	ldr r3, _02071AA0 ; =gAllocator
	ldr r1, _02071AA8 ; =0x020915F0
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _02071A84
	str r4, [sp]
	str r4, [sp, #4]
	add r2, r5, #0x3e4
	str r4, [sp, #8]
	mov r12, #1
	add r2, r2, #0x400
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_02071A84:
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_02071A94:
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_02071AA0: .word gAllocator
_02071AA4: .word unk_020915D4
_02071AA8: .word unk_020915F0
	arm_func_end FUN_020719e0

	arm_func_start FUN_02071aac
FUN_02071aac: ; 0x02071AAC
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r2, r0
	ldr r0, [r2, #0x7e8]
	cmp r0, #0
	bne _02071B10
	ldr r3, _02071B1C ; =gAllocator
	ldr r1, _02071B20 ; =0x0209160C
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _02071B00
	mov r12, #0
	str r12, [sp]
	str r12, [sp, #4]
	add r2, r2, #0x3e8
	str r12, [sp, #8]
	mov r12, #1
	add r2, r2, #0x400
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_02071B00:
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
_02071B10:
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_02071B1C: .word gAllocator
_02071B20: .word unk_0209160C
	arm_func_end FUN_02071aac

	arm_func_start FUN_02071b24
FUN_02071b24: ; 0x02071B24
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x30
	ldr r12, _02071BCC ; =0x0208C50C
	add r3, sp, #0x10
	mov r4, r0
	mov r2, #0xf
_02071B3C:
	ldrb r0, [r12, #1]
	ldrb r1, [r12], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02071B3C
	ldr r0, [r4, #0x844]
	cmp r0, #0
	bne _02071BC0
	ldr r3, _02071BD0 ; =gAllocator
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _02071B9C
	mov r12, #0
	str r12, [sp]
	str r12, [sp, #4]
	add r2, r4, #0x44
	str r12, [sp, #8]
	mov r12, #1
	add r1, sp, #0x10
	add r2, r2, #0x800
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_02071B9C:
	cmp r0, #0
	ldrne r1, _02071BD4 ; =0xAAAAAAAB
	moveq r0, #0
	umullne r1, r2, r0, r1
	movne r2, r2, lsr #3
	add sp, sp, #0x30
	strneb r2, [r4, #0x848]
	movne r0, #1
	ldmfd sp!, {r4, pc}
_02071BC0:
	mov r0, #0
	add sp, sp, #0x30
	ldmfd sp!, {r4, pc}
_02071BCC: .word unk_0208C50C
_02071BD0: .word gAllocator
_02071BD4: .word 0xAAAAAAAB
	arm_func_end FUN_02071b24

	arm_func_start FUN_02071bd8
FUN_02071bd8: ; 0x02071BD8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	bl FUN_02071c18
	cmp r4, r0
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, pc}
	cmp r4, #0
	ldr r0, [r5, #0x844]
	mov r1, #0
	ldmlefd sp!, {r3, r4, r5, pc}
_02071C04:
	add r1, r1, #1
	cmp r1, r4
	add r0, r0, #0xc
	blt _02071C04
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02071bd8

	arm_func_start FUN_02071c18
FUN_02071c18: ; 0x02071C18
	ldrb r0, [r0, #0x848]
	bx lr
	arm_func_end FUN_02071c18

	arm_func_start FUN_02071c20
FUN_02071c20: ; 0x02071C20
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	movs r8, r1
	mov r9, r0
	ldrneh r0, [r8, #4]
	mov r7, r2
	mov r6, r3
	cmpne r0, #0
	mov r4, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r7, #0x64
	addhs sp, sp, #8
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r2, r4
	ldr r0, _02071D68 ; =0x0209A11C
	str r2, [sp]
	ldr r0, [r0]
	mov r1, r7
	mov r3, r2
	bl FUN_0206c300
	mov r5, r0
	bl FUN_0206dcd4
	mov r1, r8
	bl FUN_0206ed40
	cmp r6, #0
	beq _02071CA8
	mov r0, r6
	mov r1, r5
	mov r2, #0x68
	bl MI_CpuCopy8
	b _02071CB8
_02071CA8:
	ldrh r1, [r8, #4]
	mov r0, r9
	mov r2, r5
	bl FUN_0204bd64
_02071CB8:
	mov r0, r7, lsl #0x18
	mov r2, r0, asr #0x18
	ldr r1, _02071D6C ; =0x0000FFFF
	mov r0, r5
	strh r2, [r5, #0x94]
	bl FUN_0206d634
	mov r0, r5
	mov r1, #0x21
	bl FUN_0206d620
	mov r0, r5
	bl FUN_0206d5f0
	mov r1, r0
	ldr r0, _02071D70 ; =gLogicThink
	bl FUN_0205107c
	cmp r0, #0
	beq _02071D20
	mov r1, #0
	bl FUN_0204fbe8
	mov r6, r0
	mov r0, r5
	bl FUN_0206cbf8
	cmp r6, r0
	bne _02071D20
	mov r0, r5
	mov r1, #0x80
	bl FUN_0206d620
_02071D20:
	mov r0, r5
	bl FUN_0206dcd4
	mov r2, r4
	mov r1, #3
	bl FUN_0206def8
	mov r0, #4
	mov r6, #1
	str r0, [sp]
	ldr r7, [sp, #0x28]
	mov r0, r9
	mov r1, r5
	mov r2, r6
	mov r3, r4
	str r7, [sp, #4]
	bl FUN_0204e79c
	mov r0, r6
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02071D68: .word unk_0209A11C
_02071D6C: .word 0x0000FFFF
_02071D70: .word gLogicThink
	arm_func_end FUN_02071c20

	arm_func_start FUN_02071d74
FUN_02071d74: ; 0x02071D74
	stmfd sp!, {r3, lr}
	ldr r12, [sp, #8]
	ldr r0, _02071DAC ; =0x0209A11C
	str r12, [sp]
	mov r12, r1
	mov r1, r2
	mov r2, r3
	ldr r0, [r0]
	mov r3, r12
	bl FUN_0206c300
	cmp r0, #0
	ldrneb r1, [sp, #0xc]
	strneb r1, [r0, #0x83]
	ldmfd sp!, {r3, pc}
_02071DAC: .word unk_0209A11C
	arm_func_end FUN_02071d74

	arm_func_start FUN_02071db0
FUN_02071db0: ; 0x02071DB0
	stmfd sp!, {r3, lr}
	cmp r1, #0
	bne _02071DC4
	bl FUN_02071dd0
	ldmfd sp!, {r3, pc}
_02071DC4:
	mov r1, #0
	bl FUN_02071f00
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02071db0

	arm_func_start FUN_02071dd0
FUN_02071dd0: ; 0x02071DD0
	stmfd sp!, {r4, lr}
	mov r1, #0
	mov r4, r0
	bl FUN_02071df8
	cmp r0, #0
	ldmgefd sp!, {r4, pc}
	mov r0, r4
	mov r1, #1
	bl FUN_02071e90
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02071dd0

	arm_func_start FUN_02071df8
FUN_02071df8: ; 0x02071DF8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #0
	mov r6, r1
	mov r1, r5
	bl FUN_0204c420
	cmp r0, #0x64
	subge r0, r5, #1
	ldmgefd sp!, {r4, r5, r6, pc}
_02071E18:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_0206d64c
	cmp r0, #0
	bne _02071E4C
	mov r0, r4
	bl FUN_0206d660
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
_02071E4C:
	add r5, r5, #1
	cmp r5, #0x10
	blt _02071E18
	cmp r6, #0
	beq _02071E88
	mov r4, #0
_02071E64:
	mov r0, r4
	bl FUN_ov16_020efa80
	bl FUN_0206d660
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r4, r4, #1
	cmp r4, #0x10
	blt _02071E64
_02071E88:
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02071df8

	arm_func_start FUN_02071e90
FUN_02071e90: ; 0x02071E90
	stmfd sp!, {r3, r4, r5, lr}
	cmp r1, #0
	beq _02071EB4
	mov r4, #0
	mov r1, r4
	bl FUN_0204c420
	cmp r0, #0x64
	subge r0, r4, #1
	ldmgefd sp!, {r3, r4, r5, pc}
_02071EB4:
	mov r5, #0
_02071EB8:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_0206d64c
	cmp r0, #0
	bne _02071EEC
	mov r0, r4
	bl FUN_0206d660
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, pc}
_02071EEC:
	add r5, r5, #1
	cmp r5, #0x64
	blt _02071EB8
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02071e90

	arm_func_start FUN_02071f00
FUN_02071f00: ; 0x02071F00
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, #1
	mov r6, r1
	mov r1, r4
	bl FUN_0204c420
	cmp r0, #0x10
	subge r0, r4, #2
	ldmgefd sp!, {r4, r5, r6, pc}
	mov r5, #0x10
_02071F24:
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_0206d64c
	cmp r0, #0
	bne _02071F58
	mov r0, r4
	bl FUN_0206d660
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
_02071F58:
	add r5, r5, #1
	cmp r5, #0x20
	blt _02071F24
	cmp r6, #0
	beq _02071F94
	mov r4, #0x10
_02071F70:
	mov r0, r4
	bl FUN_ov16_020efa80
	bl FUN_0206d660
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r4, r4, #1
	cmp r4, #0x20
	blt _02071F70
_02071F94:
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02071f00

	arm_func_start FUN_02071f9c
FUN_02071f9c: ; 0x02071F9C
	cmp r1, #0
	rsbeq r2, r2, #0
	mov r0, r2
	bx lr
	arm_func_end FUN_02071f9c

	arm_func_start FUN_02071fac
FUN_02071fac: ; 0x02071FAC
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov lr, r0
	ldr r0, [lr, #0x7f0]
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #1
	ldmnefd sp!, {r3, pc}
	ldr r3, _02072018 ; =gAllocator
	ldr r1, _0207201C ; =0x0209162C
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _02072004
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r12, #1
	add r2, lr, #0x7f0
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_02072004:
	cmp r0, #0x1880
	movne r0, #0
	moveq r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_02072018: .word gAllocator
_0207201C: .word unk_0209162C
	arm_func_end FUN_02071fac

	arm_func_start FUN_02072020
FUN_02072020: ; 0x02072020
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x7f0]
	cmp r1, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	ldr r0, _02072050 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	mov r0, #0
	str r0, [r4, #0x7f0]
	mov r0, #1
	ldmfd sp!, {r4, pc}
_02072050: .word gAllocator
	arm_func_end FUN_02072020

	arm_func_start FUN_02072054
FUN_02072054: ; 0x02072054
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	add r0, r5, #0xec
	add r0, r0, #0x400
	movs r4, r1
	str r0, [sp, #0x10]
	beq _0207207C
	cmp r4, #0x38
	blo _02072080
_0207207C:
	mov r4, #1
_02072080:
	ldrb r0, [r5, #0x87e]
	cmp r0, r4
	addeq r0, r5, #0xec
	addeq sp, sp, #0x14
	addeq r0, r0, #0x400
	ldmeqfd sp!, {r4, r5, pc}
	ldr r1, [r5, #0x7f0]
	cmp r1, #0
	movne r0, #0x188
	addne sp, sp, #0x14
	mlane r0, r4, r0, r1
	ldmnefd sp!, {r4, r5, pc}
	ldr r3, _02072110 ; =gAllocator
	ldr r1, _02072114 ; =0x02091648
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _020720F0
	mov r2, #0x188
	mul r12, r4, r2
	str r12, [sp]
	str r2, [sp, #4]
	mov r12, #0
	str r12, [sp, #8]
	mov r12, #1
	add r2, sp, #0x10
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_020720F0:
	cmp r0, #0
	moveq r0, #0
	streqb r0, [r5, #0x87e]
	addne r0, r5, #0xec
	strneb r4, [r5, #0x87e]
	addne r0, r0, #0x400
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
_02072110: .word gAllocator
_02072114: .word unk_02091648
	arm_func_end FUN_02072054

	arm_func_start FUN_02072118
FUN_02072118: ; 0x02072118
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r0
	ldr r0, [r6, #0x83c]
	mov r5, r1
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r6, #0x838]
	mov r4, #0
	cmp r0, #0
	bls _02072174
	mov r7, #0x29
_02072148:
	mul r8, r4, r7
	ldr r9, [r6, #0x83c]
	add r0, r9, r8
	bl FUN_0204b1d4
	cmp r5, r0
	addeq r0, r9, r8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r6, #0x838]
	add r4, r4, #1
	cmp r4, r0
	blo _02072148
_02072174:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_02072118

	arm_func_start FUN_0207217c
FUN_0207217c: ; 0x0207217C
	ldr r12, _02072184 ; =FUN_02072118
	bx r12
_02072184: .word FUN_02072118
	arm_func_end FUN_0207217c

	arm_func_start FUN_02072188
FUN_02072188: ; 0x02072188
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_0204a2c4
	mov r0, r6
	mov r1, r5
	bl FUN_0204a2c4
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl FUN_020721bc
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02072188

	arm_func_start FUN_020721bc
FUN_020721bc: ; 0x020721BC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, [r0, #0x83c]
	mov r4, r2
	cmp r3, #0
	mov r5, #1
	ldrb r1, [r1, #0x14]
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_02072118
	movs r6, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r7, #0
_020721FC:
	add r1, r7, #2
	mov r0, r6
	and r1, r1, #0xff
	bl FUN_0204b1dc
	cmp r0, #0xff
	beq _0207221C
	cmp r4, r0
	bhs _02072228
_0207221C:
	add r0, r7, #1
	and r5, r0, #0xff
	b _0207223C
_02072228:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	cmp r7, #0x13
	blt _020721FC
_0207223C:
	cmp r7, #0x13
	moveq r5, #0x14
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_020721bc

	arm_func_start FUN_0207224c
FUN_0207224c: ; 0x0207224C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r2
	mov r9, #0
	mov r7, r0
	mov r0, r5, lsl #0x10
	mov r6, r1
	mov r4, r9
	mov r8, r0, lsr #0x10
_0207226C:
	mov r0, r6
	mov r1, r4
	bl FUN_0206cdf8
	cmp r5, r0
	bne _020722A0
	mov r0, r6
	bl FUN_0206dcd4
	add r0, r0, r4
	ldrb r2, [r0, #0x44]
	mov r0, r7
	mov r1, r8
	bl FUN_02072188
	mov r9, r0
_020722A0:
	add r4, r4, #1
	cmp r4, #6
	blt _0207226C
	mov r0, r9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_0207224c

	arm_func_start FUN_020722b4
FUN_020722b4: ; 0x020722B4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl FUN_020721bc
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r1, [r5, #0x14]
	mov r0, r6
	bl FUN_02072118
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, r4
	bl FUN_0204b20c
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020722b4

	arm_func_start FUN_020722f4
FUN_020722f4: ; 0x020722F4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r7, [r0, #0x840]
	mov r8, r1
	mov r5, #0
	mov r4, #0xc
_02072308:
	mla r6, r5, r4, r7
	mov r0, r6
	mov r1, r8
	bl strcmp
	cmp r0, #0
	ldreqh r0, [r6, #8]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r5, r5, #1
	cmp r5, #0x200
	blt _02072308
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_020722f4

	arm_func_start FUN_02072338
FUN_02072338: ; 0x02072338
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r7, [r0, #0x840]
	mov r8, r1
	mov r5, #0
	mov r4, #0xc
_0207234C:
	mla r6, r5, r4, r7
	mov r0, r6
	mov r1, r8
	bl strcmp
	cmp r0, #0
	ldreqb r0, [r6, #0xa]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r5, r5, #1
	cmp r5, #0x200
	blt _0207234C
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02072338

	arm_func_start FUN_0207237c
FUN_0207237c: ; 0x0207237C
	ldr r0, [r0, #0x860]
	ldr r12, _02072388 ; =FUN_02043c2c
	bx r12
_02072388: .word FUN_02043c2c
	arm_func_end FUN_0207237c

	arm_func_start FUN_0207238c
FUN_0207238c: ; 0x0207238C
	stmfd sp!, {r3, lr}
	cmp r1, #0
	bne _020723AC
	bl FUN_02071f9c
	ldr r1, _020723C0 ; =0x0209A720
	ldr r1, [r1, #0xe8]
	sub r0, r1, r0
	ldmfd sp!, {r3, pc}
_020723AC:
	bl FUN_02071f9c
	ldr r1, _020723C0 ; =0x0209A720
	ldr r1, [r1, #0xe0]
	sub r0, r1, r0
	ldmfd sp!, {r3, pc}
_020723C0: .word unk_0209A720
	arm_func_end FUN_0207238c

	arm_func_start FUN_020723c4
FUN_020723c4: ; 0x020723C4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_02073194
	cmp r0, #0
	bne _020723F4
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_0207238c
	ldmfd sp!, {r4, r5, r6, pc}
_020723F4:
	cmp r5, #0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bne _0207241C
	bl FUN_02071f9c
	ldr r1, _02072430 ; =0x0209A720
	ldr r1, [r1, #0x100]
	sub r0, r1, r0
	ldmfd sp!, {r4, r5, r6, pc}
_0207241C:
	bl FUN_02071f9c
	ldr r1, _02072430 ; =0x0209A720
	ldr r1, [r1, #0xf8]
	sub r0, r1, r0
	ldmfd sp!, {r4, r5, r6, pc}
_02072430: .word unk_0209A720
	arm_func_end FUN_020723c4

	arm_func_start FUN_02072434
FUN_02072434: ; 0x02072434
	stmfd sp!, {r3, r4, r5, lr}
	sub lr, r2, #1
	mov r12, #0xb
	mla r4, r1, r12, lr
	mov r5, r0
	cmp r2, #1
	blt _02072458
	cmp r2, #0xb
	ble _02072460
_02072458:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02072460:
	cmp r3, #0
	bne _02072484
	ldr r0, [r5, #0x7bc]
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_02072484:
	add r0, r5, r4
	ldrb r0, [r0, #0x84a]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02072434

	arm_func_start FUN_0207249c
FUN_0207249c: ; 0x0207249C
	add r2, r0, #0x24
	mov r0, #0x4c
	mla r0, r1, r0, r2
	bx lr
	arm_func_end FUN_0207249c

	arm_func_start FUN_020724ac
FUN_020724ac: ; 0x020724AC
	add r0, r0, #0xbc
	add r0, r0, r1, lsl #8
	bx lr
	arm_func_end FUN_020724ac

	arm_func_start _ZN11CLogicThink10updateKeysEtt
_ZN11CLogicThink10updateKeysEtt: ; 0x020724B8
	add r0, r0, #0x800
	strh r1, [r0, #0x64]
	strh r2, [r0, #0x66]
	bx lr
	arm_func_end _ZN11CLogicThink10updateKeysEtt

	arm_func_start FUN_020724c8
FUN_020724c8: ; 0x020724C8
	ldr r12, _020724D8 ; =FUN_0204f7c0
	mov r2, #0x25
	mov r3, #0
	bx r12
_020724D8: .word FUN_0204f7c0
	arm_func_end FUN_020724c8

	arm_func_start FUN_020724dc
FUN_020724dc: ; 0x020724DC
	add r0, r0, #4
	add r0, r0, r1, lsl #4
	bx lr
	arm_func_end FUN_020724dc

	arm_func_start FUN_020724e8
FUN_020724e8: ; 0x020724E8
	add r0, r0, r1
	ldrb r0, [r0, #0x7c6]
	bx lr
	arm_func_end FUN_020724e8

	arm_func_start FUN_020724f4
FUN_020724f4: ; 0x020724F4
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r2, r0
	ldr r0, [r2, #0x7cc]
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, pc}
	ldr r3, _02072558 ; =gAllocator
	ldr r1, _0207255C ; =0x02091664
	ldr r0, [r3]
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r12, #0
	str r12, [sp]
	str r12, [sp, #4]
	add r2, r2, #0x3cc
	str r12, [sp, #8]
	mov r12, #1
	add r2, r2, #0x400
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_02072558: .word gAllocator
_0207255C: .word unk_02091664
	arm_func_end FUN_020724f4

	arm_func_start FUN_02072560
FUN_02072560: ; 0x02072560
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl FUN_0207249c
	mov r4, r0
	mov r0, r7
	bl FUN_020731a4
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0
	beq _0207259C
	mov r0, r7
	mov r1, r6
	bl FUN_020725ac
_0207259C:
	add r0, r7, r6
	ldrb r0, [r0, #0x7c6]
	strb r0, [r4, #0x43]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02072560

	arm_func_start FUN_020725ac
FUN_020725ac: ; 0x020725AC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	str r1, [sp]
	bl FUN_020731a4
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp]
	mov r0, r10
	mov r8, #0
	bl FUN_0205107c
	ldr r5, _020726C0 ; =gLogicThink
	ldr r4, _020726C4 ; =0x0209A0AC
	mov r9, r0
	mov r7, r8
	mov r6, r8
	mov r11, r8
_020725EC:
	mov r0, r9
	mov r1, r6
	bl FUN_0204fbe8
	cmp r0, #0
	beq _02072658
	mov r0, r5
	bl FUN_020731a4
	cmp r0, #0
	mov r0, r9
	mov r1, r6
	beq _0207262C
	bl FUN_0204fbe8
	mov r1, r0
	mov r0, r4
	bl FUN_0206c718
	b _02072638
_0207262C:
	bl FUN_0204fbe8
	mov r1, r11
	bl FUN_ov16_020efa9c
_02072638:
	movs r1, r0
	beq _02072658
	mov r0, r10
	mov r2, #0x25
	mov r3, #0
	bl FUN_0204f02c
	add r8, r8, r0
	add r7, r7, #1
_02072658:
	add r6, r6, #1
	cmp r6, #0x10
	blt _020725EC
	cmp r7, #0
	moveq r0, #0
	beq _02072680
	add r0, r7, r7, lsr #31
	mov r1, r7
	add r0, r8, r0, asr #1
	bl _s32_div_f
_02072680:
	ldr r1, [r10, #0x7cc]
	mov r0, r0, lsl #1
	ldrsh r3, [r1, r0]
	ldr r1, [sp]
	add r0, r10, #0xc6
	add r4, r0, #0x700
	mov r2, r1
	mov r0, r10
	strb r3, [r4, r2]
	bl FUN_0207249c
	ldr r1, [sp]
	ldrb r2, [r4, r1]
	ldrb r1, [r0, #0x43]
	cmp r1, r2
	strhib r2, [r0, #0x43]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020726C0: .word gLogicThink
_020726C4: .word unk_0209A0AC
	arm_func_end FUN_020725ac

	arm_func_start FUN_020726c8
FUN_020726c8: ; 0x020726C8
	strb r1, [r0, #0x882]
	bx lr
	arm_func_end FUN_020726c8

	arm_func_start FUN_020726d0
FUN_020726d0: ; 0x020726D0
	ldr r0, _020726DC ; =0x020A0B00
	ldr r12, _020726E0 ; =FUN_02074588
	bx r12
_020726DC: .word unk_020A0B00
_020726E0: .word FUN_02074588
	arm_func_end FUN_020726d0

	arm_func_start FUN_020726e4
FUN_020726e4: ; 0x020726E4
	ldr r12, _020726F4 ; =FUN_020726d0
	mov r2, r1
	mov r1, #1
	bx r12
_020726F4: .word FUN_020726d0
	arm_func_end FUN_020726e4

	arm_func_start FUN_020726f8
FUN_020726f8: ; 0x020726F8
	stmfd sp!, {r4, lr}
	ldr r1, _02072738 ; =0x020A0640
	ldrb r2, [r1, #0x505]
	add r1, r1, #0x500
	ldrsb r4, [r1, #6]
	cmp r2, #0
	bne _02072720
	mov r1, #0
	bl FUN_020724c8
	add r4, r4, r0
_02072720:
	cmp r4, #0
	movle r4, #1
	cmp r4, #0x63
	movgt r4, #0x63
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02072738: .word unk_020A0640
	arm_func_end FUN_020726f8

	arm_func_start FUN_0207273c
FUN_0207273c: ; 0x0207273C
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	ldr r3, _020727A0 ; =gAllocator
	str r2, [sp, #0x10]
	ldr r0, [r3]
	ldr lr, _020727A4 ; =0x02091684
	cmp r0, #0
	moveq r0, #0
	beq _0207278C
	mov r2, #0x30
	mul r12, r1, r2
	str r12, [sp]
	str r2, [sp, #4]
	mov r12, #0
	str r12, [sp, #8]
	mov r12, #1
	add r2, sp, #0x10
	mov r1, lr
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_0207278C:
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	add sp, sp, #0x14
	ldmia sp!, {pc}
_020727A0: .word gAllocator
_020727A4: .word unk_02091684
	arm_func_end FUN_0207273c

	arm_func_start FUN_020727a8
FUN_020727a8: ; 0x020727A8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x34
	add r4, sp, #4
	mov r2, r4
	mov r5, r0
	bl FUN_0207273c
	cmp r0, #0
	addeq sp, sp, #0x34
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, pc}
	mov r0, r4
	add r1, r5, #0x2bc
	mov r2, #0x30
	bl MI_CpuCopy8
	ldrb r1, [sp, #6]
	ldrsb r2, [sp, #7]
	mov r0, r5
	bl FUN_020726d0
	ldrh r1, [sp, #4]
	mov r0, r5
	bl FUN_0207287c
	ldrh r1, [sp, #8]
	mov r0, r5
	bl FUN_020728a8
	ldrb r1, [sp, #0xe]
	mov r0, r5
	bl FUN_020728d4
	ldrh r1, [sp, #0x10]
	mov r0, r5
	bl FUN_020729dc
	mov r3, #0
	mov r0, #0x4c
_02072828:
	add r1, r4, r3, lsl #1
	ldrh r2, [r1, #6]
	cmp r2, #0
	mlane r1, r3, r0, r5
	add r3, r3, #1
	strneh r2, [r1, #0x4c]
	cmp r3, #2
	blt _02072828
	ldr r3, [sp, #0x18]
	cmp r3, #0
	beq _0207286C
	ldr r0, _02072878 ; =0x020AF81C
	mov r12, #0
	mov r1, #1
	mov r2, #2
	str r12, [sp]
	bl FUN_02044690
_0207286C:
	mov r0, #1
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, pc}
_02072878: .word unk_020AF81C
	arm_func_end FUN_020727a8

	arm_func_start FUN_0207287c
FUN_0207287c: ; 0x0207287C
	mov r1, r1, lsl #0x10
	ldr r0, _02072890 ; =0x020A0B00
	ldr r12, _02072894 ; =FUN_020747a0
	mov r1, r1, lsr #0x10
	bx r12
_02072890: .word unk_020A0B00
_02072894: .word FUN_020747a0
	arm_func_end FUN_0207287c

	arm_func_start FUN_02072898
FUN_02072898: ; 0x02072898
	ldr r0, _020728A4 ; =0x020A0A40
	ldrh r0, [r0, #0xf0]
	bx lr
_020728A4: .word unk_020A0A40
	arm_func_end FUN_02072898

	arm_func_start FUN_020728a8
FUN_020728a8: ; 0x020728A8
	mov r1, r1, lsl #0x10
	ldr r0, _020728BC ; =0x020A0B00
	ldr r12, _020728C0 ; =FUN_020747a8
	mov r1, r1, lsr #0x10
	bx r12
_020728BC: .word unk_020A0B00
_020728C0: .word FUN_020747a8
	arm_func_end FUN_020728a8

	arm_func_start FUN_020728c4
FUN_020728c4: ; 0x020728C4
	ldr r0, _020728D0 ; =0x020A0A40
	ldrh r0, [r0, #0xee]
	bx lr
_020728D0: .word unk_020A0A40
	arm_func_end FUN_020728c4

	arm_func_start FUN_020728d4
FUN_020728d4: ; 0x020728D4
	ldr r0, _020728E0 ; =0x020A0B00
	ldr r12, _020728E4 ; =FUN_02074580
	bx r12
_020728E0: .word unk_020A0B00
_020728E4: .word FUN_02074580
	arm_func_end FUN_020728d4

	arm_func_start FUN_020728e8
FUN_020728e8: ; 0x020728E8
	ldr r0, _020728F4 ; =0x020A0640
	ldrb r0, [r0, #0x504]
	bx lr
_020728F4: .word unk_020A0640
	arm_func_end FUN_020728e8

	arm_func_start FUN_020728f8
FUN_020728f8: ; 0x020728F8
	ldrb r0, [r0, #0x2fc]
	bx lr
	arm_func_end FUN_020728f8

	arm_func_start FUN_02072900
FUN_02072900: ; 0x02072900
	ldrb r0, [r0, #0x2f0]
	and r0, r0, #1
	bx lr
	arm_func_end FUN_02072900

	arm_func_start FUN_0207290c
FUN_0207290c: ; 0x0207290C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x2bc
	add r2, sp, #0
	mov r5, r0
	mov r9, #0
	bl FUN_0207273c
	cmp r0, #0
	addeq sp, sp, #0x2bc
	moveq r0, r9
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldrb r1, [sp, #0xa]
	add r2, sp, #0x19c
	mov r0, r5
	bl FUN_0206f950
	cmp r0, #0
	addeq sp, sp, #0x2bc
	moveq r0, r9
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldrh r1, [sp]
	add r4, sp, #0x30
	mov r0, r5
	mov r2, r4
	bl FUN_0207039c
	cmp r0, #0
	addeq sp, sp, #0x2bc
	moveq r0, r9
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r6, r9
	ldr r8, _020729D4 ; =0x0209A11C
	ldr r7, _020729D8 ; =0x00000FFF
	mov r5, r6
_02072988:
	add r0, r4, r5, lsl #3
	ldrh r0, [r0, #0x4c]
	and r0, r0, r7
	mov r0, r0, lsl #0x10
	movs r1, r0, lsr #0x10
	beq _020729B4
	ldr r0, [r8]
	mov r2, r9
	bl FUN_0206c7dc
	cmp r0, #0
	addeq r6, r6, #1
_020729B4:
	add r5, r5, #1
	cmp r5, #0x20
	blt _02072988
	mov r0, #1
	cmp r6, #0
	moveq r0, #0
	add sp, sp, #0x2bc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020729D4: .word unk_0209A11C
_020729D8: .word 0x00000FFF
	arm_func_end FUN_0207290c

	arm_func_start FUN_020729dc
FUN_020729dc: ; 0x020729DC
	stmfd sp!, {r3, lr}
	mov r1, r1, lsl #0x10
	ldr r0, _020729F8 ; =0x020A0B00
	mov r1, r1, lsr #0x10
	bl FUN_020747b0
	mov r0, #0
	ldmfd sp!, {r3, pc}
_020729F8: .word unk_020A0B00
	arm_func_end FUN_020729dc

	arm_func_start FUN_020729fc
FUN_020729fc: ; 0x020729FC
	ldr r0, _02072A08 ; =0x020A0A40
	ldrh r0, [r0, #0xf2]
	bx lr
_02072A08: .word unk_020A0A40
	arm_func_end FUN_020729fc

	arm_func_start FUN_02072a0c
FUN_02072a0c: ; 0x02072A0C
	add r0, r0, #0x200
	ldrh r0, [r0, #0xcc]
	tst r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_02072a0c

	arm_func_start FUN_02072a24
FUN_02072a24: ; 0x02072A24
	add r0, r0, #0x200
	ldrh r0, [r0, #0xcc]
	cmp r1, #0xe
	addls pc, pc, r1, lsl #2
	b _02072ABC
_02072A38: ; jump table
	b _02072A74 ; case 0
	b _02072A74 ; case 1
	b _02072A74 ; case 2
	b _02072A84 ; case 3
	b _02072A84 ; case 4
	b _02072A84 ; case 5
	b _02072A94 ; case 6
	b _02072A94 ; case 7
	b _02072A94 ; case 8
	b _02072AA4 ; case 9
	b _02072AA4 ; case 10
	b _02072AA4 ; case 11
	b _02072AB4 ; case 12
	b _02072AB4 ; case 13
	b _02072AB4 ; case 14
_02072A74:
	tst r0, #2
	moveq r0, #1
	movne r0, #0
	bx lr
_02072A84:
	tst r0, #4
	moveq r0, #1
	movne r0, #0
	bx lr
_02072A94:
	tst r0, #8
	moveq r0, #1
	movne r0, #0
	bx lr
_02072AA4:
	tst r0, #0x10
	moveq r0, #1
	movne r0, #0
	bx lr
_02072AB4:
	mov r0, #0
	bx lr
_02072ABC:
	mov r0, #1
	bx lr
	arm_func_end FUN_02072a24

	arm_func_start FUN_02072ac4
FUN_02072ac4: ; 0x02072AC4
	add r0, r0, #0x200
	ldrh r0, [r0, #0xcc]
	tst r0, #0x20
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_02072ac4

	arm_func_start FUN_02072adc
FUN_02072adc: ; 0x02072ADC
	add r0, r0, #0x200
	ldrh r0, [r0, #0xcc]
	tst r0, #0x40
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_02072adc

	arm_func_start FUN_02072af4
FUN_02072af4: ; 0x02072AF4
	add r0, r0, #0x200
	ldrh r0, [r0, #0xcc]
	tst r0, #0x80
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_02072af4

	arm_func_start FUN_02072b0c
FUN_02072b0c: ; 0x02072B0C
	add r0, r0, #0x200
	ldrh r0, [r0, #0xda]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02072b0c

	arm_func_start FUN_02072b24
FUN_02072b24: ; 0x02072B24
	add r0, r0, #0x200
	ldrh r0, [r0, #0xda]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02072b24

	arm_func_start FUN_02072b3c
FUN_02072b3c: ; 0x02072B3C
	add r0, r0, #0x200
	ldrh r0, [r0, #0xda]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02072b3c

	arm_func_start FUN_02072b54
FUN_02072b54: ; 0x02072B54
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	movs r9, r1
	mov r10, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, r9, #0x2ec
	add r0, r10, #0x24
	add r1, r1, #0x3800
	mov r2, #0x4c
	bl MI_CpuCopy8
	add r0, r10, #0xc
	add r1, r9, #0x338
	mov r5, #0x20
	mov r2, r5
	add r0, r0, #0x400
	add r1, r1, #0x3800
	bl MI_CpuCopy8
	add r0, r10, #0x4c
	add r1, r9, #0x358
	mov r2, r5
	add r0, r0, #0x400
	add r1, r1, #0x3800
	bl MI_CpuCopy8
	add r0, r10, #0xcc
	add r1, r9, #0x378
	mov r4, #0x10
	add r0, r0, #0x400
	add r1, r1, #0x3800
	mov r2, r4
	bl MI_CpuCopy8
	add r0, r10, #0x6c
	add r1, r9, #0x388
	add r0, r0, #0x400
	add r1, r1, #0x3800
	mov r2, r5
	bl MI_CpuCopy8
	add r0, r10, #0x8c
	add r1, r9, #0x3a8
	add r0, r0, #0x400
	add r1, r1, #0x3800
	mov r2, r5
	bl MI_CpuCopy8
	add r0, r10, #0xac
	add r1, r9, #0x3c8
	mov r2, r5
	add r0, r0, #0x400
	add r1, r1, #0x3800
	bl MI_CpuCopy8
	add r0, r9, #0xbc
	mov r8, #0
	rsb r2, r4, #0x2a40
	add r0, r0, #0x1000
	mov r1, r8
	bl MI_CpuFill8
	ldr r1, _02072D1C ; =0x0209A11C
	ldr r0, _02072D20 ; =0x0209A0AC
	ldr r11, [r1]
	bl FUN_ov16_020efa04
	mov r0, r10
	bl FUN_020744b4
	add r0, r9, #0xbc
	mov r7, r8
	add r5, r0, #0x1000
	mov r4, #0x6c
	b _02072CC4
_02072C58:
	mov r0, r7
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _02072CC0
	bl FUN_0206d5f0
	cmp r0, #0
	bne _02072CC0
	mov r0, r6
	bl FUN_0206dcd4
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _02072CC0
	mov r0, r6
	bl FUN_0206dcd4
	ldrh r0, [r0, #4]
	cmp r0, #0x8000
	beq _02072CC0
	cmp r8, #0x64
	movge r0, #0
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r6
	bl FUN_0206dcd4
	mov r1, r0
	mla r0, r8, r4, r5
	bl FUN_0206ed40
	add r8, r8, #1
_02072CC0:
	add r7, r7, #1
_02072CC4:
	cmp r7, #0x64
	blt _02072C58
	add r0, r9, #0xa8
	add r0, r0, #0x1000
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	add r0, r9, #0xa8
	ldr r1, _02072D24 ; =0x020A1640
	add r2, r0, #0x1000
	ldrb r3, [r1, #0x179]
	ldrb r1, [r2, #0x11]
	mov r0, r10
	orr r1, r1, r3
	strb r1, [r2, #0x11]
	bl FUN_02074478
	mov r0, r11
	bl FUN_ov16_020efa04
	mov r0, r10
	bl FUN_02074040
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02072D1C: .word unk_0209A11C
_02072D20: .word unk_0209A0AC
_02072D24: .word unk_020A1640
	arm_func_end FUN_02072b54

	arm_func_start FUN_02072d28
FUN_02072d28: ; 0x02072D28
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movs r4, r1
	mov r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r1, r4, #0x394
	add r0, r5, #0x24
	add r1, r1, #0x400
	mov r2, #0x4c
	bl MI_CpuCopy8
	add r0, r5, #0x4c
	add r0, r0, #0x400
	add r1, r4, #0x7e0
	mov r2, #0x20
	bl MI_CpuCopy8
	mov r9, #0
	mov r8, r9
	add r6, r4, #0xd4
	mov r7, r9
	mov r5, #0x6c
_02072D78:
	mov r1, r8
	add r0, r4, #0x7e0
	bl FUN_0204fbe8
	mov r1, r7
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _02072DB8
	mla r10, r9, r5, r6
	bl FUN_0206dcd4
	mov r1, r0
	mov r0, r10
	bl FUN_0206ed40
	ldrb r1, [r10, #0x57]
	mov r0, r10
	add r9, r9, #1
	bl FUN_0206e84c
_02072DB8:
	add r8, r8, #1
	cmp r8, #0x10
	blt _02072D78
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_02072d28

	arm_func_start FUN_02072dcc
FUN_02072dcc: ; 0x02072DCC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x94
	movs r9, r1
	mov r10, r0
	addeq sp, sp, #0x94
	mov r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02073168 ; =0x0209A11C
	ldr r0, [r0]
	bl FUN_0206c62c
	add r0, r9, #0x2ec
	add r0, r0, #0x3800
	add r1, r10, #0x24
	mov r2, #0x4c
	bl MI_CpuCopy8
	ldrh r0, [r10, #0x6c]
	add r1, r10, #0xc
	mov r4, #0x20
	cmp r0, #0
	ldreqh r0, [r10, #0x46]
	mov r2, r4
	add r1, r1, #0x400
	streqh r0, [r10, #0x6c]
	add r0, r9, #0x338
	add r0, r0, #0x3800
	bl MI_CpuCopy8
	add r0, r9, #0x358
	add r1, r10, #0x4c
	mov r2, r4
	add r0, r0, #0x3800
	add r1, r1, #0x400
	bl MI_CpuCopy8
	add r0, r9, #0x378
	add r1, r10, #0xcc
	add r0, r0, #0x3800
	add r1, r1, #0x400
	mov r2, #0x10
	bl MI_CpuCopy8
	add r0, r9, #0x388
	add r1, r10, #0x6c
	add r0, r0, #0x3800
	add r1, r1, #0x400
	mov r2, r4
	bl MI_CpuCopy8
	add r0, r9, #0x3a8
	add r1, r10, #0x8c
	add r0, r0, #0x3800
	add r1, r1, #0x400
	mov r2, r4
	bl MI_CpuCopy8
	add r0, r9, #0x3c8
	add r1, r10, #0xac
	add r0, r0, #0x3800
	add r1, r1, #0x400
	mov r2, r4
	bl MI_CpuCopy8
	mov r6, #0
	mov r0, r10
	mov r1, r6
	bl FUN_020740a4
	add r8, sp, #0x4c
	mov r0, r8
	mov r7, r6
	bl FS_InitFile
	ldr r1, _0207316C ; =0x020916A0
	mov r0, r8
	bl FS_OpenFile
	cmp r0, #0
	beq _02072F64
	ldr r0, _02073170 ; =gAllocator
	add r1, r4, #0x2880
	bl _ZN9Allocator8allocateEm
	movs r7, r0
	beq _02072F50
	mov r11, #0x68
	mov r4, #0x6c
	mvn r5, #0
	b _02072F48
_02072F04:
	mla r0, r6, r4, r9
	add r0, r0, #0x1000
	ldrh r1, [r0, #0xc0]
	mov r0, r10
	bl FUN_0204bc4c
	cmp r0, r5
	beq _02072F44
	mov r1, #0x68 ; =sizeof(Unitbase_FileEntry)
	mul r1, r0, r1
	mov r0, r8
	mov r2, #0
	bl FS_SeekFile
	mla r1, r6, r11, r7
	mov r0, r8
	mov r2, #0x68 ; =sizeof(Unitbase_FileEntry)
	bl FS_ReadFile
_02072F44:
	add r6, r6, #1
_02072F48:
	cmp r6, #0x64
	blt _02072F04
_02072F50:
	add r4, sp, #0x4c
_02072F54:
	mov r0, r4
	bl FS_CloseFile
	cmp r0, #0
	beq _02072F54
_02072F64:
	mov r6, #0
	add r0, sp, #0x4c
	mov r8, r6
	mov r4, #0x48
	bl FS_InitFile
	ldr r1, _02073174 ; =0x020916BC
	add r0, sp, #0x4c
	bl FS_OpenFile
	cmp r0, #0
	beq _0207303C
	ldr r0, _02073170 ; =gAllocator
	ldr r1, _02073178 ; =0x00001C20
	bl _ZN9Allocator8allocateEm
	movs r8, r0
	beq _02073028
	mvn r11, #0
	b _02073020
_02072FA8:
	mov r0, #0x6c
	mla r0, r6, r0, r9
	add r0, r0, #0x1000
	ldrh r1, [r0, #0xc0]
	mov r0, r10
	bl FUN_0204bc4c
	mov r5, r0
	cmp r5, r11
	beq _0207301C
	mul r1, r5, r4
	add r0, sp, #0x4c
	mov r2, #0
	bl FS_SeekFile
	add r0, sp, #0x4c
	add r1, sp, #4
	mov r2, r4
	bl FS_ReadFile
	ldr r0, _0207317C ; =gLogicThink
	add r1, sp, #4
	mov r2, r4
	bl FUN_020748c8
	mla r1, r6, r4, r8
	mov r2, r4
	bl MI_CpuCopy8
	mov r0, r5, lsl #0x10
	mov r1, r0, lsr #0x10
	mla r2, r6, r4, r8
	ldr r0, _0207317C ; =gLogicThink
	bl FUN_02073f10
_0207301C:
	add r6, r6, #1
_02073020:
	cmp r6, #0x64
	blt _02072FA8
_02073028:
	add r4, sp, #0x4c
_0207302C:
	mov r0, r4
	bl FS_CloseFile
	cmp r0, #0
	beq _0207302C
_0207303C:
	ldr r0, _0207317C ; =gLogicThink
	mov r4, #0
	bl FUN_ov16_020eeca0
	add r0, r9, #0xbc
	mov r6, r4
	add r5, r0, #0x1000
	mov r11, #0x68
	b _02073084
_0207305C:
	mov r0, #0x48
	mla r2, r6, r0, r8
	mov r0, #0x6c
	mla r1, r6, r0, r5
	str r2, [sp]
	mla r3, r6, r11, r7
	mov r0, r10
	mov r2, r6
	bl FUN_02071c20
	add r6, r6, #1
_02073084:
	cmp r6, #0x64
	blt _0207305C
	ldr r0, _0207317C ; =gLogicThink
	bl FUN_ov16_020eedb8
	cmp r8, #0
	beq _020730A8
	ldr r0, _02073170 ; =gAllocator
	mov r1, r8
	bl _ZN9Allocator10deallocateEPv
_020730A8:
	cmp r7, #0
	beq _020730BC
	ldr r0, _02073170 ; =gAllocator
	mov r1, r7
	bl _ZN9Allocator10deallocateEPv
_020730BC:
	ldr r1, _02073180 ; =0x020A1640
	add r0, r9, #0x1000
	ldrb r3, [r0, #0xb9]
	ldrb r2, [r1, #0x179]
	mov r0, r10
	orr r2, r2, r3
	strb r2, [r1, #0x179]
	bl FUN_02074478
	mov r0, r10
	bl FUN_02074040
	mov r6, #0
	mov r0, r10
	mov r1, r6
	bl FUN_02074078
	b _02073124
_020730F8:
	mov r0, r6
	bl FUN_ov16_020efa80
	movs r5, r0
	beq _02073120
	mov r1, r4
	bl FUN_0206d9b0
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl FUN_0206d9cc
_02073120:
	add r6, r6, #1
_02073124:
	cmp r6, #0x64
	blt _020730F8
	mov r0, r10
	mov r1, r4
	bl FUN_0207249c
	ldrh r2, [r0, #0x2e]
	mov r0, r10
	mov r1, r4
	bl FUN_0204d864
	mov r0, r10
	bl FUN_0204ce50
	mov r0, r10
	mov r1, r4
	bl FUN_0204d0b4
	mov r0, #1
	add sp, sp, #0x94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02073168: .word unk_0209A11C
_0207316C: .word unk_020916A0
_02073170: .word gAllocator
_02073174: .word unk_020916BC
_02073178: .word 0x00001C20
_0207317C: .word gLogicThink
_02073180: .word unk_020A1640
	arm_func_end FUN_02072dcc

	arm_func_start FUN_02073184
FUN_02073184: ; 0x02073184
	add r0, r0, #0x2bc
	bx lr
	arm_func_end FUN_02073184

	arm_func_start FUN_0207318c
FUN_0207318c: ; 0x0207318C
	add r0, r0, #0x2ec
	bx lr
	arm_func_end FUN_0207318c

	arm_func_start FUN_02073194
FUN_02073194: ; 0x02073194
	ldr r12, _020731A0 ; =FUN_02073e14
	add r0, r0, #0x2ec
	bx r12
_020731A0: .word FUN_02073e14
	arm_func_end FUN_02073194

	arm_func_start FUN_020731a4
FUN_020731a4: ; 0x020731A4
	ldr r12, _020731B0 ; =FUN_02073e7c
	add r0, r0, #0x2ec
	bx r12
_020731B0: .word FUN_02073e7c
	arm_func_end FUN_020731a4

	arm_func_start FUN_020731b4
FUN_020731b4: ; 0x020731B4
	ldr r0, _020731CC ; =0x0209A454
	ldrb r0, [r0, #0x30]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_020731CC: .word unk_0209A454
	arm_func_end FUN_020731b4

	arm_func_start FUN_020731d0
FUN_020731d0: ; 0x020731D0
	ldr r0, _020731E8 ; =0x0209A454
	ldrb r0, [r0, #0x31]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_020731E8: .word unk_0209A454
	arm_func_end FUN_020731d0

	arm_func_start FUN_020731ec
FUN_020731ec: ; 0x020731EC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r2
	mov r8, r1
	cmp r7, #2
	mov r6, #0xb
	beq _02073218
	cmp r7, #0
	bne _0207321C
	bl FUN_020731b4
	cmp r0, #0
	beq _0207321C
_02073218:
	mov r6, #4
_0207321C:
	cmp r6, #1
	mov r5, #1
	blt _02073258
	mov r4, r5
_0207322C:
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r7
	bl FUN_ov16_020efb6c
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r5, r5, #1
	cmp r5, r6
	ble _0207322C
_02073258:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_020731ec

	arm_func_start FUN_02073260
FUN_02073260: ; 0x02073260
	stmfd sp!, {r3, lr}
	sub lr, r2, #1
	mov r12, #0xb
	mla r12, r1, r12, lr
	cmp r3, #0
	beq _0207329C
	cmp r2, #0xc
	blt _0207329C
	cmp r2, #0x10
	bgt _0207329C
	bl FUN_020731a4
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_0207329C:
	cmp r2, #0
	cmpne r2, #0xc
	movge r0, #0
	ldmgefd sp!, {r3, pc}
	cmp r12, #0x16
	movhs r0, #0
	ldmhsfd sp!, {r3, pc}
	add r0, r0, r12
	ldrb r0, [r0, #0x84a]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02073260

	arm_func_start FUN_020732d0
FUN_020732d0: ; 0x020732D0
	strb r1, [r0, #0x88a]
	bx lr
	arm_func_end FUN_020732d0

	arm_func_start FUN_020732d8
FUN_020732d8: ; 0x020732D8
	ldrb r0, [r0, #0x88a]
	bx lr
	arm_func_end FUN_020732d8

	arm_func_start FUN_020732e0
FUN_020732e0: ; 0x020732E0
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r2, r0
	ldr r0, [r2, #0x82c]
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #1
	ldmnefd sp!, {r3, pc}
	ldr r3, _02073350 ; =gAllocator
	ldr r1, _02073354 ; =0x020916D8
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _0207333C
	mov r12, #0
	str r12, [sp]
	str r12, [sp, #4]
	add r2, r2, #0x2c
	str r12, [sp, #8]
	mov r12, #1
	add r2, r2, #0x800
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_0207333C:
	cmp r0, #0x600
	movne r0, #0
	moveq r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_02073350: .word gAllocator
_02073354: .word unk_020916D8
	arm_func_end FUN_020732e0

	arm_func_start FUN_02073358
FUN_02073358: ; 0x02073358
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x82c]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _02073380 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	mov r0, #0
	str r0, [r4, #0x82c]
	ldmfd sp!, {r4, pc}
_02073380: .word gAllocator
	arm_func_end FUN_02073358

	arm_func_start FUN_02073384
FUN_02073384: ; 0x02073384
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r2, [r10, #0x82c]
	mov r1, #0
	str r1, [sp]
	cmp r2, #0
	bne _020733B4
	bl FUN_020732e0
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #1
	str r0, [sp]
_020733B4:
	bl FUN_ov16_020f081c
	mov r1, r0
	mov r0, r10
	bl FUN_020724c8
	mov r6, r0
	cmp r6, #0x63
	movgt r6, #0x63
	mov r9, #0
_020733D4:
	ldr r0, [r10, #0x82c]
	add r5, r0, r9, lsl #5
	b _020733F8
_020733E0:
	ldrb r0, [r5]
	cmp r6, r0
	movge r7, r0
	bge _02073400
	add r9, r9, #1
	add r5, r5, #0x20
_020733F8:
	cmp r9, #0x30
	blt _020733E0
_02073400:
	mov r4, r9
	b _0207341C
_02073408:
	ldrb r0, [r5]
	cmp r7, r0
	bne _02073424
	add r4, r4, #1
	add r5, r5, #0x20
_0207341C:
	cmp r4, #0x30
	blt _02073408
_02073424:
	ldr r0, [r10, #0x82c]
	mov r8, #0
	add r5, r0, r9, lsl #5
	sub r11, r8, #1
	b _02073474
_02073438:
	ldrb r1, [r5, #1]
	cmp r1, #0
	moveq r11, r9
	beq _0207347C
	mov r0, r10
	mov r2, #0
	bl FUN_0204f888
	cmp r8, r0
	bgt _0207346C
	ldr r1, [r5, #4]
	cmp r0, r1
	movge r8, r0
	movge r11, r9
_0207346C:
	add r9, r9, #1
	add r5, r5, #0x20
_02073474:
	cmp r9, r4
	blt _02073438
_0207347C:
	mvn r1, #0
	cmp r11, r1
	moveq r9, r4
	beq _020733D4
	cmp r11, #0x30
	bge _020734A4
	mov r1, r11, lsl #0x18
	ldr r0, _020734C4 ; =0x020A0B00
	mov r1, r1, asr #0x18
	b _020734A8
_020734A4:
	ldr r0, _020734C4 ; =0x020A0B00
_020734A8:
	bl FUN_0207478c
	ldr r0, [sp]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_02073358
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020734C4: .word unk_020A0B00
	arm_func_end FUN_02073384

	arm_func_start FUN_020734c8
FUN_020734c8: ; 0x020734C8
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	ldr r2, [sp, #0x20]
	mov r12, #0
	cmp r2, #0
	addeq sp, sp, #0x10
	moveq r0, r12
	ldmeqfd sp!, {r3, lr}
	addeq sp, sp, #0x10
	bxeq lr
	cmp r1, #0x30
	addhs sp, sp, #0x10
	movhs r0, #0
	ldmhsfd sp!, {r3, lr}
	addhs sp, sp, #0x10
	bxhs lr
	ldr r0, [r0, #0x82c]
	cmp r0, #0
	beq _0207353C
	add r0, r0, r1, lsl #5
	mov r1, r2
	mov r2, #0x20
	bl MI_CpuCopy8
	add sp, sp, #0x10
	mov r0, #1
	ldmfd sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
_0207353C:
	ldr r3, _02073598 ; =gAllocator
	ldr lr, _0207359C ; =0x020916F4
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, r12
	beq _0207357C
	mov r1, r1, lsl #5
	str r1, [sp]
	mov r1, #0x20
	str r1, [sp, #4]
	str r12, [sp, #8]
	mov r12, #1
	add r2, sp, #0x20
	mov r1, lr
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_0207357C:
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
_02073598: .word gAllocator
_0207359C: .word unk_020916F4
	arm_func_end FUN_020734c8

	arm_func_start FUN_020735a0
FUN_020735a0: ; 0x020735A0
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x30
	ldr r2, [sp, #0x48]
	mov r5, r3
	cmp r2, #0
	beq _020735C4
	cmp r5, #0x13
	bge _020735D8
_020735C4:
	add sp, sp, #0x30
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020735D8:
	cmp r1, #0x30
	mov r4, #0
	addhs sp, sp, #0x30
	strb r4, [r2]
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, lr}
	addhs sp, sp, #0x10
	bxhs lr
	add r2, sp, #0x10
	bl FUN_020734c8
	cmp r0, #0
	addeq sp, sp, #0x30
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r3, _0207366C ; =gAllocator
	ldrh r2, [sp, #0x2e]
	ldr r0, [r3]
	ldr r1, _02073670 ; =0x02091710
	cmp r0, #0
	mov r2, r2, lsl #5
	beq _02073650
	stmia sp, {r2, r5}
	add r2, sp, #0x48
	str r4, [sp, #8]
	mov r12, #1
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
	mov r4, r0
_02073650:
	mov r0, #0
	cmp r4, #0
	movne r0, #1
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_0207366C: .word gAllocator
_02073670: .word unk_02091710
	arm_func_end FUN_020735a0

	arm_func_start FUN_02073674
FUN_02073674: ; 0x02073674
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov lr, r0
	ldr r0, [lr, #0x830]
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #1
	ldmnefd sp!, {r3, pc}
	ldr r3, _020736E0 ; =gAllocator
	ldr r1, _020736E4 ; =0x0209172C
	ldr r0, [r3]
	cmp r0, #0
	moveq r0, #0
	beq _020736CC
	mov r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r12, #1
	add r2, lr, #0x830
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorimih
_020736CC:
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_020736E0: .word gAllocator
_020736E4: .word unk_0209172C
	arm_func_end FUN_02073674

	arm_func_start FUN_020736e8
FUN_020736e8: ; 0x020736E8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x830]
	cmp r1, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	ldr r0, _02073718 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	mov r0, #0
	str r0, [r4, #0x830]
	mov r0, #1
	ldmfd sp!, {r4, pc}
_02073718: .word gAllocator
	arm_func_end FUN_020736e8

	arm_func_start FUN_0207371c
FUN_0207371c: ; 0x0207371C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r2, [r10, #0x7ec]
	mov r7, #0
	mov r9, r1
	mov r11, r7
	cmp r2, #0
	ldr r5, _020737D4 ; =0x020A0DB0
	bne _02073754
	bl FUN_0204eba0
	cmp r0, #0
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r11, #1
_02073754:
	ldr r6, [r10, #0x7ec]
	mov r8, #0
	add r4, r10, #0x800
	b _020737B0
_02073764:
	cmp r9, #0
	bne _0207377C
	ldrb r0, [r6, #0x2a]
	cmp r0, #1
	bne _020737A8
	b _02073794
_0207377C:
	cmp r9, #1
	bne _02073794
	ldrb r0, [r6, #0x2a]
	cmp r0, #0
	cmpne r0, #1
	beq _020737A8
_02073794:
	mov r0, r5
	mov r1, r8
	bl FUN_020508fc
	cmp r0, #0
	addne r7, r7, #1
_020737A8:
	add r8, r8, #1
	add r6, r6, #0x2c
_020737B0:
	ldrh r0, [r4, #0x6a]
	cmp r8, r0
	blt _02073764
	cmp r11, #0
	beq _020737CC
	mov r0, r10
	bl FUN_0204ec3c
_020737CC:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020737D4: .word unk_020A0DB0
	arm_func_end FUN_0207371c

	arm_func_start FUN_020737d8
FUN_020737d8: ; 0x020737D8
	ldr r2, _020737EC ; =0x00000FFF
	add r0, r0, #0x800
	and r1, r1, r2
	strh r1, [r0, #0x76]
	bx lr
_020737EC: .word 0x00000FFF
	arm_func_end FUN_020737d8

	arm_func_start FUN_020737f0
FUN_020737f0: ; 0x020737F0
	add r0, r0, #0x700
	strh r1, [r0, #0xc4]
	bx lr
	arm_func_end FUN_020737f0

	arm_func_start FUN_020737fc
FUN_020737fc: ; 0x020737FC
	add r0, r0, #0x700
	ldrh r0, [r0, #0xc4]
	bx lr
	arm_func_end FUN_020737fc

	arm_func_start FUN_02073808
FUN_02073808: ; 0x02073808
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	movs r5, r1
	mov r4, r0
	mov r10, r2
	mov r9, r3
	mov r11, #0
	addeq sp, sp, #0x10
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r5, #7
	blo _020738A8
	cmp r5, #8
	bhi _020738A8
	cmp r9, #0
	mov r8, r11
	ble _020739D0
	ldr r0, _020739DC ; =0x0208C504
	sub r5, r5, #7
	ldr r7, [r0]
	ldr r6, [r0, #4]
	str r7, [sp]
	str r6, [sp, #4]
_02073864:
	ldr r1, [r10, r8, lsl #2]
	mov r0, r4
	mov r2, #0x25
	mov r3, r11
	bl FUN_0204f02c
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	add r1, sp, #8
	ldr r1, [r1, r5, lsl #2]
	cmp r1, r0
	addlt sp, sp, #0x10
	movlt r0, r11
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r8, r8, #1
	cmp r8, r9
	blt _02073864
	b _020739D0
_020738A8:
	cmp r5, #5
	blo _020738F0
	cmp r5, #6
	bhi _020738F0
	cmp r9, #0
	mov r1, #0
	ble _020739D0
	sub r2, r5, #4
_020738C8:
	ldr r0, [r10, r1, lsl #2]
	ldrb r0, [r0, #0x5a]
	cmp r2, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, r1, #1
	cmp r1, r9
	blt _020738C8
	b _020739D0
_020738F0:
	cmp r5, #1
	blo _02073934
	cmp r5, #4
	bhi _02073934
	cmp r9, #0
	mov r1, #0
	ble _020739D0
_0207390C:
	ldr r0, [r10, r1, lsl #2]
	ldrb r0, [r0, #0x62]
	cmp r5, r0
	addne sp, sp, #0x10
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, r1, #1
	cmp r1, r9
	blt _0207390C
	b _020739D0
_02073934:
	cmp r5, #9
	blo _020739D0
	cmp r5, #0xa
	bhi _020739D0
	cmp r9, #0
	mov r6, #0
	ble _020739D0
	ldr r4, _020739E0 ; =gLogicThink
_02073954:
	mov r7, r11
_02073958:
	ldr r0, [r10, r6, lsl #2]
	bl FUN_0206dcd4
	add r0, r0, r7, lsl #1
	ldrh r1, [r0, #0x38]
	cmp r1, #0
	beq _020739B8
	mov r0, r4
	bl FUN_0204a2c4
	cmp r0, #0
	beq _020739B8
	cmp r5, #9
	bne _020739A0
	ldrb r0, [r0]
	cmp r0, #7
	bne _020739B8
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020739A0:
	cmp r5, #0xa
	ldreqb r0, [r0]
	cmpeq r0, #8
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020739B8:
	add r7, r7, #1
	cmp r7, #6
	blt _02073958
	add r6, r6, #1
	cmp r6, r9
	blt _02073954
_020739D0:
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020739DC: .word unk_0208C504
_020739E0: .word gLogicThink
	arm_func_end FUN_02073808

	arm_func_start FUN_020739e4
FUN_020739e4: ; 0x020739E4
	add r0, r0, r1, lsl #1
	add r0, r0, #0x800
	strh r2, [r0, #0x78]
	bx lr
	arm_func_end FUN_020739e4

	arm_func_start FUN_020739f4
FUN_020739f4: ; 0x020739F4
	add r0, r0, r1, lsl #1
	add r0, r0, #0x800
	ldrh r0, [r0, #0x78]
	bx lr
	arm_func_end FUN_020739f4

	arm_func_start FUN_02073a04
FUN_02073a04: ; 0x02073A04
	add r0, r0, #0x800
	strh r1, [r0, #0x7c]
	bx lr
	arm_func_end FUN_02073a04

	arm_func_start FUN_02073a10
FUN_02073a10: ; 0x02073A10
	add r0, r0, #0x800
	ldrh r0, [r0, #0x7c]
	bx lr
	arm_func_end FUN_02073a10

	arm_func_start FUN_02073a1c
FUN_02073a1c: ; 0x02073A1C
	stmfd sp!, {r4, lr}
	movs r4, r1
	beq _02073A38
	mov r0, r4
	bl STD_GetStringLength
	cmp r0, #2
	bge _02073A40
_02073A38:
	mvn r0, #0
	ldmfd sp!, {r4, pc}
_02073A40:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r0, r0, r1, lsl #8
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	mvneq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, _02073CD0 ; =0x0000829F
	cmp r0, r1
	blo _02073A74
	add r1, r1, #0xa
	cmp r0, r1
	blo _02073A98
_02073A74:
	ldr r1, _02073CD4 ; =0x00008340
	cmp r0, r1
	blo _02073A8C
	add r1, r1, #0xa
	cmp r0, r1
	blo _02073A98
_02073A8C:
	ldr r2, _02073CD8 ; =0x00008394
	cmp r0, r2
	bne _02073AA0
_02073A98:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_02073AA0:
	sub r1, r2, #0xeb
	cmp r0, r1
	blo _02073AB8
	sub r1, r2, #0xe1
	cmp r0, r1
	blo _02073AE8
_02073AB8:
	ldr r1, _02073CDC ; =0x0000834A
	cmp r0, r1
	blo _02073AD0
	add r1, r1, #0xa
	cmp r0, r1
	blo _02073AE8
_02073AD0:
	add r1, r0, #0x6b
	add r1, r1, #0x7c00
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	cmp r1, #1
	bhi _02073AF0
_02073AE8:
	mov r0, #1
	ldmfd sp!, {r4, pc}
_02073AF0:
	ldr r1, _02073CE0 ; =0x000082B3
	cmp r0, r1
	blo _02073B08
	add r1, r1, #0xa
	cmp r0, r1
	blo _02073B20
_02073B08:
	ldr r1, _02073CE4 ; =0x00008354
	cmp r0, r1
	blo _02073B28
	add r1, r1, #0xa
	cmp r0, r1
	bhs _02073B28
_02073B20:
	mov r0, #2
	ldmfd sp!, {r4, pc}
_02073B28:
	ldr r1, _02073CE8 ; =0x000082BD
	cmp r0, r1
	blo _02073B40
	add r1, r1, #0xb
	cmp r0, r1
	blo _02073B58
_02073B40:
	ldr r1, _02073CEC ; =0x0000835E
	cmp r0, r1
	blo _02073B60
	add r1, r1, #0xb
	cmp r0, r1
	bhs _02073B60
_02073B58:
	mov r0, #3
	ldmfd sp!, {r4, pc}
_02073B60:
	ldr r1, _02073CF0 ; =0x000082C8
	cmp r0, r1
	blo _02073B78
	add r1, r1, #5
	cmp r0, r1
	blo _02073B90
_02073B78:
	ldr r1, _02073CF4 ; =0x00008369
	cmp r0, r1
	blo _02073B98
	add r1, r1, #5
	cmp r0, r1
	bhs _02073B98
_02073B90:
	mov r0, #4
	ldmfd sp!, {r4, pc}
_02073B98:
	ldr r1, _02073CF8 ; =0x000082CD
	cmp r0, r1
	blo _02073BB0
	add r1, r1, #0xf
	cmp r0, r1
	blo _02073BC8
_02073BB0:
	ldr r1, _02073CFC ; =0x0000836E
	cmp r0, r1
	blo _02073BD0
	add r1, r1, #0xf
	cmp r0, r1
	bhs _02073BD0
_02073BC8:
	mov r0, #5
	ldmfd sp!, {r4, pc}
_02073BD0:
	ldr r1, _02073D00 ; =0x000082DC
	cmp r0, r1
	blo _02073BE8
	add r1, r1, #5
	cmp r0, r1
	blo _02073C18
_02073BE8:
	ldr r1, _02073D04 ; =0x0000837D
	cmp r0, r1
	blo _02073C00
	add r1, r1, #2
	cmp r0, r1
	blo _02073C18
_02073C00:
	ldr r1, _02073D08 ; =0x00008380
	cmp r0, r1
	blo _02073C20
	add r1, r1, #3
	cmp r0, r1
	bhs _02073C20
_02073C18:
	mov r0, #6
	ldmfd sp!, {r4, pc}
_02073C20:
	ldr r1, _02073D0C ; =0x000082E1
	cmp r0, r1
	blo _02073C38
	add r1, r1, #6
	cmp r0, r1
	blo _02073C50
_02073C38:
	ldr r1, _02073D10 ; =0x00008383
	cmp r0, r1
	blo _02073C58
	add r1, r1, #6
	cmp r0, r1
	bhs _02073C58
_02073C50:
	mov r0, #7
	ldmfd sp!, {r4, pc}
_02073C58:
	ldr r1, _02073D14 ; =0x000082E7
	cmp r0, r1
	blo _02073C70
	add r1, r1, #5
	cmp r0, r1
	blo _02073C88
_02073C70:
	ldr r1, _02073D18 ; =0x00008389
	cmp r0, r1
	blo _02073C90
	add r1, r1, #5
	cmp r0, r1
	bhs _02073C90
_02073C88:
	mov r0, #8
	ldmfd sp!, {r4, pc}
_02073C90:
	ldr r1, _02073D1C ; =0x000082ED
	cmp r0, r1
	blo _02073CA8
	add r1, r1, #5
	cmp r0, r1
	blo _02073CC0
_02073CA8:
	ldr r1, _02073D20 ; =0x0000838E
	cmp r0, r1
	blo _02073CC8
	add r1, r1, #5
	cmp r0, r1
	bhi _02073CC8
_02073CC0:
	mov r0, #9
	ldmfd sp!, {r4, pc}
_02073CC8:
	mvn r0, #0
	ldmfd sp!, {r4, pc}
_02073CD0: .word 0x0000829F
_02073CD4: .word 0x00008340
_02073CD8: .word 0x00008394
_02073CDC: .word 0x0000834A
_02073CE0: .word 0x000082B3
_02073CE4: .word 0x00008354
_02073CE8: .word 0x000082BD
_02073CEC: .word 0x0000835E
_02073CF0: .word 0x000082C8
_02073CF4: .word 0x00008369
_02073CF8: .word 0x000082CD
_02073CFC: .word 0x0000836E
_02073D00: .word 0x000082DC
_02073D04: .word 0x0000837D
_02073D08: .word 0x00008380
_02073D0C: .word 0x000082E1
_02073D10: .word 0x00008383
_02073D14: .word 0x000082E7
_02073D18: .word 0x00008389
_02073D1C: .word 0x000082ED
_02073D20: .word 0x0000838E
	arm_func_end FUN_02073a1c

	arm_func_start FUN_02073d24
FUN_02073d24: ; 0x02073D24
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, #0
	mov r5, r1
	str r4, [r6, #0x10]
	strh r4, [r6, #0x1c]
	strh r4, [r6, #0x1e]
	strh r4, [r6, #0x20]
	strh r4, [r6, #0x22]
	strh r4, [r6, #0x24]
	strh r4, [r6, #0x26]
	strh r4, [r6, #0x28]
	strh r4, [r6, #0x2a]
	strb r4, [r6, #0x2c]
	strb r4, [r6, #0x2d]
	strb r4, [r6, #0x30]
	strh r4, [r6, #0x32]
	strb r4, [r6, #0x88]
	bl FUN_020404cc
	add r0, r6, #8
	bl FUN_020404cc
	sub r0, r4, #1
	strb r0, [r6, #0x2e]
	strb r5, [r6, #0x2f]
	strb r4, [r6, #0x8a]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02073d24

	arm_func_start FUN_02073d8c
FUN_02073d8c: ; 0x02073D8C
	ldrh r1, [r0, #6]
	orr r1, r1, #0x20
	strh r1, [r0, #6]
	bx lr
	arm_func_end FUN_02073d8c

	arm_func_start FUN_02073d9c
FUN_02073d9c: ; 0x02073D9C
	ldrh r0, [r0, #6]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02073d9c

	arm_func_start FUN_02073db0
FUN_02073db0: ; 0x02073DB0
	ldrh r0, [r0, #6]
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02073db0

	arm_func_start FUN_02073dc4
FUN_02073dc4: ; 0x02073DC4
	ldrh r0, [r0, #6]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02073dc4

	arm_func_start FUN_02073dd8
FUN_02073dd8: ; 0x02073DD8
	ldrh r0, [r0, #6]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02073dd8

	arm_func_start FUN_02073dec
FUN_02073dec: ; 0x02073DEC
	ldrh r0, [r0, #6]
	tst r0, #0x80
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_02073dec

	arm_func_start FUN_02073e00
FUN_02073e00: ; 0x02073E00
	ldrh r0, [r0, #6]
	tst r0, #0x100
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_02073e00

	arm_func_start FUN_02073e14
FUN_02073e14: ; 0x02073E14
	cmp r1, #0
	ldrh r0, [r0, #6]
	bne _02073E30
	tst r0, #0x400
	moveq r0, #1
	movne r0, #0
	bx lr
_02073E30:
	tst r0, #0x800
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_02073e14

	arm_func_start FUN_02073e40
FUN_02073e40: ; 0x02073E40
	ldrh r0, [r0, #6]
	tst r0, #0x200
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_02073e40

	arm_func_start FUN_02073e54
FUN_02073e54: ; 0x02073E54
	ldrh r0, [r0, #6]
	tst r0, #0x20
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02073e54

	arm_func_start FUN_02073e68
FUN_02073e68: ; 0x02073E68
	ldrh r0, [r0, #6]
	tst r0, #0x2000
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_02073e68

	arm_func_start FUN_02073e7c
FUN_02073e7c: ; 0x02073E7C
	ldrh r0, [r0, #6]
	tst r0, #0x4000
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02073e7c

	arm_func_start FUN_02073e90
FUN_02073e90: ; 0x02073E90
	ldrh r0, [r0, #6]
	tst r0, #0x1000
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_02073e90

	arm_func_start FUN_02073ea4
FUN_02073ea4: ; 0x02073EA4
	ldrb r0, [r0, r1, lsl #1]
	bx lr
	arm_func_end FUN_02073ea4

	arm_func_start FUN_02073eac
FUN_02073eac: ; 0x02073EAC
	add r0, r0, r1, lsl #1
	ldrsb r0, [r0, #1]
	bx lr
	arm_func_end FUN_02073eac

	arm_func_start FUN_02073eb8
FUN_02073eb8: ; 0x02073EB8
	ldrh r1, [r0, #6]
	orr r1, r1, #0xc
	strh r1, [r0, #6]
	bx lr
	arm_func_end FUN_02073eb8

	arm_func_start FUN_02073ec8
FUN_02073ec8: ; 0x02073EC8
	ldrh r2, [r0, #6]
	ldr r1, _02073EDC ; =0x0000FFF3
	and r1, r2, r1
	strh r1, [r0, #6]
	bx lr
_02073EDC: .word 0x0000FFF3
	arm_func_end FUN_02073ec8

	arm_func_start FUN_02073ee0
FUN_02073ee0: ; 0x02073EE0
	ldrh r1, [r0, #6]
	orr r1, r1, #0x10
	strh r1, [r0, #6]
	bx lr
	arm_func_end FUN_02073ee0

	arm_func_start FUN_02073ef0
FUN_02073ef0: ; 0x02073EF0
	ldrh r2, [r0, #6]
	ldr r1, _02073F04 ; =0x0000FFEF
	and r1, r2, r1
	strh r1, [r0, #6]
	bx lr
_02073F04: .word 0x0000FFEF
	arm_func_end FUN_02073ef0

	arm_func_start FUN_02073f08
FUN_02073f08: ; 0x02073F08
	ldrb r0, [r0, #0x88c]
	bx lr
	arm_func_end FUN_02073f08

	arm_func_start FUN_02073f10
FUN_02073f10: ; 0x02073F10
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x6c
	mov r0, r1
	mov r7, r2
	bl FUN_ov16_020efa80
	movs r5, r0
	cmpne r7, #0
	addeq sp, sp, #0x6c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	bl FUN_0206dcd4
	mov r6, r0
	add r4, sp, #0
	mov r1, r6
	mov r0, r4
	bl FUN_0206ed40
	mov r0, r5
	str r4, [r5, #0x68]
	bl FUN_0206dcd4
	ldrb r0, [r0, #0x5f]
	cmp r0, #0
	bne _02073FB4
	mov r0, r5
	bl FUN_0206dcd4
	mov r1, #1
	bl FUN_0206eabc
	mov r0, r5
	bl FUN_0206dcd4
	ldrb r1, [r7, #0x3e]
	bl FUN_0206eb24
	mov r0, r5
	bl FUN_0206dcd4
	ldrb r1, [r7, #0x40]
	bl FUN_0206eb8c
	mov r0, r5
	bl FUN_0206dcd4
	ldrb r1, [r7, #0x42]
	bl FUN_0206ebf4
	mov r0, r5
	bl FUN_0206dcd4
	ldrb r1, [r7, #0x44]
	bl FUN_0206ec5c
_02073FB4:
	mov r0, r5
	str r6, [r5, #0x68]
	bl FUN_0206dcd4
	add r1, sp, #0
	bl FUN_0206ed40
	add sp, sp, #0x6c
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_02073f10

	arm_func_start FUN_02073fd0
FUN_02073fd0: ; 0x02073FD0
	stmfd sp!, {r4, lr}
	mov r4, r1
	mov r1, r2
	mov r2, r3
	bl FUN_020747f8
	ldr r1, _02074014 ; =0x020A17A8
	ldr r1, [r1, r4, lsl #2]
	cmp r0, r1
	ldmeqfd sp!, {r4, pc}
	ldr r0, _02074018 ; =0x020A1640
	mov r1, #1
	mov r1, r1, lsl r4
	ldrb r2, [r0, #0x179]
	and r1, r1, #0xff
	orr r1, r2, r1
	strb r1, [r0, #0x179]
	ldmfd sp!, {r4, pc}
_02074014: .word unk_020A17A8
_02074018: .word unk_020A1640
	arm_func_end FUN_02073fd0

	arm_func_start FUN_0207401c
FUN_0207401c: ; 0x0207401C
	stmfd sp!, {r4, lr}
	mov r4, r1
	mov r1, r2
	mov r2, r3
	bl FUN_020747f8
	ldr r1, _0207403C ; =0x020A17A8
	str r0, [r1, r4, lsl #2]
	ldmfd sp!, {r4, pc}
_0207403C: .word unk_020A17A8
	arm_func_end FUN_0207401c

	arm_func_start FUN_02074040
FUN_02074040: ; 0x02074040
	bx lr
	arm_func_end FUN_02074040

	arm_func_start FUN_02074044
FUN_02074044: ; 0x02074044
	ldr r0, _02074058 ; =0x020A1640
	ldrb r2, [r0, #0x179]
	orr r1, r2, r1
	strb r1, [r0, #0x179]
	bx lr
_02074058: .word unk_020A1640
	arm_func_end FUN_02074044

	arm_func_start FUN_0207405c
FUN_0207405c: ; 0x0207405C
	ldr r0, _02074074 ; =0x020A1640
	ldrb r0, [r0, #0x179]
	tst r0, r1
	movne r0, #1
	moveq r0, #0
	bx lr
_02074074: .word unk_020A1640
	arm_func_end FUN_0207405c

	arm_func_start FUN_02074078
FUN_02074078: ; 0x02074078
	ldr r0, _02074084 ; =0x020A1640
	strb r1, [r0, #0x178]
	bx lr
_02074084: .word unk_020A1640
	arm_func_end FUN_02074078

	arm_func_start FUN_02074088
FUN_02074088: ; 0x02074088
	ldr r0, _020740A0 ; =0x020A1640
	ldrb r0, [r0, #0x178]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_020740A0: .word unk_020A1640
	arm_func_end FUN_02074088

	arm_func_start FUN_020740a4
FUN_020740a4: ; 0x020740A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r6, _02074200 ; =0x0209A11C
	mov r5, r0
	ldr r0, [r6]
	mov r4, r1
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	bl FUN_0206c2f8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r6]
	bl FUN_0206c884
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r4, #0
	ldr r0, [r6]
	beq _0207413C
	mov r1, r4
	bl FUN_0206c820
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r6]
	bl FUN_0206c818
	sub r2, r4, r0
	ldr r1, _02074204 ; =0x2F684BDB
	mov r0, r5
	umull r1, r7, r2, r1
	sub r1, r2, r7
	add r7, r7, r1, lsr #1
	mov r1, r4
	mov r2, #0x6c
	mov r7, r7, lsr #6
	bl FUN_020747f8
	mov r2, r0
	ldr r0, [r6]
	mov r1, r7
	bl FUN_0206c86c
	b _02074194
_0207413C:
	bl FUN_0206c818
	mov r8, r0
	ldr r0, [r6]
	mov r9, #0
	bl FUN_0206c2f8
	cmp r0, #0
	ble _02074194
	mov r7, #0x6c
	mov r4, r7
_02074160:
	mla r1, r9, r4, r8
	mov r0, r5
	mov r2, r7
	bl FUN_020747f8
	mov r2, r0
	ldr r0, [r6]
	mov r1, r9
	bl FUN_0206c86c
	ldr r0, [r6]
	add r9, r9, #1
	bl FUN_0206c2f8
	cmp r9, r0
	blt _02074160
_02074194:
	ldr r4, _02074200 ; =0x0209A11C
	ldr r0, [r4]
	bl FUN_0206c2f8
	mov r8, r0, lsl #2
	ldr r0, [r4]
	bl FUN_0206c884
	mov r7, r0
	ldr r0, [r4]
	bl FUN_0206c2f8
	add r1, r7, r0, lsl #2
	mov r6, #0x1a
	ldr r0, _02074208 ; =0x02091748
	mov r2, r6
	bl MI_CpuCopy8
	mov r0, r5
	mov r5, #0
	add r3, r8, #0x1a
	mov r1, r5
	mov r2, r7
	bl FUN_0207401c
	ldr r0, [r4]
	bl FUN_0206c2f8
	add r0, r7, r0, lsl #2
	mov r1, r5
	mov r2, r6
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02074200: .word unk_0209A11C
_02074204: .word 0x2F684BDB
_02074208: .word unk_02091748
	arm_func_end FUN_020740a4

	arm_func_start FUN_0207420c
FUN_0207420c: ; 0x0207420C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r5, _02074394 ; =0x0209A11C
	mov r10, r0
	ldr r0, [r5]
	mov r6, r1
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl FUN_0206c2f8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r5]
	bl FUN_0206c884
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r6, #0
	ldr r0, [r5]
	beq _020742B8
	mov r1, r6
	bl FUN_0206c820
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r5]
	bl FUN_0206c818
	sub r2, r6, r0
	ldr r1, _02074398 ; =0x2F684BDB
	mov r0, r10
	umull r1, r4, r2, r1
	sub r1, r2, r4
	add r4, r4, r1, lsr #1
	mov r1, r6
	mov r2, #0x6c
	mov r4, r4, lsr #6
	bl FUN_020747f8
	mov r6, r0
	ldr r0, [r5]
	mov r1, r4
	bl FUN_0206c878
	cmp r6, r0
	beq _02074328
	mov r0, r10
	mov r1, #1
	bl FUN_02074044
	b _02074328
_020742B8:
	bl FUN_0206c818
	mov r8, r0
	ldr r0, [r5]
	mov r9, #0
	bl FUN_0206c2f8
	cmp r0, #0
	ble _02074328
	mov r7, #0x6c
	mov r11, #1
	mov r4, r7
_020742E0:
	mla r1, r9, r4, r8
	mov r0, r10
	mov r2, r7
	bl FUN_020747f8
	mov r6, r0
	ldr r0, [r5]
	mov r1, r9
	bl FUN_0206c878
	cmp r6, r0
	beq _02074314
	mov r0, r10
	mov r1, r11
	bl FUN_02074044
_02074314:
	ldr r0, [r5]
	add r9, r9, #1
	bl FUN_0206c2f8
	cmp r9, r0
	blt _020742E0
_02074328:
	ldr r4, _02074394 ; =0x0209A11C
	ldr r0, [r4]
	bl FUN_0206c2f8
	mov r5, r0, lsl #2
	ldr r0, [r4]
	bl FUN_0206c884
	mov r7, r0
	ldr r0, [r4]
	bl FUN_0206c2f8
	add r1, r7, r0, lsl #2
	mov r6, #0x1a
	ldr r0, _0207439C ; =0x02091764
	mov r2, r6
	bl MI_CpuCopy8
	add r3, r5, #0x1a
	mov r5, #0
	mov r0, r10
	mov r1, r5
	mov r2, r7
	bl FUN_02073fd0
	ldr r0, [r4]
	bl FUN_0206c2f8
	add r0, r7, r0, lsl #2
	mov r1, r5
	mov r2, r6
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02074394: .word unk_0209A11C
_02074398: .word 0x2F684BDB
_0207439C: .word unk_02091764
	arm_func_end FUN_0207420c

	arm_func_start FUN_020743a0
FUN_020743a0: ; 0x020743A0
	stmfd sp!, {r3, lr}
	ldr r1, _020743C4 ; =0x020A0640
	add r2, sp, #0
	ldr r12, [r1, #0x4d4]
	mov r1, #1
	mov r3, #4
	str r12, [sp]
	bl FUN_0207401c
	ldmfd sp!, {r3, pc}
_020743C4: .word unk_020A0640
	arm_func_end FUN_020743a0

	arm_func_start FUN_020743c8
FUN_020743c8: ; 0x020743C8
	stmfd sp!, {r3, lr}
	ldr r1, _020743EC ; =0x020A0640
	add r2, sp, #0
	ldr r12, [r1, #0x4d4]
	mov r1, #1
	mov r3, #4
	str r12, [sp]
	bl FUN_02073fd0
	ldmfd sp!, {r3, pc}
_020743EC: .word unk_020A0640
	arm_func_end FUN_020743c8

	arm_func_start FUN_020743f0
FUN_020743f0: ; 0x020743F0
	stmfd sp!, {r3, lr}
	ldr r1, _02074414 ; =0x020A0640
	add r2, sp, #0
	ldr r12, [r1, #0x4d8]
	mov r1, #2
	mov r3, #4
	str r12, [sp]
	bl FUN_0207401c
	ldmfd sp!, {r3, pc}
_02074414: .word unk_020A0640
	arm_func_end FUN_020743f0

	arm_func_start FUN_02074418
FUN_02074418: ; 0x02074418
	stmfd sp!, {r3, lr}
	ldr r1, _0207443C ; =0x020A0640
	add r2, sp, #0
	ldr r12, [r1, #0x4d8]
	mov r1, #2
	mov r3, #4
	str r12, [sp]
	bl FUN_02073fd0
	ldmfd sp!, {r3, pc}
_0207443C: .word unk_020A0640
	arm_func_end FUN_02074418

	arm_func_start FUN_02074440
FUN_02074440: ; 0x02074440
	ldr r2, _02074454 ; =0x020A0700
	ldr r12, _02074458 ; =FUN_0207401c
	mov r1, #3
	mov r3, #0x400
	bx r12
_02074454: .word unk_020A0700
_02074458: .word FUN_0207401c
	arm_func_end FUN_02074440

	arm_func_start FUN_0207445c
FUN_0207445c: ; 0x0207445C
	ldr r2, _02074470 ; =0x020A0700
	ldr r12, _02074474 ; =FUN_02073fd0
	mov r1, #3
	mov r3, #0x400
	bx r12
_02074470: .word unk_020A0700
_02074474: .word FUN_02073fd0
	arm_func_end FUN_0207445c

	arm_func_start FUN_02074478
FUN_02074478: ; 0x02074478
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	mov r1, r4
	bl FUN_02074078
	mov r0, r5
	mov r1, r4
	bl FUN_020740a4
	mov r0, r5
	bl FUN_020743a0
	mov r0, r5
	bl FUN_020743f0
	mov r0, r5
	bl FUN_02074440
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02074478

	arm_func_start FUN_020744b4
FUN_020744b4: ; 0x020744B4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	mov r1, r4
	bl FUN_02074078
	mov r0, r5
	mov r1, r4
	bl FUN_0207420c
	mov r0, r5
	bl FUN_020743c8
	mov r0, r5
	bl FUN_02074418
	mov r0, r5
	bl FUN_0207445c
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_020744b4

	arm_func_start FUN_020744f0 ; https://decomp.me/scratch/ng4yN
FUN_020744f0: ; 0x020744F0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _02074530 ; =gLogicThink
	mov r4, r1
	bl FUN_02074418
	cmp r4, #0
	movlt r4, #0
	blt _0207451C
	ldr r0, _02074534 ; =0x000F423F
	cmp r4, r0
	movgt r4, r0
_0207451C:
	ldr r0, _02074530 ; =gLogicThink
	str r4, [r5, #0x18]
	bl FUN_020743f0
	ldr r0, [r5, #0x18]
	ldmfd sp!, {r3, r4, r5, pc}
_02074530: .word gLogicThink
_02074534: .word 0x000F423F
	arm_func_end FUN_020744f0

	arm_func_start FUN_02074538 ; same as above but with st_save_user::money_
FUN_02074538: ; 0x02074538
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _02074578 ; =gLogicThink
	mov r4, r1
	bl FUN_020743c8
	ldr r0, _0207457C ; =0x000F423F
	cmp r4, r0
	movgt r4, r0
	bgt _02074564
	cmp r4, #0
	movlt r4, #0
_02074564:
	ldr r0, _02074578 ; =gLogicThink
	str r4, [r5, #0x14]
	bl FUN_020743a0
	ldr r0, [r5, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02074578: .word gLogicThink
_0207457C: .word 0x000F423F
	arm_func_end FUN_02074538

	arm_func_start FUN_02074580 ; nextRuleIdx
FUN_02074580: ; 0x02074580
	strb r1, [r0, #0x44]
	bx lr
	arm_func_end FUN_02074580

	arm_func_start FUN_02074588
FUN_02074588: ; 0x02074588
	strb r1, [r0, #0x45] ; nextEnemyLVType
	strb r2, [r0, #0x46] ; nextEnemyLV
	bx lr
	arm_func_end FUN_02074588

	arm_func_start FUN_02074594 ; https://decomp.me/scratch/jvNFq
FUN_02074594: ; 0x02074594
	stmfd sp!, {r3, lr}
	mov r3, #0
	mov lr, r3, lsl r1
	rsb r3, r1, #0x20
	mov r12, #1
	orr lr, lr, r12, lsr r3
	sub r3, r1, #0x20
	cmp r2, #0
	orr lr, lr, r12, lsl r3
	ldmeqfd sp!, {r3, pc}
	ldr r2, [r0, #0x34]
	ldr r3, [r0, #0x38]
	orr r2, r2, r12, lsl r1
	orr r3, r3, lr
	str r2, [r0, #0x34]
	str r3, [r0, #0x38]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02074594

	arm_func_start FUN_020745d8 ; binder_open_ScoolFlg
FUN_020745d8: ; 0x020745D8
	stmfd sp!, {r3, lr}
	mov r3, #0
	mov lr, r3, lsl r1
	rsb r3, r1, #0x20
	mov r12, #1
	orr lr, lr, r12, lsr r3
	sub r3, r1, #0x20
	cmp r2, #0
	orr lr, lr, r12, lsl r3
	ldmeqfd sp!, {r3, pc}
	ldr r2, [r0, #0x3c]
	ldr r3, [r0, #0x40]
	orr r2, r2, r12, lsl r1
	orr r3, r3, lr
	str r2, [r0, #0x3c]
	str r3, [r0, #0x40]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020745d8

	arm_func_start FUN_0207461c ; https://decomp.me/scratch/cRL8z
FUN_0207461c: ; 0x0207461C
	cmp r1, #0
	bxlt lr
	cmp r1, #0x100
	bxhs lr
	cmp r2, #0
	and r12, r1, #7
	beq _02074658
	add r3, r0, #0x4c
	mov r0, #1
	mov r0, r0, lsl r12
	ldrb r2, [r3, r1, asr #3]
	and r0, r0, #0xff
	orr r0, r2, r0
	strb r0, [r3, r1, asr #3]
	bx lr
_02074658:
	mov r2, #1
	add r3, r0, #0x4c
	mov r0, r2, lsl r12
	eor r0, r0, #0xff
	ldrb r2, [r3, r1, asr #3]
	and r0, r0, #0xff
	and r0, r2, r0
	strb r0, [r3, r1, asr #3]
	bx lr
	arm_func_end FUN_0207461c

	arm_func_start FUN_0207467c ; usableFieldFlgWC_
FUN_0207467c: ; 0x0207467C
	cmp r1, #0
	bxlt lr
	cmp r1, #0x100
	bxhs lr
	cmp r2, #0
	and r12, r1, #7
	beq _020746B8
	add r3, r0, #0x6c
	mov r0, #1
	mov r0, r0, lsl r12
	ldrb r2, [r3, r1, asr #3]
	and r0, r0, #0xff
	orr r0, r2, r0
	strb r0, [r3, r1, asr #3]
	bx lr
_020746B8:
	mov r2, #1
	add r3, r0, #0x6c
	mov r0, r2, lsl r12
	eor r0, r0, #0xff
	ldrb r2, [r3, r1, asr #3]
	and r0, r0, #0xff
	and r0, r2, r0
	strb r0, [r3, r1, asr #3]
	bx lr
	arm_func_end FUN_0207467c

	arm_func_start FUN_020746dc ; miniGameTotal
FUN_020746dc: ; 0x020746DC
	ldr r2, [r0, #0x90]
	ldr r1, _020746F4 ; =0x0000270F
	cmp r2, r1
	addlt r1, r2, #1
	strlt r1, [r0, #0x90]
	bx lr
_020746F4: .word 0x0000270F
	arm_func_end FUN_020746dc

	arm_func_start FUN_020746f8 ; miniGameWin
FUN_020746f8: ; 0x020746F8
	ldr r1, [r0, #0x94]
	cmn r1, #0x80000001
	addlt r1, r1, #1
	strlt r1, [r0, #0x94]
	bx lr
	arm_func_end FUN_020746f8

	arm_func_start FUN_0207470c ; miniGameLose
FUN_0207470c: ; 0x0207470C
	ldr r1, [r0, #0x98]
	cmn r1, #0x80000001
	addlt r1, r1, #1
	strlt r1, [r0, #0x98]
	bx lr
	arm_func_end FUN_0207470c

	arm_func_start FUN_02074720 ; miniGameRunAway
FUN_02074720: ; 0x02074720
	ldr r1, [r0, #0x9c]
	cmn r1, #0x80000001
	addlt r1, r1, #1
	strlt r1, [r0, #0x9c]
	bx lr
	arm_func_end FUN_02074720

	arm_func_start FUN_02074734 ; niceIconCount
FUN_02074734: ; 0x02074734
	ldr r1, [r0, #0xa0]
	cmn r1, #0x80000001
	addlt r1, r1, #1
	strlt r1, [r0, #0xa0]
	bx lr
	arm_func_end FUN_02074734

	arm_func_start FUN_02074748 ; minnaSortType
FUN_02074748: ; 0x02074748
	strb r1, [r0, #0xa5]
	bx lr
	arm_func_end FUN_02074748

	arm_func_start FUN_02074750 ; partyMemberMax
FUN_02074750: ; 0x02074750
	strb r1, [r0, #0xa6]
	bx lr
	arm_func_end FUN_02074750

	arm_func_start FUN_02074758 ; routeBattleCount
FUN_02074758: ; 0x02074758
	add r0, r0, #0x100
	strh r1, [r0, #0x34]
	bx lr
	arm_func_end FUN_02074758

	arm_func_start FUN_02074764 ; playTime
FUN_02074764: ; 0x02074764
	ldr r2, _02074778 ; =0x0CDFE5FF
	cmp r1, r2
	movhi r1, r2
	str r1, [r0, #0x1c]
	bx lr
_02074778: .word 0x0CDFE5FF
	arm_func_end FUN_02074764

	arm_func_start FUN_0207477c ; saveSlotIdx
FUN_0207477c: ; 0x0207477C
	strb r1, [r0, #0x48]
	bx lr
	arm_func_end FUN_0207477c

	arm_func_start FUN_02074784 ; rightHand
FUN_02074784: ; 0x02074784
	strb r1, [r0, #0x47]
	bx lr
	arm_func_end FUN_02074784

	arm_func_start FUN_0207478c ; rpgTitleIdx
FUN_0207478c: ; 0x0207478C
	strb r1, [r0, #0x2c]
	bx lr
	arm_func_end FUN_0207478c

	arm_func_start FUN_02074794 ; userID
FUN_02074794: ; 0x02074794
	add r0, r0, r1, lsl #2
	str r2, [r0, #0xac]
	bx lr
	arm_func_end FUN_02074794

	arm_func_start FUN_020747a0 ; nextEnemyTeamNo
FUN_020747a0: ; 0x020747A0
	strh r1, [r0, #0x30]
	bx lr
	arm_func_end FUN_020747a0

	arm_func_start FUN_020747a8 ; nextFieldNo
FUN_020747a8: ; 0x020747A8
	strh r1, [r0, #0x2e]
	bx lr
	arm_func_end FUN_020747a8

	arm_func_start FUN_020747b0 ; itemLevel
FUN_020747b0: ; 0x020747B0
	strh r1, [r0, #0x32]
	bx lr
	arm_func_end FUN_020747b0

	arm_func_start FUN_020747b8 ; searchLV
FUN_020747b8: ; 0x020747B8
	strb r1, [r0, #0x2d]
	bx lr
	arm_func_end FUN_020747b8

	arm_func_start FUN_020747c0 ; chapterNo
FUN_020747c0: ; 0x020747C0
	strb r1, [r0, #0x4a]
	bx lr
	arm_func_end FUN_020747c0

	arm_func_start FUN_020747c8 ; wcPlayGames
FUN_020747c8: ; 0x020747C8
	str r1, [r0, #0x20]
	bx lr
	arm_func_end FUN_020747c8

	arm_func_start FUN_020747d0 ; wcWinGames
FUN_020747d0: ; 0x020747D0
	str r1, [r0, #0x24]
	bx lr
	arm_func_end FUN_020747d0

	arm_func_start FUN_020747d8 ; wcPkWinGames
FUN_020747d8: ; 0x020747D8
	str r1, [r0, #0x28]
	bx lr
	arm_func_end FUN_020747d8

	arm_func_start FUN_020747e0
FUN_020747e0: ; 0x020747E0
	ldr r12, _020747E8 ; =STD_CopyString
	bx r12
_020747E8: .word STD_CopyString
	arm_func_end FUN_020747e0

	arm_func_start FUN_020747ec ; aggressiveLevel
FUN_020747ec: ; 0x020747EC
	add r0, r0, r1
	strb r2, [r0, #0x8c]
	bx lr
	arm_func_end FUN_020747ec

	arm_func_start FUN_020747f8
FUN_020747f8: ; 0x020747F8
	stmfd sp!, {r4, lr}
	subs r12, r2, #1
	mvn r4, #0
	bmi _02074844
	cmp r12, #0
	blt _02074844
	ldr r0, _02074850 ; =0xEDB88320
	mov r2, #7
_02074818:
	ldrb r3, [r1]
	mov lr, r2
	eor r4, r4, r3
_02074824:
	tst r4, #1
	eorne r4, r0, r4, lsr #1
	moveq r4, r4, lsr #1
	subs lr, lr, #1
	bpl _02074824
	subs r12, r12, #1
	add r1, r1, #1
	bpl _02074818
_02074844:
	mvn r0, #0
	eor r0, r4, r0
	ldmfd sp!, {r4, pc}
_02074850: .word 0xEDB88320
	arm_func_end FUN_020747f8

	arm_func_start FUN_02074854
FUN_02074854: ; 0x02074854
	stmfd sp!, {r4, lr}
	subs lr, r2, #1
	ldr r12, _020748C0 ; =0x0000FFFF
	bmi _020748AC
	cmp lr, #0
	blt _020748AC
	ldr r2, _020748C4 ; =0x0000FDAA
	mov r3, #7
_02074874:
	ldrb r0, [r1]
	mov r4, r3
	mov r0, r0, lsl #0x10
	eor r12, r12, r0, lsr #16
_02074884:
	tst r12, #1
	eorne r0, r2, r12, asr #1
	moveq r0, r12, asr #1
	mov r0, r0, lsl #0x10
	mov r12, r0, lsr #0x10
	subs r4, r4, #1
	bpl _02074884
	subs lr, lr, #1
	add r1, r1, #1
	bpl _02074874
_020748AC:
	ldr r0, _020748C0 ; =0x0000FFFF
	eor r0, r12, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r4, pc}
_020748C0: .word 0x0000FFFF
_020748C4: .word 0x0000FDAA
	arm_func_end FUN_02074854

	arm_func_start FUN_020748c8
FUN_020748c8: ; 0x020748C8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _02074A24 ; =0x020B9DD4
	mov r6, #0
	ldr r3, _02074A28 ; =0x020B9DD8
	ldr r0, [r0]
	mov r5, r2
	add r4, r3, r0, lsl #7
	mov r0, r1
	mov r1, r4
	mov r7, r6
	bl MI_CpuCopy8
	cmp r5, #0
	mov r1, r6
	bls _02074918
_02074900:
	ldrb r0, [r4, r1]
	eor r0, r0, #0xad
	strb r0, [r4, r1]
	add r1, r1, #1
	cmp r1, r5
	blo _02074900
_02074918:
	cmp r5, #0
	mov r1, #0
	bls _02074954
_02074924:
	ldrb r2, [r4, r1]
	mov r3, r7
_0207492C:
	mov r0, r2, lsl #7
	orr r0, r0, r2, asr #1
	add r3, r3, #1
	cmp r3, #2
	and r2, r0, #0xff
	blt _0207492C
	strb r2, [r4, r1]
	add r1, r1, #1
	cmp r1, r5
	blo _02074924
_02074954:
	subs r3, r5, #2
	mov r7, #0
	beq _02074980
_02074960:
	add r2, r4, r7
	ldrb r1, [r4, r7]
	ldrb r0, [r2, #2]
	strb r0, [r4, r7]
	add r7, r7, #3
	strb r1, [r2, #2]
	cmp r7, r3
	blo _02074960
_02074980:
	subs r3, r5, #4
	mov r7, #0
	beq _020749AC
_0207498C:
	add r2, r4, r7
	ldrb r1, [r4, r7]
	ldrb r0, [r2, #4]
	strb r0, [r4, r7]
	add r7, r7, #5
	strb r1, [r2, #4]
	cmp r7, r3
	blo _0207498C
_020749AC:
	subs r3, r5, #6
	mov r7, #0
	beq _020749D8
_020749B8:
	add r2, r4, r7
	ldrb r1, [r4, r7]
	ldrb r0, [r2, #6]
	strb r0, [r4, r7]
	add r7, r7, #7
	strb r1, [r2, #6]
	cmp r7, r3
	blo _020749B8
_020749D8:
	subs r3, r5, #1
	mov r5, #0
	beq _02074A04
_020749E4:
	add r2, r4, r5
	ldrb r1, [r4, r5]
	ldrb r0, [r2, #1]
	strb r0, [r4, r5]
	add r5, r5, #2
	strb r1, [r2, #1]
	cmp r5, r3
	blo _020749E4
_02074A04:
	ldr r0, _02074A24 ; =0x020B9DD4
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	cmp r1, #4
	streq r6, [r0]
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02074A24: .word unk_020B9DD4
_02074A28: .word unk_020B9DD8
	arm_func_end FUN_020748c8

	arm_func_start FUN_02074a2c
FUN_02074a2c: ; 0x02074A2C
	cmp r1, #0x1e0
	bxgt lr
	cmp r1, #0
	bxlt lr
	mov r2, r1, lsr #0x1f
	rsb r0, r2, r1, lsl #29
	ldr r3, _02074A68 ; =0x020A1612
	add r2, r2, r0, ror #29
	mov r0, #1
	mov r0, r0, lsl r2
	ldrb r2, [r3, r1, asr #3]
	and r0, r0, #0xff
	orr r0, r2, r0
	strb r0, [r3, r1, asr #3]
	bx lr
_02074A68: .word unk_020A1612
	arm_func_end FUN_02074a2c

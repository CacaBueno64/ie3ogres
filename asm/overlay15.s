
	.include "/macros/function.inc"
	.include "/include/overlay15.inc"

	.text
	arm_func_start FUN_ov15_020df358 ; https://decomp.me/scratch/PnrEx
FUN_ov15_020df358: ; 0x020DF358
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r6, _020DF3E4 ; =gAllocator
	mov r8, r0
	mov r7, #0
	mov r0, r6
	mov r1, #0x720
	str r7, [r8, #0xb4]
	str r7, [r8, #0xb8]
	str r7, [r8, #0xc0]
	bl _ZN9Allocator8allocateEm
	mov r5, r0
	ldr r1, _020DF3E8 ; =0x4245384A
	ldr r2, _020DF3EC ; =FUN_ov15_020e0620
	ldr r3, _020DF3F0 ; =FUN_ov15_020e0688
	mov r0, r7
	bl DWC_InitForProduction
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl _ZN9Allocator10deallocateEPv
	str r7, [r8, #0xb8]
	str r7, [r8, #0xc0]
	str r7, [r8, #0xa8]
	str r7, [r8, #0xbc]
	str r7, [r8, #0xac]
	str r7, [r8, #0xb0]
	mov r0, #1
	str r0, [r8, #0xb4]
	ldr r0, _020DF3F4 ; =0x020ED84C
	mov r1, r7
	mov r2, #0x200
	bl MI_CpuFill8
	str r7, [r8, #0xc0]
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DF3E4: .word gAllocator
_020DF3E8: .word 0x4245384A
_020DF3EC: .word FUN_ov15_020e0620
_020DF3F0: .word FUN_ov15_020e0688
_020DF3F4: .word ov15_020ED84C
	arm_func_end FUN_ov15_020df358

	arm_func_start FUN_ov15_020df3f8 ; https://decomp.me/scratch/u5YLi
FUN_ov15_020df3f8: ; 0x020DF3F8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc4]
	cmp r1, #0
	beq _020DF410
	bl FUN_ov15_020df564
_020DF410:
	ldr r1, [r4, #0xc0]
	ldr r0, [r4, #0xb4]
	add r1, r1, #1
	str r1, [r4, #0xc0]
	cmp r0, #0xa
	addls pc, pc, r0, lsl #2
	b _020DF4B4
_020DF42C: ; jump table
	b _020DF4B4 ; case 0
	b _020DF458 ; case 1
	b _020DF464 ; case 2
	b _020DF478 ; case 3
	b _020DF484 ; case 4
	b _020DF490 ; case 5
	b _020DF4B4 ; case 6
	b _020DF4B4 ; case 7
	b _020DF49C ; case 8
	b _020DF4A8 ; case 9
	b _020DF4AC ; case 10
_020DF458:
	mov r0, #0
_020DF45C:
	str r0, [r4, #0xc0]
	b _020DF4B4
_020DF464:
	mov r0, #0
	mov r1, #3
	str r1, [r4, #0xb4]
	str r0, [r4, #0xb8]
	b _020DF45C
_020DF478:
	mov r0, r4
	bl FUN_ov15_020df664
	b _020DF4B4
_020DF484:
	mov r0, r4
	bl FUN_ov15_020df774
	b _020DF4B4
_020DF490:
	mov r0, r4
	bl FUN_ov15_020df8d0
	b _020DF4B4
_020DF49C:
	mov r0, r4
	bl FUN_ov15_020dfd00
	b _020DF4B4
_020DF4A8:
	b _020DF49C
_020DF4AC:
	mov r0, r4
	bl FUN_ov15_020dfd04
_020DF4B4:
	mov r0, r4
	bl FUN_ov15_020dfe14
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020df3f8

	arm_func_start FUN_ov15_020df4c0 ; https://decomp.me/scratch/4cy36
FUN_ov15_020df4c0: ; 0x020DF4C0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, [r0, #0xb4]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r7, #0
	ldr r5, _020DF520 ; =gAllocator
	ldr r6, _020DF524 ; =0x020ED84C
	mov r4, r7
_020DF4E0:
	ldr r0, [r6, r7, lsl #3]
	cmp r0, #0
	beq _020DF510
	add r0, r6, r7, lsl #3
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020DF504
	mov r0, r5
	bl _ZN9Allocator10deallocateEPv
_020DF504:
	str r4, [r6, r7, lsl #3]
	add r0, r6, r7, lsl #3
	str r4, [r0, #4]
_020DF510:
	add r7, r7, #1
	cmp r7, #0x40
	blt _020DF4E0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DF520: .word gAllocator
_020DF524: .word ov15_020ED84C
	arm_func_end FUN_ov15_020df4c0

	arm_func_start FUN_ov15_020df528
FUN_ov15_020df528: ; 0x020DF528
	ldr r1, [r0, #0xb4]
	cmp r1, #1
	moveq r1, #0
	moveq r2, #2
	streq r2, [r0, #0xb4]
	streq r1, [r0, #0xb8]
	streq r1, [r0, #0xc0]
	bx lr
	arm_func_end FUN_ov15_020df528

	arm_func_start FUN_ov15_020df548
FUN_ov15_020df548: ; 0x020DF548
	cmp r1, #0
	ldrne r3, [r0, #0xb4]
	strne r3, [r1]
	cmp r2, #0
	ldrne r0, [r0, #0xb8]
	strne r0, [r2]
	bx lr
	arm_func_end FUN_ov15_020df548

	arm_func_start FUN_ov15_020df564 ; https://decomp.me/scratch/5N2Gu
FUN_ov15_020df564: ; 0x020DF564
	ldr r1, [r0, #0xb4]
	mov r3, #0
	str r3, [r0, #0xc4]
	cmp r1, #3
	beq _020DF58C
	cmp r1, #4
	beq _020DF5AC
	cmp r1, #5
	beq _020DF5E0
	b _020DF62C
_020DF58C:
	ldr r1, [r0, #0xb8]
	cmp r1, #4
	beq _020DF5A0
	cmp r1, #6
	bne _020DF62C
_020DF5A0:
	mov r1, #1
	str r1, [r0, #0xc4]
	b _020DF62C
_020DF5AC:
	ldr r1, [r0, #0xb8]
	cmp r1, #0
	cmpne r1, #1
	cmpne r1, #4
	cmpne r1, #6
	cmpne r1, #0xc
	moveq r2, #0xf
	moveq r1, #0
	streq r2, [r0, #0xb8]
	streq r1, [r0, #0xc0]
	bxeq lr
	cmp r1, #7
	b _020DF624
_020DF5E0:
	ldr r2, [r0, #0xb8]
	add r1, r2, #0
	cmp r1, #1
	bhi _020DF60C
	ldr r1, _020DF648 ; =0x020ED848
	mov r2, #1
	strb r2, [r1]
	mov r1, #0xf
	str r1, [r0, #0xb8]
	str r3, [r0, #0xc0]
	bx lr
_020DF60C:
	cmp r2, #0xc
	moveq r1, #0xf
	streq r1, [r0, #0xb8]
	streq r3, [r0, #0xc0]
	bxeq lr
	cmp r2, #2
_020DF624:
	moveq r1, #1
	streq r1, [r0, #0xc4]
_020DF62C:
	ldr r1, [r0, #0xc4]
	cmp r1, #0
	moveq r2, #0xd
	moveq r1, #0
	streq r2, [r0, #0xb8]
	streq r1, [r0, #0xc0]
	bx lr
_020DF648: .word ov15_020ED848
	arm_func_end FUN_ov15_020df564

	arm_func_start FUN_ov15_020df64c
FUN_ov15_020df64c: ; 0x020DF64C
	mov r1, #0
	mov r2, #0xa
	str r2, [r0, #0xb4]
	str r1, [r0, #0xb8]
	str r1, [r0, #0xc0]
	bx lr
	arm_func_end FUN_ov15_020df64c

	arm_func_start FUN_ov15_020df664 ; https://decomp.me/scratch/Q2Cme
FUN_ov15_020df664: ; 0x020DF664
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0xb8]
	mov r4, #0
	cmp r1, #0xf
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_020DF680: ; jump table
	b _020DF6C0 ; case 0
	b _020DF6D0 ; case 1
	ldmfd sp!, {r3, r4, r5, pc} ; case 2
	ldmfd sp!, {r3, r4, r5, pc} ; case 3
	b _020DF6E8 ; case 4
	ldmfd sp!, {r3, r4, r5, pc} ; case 5
	ldmfd sp!, {r3, r4, r5, pc} ; case 6
	b _020DF704 ; case 7
	ldmfd sp!, {r3, r4, r5, pc} ; case 8
	ldmfd sp!, {r3, r4, r5, pc} ; case 9
	ldmfd sp!, {r3, r4, r5, pc} ; case 10
	ldmfd sp!, {r3, r4, r5, pc} ; case 11
	b _020DF730 ; case 12
	b _020DF74C ; case 13
	ldmfd sp!, {r3, r4, r5, pc} ; case 14
	b _020DF758 ; case 15
_020DF6C0:
	mov r0, #1
	str r0, [r5, #0xb8]
	str r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DF6D0:
	bl DWC_InitInet
	bl DWC_ConnectInetAsync
	mov r0, #4
	str r0, [r5, #0xb8]
	str r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DF6E8:
	bl DWC_ProcessInet
	bl DWC_CheckInet
	cmp r0, #0
	movne r0, #7
	strne r0, [r5, #0xb8]
	strne r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DF704:
	bl DWC_GetInetStatus
	cmp r0, #4
	beq _020DF720
	cmp r0, #7
	ldmnefd sp!, {r3, r4, r5, pc}
	bl DWC_CleanupInet
	ldmfd sp!, {r3, r4, r5, pc}
_020DF720:
	mov r0, #0xc
	str r0, [r5, #0xb8]
	str r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DF730:
	add r0, r5, #0x68
	bl DWC_GetApInfo
	mov r0, #4
	str r0, [r5, #0xb4]
	str r4, [r5, #0xb8]
	str r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DF74C:
	mov r0, #0xf
	str r0, [r5, #0xb8]
	str r4, [r5, #0xc0]
_020DF758:
	bl DWC_CleanupInetAsync
	cmp r0, #0
	movne r0, #7
	strne r0, [r5, #0xb4]
	strne r4, [r5, #0xb8]
	strne r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020df664

	arm_func_start FUN_ov15_020df774 ; https://decomp.me/scratch/d7jNl
FUN_ov15_020df774: ; 0x020DF774
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0xb8]
	mov r4, #0
	cmp r0, #0xf
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_020DF790: ; jump table
	b _020DF7D0 ; case 0
	b _020DF7E0 ; case 1
	ldmfd sp!, {r3, r4, r5, pc} ; case 2
	ldmfd sp!, {r3, r4, r5, pc} ; case 3
	b _020DF7F0 ; case 4
	ldmfd sp!, {r3, r4, r5, pc} ; case 5
	ldmfd sp!, {r3, r4, r5, pc} ; case 6
	b _020DF804 ; case 7
	ldmfd sp!, {r3, r4, r5, pc} ; case 8
	ldmfd sp!, {r3, r4, r5, pc} ; case 9
	ldmfd sp!, {r3, r4, r5, pc} ; case 10
	ldmfd sp!, {r3, r4, r5, pc} ; case 11
	b _020DF854 ; case 12
	b _020DF868 ; case 13
	b _020DF87C ; case 14
	b _020DF8B4 ; case 15
_020DF7D0:
	mov r0, #1
	str r0, [r5, #0xb8]
	str r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DF7E0:
	mov r0, #4
	str r0, [r5, #0xb8]
	str r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DF7F0:
	bl DWC_NASLoginAsync
	mov r0, #7
	str r0, [r5, #0xb8]
	str r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DF804:
	bl DWC_NASLoginProcess
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_020DF814: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	ldmfd sp!, {r3, r4, r5, pc} ; case 1
	ldmfd sp!, {r3, r4, r5, pc} ; case 2
	b _020DF844 ; case 3
	b _020DF82C ; case 4
	b _020DF834 ; case 5
_020DF82C:
	bl DWC_CleanupInet
	ldmfd sp!, {r3, r4, r5, pc}
_020DF834:
	mov r0, #0xf
	str r0, [r5, #0xb8]
	str r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DF844:
	mov r0, #0xc
	str r0, [r5, #0xb8]
	str r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DF854:
	mov r0, #5
	str r0, [r5, #0xb4]
	str r4, [r5, #0xb8]
	str r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DF868:
	bl DWC_NASLoginAbort
	mov r0, #0xe
	str r0, [r5, #0xb8]
	str r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DF87C:
	bl DWC_NASLoginProcess
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_020DF88C: ; jump table
	b _020DF8A4 ; case 0
	ldmfd sp!, {r3, r4, r5, pc} ; case 1
	ldmfd sp!, {r3, r4, r5, pc} ; case 2
	b _020DF8A4 ; case 3
	ldmfd sp!, {r3, r4, r5, pc} ; case 4
	b _020DF8A4 ; case 5
_020DF8A4:
	mov r0, #0xf
	str r0, [r5, #0xb8]
	str r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DF8B4:
	bl DWC_CleanupInetAsync
	cmp r0, #0
	movne r0, #7
	strne r0, [r5, #0xb4]
	strne r4, [r5, #0xb8]
	strne r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020df774

	arm_func_start FUN_ov15_020df8d0 ; https://decomp.me/scratch/PdZKM
FUN_ov15_020df8d0: ; 0x020DF8D0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r1, [r6, #0xb8]
	mov r4, #0x3c
	cmp r1, #0xf
	mov r5, #0
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_020DF8F0: ; jump table
	b _020DF930 ; case 0
	b _020DF940 ; case 1
	b _020DF96C ; case 2
	b _020DFA90 ; case 3
	b _020DFACC ; case 4
	b _020DFB40 ; case 5
	b _020DFB7C ; case 6
	b _020DFBF0 ; case 7
	b _020DF9A4 ; case 8
	b _020DF9DC ; case 9
	b _020DFA2C ; case 10
	b _020DFA58 ; case 11
	b _020DFC0C ; case 12
	b _020DFC54 ; case 13
	b _020DFC7C ; case 14
	b _020DFCB4 ; case 15
_020DF930:
	mov r0, #1
	str r0, [r6, #0xb8]
	str r5, [r6, #0xc0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DF940:
	bl FUN_ov15_020e0540
	ldr r0, _020DFCDC ; =FUN_ov15_020e05c4
	ldr r1, _020DFCE0 ; =0x020E5C94
	ldr r2, _020DFCE4 ; =0x020E5C9C
	bl DWC_NdInitAsync
	cmp r0, #0
	movne r0, #2
	strne r0, [r6, #0xb8]
	strne r5, [r6, #0xc0]
	strne r4, [r6, #0x3a0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DF96C:
	bl FUN_ov15_020e055c
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x3a0]
	subs r0, r0, #1
	str r0, [r6, #0x3a0]
	ldmplfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov15_020e05b4
	cmp r0, #0
	moveq r0, #8
	streq r0, [r6, #0xb8]
	streq r5, [r6, #0xc0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DF9A4:
	ldr r0, _020DFCE8 ; =0x020E5CB0
	ldr r1, _020DFCEC ; =0x020E5CB4
	ldr r2, _020DFCF0 ; =0x020E5CB8
	bl DWC_NdSetAttr
	mov r0, r6
	bl FUN_ov15_020e0540
	add r0, r6, #0x390
	bl DWC_NdGetFileListNumAsync
	cmp r0, #0
	movne r0, #9
	strne r0, [r6, #0xb8]
	strne r5, [r6, #0xc0]
	strne r4, [r6, #0x3a0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DF9DC:
	bl FUN_ov15_020e055c
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x3a0]
	subs r0, r0, #1
	str r0, [r6, #0x3a0]
	ldmplfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov15_020e05b4
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x390]
	cmp r0, #0
	moveq r0, #7
	streq r0, [r6, #0xb8]
	streq r5, [r6, #0xc0]
	movne r0, #0xa
	strne r0, [r6, #0xb8]
	strne r5, [r6, #0xc0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFA2C:
	bl FUN_ov15_020e0540
	mov r1, r5
	add r0, r6, #0xd0
	mov r2, #4
	bl DWC_NdGetFileListAsync
	cmp r0, #0
	movne r0, #0xb
	strne r0, [r6, #0xb8]
	strne r5, [r6, #0xc0]
	strne r4, [r6, #0x3a0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFA58:
	bl FUN_ov15_020e055c
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x3a0]
	subs r0, r0, #1
	str r0, [r6, #0x3a0]
	ldmplfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov15_020e05b4
	cmp r0, #0
	moveq r0, #3
	streq r0, [r6, #0xb8]
	streq r5, [r6, #0xc0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFA90:
	bl FUN_ov15_020e0540
	ldr r1, _020DFCF4 ; =0x020EDA4C
	add r0, r6, #0x230
	mov r2, #0x200
	bl DWC_NdGetFileAsync
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, #4
	str r0, [r6, #0xb8]
	str r5, [r6, #0xc0]
	str r5, [r6, #0x39c]
	str r5, [r6, #0x394]
	str r5, [r6, #0x398]
	str r4, [r6, #0x3a0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFACC:
	bl FUN_ov15_020e055c
	cmp r0, #0
	bne _020DFB14
	add r0, r6, #0x394
	add r1, r6, #0x398
	bl DWC_NdGetProgress
	cmp r0, #0
	ldrne r1, [r6, #0x398]
	cmpne r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r2, [r6, #0x394]
	mov r0, #0x64
	mul r0, r2, r0
	bl _u32_div_f
	ldr r1, [r6, #0x39c]
	cmp r1, r0
	strne r0, [r6, #0x39c]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFB14:
	ldr r0, [r6, #0x3a0]
	subs r0, r0, #1
	str r0, [r6, #0x3a0]
	ldmplfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov15_020e05b4
	cmp r0, #0
	moveq r0, #5
	streq r0, [r6, #0xb8]
	streq r5, [r6, #0xc0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFB40:
	bl FUN_ov15_020e0540
	ldr r1, _020DFCF8 ; =0x020EDC4C
	add r0, r6, #0x2e0
	mov r2, #0x200
	bl DWC_NdGetFileAsync
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, #6
	str r0, [r6, #0xb8]
	str r5, [r6, #0xc0]
	str r5, [r6, #0x39c]
	str r5, [r6, #0x394]
	str r5, [r6, #0x398]
	str r4, [r6, #0x3a0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFB7C:
	bl FUN_ov15_020e055c
	cmp r0, #0
	bne _020DFBC4
	add r0, r6, #0x394
	add r1, r6, #0x398
	bl DWC_NdGetProgress
	cmp r0, #0
	ldrne r1, [r6, #0x398]
	cmpne r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r2, [r6, #0x394]
	mov r0, #0x64
	mul r0, r2, r0
	bl _u32_div_f
	ldr r1, [r6, #0x39c]
	cmp r1, r0
	strne r0, [r6, #0x39c]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFBC4:
	ldr r0, [r6, #0x3a0]
	subs r0, r0, #1
	str r0, [r6, #0x3a0]
	ldmplfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov15_020e05b4
	cmp r0, #0
	moveq r0, #7
	streq r0, [r6, #0xb8]
	streq r5, [r6, #0xc0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFBF0:
	bl FUN_ov15_020e0540
	bl DWC_NdCleanupAsync
	mov r0, #0xc
	str r0, [r6, #0xb8]
	str r5, [r6, #0xc0]
	str r4, [r6, #0x3a0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFC0C:
	bl FUN_ov15_020e0588
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x3a0]
	subs r0, r0, #1
	str r0, [r6, #0x3a0]
	ldmplfd sp!, {r4, r5, r6, pc}
	bl DWC_CleanupInetAsync
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov15_020dfdbc
	cmp r0, #0
	moveq r0, #6
	streq r0, [r6, #0xb4]
	streq r5, [r6, #0xb8]
	streq r5, [r6, #0xc0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFC54:
	bl FUN_ov15_020e0540
	bl DWC_NdCancelAsync
	cmp r0, #0
	ldreq r0, _020DFCFC ; =0x020ED848
	moveq r1, #1
	streqb r1, [r0, #1]
	mov r0, #0xe
	str r0, [r6, #0xb8]
	str r5, [r6, #0xc0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFC7C:
	bl FUN_ov15_020e055c
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov15_020e0540
	bl DWC_NdCleanupAsync
	cmp r0, #0
	ldreq r0, _020DFCFC ; =0x020ED848
	moveq r1, #1
	streqb r1, [r0]
	mov r0, #0xf
	str r0, [r6, #0xb8]
	str r5, [r6, #0xc0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFCB4:
	bl FUN_ov15_020e0588
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl DWC_CleanupInetAsync
	cmp r0, #0
	movne r0, #7
	strne r0, [r6, #0xb4]
	strne r5, [r6, #0xb8]
	strne r5, [r6, #0xc0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFCDC: .word FUN_ov15_020e05c4
_020DFCE0: .word ov15_020E5C94
_020DFCE4: .word ov15_020E5C9C
_020DFCE8: .word ov15_020E5CB0
_020DFCEC: .word ov15_020E5CB4
_020DFCF0: .word ov15_020E5CB8
_020DFCF4: .word ov15_020EDA4C
_020DFCF8: .word ov15_020EDC4C
_020DFCFC: .word ov15_020ED848
	arm_func_end FUN_ov15_020df8d0

	arm_func_start FUN_ov15_020dfd00
FUN_ov15_020dfd00: ; 0x020DFD00
	bx lr
	arm_func_end FUN_ov15_020dfd00

	arm_func_start FUN_ov15_020dfd04 ; https://decomp.me/scratch/MlMr2
FUN_ov15_020dfd04: ; 0x020DFD04
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #0xac]
	mov r5, #1
	cmp r1, #7
	mov r6, #0
	addls pc, pc, r1, lsl #2
	b _020DFD7C
_020DFD24: ; jump table
	b _020DFD44 ; case 0
	b _020DFD54 ; case 1
	b _020DFD54 ; case 2
	b _020DFD7C ; case 3
	b _020DFD7C ; case 4
	b _020DFD5C ; case 5
	b _020DFD64 ; case 6
	b _020DFD7C ; case 7
_020DFD44:
	ldr r0, [r4, #0xbc]
	cmp r0, #0
	moveq r6, r5
	b _020DFD7C
_020DFD54:
	mov r6, r5
	b _020DFD7C
_020DFD5C:
	bl FUN_ov15_020e0588
	b _020DFD74
_020DFD64:
	bl FUN_ov15_020e0588
	cmp r0, #0
	beq _020DFD7C
	bl DWC_CleanupInetAsync
_020DFD74:
	cmp r0, #0
	movne r6, r5
_020DFD7C:
	ldr r0, [r4, #0xbc]
	cmp r0, #1
	cmpne r0, #2
	moveq r6, #1
	cmp r6, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, #0
	str r5, [r4, #0xb4]
	str r0, [r4, #0xb8]
	str r0, [r4, #0xc0]
	str r0, [r4, #0xa8]
	str r0, [r4, #0xbc]
	str r0, [r4, #0xac]
	str r0, [r4, #0xb0]
	bl DWC_ClearError
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020dfd04

	arm_func_start FUN_ov15_020dfdbc ; https://decomp.me/scratch/KEBJs
FUN_ov15_020dfdbc: ; 0x020DFDBC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x390]
	mov r2, #0
	cmp r1, #0
	str r2, [r4, #0xbc]
	moveq r0, #2
	streq r0, [r4, #0xbc]
	beq _020DFDF0
	bl FUN_ov15_020e03b4
	cmp r0, #0
	moveq r0, #1
	streq r0, [r4, #0xbc]
_020DFDF0:
	ldr r0, [r4, #0xbc]
	cmp r0, #0
	movne r1, #0
	movne r0, #9
	strne r0, [r4, #0xb4]
	ldr r0, [r4, #0xbc]
	strne r1, [r4, #0xb8]
	strne r1, [r4, #0xc0]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020dfdbc

	arm_func_start FUN_ov15_020dfe14 ; https://decomp.me/scratch/UVvHD
FUN_ov15_020dfe14: ; 0x020DFE14
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xa8]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	add r0, r4, #0xb0
	add r1, r4, #0xac
	bl DWC_GetLastErrorEx
	str r0, [r4, #0xa8]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r12, [r4, #0xb4]
	ldr r3, [r4, #0xb8]
	mov r2, #0
	ldr r0, [r4, #0xac]
	mov r1, #8
	str r12, [r4, #0xc8]
	str r3, [r4, #0xcc]
	str r1, [r4, #0xb4]
	str r2, [r4, #0xb8]
	str r2, [r4, #0xc0]
	cmp r0, #5
	beq _020DFE78
	cmp r0, #6
	bne _020DFE94
_020DFE78:
	mov r0, r4
	bl FUN_ov15_020e0540
	bl DWC_NdCleanupAsync
	cmp r0, #0
	ldreq r0, _020DFE9C ; =0x020ED848
	moveq r1, #1
	streqb r1, [r0]
_020DFE94:
	ldr r0, [r4, #0xa8]
	ldmfd sp!, {r4, pc}
_020DFE9C: .word ov15_020ED848
	arm_func_end FUN_ov15_020dfe14

	arm_func_start FUN_ov15_020dfea0
FUN_ov15_020dfea0: ; 0x020DFEA0
	ldr r1, _020DFEBC ; =0x020A11DC
	ldrb r0, [r0, #0x3a4]
	ldrb r1, [r1, #2]
	cmp r1, r0
	movlo r0, #1
	movhs r0, #0
	bx lr
_020DFEBC: .word unk_020A11DC
	arm_func_end FUN_ov15_020dfea0

	arm_func_start FUN_ov15_020dfec0
FUN_ov15_020dfec0: ; 0x020DFEC0
	ldr r1, _020DFEE4 ; =0x020A11DC
	add r0, r0, #0x300
	ldrh r1, [r1]
	ldrh r0, [r0, #0xa6]
	mvn r1, r1
	tst r1, r0
	movne r0, #1
	moveq r0, #0
	bx lr
_020DFEE4: .word unk_020A11DC
	arm_func_end FUN_ov15_020dfec0

	arm_func_start FUN_ov15_020dfee8 ; https://decomp.me/scratch/N5PGS
FUN_ov15_020dfee8: ; 0x020DFEE8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xd4
	ldr r7, _020E007C ; =0x020A11DC
	mov r10, r0
	ldrb r1, [r7, #2]
	ldrb r0, [r10, #0x3a4]
	cmp r1, r0
	bhs _020DFFC0
	mov r6, #0
	add r4, sp, #0x38
	b _020DFF28
_020DFF14:
	mov r0, r7
	mov r1, r6
	bl FUN_ov131_02142694
	strb r0, [r4, r6]
	add r6, r6, #1
_020DFF28:
	cmp r6, #0x34
	blt _020DFF14
	ldrb r0, [r10, #0x3a4]
	mov r6, #0
	add r4, sp, #4
	strb r0, [r7, #2]
	b _020DFF58
_020DFF44:
	mov r0, r7
	mov r1, r6
	bl FUN_ov131_02142694
	strb r0, [r4, r6]
	add r6, r6, #1
_020DFF58:
	cmp r6, #0x34
	blt _020DFF44
	ldr r0, _020E0080 ; =0x02099F44
	add r8, sp, #0x6c
	ldr r0, [r0]
	mov r1, r8
	mov r2, #0x34
	bl FUN_ov131_02140f30
	mov r9, #0
	ldr r4, _020E0084 ; =0x020A9C40
	mov r11, #7
	add r6, sp, #0x38
	add r5, sp, #4
	b _020DFFB8
_020DFF90:
	ldrb r1, [r6, r9]
	ldrb r0, [r5, r9]
	cmp r1, r0
	beq _020DFFB4
	mov r0, r9, lsl #1
	ldrh r2, [r8, r0]
	mov r0, r4
	mov r1, r11
	bl FUN_02045b74
_020DFFB4:
	add r9, r9, #1
_020DFFB8:
	cmp r9, #0x34
	blt _020DFF90
_020DFFC0:
	add r0, r10, #0x300
	ldrh r1, [r7]
	ldrh r0, [r0, #0xa6]
	mvn r1, r1
	ands r8, r1, r0
	addeq sp, sp, #0xd4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, #0xaa
	mov r6, #0
	add r5, r0, #0x300
	add r4, r7, #0xe
	add r11, sp, #0
	b _020E0058
_020DFFF4:
	mov r0, #1
	tst r8, r0, lsl r6
	beq _020E0054
	ldr r0, _020E0084 ; =0x020A9C40
	mov r1, #8
	add r2, r6, #1
	bl FUN_02045b74
	mov r0, #6
	mul r1, r6, r0
	add r0, r10, r1
	add r0, r0, #0x300
	ldrsh r9, [r0, #0xa8]
	add r0, r5, r1
	mov r1, r11
	mov r2, #4
	bl MI_CpuCopy8
	mov r0, #6
	mul r1, r6, r0
	add r0, r7, r1
	strh r9, [r0, #0xc]
	add r1, r4, r1
	mov r0, r11
	mov r2, #4
	bl MI_CpuCopy8
_020E0054:
	add r6, r6, #1
_020E0058:
	cmp r6, #0x10
	blt _020DFFF4
	add r0, r10, #0x300
	ldrh r1, [r7]
	ldrh r0, [r0, #0xa6]
	orr r0, r1, r0
	strh r0, [r7]
	add sp, sp, #0xd4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E007C: .word unk_020A11DC
_020E0080: .word unk_02099F44
_020E0084: .word unk_020A9C40
	arm_func_end FUN_ov15_020dfee8

	arm_func_start FUN_ov15_020e0088
FUN_ov15_020e0088: ; 0x020E0088
	ldr r12, _020E009C ; =MI_CpuFill8
	add r0, r0, #0x3a4
	mov r1, #0
	mov r2, #0x64
	bx r12
_020E009C: .word MI_CpuFill8
	arm_func_end FUN_ov15_020e0088

	arm_func_start FUN_ov15_020e00a0
FUN_ov15_020e00a0: ; 0x020E00A0
	ldr r1, [r0, #0xb4]
	cmp r1, #8
	cmpne r1, #9
	cmpne r1, #7
	movne r0, #0
	bxne lr
	cmp r1, #8
	ldreq r0, [r0, #0xac]
	cmpeq r0, #7
	moveq r0, #0
	movne r0, #1
	bx lr
	arm_func_end FUN_ov15_020e00a0

	arm_func_start FUN_ov15_020e00d0
FUN_ov15_020e00d0: ; 0x020E00D0
	ldr r0, [r0, #0xc4]
	bx lr
	arm_func_end FUN_ov15_020e00d0

	arm_func_start FUN_ov15_020e00d8
FUN_ov15_020e00d8: ; 0x020E00D8
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0xbc]
	cmp r1, #0
	ldrne r0, _020E035C ; =0x020E5CBC
	ldmnefd sp!, {r3, pc}
	ldr r2, [r0, #0xb0]
	ldr r1, _020E0360 ; =0x0000CB87
	cmp r2, #0
	rsblt r2, r2, #0
	cmp r2, r1
	bgt _020E01B0
	bge _020E0250
	sub r3, r1, #0x64
	cmp r2, r3
	bgt _020E0180
	sub r3, r1, #0x66
	cmp r2, r3
	blt _020E0138
	subne r3, r1, #0x65
	cmpne r2, r3
	subne r1, r1, #0x64
	cmpne r2, r1
	beq _020E0250
	b _020E0258
_020E0138:
	ldr r3, _020E0364 ; =0x00004E8E
	cmp r2, r3
	bgt _020E0170
	sub r1, r3, #2
	cmp r2, r1
	blt _020E0160
	beq _020E0228
	cmp r2, r3
	beq _020E0230
	b _020E0258
_020E0160:
	sub r1, r3, #9
	cmp r2, r1
	beq _020E0220
	b _020E0258
_020E0170:
	sub r1, r1, #0x67
	cmp r2, r1
	beq _020E0250
	b _020E0258
_020E0180:
	sub r3, r1, #2
	cmp r2, r3
	bgt _020E01A0
	bge _020E0250
	sub r1, r1, #3
	cmp r2, r1
	beq _020E0250
	b _020E0258
_020E01A0:
	sub r1, r1, #1
	cmp r2, r1
	beq _020E0250
	b _020E0258
_020E01B0:
	add r3, r1, #0x64
	cmp r2, r3
	bgt _020E01F0
	bge _020E0250
	add r3, r1, #0x62
	cmp r2, r3
	bgt _020E01E0
	bge _020E0250
	add r1, r1, #0x61
	cmp r2, r1
	beq _020E0250
	b _020E0258
_020E01E0:
	add r1, r1, #0x63
	cmp r2, r1
	beq _020E0250
	b _020E0258
_020E01F0:
	ldr r1, _020E0368 ; =0x00013A2F
	cmp r2, r1
	bgt _020E0210
	bge _020E0240
	sub r1, r1, #1
	cmp r2, r1
	beq _020E0238
	b _020E0258
_020E0210:
	add r1, r1, #1
	cmp r2, r1
	beq _020E0248
	b _020E0258
_020E0220:
	ldr r0, _020E036C ; =0x020E5CF0
	ldmfd sp!, {r3, pc}
_020E0228:
	ldr r0, _020E0370 ; =0x020E5D94
	ldmfd sp!, {r3, pc}
_020E0230:
	ldr r0, _020E0374 ; =0x020E5E4C
	ldmfd sp!, {r3, pc}
_020E0238:
	ldr r0, _020E0378 ; =0x020E5EC0
	ldmfd sp!, {r3, pc}
_020E0240:
	ldr r0, _020E037C ; =0x020E5FA8
	ldmfd sp!, {r3, pc}
_020E0248:
	ldr r0, _020E0380 ; =0x020E5FE0
	ldmfd sp!, {r3, pc}
_020E0250:
	ldr r0, _020E0384 ; =0x020E6014
	ldmfd sp!, {r3, pc}
_020E0258:
	ldr r12, _020E0388 ; =0x51EB851F
	mov r1, r2, lsr #0x1f
	smull r3, lr, r12, r2
	add lr, r1, lr, asr #5
	cmp lr, #0x1f4
	bgt _020E0278
	beq _020E02F8
	b _020E0308
_020E0278:
	sub r1, lr, #0xfe
	sub r1, r1, #0x100
	cmp r1, #0x16
	addls pc, pc, r1, lsl #2
	b _020E0308
_020E028C: ; jump table
	b _020E0300 ; case 0
	b _020E0300 ; case 1
	b _020E02F0 ; case 2
	b _020E0300 ; case 3
	b _020E0308 ; case 4
	b _020E0308 ; case 5
	b _020E0308 ; case 6
	b _020E0308 ; case 7
	b _020E0308 ; case 8
	b _020E0308 ; case 9
	b _020E02E8 ; case 10
	b _020E02E8 ; case 11
	b _020E02E8 ; case 12
	b _020E02E8 ; case 13
	b _020E0308 ; case 14
	b _020E0308 ; case 15
	b _020E0308 ; case 16
	b _020E0308 ; case 17
	b _020E0308 ; case 18
	b _020E0308 ; case 19
	b _020E02E8 ; case 20
	b _020E02E8 ; case 21
	b _020E02E8 ; case 22
_020E02E8:
	ldr r0, _020E038C ; =0x020E60B8
	ldmfd sp!, {r3, pc}
_020E02F0:
	ldr r0, _020E0390 ; =0x020E6124
	ldmfd sp!, {r3, pc}
_020E02F8:
	ldr r0, _020E0394 ; =0x020E61A0
	ldmfd sp!, {r3, pc}
_020E0300:
	ldr r0, _020E0398 ; =0x020E6210
	ldmfd sp!, {r3, pc}
_020E0308:
	ldr r3, _020E039C ; =0x10624DD3
	mov r1, r2, lsr #0x1f
	smull r2, r12, r3, r2
	add r12, r1, r12, asr #6
	cmp r12, #0x14
	beq _020E032C
	cmp r12, #0x17
	beq _020E0334
	b _020E033C
_020E032C:
	ldr r0, _020E03A0 ; =0x020E62BC
	ldmfd sp!, {r3, pc}
_020E0334:
	ldr r0, _020E03A4 ; =0x020E6328
	ldmfd sp!, {r3, pc}
_020E033C:
	ldr r0, [r0, #0xac]
	cmp r0, #7
	ldreq r0, _020E03A8 ; =0x020E63CC
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020E03AC ; =0x020E6468
	cmp r12, #0x1f
	ldreq r0, _020E03B0 ; =0x020E649C
	ldmfd sp!, {r3, pc}
_020E035C: .word ov15_020E5CBC
_020E0360: .word 0x0000CB87
_020E0364: .word 0x00004E8E
_020E0368: .word 0x00013A2F
_020E036C: .word ov15_020E5CF0
_020E0370: .word ov15_020E5D94
_020E0374: .word ov15_020E5E4C
_020E0378: .word ov15_020E5EC0
_020E037C: .word ov15_020E5FA8
_020E0380: .word ov15_020E5FE0
_020E0384: .word ov15_020E6014
_020E0388: .word 0x51EB851F
_020E038C: .word ov15_020E60B8
_020E0390: .word ov15_020E6124
_020E0394: .word ov15_020E61A0
_020E0398: .word ov15_020E6210
_020E039C: .word 0x10624DD3
_020E03A0: .word ov15_020E62BC
_020E03A4: .word ov15_020E6328
_020E03A8: .word ov15_020E63CC
_020E03AC: .word ov15_020E6468
_020E03B0: .word ov15_020E649C
	arm_func_end FUN_ov15_020e00d8

	arm_func_start FUN_ov15_020e03b4
FUN_ov15_020e03b4: ; 0x020E03B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r2, _020E0538 ; =0x020EDA4C
	mov r10, r0
	ldrb r0, [r2, #7]
	mov r5, #0
	cmp r0, #0x4c
	ldreqb r0, [r2, #8]
	cmpeq r0, #0x35
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r3, r5
	mov r4, r3
_020E03E4:
	ldrb r1, [r2, r4]
	add r0, r4, #1
	and r4, r0, #0xff
	add r0, r3, r1
	cmp r4, #6
	and r3, r0, #0xff
	blo _020E03E4
	ldr r0, _020E0538 ; =0x020EDA4C
	ldrb r1, [r0, #6]
	cmp r3, r1
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r3, [r0, #4]
	ldrb r1, [r0]
	ldrb r2, [r0, #5]
	cmp r1, #0x34
	orr r0, r3, r2, lsl #8
	mov r2, r0, lsl #0x10
	movhi r0, #0
	ldmhifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, #0x300
	mov r7, #0
	strh r7, [r0, #0xa6]
	add r0, r10, #0xa6
	strb r1, [r10, #0x3a4]
	add r4, r0, #0x300
	mov r6, #1
_020E0450:
	mov r0, r6, lsl r7
	tst r0, r2, lsr #16
	rsbne r0, r7, #0xf
	movne r0, r6, lsl r0
	moveq r0, r5
	add r1, r7, #1
	mov r1, r1, lsl #0x10
	mov r7, r1, lsr #0x10
	ldrh r3, [r4]
	mov r0, r0, lsl #0x10
	cmp r7, #0x10
	orr r0, r3, r0, lsr #16
	strh r0, [r4]
	blo _020E0450
	add r0, r10, #0xaa
	ldr r8, _020E053C ; =0x020EDC4C
	mov r9, #0
	add r4, r0, #0x300
	add r6, sp, #0
	mov r5, #4
	mov r11, #6
_020E04A4:
	rsb r2, r9, r9, lsl #3
	add r1, r8, r2
	ldrb r0, [r1, #6]
	cmp r0, #0x2c
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r7, [r1]
	ldrb r3, [r1, #1]
	add r0, r2, #2
	mov r1, r6
	mov r2, r5
	add r0, r8, r0
	orr r7, r7, r3, lsl #8
	bl MI_CpuCopy8
	mul r3, r9, r11
	add r0, r10, r3
	add r1, r0, #0x300
	mov r0, r6
	strh r7, [r1, #0xa8]
	mov r2, r5
	add r1, r4, r3
	bl MI_CpuCopy8
	add r9, r9, #1
	cmp r9, #0x10
	blt _020E04A4
	mov r5, #0
	mov r4, #0x200
	ldr r0, _020E0538 ; =0x020EDA4C
	mov r1, r5
	mov r2, r4
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r5
	mov r2, r4
	bl MI_CpuFill8
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E0538: .word ov15_020EDA4C
_020E053C: .word ov15_020EDC4C
	arm_func_end FUN_ov15_020e03b4

	arm_func_start FUN_ov15_020e0540
FUN_ov15_020e0540: ; 0x020E0540
	ldr r0, _020E0558 ; =0x020ED848
	mov r1, #0
	strb r1, [r0, #2]
	strb r1, [r0]
	strb r1, [r0, #1]
	bx lr
_020E0558: .word ov15_020ED848
	arm_func_end FUN_ov15_020e0540

	arm_func_start FUN_ov15_020e055c
FUN_ov15_020e055c: ; 0x020E055C
	stmfd sp!, {r3, lr}
	ldr r0, _020E0584 ; =0x020ED848
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _020E0578
	bl DWC_UpdateConnection
	bl DWC_NdProcess
_020E0578:
	ldr r0, _020E0584 ; =0x020ED848
	ldrb r0, [r0, #1]
	ldmfd sp!, {r3, pc}
_020E0584: .word ov15_020ED848
	arm_func_end FUN_ov15_020e055c

	arm_func_start FUN_ov15_020e0588
FUN_ov15_020e0588: ; 0x020E0588
	stmfd sp!, {r3, lr}
	ldr r0, _020E05B0 ; =0x020ED848
	ldrb r0, [r0]
	cmp r0, #0
	bne _020E05A4
	bl DWC_UpdateConnection
	bl DWC_NdProcess
_020E05A4:
	ldr r0, _020E05B0 ; =0x020ED848
	ldrb r0, [r0]
	ldmfd sp!, {r3, pc}
_020E05B0: .word ov15_020ED848
	arm_func_end FUN_ov15_020e0588

	arm_func_start FUN_ov15_020e05b4
FUN_ov15_020e05b4: ; 0x020E05B4
	ldr r0, _020E05C0 ; =0x020ED848
	ldrb r0, [r0, #2]
	bx lr
_020E05C0: .word ov15_020ED848
	arm_func_end FUN_ov15_020e05b4

	arm_func_start FUN_ov15_020e05c4
FUN_ov15_020e05c4: ; 0x020E05C4
	stmfd sp!, {r4, lr}
	mov r4, r1
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _020E05F0
_020E05D8: ; jump table
	b _020E05F0 ; case 0
	b _020E05F0 ; case 1
	b _020E05F0 ; case 2
	b _020E05F0 ; case 3
	b _020E05EC ; case 4
_020E05EC:
	bl FUN_ov15_020e060c
_020E05F0:
	ldr r0, _020E0608 ; =0x020ED848
	mov r1, #1
	strb r1, [r0, #1]
	cmp r4, #0
	strneb r1, [r0, #2]
	ldmfd sp!, {r4, pc}
_020E0608: .word ov15_020ED848
	arm_func_end FUN_ov15_020e05c4

	arm_func_start FUN_ov15_020e060c
FUN_ov15_020e060c: ; 0x020E060C
	ldr r0, _020E061C ; =0x020ED848
	mov r1, #1
	strb r1, [r0]
	bx lr
_020E061C: .word ov15_020ED848
	arm_func_end FUN_ov15_020e060c

	arm_func_start FUN_ov15_020e0620
FUN_ov15_020e0620: ; 0x020E0620
	stmfd sp!, {r4, lr}
	mov r4, r2
	ldr r0, _020E067C ; =gAllocator
	add r1, r1, r4
	bl _ZN9Allocator8allocateEm
	sub r2, r4, #1
	add r1, r0, r4
	mvn r2, r2
	sub r1, r1, #1
	and r3, r2, r1
	ldr r2, _020E0680 ; =0x020ED84C
	mov r12, #0
_020E0650:
	ldr r1, [r2, r12, lsl #3]
	cmp r1, #0
	ldreq r1, _020E0684 ; =0x020ED850
	streq r3, [r2, r12, lsl #3]
	streq r0, [r1, r12, lsl #3]
	beq _020E0674
	add r12, r12, #1
	cmp r12, #0x40
	blt _020E0650
_020E0674:
	mov r0, r3
	ldmfd sp!, {r4, pc}
_020E067C: .word gAllocator
_020E0680: .word ov15_020ED84C
_020E0684: .word ov15_020ED850
	arm_func_end FUN_ov15_020e0620

	arm_func_start FUN_ov15_020e0688
FUN_ov15_020e0688: ; 0x020E0688
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	mov r3, #0
	ldr r2, _020E06E8 ; =0x020ED84C
	mov r12, r3
_020E06A0:
	ldr r0, [r2, r12, lsl #3]
	cmp r0, r1
	bne _020E06C4
	ldr r1, _020E06EC ; =0x020ED850
	mov r0, #0
	ldr r3, [r1, r12, lsl #3]
	str r0, [r2, r12, lsl #3]
	str r0, [r1, r12, lsl #3]
	b _020E06D0
_020E06C4:
	add r12, r12, #1
	cmp r12, #0x40
	blt _020E06A0
_020E06D0:
	cmp r3, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020E06F0 ; =gAllocator
	mov r1, r3
	bl _ZN9Allocator10deallocateEPv
	ldmfd sp!, {r3, pc}
_020E06E8: .word ov15_020ED84C
_020E06EC: .word ov15_020ED850
_020E06F0: .word gAllocator
	arm_func_end FUN_ov15_020e0688

	arm_func_start FUN_ov15_020e06f4
FUN_ov15_020e06f4: ; 0x020E06F4
	stmfd sp!, {r4, lr}
	movs r4, r1
	cmpne r4, #2
	bne _020E070C
	mov r0, #1
	bl FUN_ov16_020f3f60
_020E070C:
	sub r0, r4, #1
	cmp r0, #1
	ldmhifd sp!, {r4, pc}
	mov r0, #1
	bl FUN_ov16_020f4894
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e06f4

	arm_func_start FUN_ov15_020e0724
FUN_ov15_020e0724: ; 0x020E0724
	stmfd sp!, {r4, lr}
	movs r4, r1
	cmpne r4, #2
	bne _020E0738
	bl FUN_ov16_020f47fc
_020E0738:
	sub r0, r4, #1
	cmp r0, #1
	bhi _020E0748
	bl FUN_ov16_020f51a8
_020E0748:
	cmp r4, #2
	ldmnefd sp!, {r4, pc}
	mov r0, #0
	mov r1, #0x6800000
	mov r2, #0xa4000
	bl MIi_CpuClearFast
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e0724

	arm_func_start FUN_ov15_020e0764
FUN_ov15_020e0764: ; 0x020E0764
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, #0
	str r4, [r5, #0x5a0]
	str r4, [r5, #0x498]
	str r4, [r5, #0x49c]
	str r4, [r5, #0x4a0]
	bl FUN_ov16_020f1320
	mov r0, r5
	ldr r2, [r0]
	mov r1, #2
	ldr r2, [r2, #0xc]
	blx r2
	mov r0, r5
	mov r1, r4
	str r4, [r5, #0x80]
	str r4, [r5, #0x84]
	mov r2, r4
	bl _ZN14CScreenManager8setSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r7, #1
	mov r1, r7
	mov r2, r4
	bl _ZN14CScreenManager8setSceneE12EngineSelect9SceneType
	mov r0, r5
	mov r1, r4
	mov r6, #0x14
	mov r2, r6
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	mov r1, r7
	mov r0, r5
	mov r2, r6
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x34]
	blx r1
	sub r1, r6, #0x15
	ldr r0, _020E08A0 ; =0x0209A3E0
	ldr r6, _020E08A4 ; =gAudioPlayer
	str r1, [r0, #0x2c]
	mov r0, r6
	mov r1, #5
	mov r2, r4
	mov r3, r4
	bl _ZN11AudioPlayer12FUN_0202b838Eiii
	mov r0, r6
	bl _ZN11AudioPlayer12FUN_0202b7b4Ev
	cmp r0, #0
	bne _020E0848
	mov r4, #0x14
_020E0830:
	mov r0, r4
	bl OS_Sleep
	mov r0, r6
	bl _ZN11AudioPlayer12FUN_0202b7b4Ev
	cmp r0, #0
	beq _020E0830
_020E0848:
	ldr r6, _020E08A4 ; =gAudioPlayer
	mov r0, r6
	bl _ZN11AudioPlayer12FUN_0202b7f0Ev
	cmp r0, #0
	bne _020E0878
	mov r4, #0x14
_020E0860:
	mov r0, r4
	bl OS_Sleep
	mov r0, r6
	bl _ZN11AudioPlayer12FUN_0202b7f0Ev
	cmp r0, #0
	beq _020E0860
_020E0878:
	ldr r0, [r5, #0x498]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #1
	add r0, r5, #0x90
	str r1, [r5, #0x498]
	bl FUN_ov15_020df358
	ldr r1, _020E08A8 ; =0x020E64C4
	str r0, [r1, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E08A0: .word unk_0209A3E0
_020E08A4: .word gAudioPlayer
_020E08A8: .word ov15_020E64C4
	arm_func_end FUN_ov15_020e0764

	arm_func_start FUN_ov15_020e08ac
FUN_ov15_020e08ac: ; 0x020E08AC
	stmfd sp!, {r4, lr}
	ldr r2, [r0]
	mov r4, r0
	ldr r2, [r2, #0x28]
	mov r1, #2
	blx r2
	ldr r0, [r4, #0x80]
	cmp r0, #0
	beq _020E08DC
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
_020E08DC:
	ldr r0, [r4, #0x84]
	cmp r0, #0
	beq _020E08F4
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
_020E08F4:
	bl FUN_ov16_020f47fc
	bl FUN_ov16_020f51a8
	ldr r0, [r4, #0x498]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	add r0, r4, #0x90
	bl FUN_ov15_020df4c0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e08ac

	arm_func_start FUN_ov15_020e0914
FUN_ov15_020e0914: ; 0x020E0914
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrb r1, [r4, #8]
	mov r5, r0
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0xc]
	bl FUN_ov16_LoadOverlay
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4]
	cmp r0, #0x16
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, #0x214
	bl _Znwm
	cmp r0, #0
	ldrne r1, _020E0964 ; =0x0211F3D8
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020E0964: .word ov61_0211F3D8
	arm_func_end FUN_ov15_020e0914

	arm_func_start FUN_ov15_020e0968
FUN_ov15_020e0968: ; 0x020E0968
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x40
	mov r6, r0
	ldr r0, [r6, #0x710]
	cmp r0, #0
	bne _020E09E8
	ldr r8, _020E0C6C ; =0x020E401C
	add lr, sp, #0
	ldmia r8!, {r0, r1, r2, r3}
	mov r7, lr
	stmia lr!, {r0, r1, r2, r3}
	ldmia r8!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r8!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	add r0, r6, #0xa4
	add r12, r0, #0x400
	add r0, r6, #0x244
	add r5, r0, #0x400
	ldmia r8, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	mov r4, #0x40
	ldr r0, _020E0C70 ; =gAllocator
	mov r1, r4
	str r12, [sp, #4]
	str r5, [sp, #0x24]
	bl _ZN9Allocator8allocateEm
	mov r1, r0
	mov r2, r4
	mov r0, r7
	str r1, [r6, #0x710]
	bl MI_CpuCopy8
_020E09E8:
	ldr r2, _020E0C74 ; =0x020EDE4C
	ldr r1, [r2]
	tst r1, #1
	bne _020E0A10
	add r0, r6, #0x28c
	orr r3, r1, #1
	ldr r1, _020E0C78 ; =0x020E64C4
	add r0, r0, #0x400
	str r0, [r1, #0x20]
	str r3, [r2]
_020E0A10:
	mov r0, r6
	bl _ZN14CScreenManager16getNextSceneMainEv
	mov r4, r0
	mov r0, r6
	bl _ZN14CScreenManager15getCurSceneMainEv
	cmp r4, r0
	bne _020E0A38
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _020E0B08
_020E0A38:
	ldr r0, [r6, #0x80]
	cmp r0, #0
	beq _020E0A58
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _020E0B08
_020E0A58:
	ldr r0, [r6, #0x80]
	cmp r0, #0
	beq _020E0A90
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, [r6, #0x80]
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	ldr r1, [r6, #0x80]
	ldr r2, [r6, #0x710]
	mov r0, r6
	bl _ZN14CScreenManager12deleteScreenEP12CommonScreenP17ScreenLoadContext
_020E0A90:
	mov r0, #0
	str r0, [r6, #0x80]
	ldr r5, [r6, #0x710]
	b _020E0AD4
_020E0AA0:
	ldr r0, [r5]
	cmp r4, r0
	bne _020E0AD0
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _020E0AC4
	mov r0, r6
	mov r1, r5
	bl FUN_ov15_020e0914
_020E0AC4:
	ldr r0, [r5, #4]
	str r0, [r6, #0x80]
	b _020E0AE0
_020E0AD0:
	add r5, r5, #0x10
_020E0AD4:
	ldr r0, [r5]
	cmp r0, #0
	bne _020E0AA0
_020E0AE0:
	mov r0, r6
	mov r2, r4
	mov r1, #0
	bl _ZN14CScreenManager8setSceneE12EngineSelect9SceneType
	ldr r0, [r6, #0x80]
	cmp r0, #0
	beq _020E0B08
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
_020E0B08:
	mov r0, r6
	bl _ZN14CScreenManager15getNextSceneSubEv
	mov r4, r0
	mov r0, r6
	bl _ZN14CScreenManager14getCurSceneSubEv
	cmp r4, r0
	bne _020E0B30
	ldrb r0, [r6, #5]
	cmp r0, #0
	beq _020E0BD4
_020E0B30:
	ldr r0, [r6, #0x84]
	cmp r0, #0
	beq _020E0B50
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _020E0BD4
_020E0B50:
	ldr r0, [r6, #0x84]
	cmp r0, #0
	beq _020E0B78
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, [r6, #0x84]
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
_020E0B78:
	mov r0, #0
	str r0, [r6, #0x84]
	ldr r5, _020E0C7C ; =0x020E64E0
	b _020E0BA0
_020E0B88:
	ldr r0, [r5]
	cmp r4, r0
	ldreq r0, [r5, #4]
	streq r0, [r6, #0x84]
	beq _020E0BAC
	add r5, r5, #0x10
_020E0BA0:
	ldr r0, [r5]
	cmp r0, #0
	bne _020E0B88
_020E0BAC:
	mov r0, r6
	mov r2, r4
	mov r1, #1
	bl _ZN14CScreenManager8setSceneE12EngineSelect9SceneType
	ldr r0, [r6, #0x84]
	cmp r0, #0
	beq _020E0BD4
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
_020E0BD4:
	mov r0, r6
	bl _ZN14CScreenManager15getCurSceneMainEv
	cmp r0, #0x14
	bne _020E0BF8
	ldr r0, [r6, #0x80]
	cmp r0, #0
	beq _020E0BF8
	mov r0, r6
	bl FUN_ov15_020e0c90
_020E0BF8:
	mov r0, r6
	bl _ZN14CScreenManager15getCurSceneMainEv
	cmp r0, #0x16
	bne _020E0C24
	ldr r0, [r6, #0x80]
	cmp r0, #0
	beq _020E0C24
	ldr r2, [r0]
	ldr r1, _020E0C80 ; =0x020A11DC
	ldr r2, [r2, #0x98]
	blx r2
_020E0C24:
	mov r0, r6
	bl _ZN14CScreenManager15getCurSceneMainEv
	cmp r0, #0x17
	addne sp, sp, #0x40
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r6, #0x80]
	cmp r0, #0
	addeq sp, sp, #0x40
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r6, #0x244
	add r0, r0, #0x400
	ldr r3, [r0]
	ldr r1, [r6, #0x49c]
	ldr r2, [r6, #0x4a0]
	ldr r3, [r3, #0x6c]
	blx r3
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020E0C6C: .word ov15_020E401C
_020E0C70: .word gAllocator
_020E0C74: .word ov15_020EDE4C
_020E0C78: .word ov15_020E64C4
_020E0C7C: .word ov15_020E64E0
_020E0C80: .word unk_020A11DC
	arm_func_end FUN_ov15_020e0968

	arm_func_start FUN_ov15_020e0c84
FUN_ov15_020e0c84: ; 0x020E0C84
	str r1, [r0, #0x3c]
	str r2, [r0, #0x40]
	bx lr
	arm_func_end FUN_ov15_020e0c84

	arm_func_start FUN_ov15_020e0c90
FUN_ov15_020e0c90: ; 0x020E0C90
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0x5a0]
	mov r0, #0
	str r0, [sp]
	cmp r4, #0xa
	addls pc, pc, r4, lsl #2
	b _020E0DA8
_020E0CB0: ; jump table
	b _020E0DA8 ; case 0
	b _020E0CDC ; case 1
	b _020E0D44 ; case 2
	b _020E0D44 ; case 3
	b _020E0DA8 ; case 4
	b _020E0DA8 ; case 5
	b _020E0D34 ; case 6
	b _020E0D44 ; case 7
	b _020E0DA8 ; case 8
	b _020E0D60 ; case 9
	b _020E0D80 ; case 10
_020E0CDC:
	ldr r0, [r5, #0x498]
	cmp r0, #0
	bne _020E0D00
	mov r1, #1
	add r0, r5, #0x90
	str r1, [r5, #0x498]
	bl FUN_ov15_020df358
	ldr r1, _020E0EE8 ; =0x020E64C4
	str r0, [r1, #0x10]
_020E0D00:
	ldr r0, _020E0EE8 ; =0x020E64C4
	ldr r0, [r0, #0x10]
	cmp r0, #3
	moveq r0, #0xc
	streq r0, [r5, #0x5a0]
	beq _020E0DA8
	add r0, r5, #0x90
	bl FUN_ov15_020df528
	mov r1, #2
	mov r0, #1
	str r1, [r5, #0x5a0]
	bl FUN_ov16_020f069c
	b _020E0DA8
_020E0D34:
	add r0, r5, #0x90
	bl FUN_ov15_020df564
	mov r0, #7
	str r0, [r5, #0x5a0]
_020E0D44:
	add r0, r5, #0x90
	bl FUN_ov15_020df3f8
	add r1, sp, #0
	add r0, r5, #0x90
	mov r2, #0
	bl FUN_ov15_020df548
	b _020E0DA8
_020E0D60:
	add r0, r5, #0x90
	bl FUN_ov15_020e00a0
	cmp r0, #0
	beq _020E0DA8
	add r0, r5, #0x90
	bl FUN_ov15_020df64c
	mov r0, #0xa
	str r0, [r5, #0x5a0]
_020E0D80:
	add r0, r5, #0x90
	bl FUN_ov15_020df3f8
	add r1, sp, #0
	add r0, r5, #0x90
	mov r2, #0
	bl FUN_ov15_020df548
	ldr r0, [sp]
	cmp r0, #1
	moveq r0, #0xb
	streq r0, [r5, #0x5a0]
_020E0DA8:
	ldr r0, [sp]
	cmp r0, #8
	bne _020E0DC8
	add r0, r5, #0x90
	bl FUN_ov15_020e00d0
	cmp r0, #0
	movne r0, #7
	strne r0, [sp]
_020E0DC8:
	ldr r0, [sp]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_020E0DD8: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	ldmfd sp!, {r3, r4, r5, pc} ; case 1
	ldmfd sp!, {r3, r4, r5, pc} ; case 2
	ldmfd sp!, {r3, r4, r5, pc} ; case 3
	ldmfd sp!, {r3, r4, r5, pc} ; case 4
	b _020E0E00 ; case 5
	b _020E0E10 ; case 6
	b _020E0E74 ; case 7
	b _020E0E88 ; case 8
	b _020E0EC8 ; case 9
_020E0E00:
	cmp r4, #2
	moveq r0, #3
	streq r0, [r5, #0x5a0]
	ldmfd sp!, {r3, r4, r5, pc}
_020E0E10:
	cmp r4, #7
	moveq r0, #8
	streq r0, [r5, #0x5a0]
	beq _020E0E60
	add r0, r5, #0x90
	bl FUN_ov15_020dfea0
	str r0, [r5, #0x49c]
	add r0, r5, #0x90
	bl FUN_ov15_020dfec0
	ldr r1, [r5, #0x49c]
	str r0, [r5, #0x4a0]
	cmp r1, #0
	cmpeq r0, #0
	moveq r0, #5
	streq r0, [r5, #0x5a0]
	beq _020E0E60
	mov r1, #4
	add r0, r5, #0x90
	str r1, [r5, #0x5a0]
	bl FUN_ov15_020dfee8
_020E0E60:
	add r0, r5, #0x90
	bl FUN_ov15_020e0088
	mov r0, #0
	bl FUN_ov16_020f069c
	ldmfd sp!, {r3, r4, r5, pc}
_020E0E74:
	mov r1, #8
	mov r0, #0
	str r1, [r5, #0x5a0]
	bl FUN_ov16_020f069c
	ldmfd sp!, {r3, r4, r5, pc}
_020E0E88:
	add r0, r5, #0x90
	bl FUN_ov15_020e00d8
	ldr r1, [r5, #0x140]
	str r0, [r5, #0x4f0]
	cmp r1, #0
	rsblt r1, r1, #0
	add r0, r5, #0x90
	str r1, [r5, #0x708]
	bl FUN_ov15_020e00a0
	cmp r0, #0
	movne r0, #0xd
	moveq r0, #0xe
	str r0, [r5, #0x5a0]
	mov r0, #0
	bl FUN_ov16_020f069c
	ldmfd sp!, {r3, r4, r5, pc}
_020E0EC8:
	add r0, r5, #0x90
	bl FUN_ov15_020e00d8
	str r0, [r5, #0x4f0]
	mov r1, #0xd
	mov r0, #0
	str r1, [r5, #0x5a0]
	bl FUN_ov16_020f069c
	ldmfd sp!, {r3, r4, r5, pc}
_020E0EE8: .word ov15_020E64C4
	arm_func_end FUN_ov15_020e0c90

	arm_func_start FUN_ov15_020e0eec
FUN_ov15_020e0eec: ; 0x020E0EEC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZN14CScreenManagerD2Ev
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e0eec

	arm_func_start FUN_ov15_020e0f00
FUN_ov15_020e0f00: ; 0x020E0F00
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZN14CScreenManagerD2Ev
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e0f00

	arm_func_start FUN_ov15_020e0f1c
FUN_ov15_020e0f1c: ; 0x020E0F1C
	stmfd sp!, {r3, r4, r5, lr}
	bl FUN_ov15_020e1058
	ldr r5, _020E0F64 ; =gAllocator
	mov r1, #0x720
	mov r0, r5
	bl _ZN9Allocator8allocateEm
	mov r4, r0
	ldr r1, _020E0F68 ; =0x4245384A
	ldr r2, _020E0F6C ; =FUN_ov15_020e1148
	ldr r3, _020E0F70 ; =FUN_ov15_020e115c
	mov r0, #0
	bl DWC_InitForProduction
	mov r0, r5
	mov r1, r4
	bl _ZN9Allocator10deallocateEPv
	mov r0, #6
	bl FUN_ov16_020f1490
	ldmfd sp!, {r3, r4, r5, pc}
_020E0F64: .word gAllocator
_020E0F68: .word 0x4245384A
_020E0F6C: .word FUN_ov15_020e1148
_020E0F70: .word FUN_ov15_020e115c
	arm_func_end FUN_ov15_020e0f1c

	arm_func_start FUN_ov15_020e0f74
FUN_ov15_020e0f74: ; 0x020E0F74
	bx lr
	arm_func_end FUN_ov15_020e0f74

	arm_func_start FUN_ov15_020e0f78
FUN_ov15_020e0f78: ; 0x020E0F78
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r9, _020E1040 ; =0x0000007E
	mov r8, #0
	mov r10, r0
	mov r0, r8
	mov r1, r9
	bl FS_UnloadOverlay
	ldr r7, _020E1044 ; =0x00000080
	mov r0, r8
	mov r1, r7
	bl FS_LoadOverlay
	ldr r6, _020E1048 ; =0x00000010
	mov r0, r8
	mov r1, r6
	bl FS_UnloadOverlay
	ldr r5, _020E104C ; =0x00000011
	mov r0, r8
	mov r1, r5
	bl FS_LoadOverlay
	ldr r11, _020E1050 ; =gAllocator
	ldr r1, _020E1054 ; =0x00040020
	mov r0, r11
	bl _ZN9Allocator8allocateEm
	mov r4, r0
	add r0, r4, #0x1f
	bic r0, r0, #0x1f
	mov r1, r8
	mov r2, #0x10
	bl DWC_StartUtility
	mov r0, r11
	mov r1, r4
	bl _ZN9Allocator10deallocateEPv
	mov r1, r7
	mov r0, r8
	bl FS_UnloadOverlay
	mov r1, r9
	mov r0, r8
	bl FS_LoadOverlay
	mov r1, r5
	mov r0, r8
	bl FS_UnloadOverlay
	mov r0, r8
	mov r1, r6
	bl FS_LoadOverlay
	bl FUN_02029bf8
	bl OS_WaitVBlankIntr
	mov r0, r10
	mov r1, #0x16
	bl FUN_ov15_020e10f4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E1040: .word 0x0000007E
_020E1044: .word 0x00000080
_020E1048: .word 0x00000010
_020E104C: .word 0x00000011
_020E1050: .word gAllocator
_020E1054: .word 0x00040020
	arm_func_end FUN_ov15_020e0f78

	arm_func_start FUN_ov15_020e1058
FUN_ov15_020e1058: ; 0x020E1058
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _020E10E8 ; =gAudioPlayer
	mov r4, #0x3e8
	mov r0, r5
	mov r1, r4
	bl FUN_0202c470
	mov r6, #0
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl _ZN11AudioPlayer12FUN_0202d774Emm
	b _020E1098
_020E1088:
	mov r0, r5
	bl FUN_0202b768
	bl OS_WaitVBlankIntr
	add r6, r6, #1
_020E1098:
	cmp r6, #0x3c
	blt _020E1088
	ldr r0, _020E10EC ; =0x0209AEC0
	bl FUN_0204665c
	ldr r4, _020E10E8 ; =gAudioPlayer
	mov r0, r4
	bl FUN_0202bc6c
	mov r0, r4
	bl FUN_0202b758
	mov r4, #0
	mov r0, r4
	bl FUN_02074fb8
	bl SND_Init
	ldr r0, _020E10F0 ; =0x0000FFFF
	mov r1, r4
	bl SND_UnlockChannel
	mov r0, #1
	bl SND_FlushCommand
	bl OS_WaitVBlankIntr
	ldmfd sp!, {r4, r5, r6, pc}
_020E10E8: .word gAudioPlayer
_020E10EC: .word gWirelessUtil
_020E10F0: .word 0x0000FFFF
	arm_func_end FUN_ov15_020e1058

	arm_func_start FUN_ov15_020e10f4
FUN_ov15_020e10f4: ; 0x020E10F4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020E1140 ; =0x00008003
	mov r6, r1
	mov r5, #1
_020E1104:
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020f1214
	bl OS_WaitVBlankIntr
	add r5, r5, #1
	cmp r5, #0x10
	ble _020E1104
	ldr r2, _020E1144 ; =0x04000208
	mov r0, #1
	ldrh r1, [r2]
	strh r0, [r2]
	bl OS_EnableInterrupts
	mov r0, r6
	bl OS_ResetSystem
	ldmfd sp!, {r4, r5, r6, pc}
_020E1140: .word 0x00008003
_020E1144: .word 0x04000208
	arm_func_end FUN_ov15_020e10f4

	arm_func_start FUN_ov15_020e1148
FUN_ov15_020e1148: ; 0x020E1148
	ldr r0, _020E1154 ; =gAllocator
	ldr r12, _020E1158 ; =_ZN9Allocator8allocateEm
	bx r12
_020E1154: .word gAllocator
_020E1158: .word _ZN9Allocator8allocateEm
	arm_func_end FUN_ov15_020e1148

	arm_func_start FUN_ov15_020e115c
FUN_ov15_020e115c: ; 0x020E115C
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020E1174 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	ldmfd sp!, {r3, pc}
_020E1174: .word gAllocator
	arm_func_end FUN_ov15_020e115c

	arm_func_start FUN_ov15_020e1178
FUN_ov15_020e1178: ; 0x020E1178
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZN14CScreenManagerD2Ev
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e1178

	arm_func_start FUN_ov15_020e118c
FUN_ov15_020e118c: ; 0x020E118C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZN14CScreenManagerD2Ev
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e118c

	arm_func_start FUN_ov15_020e11a8
FUN_ov15_020e11a8: ; 0x020E11A8
	ldrsb r2, [r1]
	mov r0, #1
	cmp r2, #0
	bxeq lr
_020E11B8:
	ldrsb r2, [r1]
	cmp r2, #0xa
	bne _020E11D0
	ldrsb r2, [r1, #1]
	cmp r2, #0
	addne r0, r0, #1
_020E11D0:
	ldrsb r2, [r1, #1]!
	cmp r2, #0
	bne _020E11B8
	bx lr
	arm_func_end FUN_ov15_020e11a8

	arm_func_start FUN_ov15_020e11e0
FUN_ov15_020e11e0: ; 0x020E11E0
	stmfd sp!, {r4, lr}
	mov r1, #5
	str r1, [r0, #8]
	ldr r1, _020E1218 ; =0x0209A454
	mov r4, #1
	strb r4, [r1, #0x81]
	ldrb r2, [r1, #0x83]
	mov r0, #6
	orr r2, r2, #0x40
	strb r2, [r1, #0x83]
	bl FUN_ov16_020f153c
	mov r0, r4
	bl _Z11SetNextMode8GameMode
	ldmfd sp!, {r4, pc}
_020E1218: .word unk_0209A454
	arm_func_end FUN_ov15_020e11e0

	arm_func_start FUN_ov15_020e121c
FUN_ov15_020e121c: ; 0x020E121C
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #5
	str r1, [r4, #8]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, _020E1258 ; =0x0209A454
	mov r1, #4
	str r1, [r0, #0x24]
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0x16
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	ldmfd sp!, {r4, pc}
_020E1258: .word unk_0209A454
	arm_func_end FUN_ov15_020e121c

	arm_func_start FUN_ov15_020e125c
FUN_ov15_020e125c: ; 0x020E125C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	str r1, [r5, #0x38]
	mov r3, #0xe
	mov r4, #1
	mov r1, r2
	str r3, [r5, #0x34]
	str r2, [r5, #0x40]
	strb r4, [r5, #0x44]
	bl FUN_ov15_020e11a8
	sub r1, r4, #2
	strb r0, [r5, #0x45]
	str r1, [r5, #0x3c]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020e125c

	arm_func_start FUN_ov15_020e1294
FUN_ov15_020e1294: ; 0x020E1294
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	ldr r5, _020E12C8 ; =gBgMenuManager
	mov r4, r6
_020E12A4:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov16_020f6084
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, #0x13
	blo _020E12A4
	ldmfd sp!, {r4, r5, r6, pc}
_020E12C8: .word gBgMenuManager
	arm_func_end FUN_ov15_020e1294

	arm_func_start FUN_ov15_020e12cc
FUN_ov15_020e12cc: ; 0x020E12CC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r1, [r4, #0x28]
	cmp r1, #0x12
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E12E4: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 3
	b _020E1330 ; case 4
	b _020E1330 ; case 5
	b _020E137C ; case 6
	b _020E137C ; case 7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 8
	b _020E13B8 ; case 9
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 11
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 12
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 13
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 14
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 15
	b _020E1460 ; case 16
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 17
	b _020E1428 ; case 18
_020E1330:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020E1348
	mov r1, #1
	bl FUN_ov15_020e29c0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E1348:
	cmp r1, #5
	bne _020E1358
	bl FUN_ov15_020e121c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E1358:
	cmp r1, #6
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _020E1480 ; =0x020A11DC
	add r0, r4, #0x100
	mov r2, #0x9c
	bl MI_CpuCopy8
	mov r0, r4
	bl FUN_ov15_020e11e0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E137C:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020E1390
	bl FUN_ov15_020e11e0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E1390:
	cmp r1, #5
	bne _020E13A4
	mov r1, #6
	bl FUN_ov15_020e29c0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E13A4:
	cmp r1, #6
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #5
	bl FUN_ov15_020e29c0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E13B8:
	ldr r7, _020E1484 ; =gBgMenuManager
	mov r6, #0
	mov r2, #6
	mov r0, r7
	mov r1, r6
	str r2, [r4, #0xfc]
	bl FUN_ov16_020f64cc
	mov r5, #9
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020f6084
	mov r0, r4
	bl FUN_ov15_020e22e8
	ldr r3, _020E1488 ; =0x020E6704
	sub r1, r5, #0xa
	str r1, [r4, #0x2c]
	mov r0, r4
	mov r1, r6
	mov r2, #0xc
	str r6, [r4, #0x28]
	str r3, [r4, #0x48]
	bl FUN_ov15_020e1ed8
	ldr r2, _020E148C ; =0x020E6734
	mov r0, r4
	mov r1, #5
	bl FUN_ov15_020e125c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E1428:
	ldr r1, [r4, #0xfc]
	cmp r1, #0xc
	bne _020E1438
	bl FUN_ov15_020e11e0
_020E1438:
	mov r5, #0
	mov r2, #9
	ldr r0, _020E1484 ; =gBgMenuManager
	mov r1, r5
	str r2, [r4, #0xfc]
	bl FUN_ov16_020f64cc
	sub r0, r5, #1
	str r5, [r4, #0x28]
	str r0, [r4, #0x2c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E1460:
	ldr r1, [r4, #0xfc]
	cmp r1, #4
	bne _020E1478
	mov r1, #5
	bl FUN_ov15_020e29c0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E1478:
	bl FUN_ov15_020e11e0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E1480: .word unk_020A11DC
_020E1484: .word gBgMenuManager
_020E1488: .word ov15_020E6704
_020E148C: .word ov15_020E6734
	arm_func_end FUN_ov15_020e12cc

	arm_func_start FUN_ov15_020e1490
FUN_ov15_020e1490: ; 0x020E1490
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x2c]
	mov r4, r1
	cmp r0, r4
	beq _020E14B4
	ldr r0, _020E14BC ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
_020E14B4:
	str r4, [r5, #0x2c]
	ldmfd sp!, {r3, r4, r5, pc}
_020E14BC: .word gAudioPlayer
	arm_func_end FUN_ov15_020e1490

	arm_func_start FUN_ov15_020e14c0
FUN_ov15_020e14c0: ; 0x020E14C0
	cmp r1, #0xa
	addls pc, pc, r1, lsl #2
	b _020E1508
_020E14CC: ; jump table
	b _020E1508 ; case 0
	b _020E1508 ; case 1
	b _020E1508 ; case 2
	b _020E1508 ; case 3
	b _020E14F8 ; case 4
	b _020E14F8 ; case 5
	b _020E1500 ; case 6
	b _020E1500 ; case 7
	b _020E1508 ; case 8
	b _020E14F8 ; case 9
	b _020E14F8 ; case 10
_020E14F8:
	mov r0, #0
	bx lr
_020E1500:
	mov r0, #1
	bx lr
_020E1508:
	mvn r0, #0
	bx lr
	arm_func_end FUN_ov15_020e14c0

	arm_func_start FUN_ov15_020e1510
FUN_ov15_020e1510: ; 0x020E1510
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r7, r1
	cmp r0, #4
	ldreqb r0, [r5, #0x11]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r6, _020E17E8 ; =gBgMenuManager
	mov r4, #0
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	tst r7, #1
	beq _020E1670
	ldr r0, [r5, #0xc]
	sub r6, r4, #1
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _020E15C8
_020E1568: ; jump table
	b _020E1584 ; case 0
	b _020E15C8 ; case 1
	b _020E15AC ; case 2
	b _020E15B8 ; case 3
	b _020E15B8 ; case 4
	b _020E1584 ; case 5
	b _020E1584 ; case 6
_020E1584:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _020E15A0
	cmp r0, #1
	moveq r4, #7
	moveq r6, #2
	b _020E15C8
_020E15A0:
	mov r4, #5
	mov r6, #1
	b _020E15C8
_020E15AC:
	mov r6, #4
	mov r4, #0x10
	b _020E15C8
_020E15B8:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	movge r6, #4
	movge r4, #0x12
_020E15C8:
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r4, #0x12
	addls pc, pc, r4, lsl #2
	b _020E1658
_020E15DC: ; jump table
	b _020E1658 ; case 0
	b _020E1658 ; case 1
	b _020E1658 ; case 2
	b _020E1658 ; case 3
	b _020E1628 ; case 4
	b _020E1634 ; case 5
	b _020E1628 ; case 6
	b _020E1640 ; case 7
	b _020E1658 ; case 8
	b _020E1640 ; case 9
	b _020E1658 ; case 10
	b _020E1658 ; case 11
	b _020E1658 ; case 12
	b _020E1658 ; case 13
	b _020E1658 ; case 14
	b _020E1658 ; case 15
	b _020E1634 ; case 16
	b _020E1658 ; case 17
	b _020E164C ; case 18
_020E1628:
	ldr r0, _020E17EC ; =gAudioPlayer
	mov r1, #8
	b _020E1654
_020E1634:
	ldr r0, _020E17EC ; =gAudioPlayer
	mov r1, #6
	b _020E1654
_020E1640:
	ldr r0, _020E17EC ; =gAudioPlayer
	mov r1, #4
	b _020E1654
_020E164C:
	ldr r0, _020E17EC ; =gAudioPlayer
	mov r1, #1
_020E1654:
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
_020E1658:
	add r0, r5, r6
	ldrb r1, [r0, #0x50]
	ldr r0, _020E17E8 ; =gBgMenuManager
	bl FUN_ov16_020f6530
	str r4, [r5, #0x28]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E1670:
	tst r7, #2
	beq _020E1708
	ldr r0, [r5, #0xc]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E1688: ; jump table
	b _020E16E4 ; case 0
	b _020E16A4 ; case 1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 3
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 4
	b _020E16E4 ; case 5
	b _020E16E4 ; case 6
_020E16A4:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	bge _020E16C0
	ldr r0, _020E17EC ; =gAudioPlayer
	mov r1, #9
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E16C0:
	ldr r0, _020E17EC ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldrb r1, [r5, #0x53]
	mov r0, r6
	bl FUN_ov16_020f6530
	mov r0, #9
	str r0, [r5, #0x28]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E16E4:
	ldr r0, _020E17EC ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldrb r1, [r5, #0x52]
	mov r0, r6
	bl FUN_ov16_020f6530
	mov r0, #7
	str r0, [r5, #0x28]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E1708:
	tst r7, #0x20
	beq _020E1778
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _020E1728
	sub r0, r0, #5
	cmp r0, #1
	ldmhifd sp!, {r3, r4, r5, r6, r7, pc}
_020E1728:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	bge _020E1740
	mov r0, r5
	mov r1, #0
	b _020E1754
_020E1740:
	add r0, r0, #1
	mov r2, r0, lsr #0x1f
	rsb r1, r2, r0, lsl #31
	mov r0, r5
	add r1, r2, r1, ror #31
_020E1754:
	bl FUN_ov15_020e1490
	ldr r1, [r5, #0x2c]
	ldr r0, _020E17F0 ; =0x0209A070
	add r1, r1, #1
	add r1, r5, r1
	ldrb r1, [r1, #0x50]
	mov r2, #1
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E1778:
	tst r7, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _020E1798
	sub r0, r0, #5
	cmp r0, #1
	ldmhifd sp!, {r3, r4, r5, r6, r7, pc}
_020E1798:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	bge _020E17B0
	mov r0, r5
	mov r1, #1
	b _020E17C4
_020E17B0:
	add r0, r0, #1
	mov r2, r0, lsr #0x1f
	rsb r1, r2, r0, lsl #31
	mov r0, r5
	add r1, r2, r1, ror #31
_020E17C4:
	bl FUN_ov15_020e1490
	ldr r1, [r5, #0x2c]
	ldr r0, _020E17F0 ; =0x0209A070
	add r1, r1, #1
	add r1, r5, r1
	ldrb r1, [r1, #0x50]
	mov r2, #1
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E17E8: .word gBgMenuManager
_020E17EC: .word gAudioPlayer
_020E17F0: .word unk_0209A070
	arm_func_end FUN_ov15_020e1510

	arm_func_start FUN_ov15_020e17f4
FUN_ov15_020e17f4: ; 0x020E17F4
	ldr r0, _020E180C ; =gBgMenuManager
	mov r3, r2
	mov r2, r1
	ldr r12, _020E1810 ; = FUN_ov16_020f6b3c
	mov r1, #0
	bx r12
_020E180C: .word gBgMenuManager
_020E1810: .word FUN_ov16_020f6b3c
	arm_func_end FUN_ov15_020e17f4

	arm_func_start FUN_ov15_020e1814
FUN_ov15_020e1814: ; 0x020E1814
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x1c]
	bl FUN_ov15_020e14c0
	movs r1, r0
	bmi _020E1840
	ldr r0, [r4, #0x30]
	cmp r1, r0
	bge _020E1840
	mov r0, r4
	bl FUN_ov15_020e1490
_020E1840:
	ldr r1, [r4, #0x1c]
	ldr r0, _020E1850 ; =0x0209A070
	bl FUN_ov16_020f6e2c
	ldmfd sp!, {r4, pc}
_020E1850: .word unk_0209A070
	arm_func_end FUN_ov15_020e1814

	arm_func_start FUN_ov15_020e1854
FUN_ov15_020e1854: ; 0x020E1854
	stmfd sp!, {r4, lr}
	ldr r1, [r0, #0x1c]
	ldr r0, [r0, #0x20]
	cmp r0, r1
	bne _020E1874
	ldr r0, _020E1898 ; =0x0209A070
	bl FUN_ov16_020f6e2c
	ldmfd sp!, {r4, pc}
_020E1874:
	ldr r4, _020E1898 ; =0x0209A070
	mov r0, r4
	bl FUN_ov16_020f6d3c
	movs r1, r0
	ldmmifd sp!, {r4, pc}
	mov r0, r4
	mov r2, #1
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r4, pc}
_020E1898: .word unk_0209A070
	arm_func_end FUN_ov15_020e1854

	arm_func_start FUN_ov15_020e189c
FUN_ov15_020e189c: ; 0x020E189C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x20]
	cmp r0, #0x12
	addls pc, pc, r0, lsl #2
	b _020E193C
_020E18B4: ; jump table
	b _020E193C ; case 0
	b _020E193C ; case 1
	b _020E193C ; case 2
	b _020E193C ; case 3
	b _020E1900 ; case 4
	b _020E190C ; case 5
	b _020E1900 ; case 6
	b _020E1918 ; case 7
	b _020E193C ; case 8
	b _020E1918 ; case 9
	b _020E1924 ; case 10
	b _020E193C ; case 11
	b _020E193C ; case 12
	b _020E193C ; case 13
	b _020E193C ; case 14
	b _020E193C ; case 15
	b _020E190C ; case 16
	b _020E193C ; case 17
	b _020E1930 ; case 18
_020E1900:
	ldr r0, _020E197C ; =gAudioPlayer
	mov r1, #8
	b _020E1938
_020E190C:
	ldr r0, _020E197C ; =gAudioPlayer
	mov r1, #6
	b _020E1938
_020E1918:
	ldr r0, _020E197C ; =gAudioPlayer
	mov r1, #4
	b _020E1938
_020E1924:
	ldr r0, _020E197C ; =gAudioPlayer
	mov r1, #9
	b _020E1938
_020E1930:
	ldr r0, _020E197C ; =gAudioPlayer
	mov r1, #1
_020E1938:
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
_020E193C:
	ldr r5, _020E1980 ; =0x0209A070
	ldr r1, [r6, #0x1c]
	mov r0, r5
	bl FUN_ov16_020f6d3c
	movs r4, r0
	bmi _020E1970
	mov r0, r5
	mov r1, r4
	mov r2, #1
	bl FUN_ov16_020f6e8c
	ldr r0, _020E1984 ; =gBgMenuManager
	mov r1, r4
	bl FUN_ov16_020f6530
_020E1970:
	ldr r0, [r6, #0x1c]
	str r0, [r6, #0x28]
	ldmfd sp!, {r4, r5, r6, pc}
_020E197C: .word gAudioPlayer
_020E1980: .word unk_0209A070
_020E1984: .word gBgMenuManager
	arm_func_end FUN_ov15_020e189c

	arm_func_start FUN_ov15_020e1988
FUN_ov15_020e1988: ; 0x020E1988
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	mov r5, r1
	cmp r0, #4
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _020E1A74 ; =gBgMenuManager
	mov r1, #0
	bl FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrh r0, [r5, #4]
	cmp r0, #1
	bne _020E1A38
	ldrh r0, [r5, #6]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	bne _020E1A04
	mov r0, #1
	strb r0, [r4, #0x11]
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	mov r0, r4
	bl FUN_ov15_020e17f4
	str r0, [r4, #0x1c]
	cmp r0, #0
	beq _020E1A04
	mov r0, r4
	bl FUN_ov15_020e1814
_020E1A04:
	ldrh r1, [r5]
	mov r0, r4
	str r1, [r4, #0x14]
	ldrh r2, [r5, #2]
	str r2, [r4, #0x18]
	bl FUN_ov15_020e17f4
	ldr r1, [r4, #0x1c]
	str r0, [r4, #0x20]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov15_020e1854
	ldmfd sp!, {r3, r4, r5, pc}
_020E1A38:
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	ldrne r1, [r4, #0x1c]
	cmpne r1, #0
	beq _020E1A60
	ldr r0, [r4, #0x20]
	cmp r0, r1
	bne _020E1A60
	mov r0, r4
	bl FUN_ov15_020e189c
_020E1A60:
	mov r0, #0
	str r0, [r4, #0x20]
	str r0, [r4, #0x1c]
	strb r0, [r4, #0x11]
	ldmfd sp!, {r3, r4, r5, pc}
_020E1A74: .word gBgMenuManager
	arm_func_end FUN_ov15_020e1988

	arm_func_start FUN_ov15_020e1a78
FUN_ov15_020e1a78: ; 0x020E1A78
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x6c
	mov r1, #0
	mov r2, #0x90
	bl MI_CpuFill8
	ldr r0, _020E1AA8 ; =0x020E676C
	add r1, r4, #0x6c
	bl FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020E1AA8: .word ov15_020E676C
	arm_func_end FUN_ov15_020e1a78

	arm_func_start FUN_ov15_020e1aac
FUN_ov15_020e1aac: ; 0x020E1AAC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x6c]
	cmp r6, #0
	ldrne r7, _020E1AF4 ; =0x020E405C
	ldrne r1, [r7]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x6c
	mov r4, #0xc
_020E1AD0:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl FUN_ov16_020f32b4
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _020E1AD0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E1AF4: .word ov15_020E405C
	arm_func_end FUN_ov15_020e1aac

	arm_func_start FUN_ov15_020e1af8
FUN_ov15_020e1af8: ; 0x020E1AF8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x6c
	mov r4, #0xc
_020E1B08:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #0xc
	blt _020E1B08
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020e1af8

	arm_func_start FUN_ov15_020e1b20
FUN_ov15_020e1b20: ; 0x020E1B20
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r12, #0xc
	mla r0, r1, r12, r0
	ldr r4, [r0, #0x6c]
	ldr r5, [sp, #0x1c]
	mov r7, r2
	cmp r4, #0
	mov r6, r3
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r2, r6
	add r1, r7, #1
	bl FUN_ov16_020f18e8
	mov r7, r0
	cmp r5, #0
	beq _020E1B78
	ldr r0, [sp, #0x18]
	ldr r2, [r5]
	mov r1, r4
	bl FUN_ov16_020f19d4
	str r0, [r5]
_020E1B78:
	cmp r6, #0
	blt _020E1B90
	mov r0, r4
	mov r2, r6
	mov r1, #0
	bl FUN_ov16_020f1138
_020E1B90:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020e1b20

	arm_func_start FUN_ov15_020e1b98
FUN_ov15_020e1b98: ; 0x020E1B98
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	mov r5, r0
	bl G2_GetBG3CharPtr
	mov r4, #0x20
	mov r6, #0
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2_GetBG3CharPtr
	mov r1, r4
	bl DC_FlushRange
	str r4, [sp, #8]
	mov r7, #3
	mov r2, r6
	mov r4, #5
	str r7, [sp]
	add r6, sp, #8
	mov r0, r5
	str r6, [sp, #4]
	mov r1, #2
	mov r3, r4
	bl FUN_ov15_020e1b20
	str r7, [sp]
	mov r2, r0
	str r6, [sp, #4]
	mov r0, r5
	mov r1, r7
	mov r3, r4
	bl FUN_ov15_020e1b20
	str r7, [sp]
	mov r2, r0
	str r6, [sp, #4]
	mov r0, r5
	mov r1, #4
	mov r3, r4
	bl FUN_ov15_020e1b20
	str r7, [sp]
	mov r2, r0
	str r6, [sp, #4]
	mov r1, r4
	mov r0, r5
	mov r3, #6
	bl FUN_ov15_020e1b20
	mov r3, r0
	ldr r0, [r5, #0x58]
	cmp r0, #0
	ldrne r0, [r5, #0x5c]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020E1CB0
	ldrh r2, [r5, #0x64]
	ldrh r1, [r5, #0x66]
	ldr r4, [sp, #8]
	ldr r0, [r5, #0x58]
	mul r1, r2, r1
	mov r1, r1, lsl #1
	add r2, r3, #1
	mov r3, #0
	str r4, [r5, #0x60]
	bl FUN_ov16_020f1868
	ldrh r1, [r5, #0x64]
	ldrh r0, [r5, #0x66]
	ldr r2, [sp, #8]
	mul r0, r1, r0
	add r0, r2, r0, lsl #5
	str r0, [sp, #8]
_020E1CB0:
	bl G2_GetBG1CharPtr
	mov r9, #0x20
	mov r4, #0
	mov r1, r0
	mov r0, r4
	mov r2, r9
	bl MIi_CpuClearFast
	bl G2_GetBG1CharPtr
	mov r1, r9
	bl DC_FlushRange
	mov r6, #6
	str r9, [sp, #8]
	mov r8, #1
	str r8, [sp]
	add r7, sp, #8
	mov r0, r5
	str r7, [sp, #4]
	mov r1, r6
	mov r2, r4
	mov r3, #3
	bl FUN_ov15_020e1b20
	str r8, [sp]
	mov r2, r0
	str r7, [sp, #4]
	mov r0, r5
	mov r1, #7
	mov r3, r6
	bl FUN_ov15_020e1b20
	str r8, [sp]
	mov r2, r0
	str r7, [sp, #4]
	mov r0, r5
	mov r1, #8
	mov r3, r6
	bl FUN_ov15_020e1b20
	str r8, [sp]
	mov r2, r0
	str r7, [sp, #4]
	mov r0, r5
	mov r1, #9
	mov r3, r6
	bl FUN_ov15_020e1b20
	str r8, [sp]
	mov r2, r0
	str r7, [sp, #4]
	mov r0, r5
	mov r1, #0xa
	mov r3, r6
	bl FUN_ov15_020e1b20
	str r8, [sp]
	mov r2, r0
	mov r3, r6
	mov r0, r5
	mov r1, #0xb
	str r7, [sp, #4]
	bl FUN_ov15_020e1b20
	bl G2_GetBG2CharPtr
	mov r1, r0
	mov r0, r4
	mov r2, r9
	bl MIi_CpuClearFast
	bl G2_GetBG2CharPtr
	mov r1, r9
	bl DC_FlushRange
	str r9, [sp, #8]
	mov r0, #2
	stmia sp, {r0, r7}
	mov r0, r5
	mov r1, r8
	mov r3, r8
	mov r2, r4
	bl FUN_ov15_020e1b20
	ldr r3, [r5, #0x78]
	cmp r3, #0
	beq _020E1DF0
	ldr r0, [r3, #0xc]
	ldr r2, [r3, #0x10]
	mov r1, r4
	add r0, r3, r0
	bl GX_LoadBG2Scr
_020E1DF0:
	bl FUN_ov16_020f10ac
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov15_020e1b98

	arm_func_start FUN_ov15_020e1dfc
FUN_ov15_020e1dfc: ; 0x020E1DFC
	stmfd sp!, {r3, lr}
	mov lr, r0
	ldr r0, [lr, #0x58]
	cmp r0, #0
	ldrne r0, [lr, #0x5c]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrneb r0, [lr, #0x68]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r2, [lr, #0x64]
	ldrh r1, [lr, #0x66]
	mov r12, #0
	ldr r0, [lr, #0x5c]
	mul r3, r2, r1
	ldr r1, [lr, #0x60]
	mov r2, r3, lsl #5
	strb r12, [lr, #0x68]
	bl GX_LoadBG3Char
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020e1dfc

	arm_func_start FUN_ov15_020e1e54
FUN_ov15_020e1e54: ; 0x020E1E54
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x20
	ldr r12, [r0, #0x58]
	mov r1, #0
	cmp r12, #0
	ldrne r0, [r0, #0x5c]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, pc}
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	mov r1, #0
	mov r0, #6
	str r0, [sp, #0xc]
	mov r0, #0x16
	str r0, [sp, #0x10]
	mov r0, #0xc
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, _020E1ED4 ; =gBgMenuManager
	mov r2, r1
	mov r3, r1
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, pc}
_020E1ED4: .word gBgMenuManager
	arm_func_end FUN_ov15_020e1e54

	arm_func_start FUN_ov15_020e1ed8
FUN_ov15_020e1ed8: ; 0x020E1ED8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	add r0, r4, #0x58
	mov r8, r1
	mov r7, r2
	bl FUN_ov16_020f2f20
	ldr r5, _020E1F74 ; =gFont12
	mov r6, #1
	ldr r0, [r5]
	mov r1, r6
	mov r2, #4
	bl FUN_02043310
	mov r0, #3
	str r0, [sp]
	stmib sp, {r0, r6}
	mov r0, #0
	str r0, [sp, #0xc]
	str r8, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldrh r2, [r4, #0x64]
	ldrh r3, [r4, #0x66]
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x5c]
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl FUN_ov16_020f2184
	ldr r0, [r5]
	bl FUN_0204331c
	ldrh r2, [r4, #0x64]
	ldrh r1, [r4, #0x66]
	ldr r0, [r4, #0x5c]
	strb r6, [r4, #0x68]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020E1F74: .word gFont12
	arm_func_end FUN_ov15_020e1ed8

	arm_func_start FUN_ov15_020e1f78
FUN_ov15_020e1f78: ; 0x020E1F78
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x3c
	str r0, [sp, #0x20]
	mov r4, #7
	cmp r1, #0
	mov r7, #8
	movne r7, r4
	ldr r2, [sp, #0x20]
	movne r4, #0xb
	mov r3, #0xc
	mla r2, r4, r3, r2
	mov r6, #4
	mov r0, #0x18
	mov r1, #9
	ldr r5, [r2, #0x6c]
	movne r6, #2
	movne r0, #0x1c
	movne r1, #0xa
	cmp r5, #0
	beq _020E2034
	mov r2, #3
	mov r4, #0
	str r2, [sp]
	mov r2, r6, lsl #0x18
	mov r3, r7, lsl #0x18
	str r4, [sp, #4]
	mov r2, r2, asr #0x18
	str r2, [sp, #8]
	mov r2, r3, asr #0x18
	str r2, [sp, #0xc]
	and r0, r0, #0xff
	str r0, [sp, #0x10]
	and r0, r1, #0xff
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r1, [r5, #0xc]
	ldr r0, _020E2170 ; =gBgMenuManager
	add r6, r5, r1
	mov r1, r4
	mov r3, r4
	mov r2, #1
	str r6, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	mov r0, r5
	mov r1, r4
	mov r2, #6
	bl FUN_ov16_020f1138
_020E2034:
	ldr r0, [sp, #0x20]
	ldr r1, [r0, #0x84]
	cmp r1, #0
	beq _020E2120
	ldr r0, [r1, #0xc]
	mov r10, #0
	add r7, r1, r0
	mov r6, r10
	mov r5, #0xd
	mov r4, #6
	mov r11, #3
_020E2060:
	cmp r10, #0
	moveq r8, #7
	moveq r0, #4
	movne r0, #6
	movne r8, #0x13
	stmia sp, {r0, r6}
	mov r0, r8, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	str r11, [sp, #0x14]
	moveq r9, #5
	str r6, [sp, #0x18]
	ldr r0, _020E2170 ; =gBgMenuManager
	mov r1, r6
	mov r2, r6
	mov r3, r6
	movne r9, #7
	str r7, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	mov r0, #0x30
	strh r0, [sp, #0x30]
	mov r0, #0x18
	strh r0, [sp, #0x32]
	add r0, r7, #0x24
	str r0, [sp, #0x38]
	strh r8, [sp, #0x24]
	strh r5, [sp, #0x26]
	strh r4, [sp, #0x28]
	strh r11, [sp, #0x2a]
	strh r6, [sp, #0x2c]
	strh r6, [sp, #0x2e]
	strb r6, [sp, #0x34]
	str r6, [sp]
	add r0, sp, #0x24
	stmib sp, {r0, r6}
	str r6, [sp, #0xc]
	ldr r0, _020E2170 ; =gBgMenuManager
	mov r3, r9
	mov r1, r6
	mov r2, r6
	str r6, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add r10, r10, #1
	add r7, r7, #0x48
	cmp r10, #2
	blt _020E2060
_020E2120:
	ldr r4, _020E2174 ; =0x0209A070
	mov r5, #0
	mov r0, r4
	mov r1, r5
	mov r2, #5
	mov r3, #4
	str r5, [sp]
	bl FUN_ov16_020f6c8c
	ldr r1, [sp, #0x20]
	mov r2, #7
	strb r0, [r1, #0x51]
	mov r0, r4
	mov r1, r5
	mov r3, #6
	str r5, [sp]
	bl FUN_ov16_020f6c8c
	ldr r1, [sp, #0x20]
	strb r0, [r1, #0x52]
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E2170: .word gBgMenuManager
_020E2174: .word unk_0209A070
	arm_func_end FUN_ov15_020e1f78

	arm_func_start FUN_ov15_020e2178
FUN_ov15_020e2178: ; 0x020E2178
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r4, r0
	ldr r5, [r4, #0xcc]
	cmp r5, #0
	beq _020E21E0
	mov r0, #8
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #6
	mov r1, #0
	str r0, [sp, #0xc]
	mov r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #0xc
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r3, [r5, #0xc]
	ldr r0, _020E22E4 ; =gBgMenuManager
	add r5, r5, r3
	mov r3, r1
	str r5, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020E21E0:
	ldr r2, [r4, #0x9c]
	cmp r2, #0
	beq _020E225C
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r8, r2, r0
	mov r7, #0xc
	mov r6, #0xe
	mov r5, #8
	mov r3, #3
	mov r2, #0x40
	mov r0, #0x18
	strh r3, [sp, #0x26]
	strh r2, [sp, #0x2c]
	strh r0, [sp, #0x2e]
	strh r7, [sp, #0x20]
	strh r6, [sp, #0x22]
	strh r5, [sp, #0x24]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strb r1, [sp, #0x30]
	str r8, [sp, #0x34]
	add r0, sp, #0x20
	str r1, [sp]
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _020E22E4 ; =gBgMenuManager
	mov r2, r1
	mov r3, #9
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
_020E225C:
	ldr r1, [r4, #0xb4]
	cmp r1, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r1, #0xc]
	ldr r4, _020E22E4 ; =gBgMenuManager
	mov r9, #0
	add r10, r1, r0
	mov r8, #0xa
	mov r7, #0xb
	mov r6, #0xc
	mov r5, #3
	mov r11, #1
_020E2290:
	add r0, r9, #0xb
	str r0, [sp]
	mov r0, #0
	stmib sp, {r0, r8}
	str r7, [sp, #0xc]
	str r6, [sp, #0x10]
	str r5, [sp, #0x14]
	str r0, [sp, #0x18]
	mov r1, #0
	mov r0, r4
	mov r2, r11
	mov r3, r1
	str r10, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add r0, r9, #1
	and r9, r0, #0xff
	cmp r9, #4
	add r10, r10, #0x48
	blo _020E2290
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E22E4: .word gBgMenuManager
	arm_func_end FUN_ov15_020e2178

	arm_func_start FUN_ov15_020e22e8
FUN_ov15_020e22e8: ; 0x020E22E8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x2c
	ldr r2, [r0, #0xa8]
	cmp r2, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, pc}
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r5, r2, r0
	mov r4, #0xc
	mov lr, #0xe
	mov r12, #8
	mov r3, #3
	mov r2, #0x40
	mov r0, #0x18
	strh r3, [sp, #0x1a]
	strh r2, [sp, #0x20]
	strh r0, [sp, #0x22]
	strh r4, [sp, #0x14]
	strh lr, [sp, #0x16]
	strh r12, [sp, #0x18]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strb r1, [sp, #0x24]
	str r5, [sp, #0x28]
	add r0, sp, #0x14
	str r1, [sp]
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _020E2378 ; =gBgMenuManager
	mov r2, r1
	mov r3, #0xa
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, pc}
_020E2378: .word gBgMenuManager
	arm_func_end FUN_ov15_020e22e8

	arm_func_start FUN_ov15_020e237c
FUN_ov15_020e237c: ; 0x020E237C
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x38
	mov r4, r0
	ldr r12, [r4, #0xd8]
	cmp r12, #0
	beq _020E23E4
	mov r0, #0xf
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #8
	mov r1, #0
	str r0, [sp, #0xc]
	mov r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #9
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r3, [r12, #0xc]
	ldr r0, _020E2468 ; =gBgMenuManager
	add r12, r12, r3
	mov r3, r1
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020E23E4:
	ldr r2, [r4, #0x90]
	cmp r2, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r2, #0xc]
	mov r1, #0
	add lr, r2, r0
	mov r12, #0xd
	mov r4, #6
	mov r3, #3
	mov r2, #0x30
	mov r0, #0x18
	strh r3, [sp, #0x26]
	strh r2, [sp, #0x2c]
	strh r0, [sp, #0x2e]
	strh r12, [sp, #0x20]
	strh r12, [sp, #0x22]
	strh r4, [sp, #0x24]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strb r1, [sp, #0x30]
	str lr, [sp, #0x34]
	add r0, sp, #0x20
	str r1, [sp]
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _020E2468 ; =gBgMenuManager
	mov r2, r1
	mov r3, #0x10
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add sp, sp, #0x38
	ldmfd sp!, {r4, pc}
_020E2468: .word gBgMenuManager
	arm_func_end FUN_ov15_020e237c

	arm_func_start FUN_ov15_020e246c
FUN_ov15_020e246c: ; 0x020E246C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x38
	mov r4, r0
	ldr r5, [r4, #0xe4]
	cmp r5, #0
	beq _020E24D4
	mov r0, #0x11
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #6
	mov r1, #0
	str r0, [sp, #0xc]
	mov r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #0xc
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r3, [r5, #0xc]
	ldr r0, _020E255C ; =gBgMenuManager
	add r5, r5, r3
	mov r3, r1
	str r5, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020E24D4:
	ldr r2, [r4, #0x90]
	cmp r2, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r5, r2, r0
	mov lr, #0xd
	mov r12, #0xe
	mov r4, #6
	mov r3, #3
	mov r2, #0x30
	mov r0, #0x18
	strh r3, [sp, #0x26]
	strh r2, [sp, #0x2c]
	strh r0, [sp, #0x2e]
	strh lr, [sp, #0x20]
	strh r12, [sp, #0x22]
	strh r4, [sp, #0x24]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strb r1, [sp, #0x30]
	str r5, [sp, #0x34]
	add r0, sp, #0x20
	str r1, [sp]
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _020E255C ; =gBgMenuManager
	mov r2, r1
	mov r3, #0x12
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, pc}
_020E255C: .word gBgMenuManager
	arm_func_end FUN_ov15_020e246c

	arm_func_start FUN_ov15_020e2560
FUN_ov15_020e2560: ; 0x020E2560
	ldr r0, _020E256C ; =gBgMenuManager
	ldr r12, _020E2570 ; = FUN_ov16_020f6274
	bx r12
_020E256C: .word gBgMenuManager
_020E2570: .word FUN_ov16_020f6274
	arm_func_end FUN_ov15_020e2560

	arm_func_start FUN_ov15_020e2574
FUN_ov15_020e2574: ; 0x020E2574
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, #0
	sub r5, r6, #1
	ldr r0, _020E2624 ; =0x020A11DC
	add r1, r7, #0x100
	mov r2, #0x9c
	str r6, [r7, #8]
	str r6, [r7, #0x48]
	strb r6, [r7, #0x10]
	strb r6, [r7, #0x11]
	str r5, [r7, #0x14]
	str r5, [r7, #0x18]
	str r6, [r7, #0x1c]
	str r6, [r7, #0x20]
	str r6, [r7, #0x24]
	str r6, [r7, #0x28]
	bl MI_CpuCopy8
	mov r4, #5
	mov r1, r6
	mov r2, r4
	add r0, r7, #0x50
	str r6, [r7, #0xc]
	str r6, [r7, #0xfc]
	bl MI_CpuFill8
	ldr r0, _020E2628 ; =0x0209A070
	mov r1, r4
	bl FUN_ov16_020f6c20
	add r0, r7, #0x58
	str r5, [r7, #0x3c]
	mov r1, #1
	str r6, [r7, #0x34]
	str r6, [r7, #0x38]
	str r6, [r7, #0x40]
	strb r6, [r7, #0x44]
	strb r6, [r7, #0x45]
	bl FUN_ov16_020f2f7c
	add r0, r7, #0x58
	mov r1, #0x16
	mov r2, #0xc
	bl FUN_ov16_020f2fa8
	mov r0, r7
	bl FUN_ov15_020e1a78
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E2624: .word unk_020A11DC
_020E2628: .word unk_0209A070
	arm_func_end FUN_ov15_020e2574

	arm_func_start FUN_ov15_020e262c
FUN_ov15_020e262c: ; 0x020E262C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_020E2644: ; jump table
	ldmfd sp!, {r4, r5, r6, pc} ; case 0
	b _020E265C ; case 1
	b _020E2684 ; case 2
	b _020E26A4 ; case 3
	b _020E26CC ; case 4
	b _020E26CC ; case 5
_020E265C:
	add r0, r4, #0x6c
	mov r1, #0xc
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov15_020e1aac
	mov r0, #2
	str r0, [r4, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_020E2684:
	bl FUN_ov15_020e1b98
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_020E26A4:
	ldr r1, _020E273C ; =0x020E64D4
	ldr r1, [r1]
	cmp r1, #3
	bne _020E26BC
	mov r1, #1
	b _020E26C0
_020E26BC:
	mov r1, #0
_020E26C0:
	bl FUN_ov15_020e29c0
	mov r0, #4
	str r0, [r4, #8]
_020E26CC:
	mov r0, r4
	bl FUN_ov15_020e2560
	ldr r0, [r4, #4]
	add r1, r4, #0x34
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	mov r0, r4
	bl FUN_ov15_020e2bc8
	ldr r6, _020E2740 ; =gBgMenuManager
	mov r5, #0
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020f672c
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x28]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov15_020e12cc
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020f672c
	ldmfd sp!, {r4, r5, r6, pc}
_020E273C: .word ov15_020E64D4
_020E2740: .word gBgMenuManager
	arm_func_end FUN_ov15_020e262c

	arm_func_start FUN_ov15_020e2744
FUN_ov15_020e2744: ; 0x020E2744
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #8]
	cmp r1, #4
	cmpne r1, #5
	cmpne r1, #6
	ldmnefd sp!, {r3, pc}
	bl FUN_ov15_020e1dfc
	ldr r0, _020E2770 ; =gBgMenuManager
	mov r1, #0
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r3, pc}
_020E2770: .word gBgMenuManager
	arm_func_end FUN_ov15_020e2744

	arm_func_start FUN_ov15_020e2774
FUN_ov15_020e2774: ; 0x020E2774
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020E27B4 ; =gBgMenuManager
	mov r1, #0
	bl FUN_ov16_020f5af0
	ldr r0, _020E27B8 ; =0x0209A070
	bl FUN_ov16_020f6c58
	add r0, r4, #0x6c
	mov r1, #0xc
	bl FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov15_020e1af8
	add r0, r4, #0x58
	mov r1, #1
	bl FUN_ov16_020f2fe4
	ldmfd sp!, {r4, pc}
_020E27B4: .word gBgMenuManager
_020E27B8: .word unk_0209A070
	arm_func_end FUN_ov15_020e2774

	arm_func_start FUN_ov15_020e27bc
FUN_ov15_020e27bc: ; 0x020E27BC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	ldr r0, _020E2988 ; =gBgMenuManager
	mov r1, r4
	mov r2, r4
	bl FUN_ov16_020f5ff4
	ldr r0, _020E298C ; =0x0209A070
	bl FUN_ov16_020f6c4c
	mov r0, r5
	bl FUN_ov15_020e1e54
	ldr r0, [r5, #0xc]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_020E27F8: ; jump table
	b _020E2814 ; case 0
	b _020E284C ; case 1
	b _020E2880 ; case 2
	b _020E28D0 ; case 3
	b _020E2904 ; case 4
	b _020E2938 ; case 5
	b _020E2960 ; case 6
_020E2814:
	mov r0, r5
	mov r1, r4
	bl FUN_ov15_020e1f78
	ldr r3, _020E2990 ; =0x020E6788
	mov r0, r5
	mov r1, r4
	mov r2, #0x1a
	str r3, [r5, #0x48]
	bl FUN_ov15_020e1ed8
	ldr r2, _020E2994 ; =0x020E67AC
	mov r0, r5
	mov r1, #5
	bl FUN_ov15_020e125c
	ldmfd sp!, {r3, r4, r5, pc}
_020E284C:
	mov r0, r5
	bl FUN_ov15_020e2178
	ldr r3, _020E2998 ; =0x020E67E0
	mov r0, r5
	mov r1, r4
	mov r2, #0xc
	str r3, [r5, #0x48]
	bl FUN_ov15_020e1ed8
	ldr r2, _020E299C ; =0x020E6804
	mov r0, r5
	mov r1, #5
	bl FUN_ov15_020e125c
	ldmfd sp!, {r3, r4, r5, pc}
_020E2880:
	mov r0, r5
	bl FUN_ov15_020e237c
	ldr r3, _020E29A0 ; =0x020E6858
	mov r0, r5
	mov r1, r4
	mov r2, #0x1a
	str r3, [r5, #0x48]
	bl FUN_ov15_020e1ed8
	ldr r0, [r5, #0xfc]
	mov r1, #5
	cmp r0, #4
	bne _020E28C0
	ldr r2, _020E29A4 ; =0x020E6884
	mov r0, r5
	bl FUN_ov15_020e125c
	ldmfd sp!, {r3, r4, r5, pc}
_020E28C0:
	ldr r2, _020E29A8 ; =0x020E68A8
	mov r0, r5
	bl FUN_ov15_020e125c
	ldmfd sp!, {r3, r4, r5, pc}
_020E28D0:
	mov r0, r5
	bl FUN_ov15_020e246c
	ldr r3, _020E29AC ; =0x020E68D4
	mov r0, r5
	mov r1, r4
	mov r2, #0xc
	str r3, [r5, #0x48]
	bl FUN_ov15_020e1ed8
	ldr r2, [r5, #0x4c]
	mov r0, r5
	mov r1, #8
	bl FUN_ov15_020e125c
	ldmfd sp!, {r3, r4, r5, pc}
_020E2904:
	mov r0, r5
	bl FUN_ov15_020e246c
	ldr r3, _020E29B0 ; =0x020E68F8
	mov r0, r5
	mov r1, r4
	mov r2, #0xc
	str r3, [r5, #0x48]
	bl FUN_ov15_020e1ed8
	ldr r2, _020E29B4 ; =0x020E6928
	mov r0, r5
	mov r1, #5
	bl FUN_ov15_020e125c
	ldmfd sp!, {r3, r4, r5, pc}
_020E2938:
	mov r0, r5
	mov r1, r4
	bl FUN_ov15_020e1f78
	ldr r3, _020E29B8 ; =0x020E6960
	mov r0, r5
	mov r1, r4
	mov r2, #0x1a
	str r3, [r5, #0x48]
	bl FUN_ov15_020e1ed8
	ldmfd sp!, {r3, r4, r5, pc}
_020E2960:
	mov r0, r5
	mov r1, #1
	bl FUN_ov15_020e1f78
	ldr r3, _020E29BC ; =0x020E6988
	mov r0, r5
	mov r1, r4
	mov r2, #0xc
	str r3, [r5, #0x48]
	bl FUN_ov15_020e1ed8
	ldmfd sp!, {r3, r4, r5, pc}
_020E2988: .word gBgMenuManager
_020E298C: .word unk_0209A070
_020E2990: .word ov15_020E6788
_020E2994: .word ov15_020E67AC
_020E2998: .word ov15_020E67E0
_020E299C: .word ov15_020E6804
_020E29A0: .word ov15_020E6858
_020E29A4: .word ov15_020E6884
_020E29A8: .word ov15_020E68A8
_020E29AC: .word ov15_020E68D4
_020E29B0: .word ov15_020E68F8
_020E29B4: .word ov15_020E6928
_020E29B8: .word ov15_020E6960
_020E29BC: .word ov15_020E6988
	arm_func_end FUN_ov15_020e27bc

	arm_func_start FUN_ov15_020e29c0
FUN_ov15_020e29c0: ; 0x020E29C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	str r1, [r7, #0xc]
	ldr r4, _020E2BC0 ; =gBgMenuManager
	mov r8, #2
	bl FUN_ov15_020e27bc
	mov r5, #0
	mov r0, r7
	mov r1, r5
	bl FUN_ov15_020e1294
	ldr r0, [r7, #0xc]
	mov r6, #1
	str r5, [r7, #0x2c]
	str r6, [r7, #0x30]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _020E2BA8
_020E2A08: ; jump table
	b _020E2A24 ; case 0
	b _020E2A78 ; case 1
	b _020E2AC0 ; case 2
	b _020E2B00 ; case 3
	b _020E2B6C ; case 4
	b _020E2A24 ; case 5
	b _020E2A24 ; case 6
_020E2A24:
	cmp r0, #6
	movne r6, r5
	mov r5, #0
	mov r0, r4
	mov r1, r5
	mov r2, #3
	str r6, [r7, #0x2c]
	str r8, [r7, #0x30]
	bl FUN_ov16_020f60f8
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_020f60f8
	ldr r1, [r7, #0x2c]
	ldr r0, _020E2BC4 ; =0x0209A070
	add r1, r1, #1
	add r1, r7, r1
	ldrb r1, [r1, #0x50]
	mov r2, #1
	bl FUN_ov16_020f6e8c
	b _020E2BB0
_020E2A78:
	mov r0, r4
	mov r1, r5
	mov r2, #8
	bl FUN_ov16_020f60f8
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_020f60f8
	ldr r0, _020E2BC4 ; =0x0209A070
	mov r1, r5
	mov r3, r5
	str r6, [sp]
	mov r2, #9
	bl FUN_ov16_020f6c8c
	strb r0, [r7, #0x53]
	str r5, [r7, #0x19c]
	str r6, [r7, #0xfc]
	b _020E2BB0
_020E2AC0:
	mov r0, r4
	mov r1, r5
	mov r2, #0xf
	bl FUN_ov16_020f60f8
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_020f60f8
	ldr r0, _020E2BC4 ; =0x0209A070
	mov r1, r5
	mov r3, r5
	str r8, [sp]
	mov r2, #0x10
_020E2AF4:
	bl FUN_ov16_020f6c8c
	strb r0, [r7, #0x54]
	b _020E2BB0
_020E2B00:
	mov r0, r4
	mov r1, r5
	mov r2, #0x11
	bl FUN_ov16_020f60f8
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_020f60f8
	mov r1, #3
	mov r6, #0x12
	str r1, [sp]
	ldr r0, _020E2BC4 ; =0x0209A070
	mov r1, r5
	mov r2, r6
	mov r3, r5
	bl FUN_ov16_020f6c8c
	ldr r1, [r7, #0xfc]
	strb r0, [r7, #0x54]
	cmp r1, #0xe
	bne _020E2BB0
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020f64cc
	sub r0, r6, #0x13
	str r5, [r7, #0x28]
	str r0, [r7, #0x2c]
	b _020E2BB0
_020E2B6C:
	mov r0, r4
	mov r1, r5
	mov r2, #0x11
	bl FUN_ov16_020f60f8
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_020f60f8
	mov r2, #3
	str r2, [sp]
	ldr r0, _020E2BC4 ; =0x0209A070
	mov r1, r5
	mov r3, r5
	mov r2, #0x12
	b _020E2AF4
_020E2BA8:
	mov r0, #1
	str r0, [r7, #0x30]
_020E2BB0:
	mov r0, #0
	str r0, [r7, #0x28]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020E2BC0: .word gBgMenuManager
_020E2BC4: .word unk_0209A070
	arm_func_end FUN_ov15_020e29c0

	arm_func_start FUN_ov15_020e2bc8
FUN_ov15_020e2bc8: ; 0x020E2BC8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r1, [r7, #0xc]
	mov r4, #0
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E2BE4: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	b _020E2C00 ; case 1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 2
	b _020E2D64 ; case 3
	b _020E2D64 ; case 4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 6
_020E2C00:
	ldr r5, _020E2D90 ; =gBgMenuManager
	mov r6, r4
_020E2C08:
	ldr r1, [r7, #0x19c]
	add r2, r6, #0xb
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r0, r0, asr #3
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #30
	add r0, r1, r0, ror #30
	cmp r6, r0
	mov r0, r5
	mov r1, r4
	bne _020E2C40
	bl FUN_ov16_020f60f8
	b _020E2C44
_020E2C40:
	bl FUN_ov16_020f6084
_020E2C44:
	add r6, r6, #1
	cmp r6, #4
	blt _020E2C08
	ldr r1, [r7, #0x19c]
	ldr r0, [r7, #0xfc]
	add r1, r1, #1
	str r1, [r7, #0x19c]
	cmp r0, #0xe
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E2C6C: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 2
	b _020E2CA8 ; case 3
	b _020E2CE4 ; case 4
	b _020E2CE4 ; case 5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 7
	b _020E2D1C ; case 8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 9
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 11
	b _020E2D2C ; case 12
	b _020E2D00 ; case 13
	b _020E2D00 ; case 14
_020E2CA8:
	ldr r1, [r7, #0x48]
	ldr r0, _020E2D94 ; =0x020E69BC
	cmp r1, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r3, _020E2D98 ; =0x020E69D8
	mov r0, r7
	mov r1, #0
	mov r2, #0xc
	str r3, [r7, #0x48]
	bl FUN_ov15_020e1ed8
	ldr r2, _020E2D9C ; =0x020E69F4
	mov r0, r7
	mov r1, #5
	bl FUN_ov15_020e125c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E2CE4:
	ldr r0, [r7, #0xc]
	cmp r0, #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, #2
	bl FUN_ov15_020e29c0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E2D00:
	ldr r0, [r7, #0xc]
	cmp r0, #3
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, #3
	bl FUN_ov15_020e29c0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E2D1C:
	mov r0, r7
	mov r1, #4
	bl FUN_ov15_020e29c0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E2D2C:
	mov r0, r7
	mov r1, #4
	bl FUN_ov15_020e29c0
	ldr r3, _020E2DA0 ; =0x020E6A30
	mov r0, r7
	mov r1, #0
	mov r2, #0xc
	str r3, [r7, #0x48]
	bl FUN_ov15_020e1ed8
	ldr r2, _020E2DA4 ; =0x020E6A54
	mov r0, r7
	mov r1, #5
	bl FUN_ov15_020e125c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E2D64:
	ldr r1, [r7, #0xfc]
	cmp r1, #0xb
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r4
	str r1, [r7, #0x1c]
	str r1, [r7, #0x20]
	str r1, [r7, #0x24]
	str r1, [r7, #0x28]
	str r1, [r7, #0xfc]
	bl FUN_ov15_020e29c0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E2D90: .word gBgMenuManager
_020E2D94: .word ov15_020E69BC
_020E2D98: .word ov15_020E69D8
_020E2D9C: .word ov15_020E69F4
_020E2DA0: .word ov15_020E6A30
_020E2DA4: .word ov15_020E6A54
	arm_func_end FUN_ov15_020e2bc8

	arm_func_start FUN_ov15_020e2da8
FUN_ov15_020e2da8: ; 0x020E2DA8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e2da8

	arm_func_start FUN_ov15_020e2dbc
FUN_ov15_020e2dbc: ; 0x020E2DBC
	stmfd sp!, {r4, lr}
	mov r3, #6
	str r3, [r0, #0xc]
	ldr r1, _020E2DF4 ; =0x0209A454
	mov r4, #1
	strb r4, [r1, #0x81]
	ldrb r2, [r1, #0x83]
	mov r0, r3
	orr r2, r2, #0x40
	strb r2, [r1, #0x83]
	bl FUN_ov16_020f153c
	mov r0, r4
	bl _Z11SetNextMode8GameMode
	ldmfd sp!, {r4, pc}
_020E2DF4: .word unk_0209A454
	arm_func_end FUN_ov15_020e2dbc

	arm_func_start FUN_ov15_020e2df8
FUN_ov15_020e2df8: ; 0x020E2DF8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #4
	ldmnefd sp!, {r4, pc}
	ldr r0, _020E2E38 ; =0x00002FFF
	tst r1, r0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020E2E3C ; =gAudioPlayer
	mov r1, #1
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r4
	bl FUN_ov15_020e2fc4
	mov r0, #6
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_020E2E38: .word 0x00002FFF
_020E2E3C: .word gAudioPlayer
	arm_func_end FUN_ov15_020e2df8

	arm_func_start FUN_ov15_020e2e40
FUN_ov15_020e2e40: ; 0x020E2E40
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _020E2E60
	ldrh r0, [r1, #4]
	cmp r0, #1
	ldmeqfd sp!, {r4, pc}
_020E2E60:
	ldr r0, [r4, #0xc]
	mov r2, #1
	strb r2, [r4, #0x14]
	cmp r0, #4
	ldreqh r0, [r1, #4]
	cmpeq r0, #1
	ldmnefd sp!, {r4, pc}
	ldr r0, _020E2E9C ; =gAudioPlayer
	mov r1, r2
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r4
	bl FUN_ov15_020e2fc4
	mov r0, #6
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_020E2E9C: .word gAudioPlayer
	arm_func_end FUN_ov15_020e2e40

	arm_func_start FUN_ov15_020e2ea0
FUN_ov15_020e2ea0: ; 0x020E2EA0
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x18
	mov r1, #0
	mov r2, #0x24
	bl MI_CpuFill8
	ldr r0, _020E2ED0 ; =0x020E6BD4
	add r1, r4, #0x18
	bl FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_020E2ED0: .word ov15_020E6BD4
	arm_func_end FUN_ov15_020e2ea0

	arm_func_start FUN_ov15_020e2ed4
FUN_ov15_020e2ed4: ; 0x020E2ED4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x18]
	cmp r6, #0
	ldrne r1, _020E2F20 ; =0x020E40BC
	ldrne r7, _020E2F24 ; =0x020E40BC
	ldrne r1, [r1]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x18
	mov r4, #0xc
_020E2EFC:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl FUN_ov16_020f32b4
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _020E2EFC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E2F20: .word ov15_020E40BC
_020E2F24: .word ov15_020E40BC
	arm_func_end FUN_ov15_020e2ed4

	arm_func_start FUN_ov15_020e2f28
FUN_ov15_020e2f28: ; 0x020E2F28
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x18
	mov r4, #0xc
_020E2F38:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #3
	blt _020E2F38
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020e2f28

	arm_func_start FUN_ov15_020e2f50
FUN_ov15_020e2f50: ; 0x020E2F50
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, [r0, #0x44]
	mov r1, #0xc
	mla r0, r2, r1, r0
	ldr r5, [r0, #0x18]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r1, r4
	mov r2, r4
	mov r0, #1
	bl GX_SetGraphicsMode
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x10]
	mov r1, r4
	add r0, r5, r0
	bl GX_LoadBG0Scr
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r0
	bl GX_LoadBG0Char
	bl GX_BeginLoadBGExtPltt
	ldmib r5, {r0, r2}
	mov r1, r4
	add r0, r5, r0
	bl GX_LoadBGExtPltt
	bl GX_EndLoadBGExtPltt
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020e2f50

	arm_func_start FUN_ov15_020e2fc4
FUN_ov15_020e2fc4: ; 0x020E2FC4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r0
	ldr r0, [r6, #0x10]
	mov r1, #0
	add r5, r0, #1
	cmp r5, #4
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r7, #1
	mov r9, r7
	mov r8, #2
	mov r4, r7
_020E2FF0:
	cmp r5, #1
	beq _020E300C
	cmp r5, #2
	beq _020E3020
	cmp r5, #3
	beq _020E3050
	b _020E305C
_020E300C:
	ldr r0, [r6, #0x3c]
	cmp r0, #0
	movne r1, r4
	strne r4, [r6, #0x44]
	b _020E305C
_020E3020:
	ldr r0, [r6, #0x40]
	cmp r0, #0
	beq _020E305C
	cmp r5, #0
	beq _020E3044
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
_020E3044:
	mov r1, r9
	str r8, [r6, #0x44]
	b _020E305C
_020E3050:
	mov r0, r6
	bl FUN_ov15_020e2dbc
	mov r1, r7
_020E305C:
	cmp r1, #0
	strne r5, [r6, #0x10]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r5, r5, #1
	cmp r5, #4
	blt _020E2FF0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov15_020e2fc4

	arm_func_start FUN_ov15_020e3078
FUN_ov15_020e3078: ; 0x020E3078
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	cmp r1, #1
	beq _020E3098
	cmp r1, #2
	beq _020E309C
	b _020E30B4
_020E3098:
	b _020E309C
_020E309C:
	bl FUN_ov15_020e2f50
	mov r1, #0x4000000
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x100
	str r0, [r1]
_020E30B4:
	mov r1, #3
	mov r0, r4
	str r1, [r4, #0xc]
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e3078

	arm_func_start FUN_ov15_020e30d0
FUN_ov15_020e30d0: ; 0x020E30D0
	ldr r12, _020E30F0 ; =FUN_ov15_020e2ea0
	mov r1, #0
	str r1, [r0, #0xc]
	strb r1, [r0, #0x14]
	str r1, [r0, #0x10]
	str r1, [r0, #0x3c]
	str r1, [r0, #0x40]
	bx r12
_020E30F0: .word FUN_ov15_020e2ea0
	arm_func_end FUN_ov15_020e30d0

	arm_func_start FUN_ov15_020e30f4
FUN_ov15_020e30f4: ; 0x020E30F4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_020E310C: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _020E3128 ; case 1
	ldmfd sp!, {r4, pc} ; case 2
	b _020E3150 ; case 3
	ldmfd sp!, {r4, pc} ; case 4
	ldmfd sp!, {r4, pc} ; case 5
	b _020E316C ; case 6
_020E3128:
	add r0, r4, #0x18
	mov r1, #3
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov15_020e2ed4
	mov r0, #2
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_020E3150:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	moveq r0, #4
	streq r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_020E316C:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #0x10]
	cmp r0, #3
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov15_020e3078
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e30f4

	arm_func_start FUN_ov15_020e3198
FUN_ov15_020e3198: ; 0x020E3198
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_020E31B0: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	ldmfd sp!, {r4, pc} ; case 1
	b _020E31CC ; case 2
	ldmfd sp!, {r4, pc} ; case 3
	ldmfd sp!, {r4, pc} ; case 4
	ldmfd sp!, {r4, pc} ; case 5
	ldmfd sp!, {r4, pc} ; case 6
_020E31CC:
	bl FUN_ov15_020e2fc4
	mov r0, r4
	bl FUN_ov15_020e3078
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e3198

	arm_func_start FUN_ov15_020e31dc
FUN_ov15_020e31dc: ; 0x020E31DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x18
	mov r1, #3
	bl FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov15_020e2f28
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e31dc

	arm_func_start FUN_ov15_020e31fc
FUN_ov15_020e31fc: ; 0x020E31FC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e31fc

	arm_func_start FUN_ov15_020e3210
FUN_ov15_020e3210: ; 0x020E3210
	stmfd sp!, {r4, lr}
	mov r4, r1
	ldr r1, [r4]
	mov r2, r0
	cmp r1, #0xf
	cmpne r1, #0xe
	mvnne r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #4]
	cmp r0, #9
	mvnhs r0, #0
	ldmhsfd sp!, {r4, pc}
	mov r0, r4
	add r1, r2, #0xc
	mov r2, #0x14
	bl MI_CpuCopy8
	mov r0, #0
	strb r0, [r4, #0x10]
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e3210

	arm_func_start FUN_ov15_020e3260
FUN_ov15_020e3260: ; 0x020E3260
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x34
	mov r1, #0
	mov r2, #0x48
	bl MI_CpuFill8
	ldr r0, _020E3290 ; =0x020E6D04
	add r1, r4, #0x34
	bl FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020E3290: .word ov15_020E6D04
	arm_func_end FUN_ov15_020e3260

	arm_func_start FUN_ov15_020e3294
FUN_ov15_020e3294: ; 0x020E3294
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x34]
	cmp r6, #0
	ldrne r1, _020E32E0 ; =0x020E40D4
	ldrne r7, _020E32E4 ; =0x020E40FC
	ldrne r1, [r1, #0x28]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x34
	mov r4, #0xc
_020E32BC:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl FUN_ov16_020f32b4
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _020E32BC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E32E0: .word ov15_020E40D4
_020E32E4: .word ov15_020E40FC
	arm_func_end FUN_ov15_020e3294

	arm_func_start FUN_ov15_020e32e8
FUN_ov15_020e32e8: ; 0x020E32E8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x34
	mov r4, #0xc
_020E32F8:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #6
	blt _020E32F8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020e32e8

	arm_func_start FUN_ov15_020e3310
FUN_ov15_020e3310: ; 0x020E3310
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	ldr r5, [r6, #0x40]
	mov r4, #1
	cmp r5, #0
	beq _020E3350
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	mov r3, r4
	add r0, r5, r0
	mov r2, #0
	bl FUN_ov16_020f1868
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl FUN_ov16_020f1138
_020E3350:
	ldr r8, [r6, #0x58]
	mov r5, #0
	cmp r8, #0
	beq _020E3390
	ldr r0, [r8, #0xc]
	mov r7, #5
	ldr r1, [r8, #0x10]
	mov r2, r4
	mov r3, r7
	add r0, r8, r0
	bl FUN_ov16_020f1868
	mov r5, r0
	mov r0, r8
	mov r1, r4
	mov r2, r7
	bl FUN_ov16_020f1138
_020E3390:
	ldr r8, [r6, #0x64]
	cmp r8, #0
	beq _020E33CC
	ldr r0, [r8, #0xc]
	mov r7, #4
	ldr r1, [r8, #0x10]
	mov r3, r7
	add r0, r8, r0
	add r2, r5, #1
	bl FUN_ov16_020f1868
	mov r5, r0
	mov r0, r8
	mov r2, r7
	mov r1, #1
	bl FUN_ov16_020f1138
_020E33CC:
	ldr r8, [r6, #0x70]
	cmp r8, #0
	beq _020E3404
	ldr r0, [r8, #0xc]
	mov r7, #5
	ldr r1, [r8, #0x10]
	mov r3, r7
	add r0, r8, r0
	add r2, r5, #1
	bl FUN_ov16_020f1868
	mov r0, r8
	mov r2, r7
	mov r1, #1
	bl FUN_ov16_020f1138
_020E3404:
	ldr r8, [r6, #0x4c]
	mov r5, #0
	cmp r8, #0
	beq _020E3444
	ldr r0, [r8, #0xc]
	mov r7, #2
	ldr r1, [r8, #0x10]
	mov r2, r4
	mov r3, r7
	add r0, r8, r0
	bl FUN_ov16_020f1868
	mov r5, r0
	mov r0, r8
	mov r1, r4
	mov r2, r7
	bl FUN_ov16_020f1138
_020E3444:
	ldr r0, [r6, #0x20]
	mov r2, #0
	cmp r0, #0
	ldrne r1, [r6, #0x24]
	cmpne r1, #0
	movne r2, #1
	cmp r2, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrh r4, [r6, #0x2c]
	ldrh r1, [r6, #0x2e]
	add r2, r5, #1
	mov r3, #0
	mul r1, r4, r1
	mov r1, r1, lsl #1
	bl FUN_ov16_020f1868
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020e3310

	arm_func_start FUN_ov15_020e3484
FUN_ov15_020e3484: ; 0x020E3484
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r6, [r4, #0x40]
	cmp r6, #0
	beq _020E34C4
	ldr r0, [r6, #0x14]
	mov r5, #0
	ldr r2, [r6, #0x18]
	mov r1, r5
	add r0, r6, r0
	bl GXS_LoadBG0Char
	ldr r0, [r6, #0xc]
	ldr r2, [r6, #0x10]
	mov r1, r5
	add r0, r6, r0
	bl GXS_LoadBG0Scr
_020E34C4:
	bl G2S_GetBG1CharPtr
	mov r5, #0x20
	mov r6, #0
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl MIi_CpuClearFast
	bl G2S_GetBG1CharPtr
	mov r1, r5
	bl DC_FlushRange
	mov r7, #1
	ldr r1, [r4, #0x58]
	mov r0, r7
	mov r2, r5
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x64]
	mov r0, r7
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x70]
	mov r0, r7
	bl FUN_ov16_020f1a60
	bl G2S_GetBG2CharPtr
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl MIi_CpuClearFast
	bl G2S_GetBG2CharPtr
	mov r1, r5
	bl DC_FlushRange
	ldr r1, [r4, #0x4c]
	mov r2, r5
	mov r0, #2
	bl FUN_ov16_020f1a60
	ldr r1, [r4, #0x20]
	cmp r1, #0
	ldrne r1, [r4, #0x24]
	cmpne r1, #0
	moveq r7, #0
	cmp r7, #0
	strne r0, [r4, #0x28]
	bl FUN_ov16_020f10c8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020e3484

	arm_func_start FUN_ov15_020e3574
FUN_ov15_020e3574: ; 0x020E3574
	stmfd sp!, {r3, lr}
	mov lr, r0
	ldr r0, [lr, #0x20]
	cmp r0, #0
	ldrne r0, [lr, #0x24]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrneb r0, [lr, #0x30]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r2, [lr, #0x2c]
	ldrh r1, [lr, #0x2e]
	mov r12, #0
	ldr r0, [lr, #0x24]
	mul r3, r2, r1
	ldr r1, [lr, #0x28]
	mov r2, r3, lsl #5
	strb r12, [lr, #0x30]
	bl GXS_LoadBG2Char
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020e3574

	arm_func_start FUN_ov15_020e35cc
FUN_ov15_020e35cc: ; 0x020E35CC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x34
	mov r8, r0
	ldr r5, [r8, #0x20]
	mov r3, #0
	cmp r5, #0
	ldrne r0, [r8, #0x24]
	cmpne r0, #0
	movne r3, #1
	cmp r3, #0
	addeq sp, sp, #0x34
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	sub r0, r2, #0x10
	add r0, r0, r0, lsr #31
	add r0, r1, r0, asr #1
	mov r7, #1
	mov r4, #4
	stmia sp, {r4, r7}
	mov r6, #0
	mov r0, r0, lsl #0x18
	str r7, [sp, #8]
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #0x1e
	str r0, [sp, #0x10]
	mov r0, #0x10
	str r0, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, _020E37E8 ; =gBgMenuManager
	mov r1, r7
	mov r2, r6
	mov r3, r6
	str r5, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	ldrb r0, [r8, #0x1c]
	cmp r0, #0
	addeq sp, sp, #0x34
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r0, r8, #0x20
	strb r6, [r8, #0x1c]
	bl FUN_ov16_020f2f20
	ldr r0, _020E37EC ; =gFont12
	mov r1, r7
	ldr r0, [r0]
	mov r2, r4
	bl FUN_02043310
	ldr r2, [r8, #0x7c]
	cmp r2, #0
	ble _020E3754
	ldr r0, [r8, #0x10]
	cmp r0, #8
	bne _020E3754
	add r5, sp, #0x20
	ldr r1, _020E37F0 ; =0x020E6D20
	mov r0, r5
	bl sprintf
	add r4, sp, #0x26
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020f1f5c
	ldr r0, [r8, #0x18]
	bl STD_GetStringLength
	add r0, r0, #0x28
	rsb r0, r0, r0, lsl #1
	bl _Znam
	ldr r1, _020E37F4 ; =0x020E6D24
	ldr r2, [r8, #0x18]
	mov r3, r4
	mov r5, r0
	bl sprintf
	mov r4, #3
	str r4, [sp]
	stmib sp, {r4, r7}
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	ldrb r1, [r8, #0x1d]
	mov r0, r5
	add r1, r1, #1
	mov r1, r1, lsl #4
	sub r1, r1, #4
	rsb r1, r1, #0x80
	add r1, r1, r1, lsr #31
	mov r1, r1, asr #1
	sub r1, r1, #0xa
	str r1, [sp, #0x14]
	str r7, [sp, #0x18]
	ldrh r2, [r8, #0x2c]
	ldrh r3, [r8, #0x2e]
	ldr r1, [r8, #0x24]
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl FUN_ov16_020f2184
	mov r0, r5
	bl _ZdaPv
	sub r0, r4, #4
	str r7, [r8, #0x80]
	str r0, [r8, #0x7c]
	b _020E37B4
_020E3754:
	mov r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldrb r0, [r8, #0x1d]
	mov r0, r0, lsl #4
	sub r0, r0, #4
	rsb r0, r0, #0x80
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	sub r0, r0, #0xa
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrh r2, [r8, #0x2c]
	ldrh r3, [r8, #0x2e]
	ldr r0, [r8, #0x18]
	ldr r1, [r8, #0x24]
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl FUN_ov16_020f2184
_020E37B4:
	ldr r0, _020E37EC ; =gFont12
	ldr r0, [r0]
	bl FUN_0204331c
	ldrh r2, [r8, #0x2c]
	ldrh r1, [r8, #0x2e]
	mov r3, #1
	ldr r0, [r8, #0x24]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	strb r3, [r8, #0x30]
	bl DC_FlushRange
	add sp, sp, #0x34
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020E37E8: .word gBgMenuManager
_020E37EC: .word gFont12
_020E37F0: .word ov15_020E6D20
_020E37F4: .word ov15_020E6D24
	arm_func_end FUN_ov15_020e35cc

	arm_func_start FUN_ov15_020e37f8
FUN_ov15_020e37f8: ; 0x020E37F8
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r6, r0
	mov r1, #1
	mov r5, #0
	ldr r0, _020E38BC ; =gBgMenuManager
	mov r2, r1
	mov r3, r5
	bl FUN_ov16_020f5eec
	ldr r4, [r6, #0x4c]
	cmp r4, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl DWC_GetLinkLevel
	ldr r1, _020E38C0 ; =0x020E64D4
	str r0, [r6, #0x14]
	ldr r0, [r1]
	cmp r0, #0
	subne r0, r5, #1
	strne r0, [r6, #0x14]
	ldr r5, [r6, #0x14]
	cmp r5, #0
	addlt sp, sp, #0x20
	ldmltfd sp!, {r4, r5, r6, pc}
	ldr r3, [r4, #0xc]
	ldr r0, [r6, #0x10]
	mov r1, #1
	cmp r5, #3
	movgt r5, #3
	cmp r0, #8
	str r1, [sp]
	mov r12, #2
	str r12, [sp, #4]
	mov r0, #0x1e
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	str r12, [sp, #0x10]
	str r12, [sp, #0x14]
	add r4, r4, r3
	moveq r5, #0
	ldr r0, _020E38BC ; =gBgMenuManager
	mov r3, r2
	str r12, [sp, #0x18]
	add r4, r4, r5, lsl #3
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, pc}
_020E38BC: .word gBgMenuManager
_020E38C0: .word ov15_020E64D4
	arm_func_end FUN_ov15_020e37f8

	arm_func_start FUN_ov15_020e38c4
FUN_ov15_020e38c4: ; 0x020E38C4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x20
	ldr r9, _020E3A0C ; =gBgMenuManager
	mov r8, #1
	mov r7, #0
	mov r6, r0
	mov r0, r9
	mov r1, r8
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_020f5f64
	ldr r0, [r6, #0x10]
	mov r10, #2
	cmp r0, #8
	bne _020E3918
	ldr r2, [r6, #0x70]
	mov r4, #6
	cmp r2, #0
	mov r5, #0x11
	beq _020E3970
	b _020E392C
_020E3918:
	ldr r2, [r6, #0x58]
	mov r4, #8
	cmp r2, #0
	mov r5, #0xe
	beq _020E3970
_020E392C:
	str r10, [sp]
	str r8, [sp, #4]
	str r7, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	ldr r1, [r2, #0xc]
	mov r0, r9
	add r9, r2, r1
	mov r1, r8
	mov r2, r8
	mov r3, r7
	str r9, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020E3970:
	ldr r8, [r6, #0x10]
	cmp r8, #0
	ldrne r7, [r6, #0x64]
	cmpne r7, #0
	beq _020E39E0
	ldr r3, [r7, #0xc]
	mov r0, #2
	mov r1, #1
	stmia sp, {r0, r1}
	add r7, r7, r3
	mov r2, r10, lsl #0x18
	sub r3, r8, #1
	mov r0, #0xb4
	mla r12, r3, r0, r7
	mov r0, r2, asr #0x18
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x1e
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	ldr r0, _020E3A0C ; =gBgMenuManager
	mov r2, r1
	mov r3, #0
	str r12, [sp, #0x1c]
	bl FUN_ov16_020f5da0
_020E39E0:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_ov15_020e35cc
	mov r0, r6
	bl FUN_ov15_020e37f8
	ldr r0, _020E3A0C ; =gBgMenuManager
	mov r1, #1
	bl FUN_ov16_020f672c
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020E3A0C: .word gBgMenuManager
	arm_func_end FUN_ov15_020e38c4

	arm_func_start FUN_ov15_020e3a10
FUN_ov15_020e3a10: ; 0x020E3A10
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, #1
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #0x28]
	blx r2
	mov r0, #6
	bl FUN_ov16_020f4894
	mov r3, #0
	sub r2, r3, #1
	ldr r0, _020E3A98 ; =gBgMenuManager
	mov r1, r4
	str r3, [r5, #8]
	str r3, [r5, #0xc]
	str r3, [r5, #0x10]
	str r2, [r5, #0x14]
	str r2, [r5, #0x7c]
	str r3, [r5, #0x18]
	strb r3, [r5, #0x1c]
	strb r3, [r5, #0x1d]
	str r3, [r5, #0x80]
	bl FUN_ov16_020f5a58
	mov r1, r4
	add r0, r5, #0x20
	bl FUN_ov16_020f2f7c
	add r0, r5, #0x20
	mov r1, #0x1e
	mov r2, #0x10
	bl FUN_ov16_020f2fa8
	mov r0, r5
	bl FUN_ov15_020e3260
	ldmfd sp!, {r3, r4, r5, pc}
_020E3A98: .word gBgMenuManager
	arm_func_end FUN_ov15_020e3a10

	arm_func_start FUN_ov15_020e3a9c
FUN_ov15_020e3a9c: ; 0x020E3A9C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #1
	beq _020E3ABC
	cmp r0, #3
	beq _020E3AEC
	ldmfd sp!, {r4, pc}
_020E3ABC:
	add r0, r4, #0x34
	mov r1, #6
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov15_020e3294
	mov r0, r4
	bl FUN_ov15_020e3310
	mov r0, #2
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020E3AEC:
	ldr r0, [r4, #0x80]
	cmp r0, #0
	beq _020E3B08
	bl DWC_CleanupInetAsync
	cmp r0, #0
	movne r0, #0
	strne r0, [r4, #0x80]
_020E3B08:
	mov r0, r4
	bl FUN_ov15_020e38c4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e3a9c

	arm_func_start FUN_ov15_020e3b14
FUN_ov15_020e3b14: ; 0x020E3B14
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #2
	beq _020E3B34
	cmp r1, #3
	beq _020E3B54
	ldmfd sp!, {r4, pc}
_020E3B34:
	bl FUN_ov15_020e3484
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020E3B54:
	bl FUN_ov15_020e3574
	ldr r0, _020E3B68 ; =gBgMenuManager
	mov r1, #1
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_020E3B68: .word gBgMenuManager
	arm_func_end FUN_ov15_020e3b14

	arm_func_start FUN_ov15_020e3b6c
FUN_ov15_020e3b6c: ; 0x020E3B6C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x34
	mov r1, #6
	bl FUN_ov16_020f338c
	mov r0, r5
	bl FUN_ov15_020e32e8
	mov r4, #1
	ldr r0, _020E3BBC ; =gBgMenuManager
	mov r1, r4
	bl FUN_ov16_020f5af0
	mov r1, r4
	add r0, r5, #0x20
	bl FUN_ov16_020f2fe4
	ldr r0, [r5, #4]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldmfd sp!, {r3, r4, r5, pc}
_020E3BBC: .word gBgMenuManager
	arm_func_end FUN_ov15_020e3b6c

	arm_func_start FUN_ov15_020e3bc0
FUN_ov15_020e3bc0: ; 0x020E3BC0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e3bc0

	.rodata
	.global ov15_020E401C
ov15_020E401C:
	.byte 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x3D, 0x00, 0x00, 0x00
	.byte 0x17, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E405C
ov15_020E405C:
	.word ov15_020E6680
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov15_020E65F0
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov15_020E6610
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov15_020E6620
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov15_020E6650
	.byte 0x05, 0x00, 0x00, 0x00
	.word ov15_020E6660
	.byte 0x06, 0x00, 0x00, 0x00
	.word ov15_020E65E0
	.byte 0x07, 0x00, 0x00, 0x00
	.word ov15_020E6630
	.byte 0x08, 0x00, 0x00, 0x00
	.word ov15_020E6640
	.byte 0x09, 0x00, 0x00, 0x00
	.word ov15_020E6670
	.byte 0x0A, 0x00, 0x00, 0x00
	.word ov15_020E6600
	.byte 0x0B, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E40BC
ov15_020E40BC:
	.word ov15_020E6B4C
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov15_020E6B3C
	.byte 0x02, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E40D4
ov15_020E40D4:
	.word ov15_020E6C80
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov15_020E6C40
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov15_020E6C50
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov15_020E6C08
	.byte 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E40FC
ov15_020E40FC:
	.word ov15_020E6C70
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov15_020E6C20
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov15_020E6C60
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov15_020E6C14
	.byte 0x04, 0x00, 0x00, 0x00
	.word ov15_020E6C30
	.byte 0x05, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov15_020e412c
FUN_ov15_020e412c: ; 0x020E412C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020E4174 ; =0x020E5C7C
	str r0, [r4, #8]
	ldr r0, _020E4178 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _020E417C ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_020E4174: .word ov15_020E5C7C
_020E4178: .word 0x00009CCD
_020E417C: .word 0x0000EA3C
	arm_func_end FUN_ov15_020e412c

	arm_func_start FUN_ov15_020e4180
FUN_ov15_020e4180: ; 0x020E4180
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020E41C4 ; =0x020E64C4
	str r0, [r4, #8]
	ldr r0, _020E41C8 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _020E41CC ; =0x0000EA3C
	mov r1, #0x800
	stmia r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4, #0x18]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_020E41C4: .word ov15_020E64C4
_020E41C8: .word 0x00009CCD
_020E41CC: .word 0x0000EA3C
	arm_func_end FUN_ov15_020e4180

	arm_func_start FUN_ov15_020e41d0
FUN_ov15_020e41d0: ; 0x020E41D0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020E4218 ; =0x020E6558
	str r0, [r4, #0x14]
	ldr r0, _020E421C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020E4220 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020E4218: .word ov15_020E6558
_020E421C: .word 0x00009CCD
_020E4220: .word 0x0000EA3C
	arm_func_end FUN_ov15_020e41d0

	arm_func_start FUN_ov15_020e4224
FUN_ov15_020e4224: ; 0x020E4224
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020E426C ; =0x020E65C8
	str r0, [r4, #4]
	ldr r0, _020E4270 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0xc]
	ldr r0, _020E4274 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020E426C: .word ov15_020E65C8
_020E4270: .word 0x00009CCD
_020E4274: .word 0x0000EA3C
	arm_func_end FUN_ov15_020e4224

	arm_func_start FUN_ov15_020e4278
FUN_ov15_020e4278: ; 0x020E4278
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020E42C0 ; =0x020E6B24
	str r0, [r4, #8]
	ldr r0, _020E42C4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _020E42C8 ; =0x0000EA3C
	str r1, [r4, #4]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_020E42C0: .word ov15_020E6B24
_020E42C4: .word 0x00009CCD
_020E42C8: .word 0x0000EA3C
	arm_func_end FUN_ov15_020e4278

	arm_func_start FUN_ov15_020e42cc
FUN_ov15_020e42cc: ; 0x020E42CC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020E4314 ; =0x020E6BF0
	str r0, [r4]
	ldr r0, _020E4318 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _020E431C ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_020E4314: .word ov15_020E6BF0
_020E4318: .word 0x00009CCD
_020E431C: .word 0x0000EA3C
	arm_func_end FUN_ov15_020e42cc

	.section .sinit, 4
ov15_020E4320:
	.word FUN_ov15_020e412c
	.word FUN_ov15_020e4180
	.word FUN_ov15_020e41d0
	.word FUN_ov15_020e4224
	.word FUN_ov15_020e4278
	.word FUN_ov15_020e42cc

	.data
	.global ov15_020E5C7C
ov15_020E5C7C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5C94
ov15_020E5C94:
	.asciz "BE8J"
	.balign 4, 0
	.global ov15_020E5C9C
ov15_020E5C9C:
	.asciz "TD6EfyacXuSd7GRb"
	.balign 4, 0
	.global ov15_020E5CB0
ov15_020E5CB0:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5CB4
ov15_020E5CB4:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5CB8
ov15_020E5CB8:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5CBC
ov15_020E5CBC: ; shift-jis string
	.byte 0x5B, 0x90, 0xB3, 0x8F
	.byte 0xED, 0x2F, 0x82, 0xB9, 0x82, 0xA2, 0x82, 0xB6, 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x82, 0xC9, 0x83
	.byte 0x5F, 0x83, 0x45, 0x83, 0x93, 0x83, 0x8D, 0x81, 0x5B, 0x83, 0x68, 0x82, 0xC5, 0x82, 0xAB, 0x82
	.byte 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xC5, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov15_020E5CF0
ov15_020E5CF0: ; shift-jis string
	.byte 0x82, 0x76, 0x82, 0x89, 0x81, 0x7C, 0x82, 0x65, 0x82, 0x89, 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E
	.byte 0x83, 0x56, 0x83, 0x87, 0x83, 0x93, 0x82, 0xAA, 0x5B, 0x8D, 0xAC, 0x2F, 0x82, 0xB1, 0x5D, 0x82
	.byte 0xDD, 0x5B, 0x8D, 0x87, 0x2F, 0x82, 0xA0, 0x5D, 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xE9
	.byte 0x82, 0xA9, 0x0A, 0x83, 0x54, 0x81, 0x5B, 0x83, 0x72, 0x83, 0x58, 0x82, 0xAA, 0x5B, 0x92, 0xE2
	.byte 0x8E, 0x7E, 0x2F, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xB5, 0x5D, 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xA2
	.byte 0x82, 0xE9, 0x82, 0xBD, 0x82, 0xDF, 0x82, 0xC9, 0x0A, 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x2F, 0x82
	.byte 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82, 0xAD, 0x5D, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB9
	.byte 0x82, 0xF1, 0x81, 0x42, 0x0A, 0x82, 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82, 0xAD, 0x5B, 0x91, 0xD2
	.byte 0x2F, 0x82, 0xDC, 0x5D, 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xE2, 0x82, 0xE8, 0x5B, 0x92, 0xBC, 0x2F
	.byte 0x82, 0xC8, 0x82, 0xA8, 0x5D, 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82
	.byte 0xA2, 0x81, 0x42, 0x00
	.global ov15_020E5D94
ov15_020E5D94: ; shift-jis string
	.byte 0x82, 0xA8, 0x5B, 0x8B, 0x71, 0x97, 0x6C, 0x2F, 0x82, 0xAB, 0x82, 0xE1
	.byte 0x82, 0xAD, 0x82, 0xB3, 0x82, 0xDC, 0x5D, 0x82, 0xCC, 0x82, 0x76, 0x82, 0x89, 0x81, 0x7C, 0x82
	.byte 0x65, 0x82, 0x89, 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87, 0x83, 0x93, 0x82
	.byte 0x68, 0x82, 0x63, 0x82, 0xCD, 0x0A, 0x5B, 0x92, 0xB7, 0x2F, 0x82, 0xC8, 0x82, 0xAA, 0x5D, 0x82
	.byte 0xA2, 0x5B, 0x8A, 0xD4, 0x2F, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xBE, 0x5D, 0x5B, 0x8E, 0x67, 0x97
	.byte 0x70, 0x2F, 0x82, 0xB5, 0x82, 0xE6, 0x82, 0xA4, 0x5D, 0x82, 0xB3, 0x82, 0xEA, 0x82, 0xC8, 0x82
	.byte 0xA9, 0x82, 0xC1, 0x82, 0xBD, 0x82, 0xBD, 0x82, 0xDF, 0x0A, 0x5B, 0x8D, 0xED, 0x8F, 0x9C, 0x2F
	.byte 0x82, 0xB3, 0x82, 0xAD, 0x82, 0xB6, 0x82, 0xE5, 0x5D, 0x82, 0xB3, 0x82, 0xEA, 0x82, 0xDC, 0x82
	.byte 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x0A, 0x5B, 0x8F, 0xDA, 0x2F, 0x82, 0xAD, 0x82, 0xED, 0x5D, 0x82
	.byte 0xB5, 0x82, 0xAD, 0x82, 0xCD, 0x83, 0x4B, 0x83, 0x43, 0x83, 0x68, 0x83, 0x75, 0x83, 0x62, 0x83
	.byte 0x4E, 0x82, 0xF0, 0x82, 0xB2, 0x5B, 0x97, 0x97, 0x2F, 0x82, 0xE7, 0x82, 0xF1, 0x5D, 0x82, 0xAD
	.byte 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5E4C
ov15_020E5E4C: ; shift-jis string
	.byte 0x82, 0xB1, 0x82, 0xCC
	.byte 0x83, 0x5C, 0x83, 0x74, 0x83, 0x67, 0x82, 0xCC, 0x0A, 0x82, 0x76, 0x82, 0x89, 0x81, 0x7C, 0x82
	.byte 0x65, 0x82, 0x89, 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87, 0x83, 0x93, 0x83
	.byte 0x54, 0x81, 0x5B, 0x83, 0x72, 0x83, 0x58, 0x82, 0xCD, 0x0A, 0x5B, 0x8F, 0x49, 0x97, 0xB9, 0x2F
	.byte 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xE8, 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x82, 0xB5, 0x82
	.byte 0xDC, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x0A, 0x82, 0xB2, 0x5B, 0x97, 0x98, 0x97, 0x70, 0x2F
	.byte 0x82, 0xE8, 0x82, 0xE6, 0x82, 0xA4, 0x5D, 0x82, 0xA0, 0x82, 0xE8, 0x82, 0xAA, 0x82, 0xC6, 0x82
	.byte 0xA4, 0x82, 0xB2, 0x82, 0xB4, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00
	.global ov15_020E5EC0
ov15_020E5EC0: ; shift-jis string
	.byte 0x5B, 0x91, 0x8A, 0x8E, 0xE8, 0x2F, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xC4, 0x5D, 0x82, 0xA9, 0x82
	.byte 0xE7, 0x82, 0xCC, 0x5B, 0x89, 0x9E, 0x93, 0x9A, 0x2F, 0x82, 0xA8, 0x82, 0xA4, 0x82, 0xC6, 0x82
	.byte 0xA4, 0x5D, 0x82, 0xAA, 0x82, 0xA0, 0x82, 0xE8, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42
	.byte 0x0A, 0x5B, 0x8A, 0xF9, 0x2F, 0x82, 0xB7, 0x82, 0xC5, 0x5D, 0x82, 0xC9, 0x5B, 0x91, 0x8A, 0x8E
	.byte 0xE8, 0x2F, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xC4, 0x5D, 0x82, 0xAA, 0x82, 0x76, 0x82, 0x89, 0x81
	.byte 0x7C, 0x82, 0x65, 0x82, 0x89, 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87, 0x83
	.byte 0x93, 0x82, 0xC9, 0x0A, 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC
	.byte 0x82, 0xAD, 0x5D, 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xC8, 0x82, 0xA2, 0x82, 0xA9, 0x81
	.byte 0x41, 0x5B, 0x91, 0x8A, 0x8E, 0xE8, 0x2F, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xC4, 0x5D, 0x82, 0xCC
	.byte 0x5B, 0x97, 0x46, 0x92, 0x42, 0x2F, 0x82, 0xC6, 0x82, 0xE0, 0x82, 0xBE, 0x82, 0xBF, 0x5D, 0x83
	.byte 0x8A, 0x83, 0x58, 0x83, 0x67, 0x82, 0xA9, 0x82, 0xE7, 0x0A, 0x5B, 0x93, 0x6F, 0x98, 0x5E, 0x2F
	.byte 0x82, 0xC6, 0x82, 0xA4, 0x82, 0xEB, 0x82, 0xAD, 0x5D, 0x82, 0xAA, 0x82, 0xC8, 0x82, 0xAD, 0x82
	.byte 0xC8, 0x82, 0xC1, 0x82, 0xBD, 0x5B, 0x89, 0xC2, 0x94, 0x5C, 0x90, 0xAB, 0x2F, 0x82, 0xA9, 0x82
	.byte 0xCC, 0x82, 0xA4, 0x82, 0xB9, 0x82, 0xA2, 0x5D, 0x82, 0xAA, 0x82, 0xA0, 0x82, 0xE8, 0x82, 0xDC
	.byte 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5FA8
ov15_020E5FA8: ; shift-jis string
	.byte 0x5B, 0x91, 0x8A, 0x8E, 0xE8, 0x2F, 0x82, 0xA0
	.byte 0x82, 0xA2, 0x82, 0xC4, 0x5D, 0x82, 0xA9, 0x82, 0xE7, 0x82, 0xCC, 0x5B, 0x89, 0x9E, 0x93, 0x9A
	.byte 0x2F, 0x82, 0xA8, 0x82, 0xA4, 0x82, 0xC6, 0x82, 0xA4, 0x5D, 0x82, 0xAA, 0x82, 0xC8, 0x82, 0xAD
	.byte 0x82, 0xC8, 0x82, 0xE8, 0x82, 0xDC, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5FE0
ov15_020E5FE0: ; shift-jis string
	.byte 0x5B, 0x91, 0x8A, 0x8E, 0xE8, 0x2F, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xC4, 0x5D, 0x82, 0xA9, 0x82
	.byte 0xE7, 0x82, 0xCC, 0x5B, 0x89, 0x9E, 0x93, 0x9A, 0x2F, 0x82, 0xA8, 0x82, 0xA4, 0x82, 0xC6, 0x82
	.byte 0xA4, 0x5D, 0x82, 0xAA, 0x82, 0xA0, 0x82, 0xE8, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E6014
ov15_020E6014: ; shift-jis string
	.byte 0x82, 0x76, 0x82, 0x89, 0x81, 0x7C, 0x82, 0x65, 0x82, 0x89, 0x83, 0x52
	.byte 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87, 0x83, 0x93, 0x82, 0xC9, 0x0A, 0x5B, 0x90, 0xDA
	.byte 0x91, 0xB1, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82, 0xAD, 0x5D, 0x82, 0xC5, 0x82, 0xAB
	.byte 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x0A, 0x82, 0x76, 0x82, 0x89, 0x81, 0x7C, 0x82
	.byte 0x65, 0x82, 0x89, 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87, 0x83, 0x93, 0x5B
	.byte 0x90, 0xDD, 0x92, 0xE8, 0x2F, 0x82, 0xB9, 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xA2, 0x5D, 0x82, 0xC5
	.byte 0x0A, 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x90, 0xE6, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82
	.byte 0xAD, 0x82, 0xB3, 0x82, 0xAB, 0x5D, 0x82, 0xCC, 0x5B, 0x90, 0xDD, 0x92, 0xE8, 0x2F, 0x82, 0xB9
	.byte 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xA2, 0x5D, 0x82, 0xF0, 0x82, 0xB2, 0x5B, 0x8A, 0x6D, 0x94, 0x46
	.byte 0x2F, 0x82, 0xA9, 0x82, 0xAD, 0x82, 0xC9, 0x82, 0xF1, 0x5D, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3
	.byte 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E60B8
ov15_020E60B8: ; shift-jis string
	.byte 0x82, 0x76, 0x82, 0x89, 0x81, 0x7C, 0x82, 0x65
	.byte 0x82, 0x89, 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87, 0x83, 0x93, 0x82, 0xC9
	.byte 0x0A, 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82, 0xAD, 0x5D
	.byte 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x0A, 0x5B, 0x8F, 0xDA
	.byte 0x2F, 0x82, 0xAD, 0x82, 0xED, 0x5D, 0x82, 0xB5, 0x82, 0xAD, 0x82, 0xCD, 0x83, 0x4B, 0x83, 0x43
	.byte 0x83, 0x68, 0x83, 0x75, 0x83, 0x62, 0x83, 0x4E, 0x82, 0xF0, 0x0A, 0x82, 0xB2, 0x5B, 0x97, 0x97
	.byte 0x2F, 0x82, 0xE7, 0x82, 0xF1, 0x5D, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E6124
ov15_020E6124: ; shift-jis string
	.byte 0x83, 0x41, 0x83, 0x4E, 0x83, 0x5A, 0x83, 0x58, 0x83, 0x7C, 0x83, 0x43
	.byte 0x83, 0x93, 0x83, 0x67, 0x82, 0xAA, 0x5B, 0x8D, 0xAC, 0x2F, 0x82, 0xB1, 0x5D, 0x82, 0xDD, 0x5B
	.byte 0x8D, 0x87, 0x2F, 0x82, 0xA0, 0x5D, 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xE9, 0x82, 0xBD
	.byte 0x82, 0xDF, 0x0A, 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82
	.byte 0xAD, 0x5D, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x0A, 0x82
	.byte 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82, 0xAD, 0x5B, 0x91, 0xD2, 0x2F, 0x82, 0xDC, 0x5D, 0x82, 0xC1
	.byte 0x82, 0xC4, 0x82, 0xE2, 0x82, 0xE8, 0x5B, 0x92, 0xBC, 0x2F, 0x82, 0xC8, 0x82, 0xA8, 0x5D, 0x82
	.byte 0xB5, 0x82, 0xC4, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov15_020E61A0
ov15_020E61A0: ; shift-jis string
	.byte 0x83, 0x41, 0x83, 0x4E, 0x83, 0x5A, 0x83, 0x58, 0x83, 0x7C, 0x83, 0x43, 0x83, 0x93, 0x83, 0x67
	.byte 0x82, 0xAA, 0x5B, 0x8C, 0xA9, 0x2F, 0x82, 0xDD, 0x5D, 0x82, 0xC2, 0x82, 0xA9, 0x82, 0xE8, 0x82
	.byte 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x0A, 0x83, 0x41, 0x83, 0x4E, 0x83, 0x5A, 0x83, 0x58
	.byte 0x83, 0x7C, 0x83, 0x43, 0x83, 0x93, 0x83, 0x67, 0x82, 0xC9, 0x5B, 0x8B, 0xDF, 0x2F, 0x82, 0xBF
	.byte 0x82, 0xA9, 0x5D, 0x82, 0xC3, 0x82, 0xA2, 0x82, 0xC4, 0x0A, 0x82, 0xE0, 0x82, 0xA4, 0x5B, 0x88
	.byte 0xEA, 0x93, 0x78, 0x2F, 0x82, 0xA2, 0x82, 0xBF, 0x82, 0xC7, 0x5D, 0x82, 0xA8, 0x82, 0xBD, 0x82
	.byte 0xDF, 0x82, 0xB5, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov15_020E6210
ov15_020E6210: ; shift-jis string
	.byte 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82, 0xAD, 0x5D, 0x82
	.byte 0xC5, 0x82, 0xAB, 0x82, 0xE9, 0x83, 0x41, 0x83, 0x4E, 0x83, 0x5A, 0x83, 0x58, 0x83, 0x7C, 0x83
	.byte 0x43, 0x83, 0x93, 0x83, 0x67, 0x82, 0xAA, 0x0A, 0x5B, 0x8C, 0xA9, 0x2F, 0x82, 0xDD, 0x5D, 0x82
	.byte 0xC2, 0x82, 0xA9, 0x82, 0xE8, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x0A, 0x82, 0x76
	.byte 0x82, 0x89, 0x81, 0x7C, 0x82, 0x65, 0x82, 0x89, 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56
	.byte 0x83, 0x87, 0x83, 0x93, 0x5B, 0x90, 0xDD, 0x92, 0xE8, 0x2F, 0x82, 0xB9, 0x82, 0xC1, 0x82, 0xC4
	.byte 0x82, 0xA2, 0x5D, 0x82, 0xC5, 0x0A, 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x90, 0xE6, 0x2F, 0x82, 0xB9
	.byte 0x82, 0xC2, 0x82, 0xBC, 0x82, 0xAD, 0x82, 0xB3, 0x82, 0xAB, 0x5D, 0x82, 0xCC, 0x5B, 0x90, 0xDD
	.byte 0x92, 0xE8, 0x2F, 0x82, 0xB9, 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xA2, 0x5D, 0x82, 0xF0, 0x82, 0xB2
	.byte 0x5B, 0x8A, 0x6D, 0x94, 0x46, 0x2F, 0x82, 0xA9, 0x82, 0xAD, 0x82, 0xC9, 0x82, 0xF1, 0x5D, 0x82
	.byte 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov15_020E62BC
ov15_020E62BC: ; shift-jis string
	.byte 0x82, 0x76, 0x82, 0x89
	.byte 0x81, 0x7C, 0x82, 0x65, 0x82, 0x89, 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87
	.byte 0x83, 0x93, 0x82, 0xC9, 0x0A, 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82
	.byte 0xBC, 0x82, 0xAD, 0x5D, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42
	.byte 0x0A, 0x5B, 0x8F, 0xDA, 0x2F, 0x82, 0xAD, 0x82, 0xED, 0x5D, 0x82, 0xB5, 0x82, 0xAD, 0x82, 0xCD
	.byte 0x83, 0x4B, 0x83, 0x43, 0x83, 0x68, 0x83, 0x75, 0x83, 0x62, 0x83, 0x4E, 0x82, 0xF0, 0x0A, 0x82
	.byte 0xB2, 0x5B, 0x97, 0x97, 0x2F, 0x82, 0xE7, 0x82, 0xF1, 0x5D, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3
	.byte 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E6328
ov15_020E6328: ; shift-jis string
	.byte 0x82, 0x76, 0x82, 0x89, 0x81, 0x7C, 0x82, 0x65
	.byte 0x82, 0x89, 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87, 0x83, 0x93, 0x82, 0xAA
	.byte 0x5B, 0x8D, 0xAC, 0x2F, 0x82, 0xB1, 0x5D, 0x82, 0xDD, 0x5B, 0x8D, 0x87, 0x2F, 0x82, 0xA0, 0x5D
	.byte 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xE9, 0x82, 0xA9, 0x0A, 0x83, 0x54, 0x81, 0x5B, 0x83
	.byte 0x72, 0x83, 0x58, 0x82, 0xAA, 0x5B, 0x92, 0xE2, 0x8E, 0x7E, 0x2F, 0x82, 0xC4, 0x82, 0xA2, 0x82
	.byte 0xB5, 0x5D, 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xE9, 0x82, 0xBD, 0x82, 0xDF, 0x82, 0xC9
	.byte 0x0A, 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82, 0xAD, 0x5D
	.byte 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x0A, 0x82, 0xB5, 0x82
	.byte 0xCE, 0x82, 0xE7, 0x82, 0xAD, 0x5B, 0x91, 0xD2, 0x2F, 0x82, 0xDC, 0x5D, 0x82, 0xC1, 0x82, 0xC4
	.byte 0x82, 0xE2, 0x82, 0xE8, 0x5B, 0x92, 0xBC, 0x2F, 0x82, 0xC8, 0x82, 0xA8, 0x5D, 0x82, 0xB5, 0x82
	.byte 0xC4, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00
	.global ov15_020E63CC
ov15_020E63CC: ; shift-jis string
	.byte 0x83, 0x47, 0x83, 0x89
	.byte 0x81, 0x5B, 0x82, 0xAA, 0x5B, 0x94, 0xAD, 0x90, 0xB6, 0x2F, 0x82, 0xCD, 0x82, 0xC1, 0x82, 0xB9
	.byte 0x82, 0xA2, 0x5D, 0x82, 0xB5, 0x82, 0xBD, 0x82, 0xBD, 0x82, 0xDF, 0x81, 0x41, 0x0A, 0x82, 0x76
	.byte 0x82, 0x89, 0x81, 0x7C, 0x82, 0x65, 0x82, 0x89, 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56
	.byte 0x83, 0x87, 0x83, 0x93, 0x82, 0xCC, 0x5B, 0x8B, 0x40, 0x94, 0x5C, 0x2F, 0x82, 0xAB, 0x82, 0xCC
	.byte 0x82, 0xA4, 0x5D, 0x82, 0xF0, 0x0A, 0x5B, 0x8E, 0x67, 0x97, 0x70, 0x2F, 0x82, 0xB5, 0x82, 0xE6
	.byte 0x82, 0xA4, 0x5D, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x0A
	.byte 0x5B, 0x93, 0x64, 0x8C, 0xB9, 0x2F, 0x82, 0xC5, 0x82, 0xF1, 0x82, 0xB0, 0x82, 0xF1, 0x5D, 0x82
	.byte 0xF0, 0x5B, 0x90, 0xD8, 0x2F, 0x82, 0xAB, 0x5D, 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xE2, 0x82, 0xE8
	.byte 0x5B, 0x92, 0xBC, 0x2F, 0x82, 0xC8, 0x82, 0xA8, 0x5D, 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xAD, 0x82
	.byte 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00
	.global ov15_020E6468
ov15_020E6468: ; shift-jis string
	.byte 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2
	.byte 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x83, 0x47, 0x83, 0x89, 0x81, 0x5B, 0x82, 0xAA, 0x5B
	.byte 0x94, 0xAD, 0x90, 0xB6, 0x2F, 0x82, 0xCD, 0x82, 0xC1, 0x82, 0xB9, 0x82, 0xA2, 0x5D, 0x82, 0xB5
	.byte 0x82, 0xDC, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E649C
ov15_020E649C: ; shift-jis string
	.byte 0x83, 0x5F, 0x83, 0x45
	.byte 0x83, 0x93, 0x83, 0x8D, 0x81, 0x5B, 0x83, 0x68, 0x82, 0xC9, 0x5B, 0x8E, 0xB8, 0x94, 0x73, 0x2F
	.byte 0x82, 0xB5, 0x82, 0xC1, 0x82, 0xCF, 0x82, 0xA2, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB5, 0x82
	.byte 0xBD, 0x81, 0x42, 0x00
	.global ov15_020E64C4
ov15_020E64C4:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E64D4
ov15_020E64D4:
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E64E0
ov15_020E64E0:
	.byte 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E6500
ov15_020E6500:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word FUN_ov15_020e0eec
	.word FUN_ov15_020e0f00
	.word FUN_ov15_020e0764
	.word FUN_ov15_020e06f4
	.word _ZN8CManager7vFUN_10Ev
	.word _ZN14CScreenManager10updateKeysEtt
	.word _ZN14CScreenManager8updateTPEP6TPData
	.word _ZN14CScreenManager6updateEi
	.word _ZN8CManager7vFUN_20Ev
	.word _ZN14CScreenManager10updateLateEi
	.word FUN_ov15_020e0724
	.word FUN_ov15_020e08ac
	.word _ZN14CScreenManager20updateDisplayMappingEv
	.word FUN_ov15_020e0968
	.word _ZN14CScreenManager12transferMainEPv
	.word _ZN14CScreenManager11transferSubEPv
	.word _ZN14CScreenManager10signalMainEi
	.word _ZN14CScreenManager9signalSubEi
	.word _ZN14CScreenManager9stateMainEv
	.word _ZN14CScreenManager8stateSubEv
	.global ov15_020E6558
ov15_020E6558:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E6578
ov15_020E6578:
	.word FUN_ov15_020e1178
	.word FUN_ov15_020e118c
	.word FUN_ov15_020e0f1c
	.word _ZN14CScreenManager13startGraphicsEm
	.word _ZN8CManager7vFUN_10Ev
	.word _ZN14CScreenManager10updateKeysEtt
	.word _ZN14CScreenManager8updateTPEP6TPData
	.word _ZN14CScreenManager6updateEi
	.word _ZN8CManager7vFUN_20Ev
	.word _ZN14CScreenManager10updateLateEi
	.word _ZN14CScreenManager11endGraphicsEm
	.word FUN_ov15_020e0f74
	.word _ZN14CScreenManager20updateDisplayMappingEv
	.word FUN_ov15_020e0f78
	.word _ZN14CScreenManager12transferMainEPv
	.word _ZN14CScreenManager11transferSubEPv
	.word _ZN14CScreenManager10signalMainEi
	.word _ZN14CScreenManager9signalSubEi
	.word _ZN14CScreenManager9stateMainEv
	.word _ZN14CScreenManager8stateSubEv
	.global ov15_020E65C8
ov15_020E65C8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E65E0
ov15_020E65E0:
	.asciz "wmdn_w00.pac"
	.balign 4, 0
	.global ov15_020E65F0
ov15_020E65F0:
	.asciz "wmdn_b03.pac"
	.balign 4, 0
	.global ov15_020E6600
ov15_020E6600:
	.asciz "wmdn_w05.pac"
	.balign 4, 0
	.global ov15_020E6610
ov15_020E6610:
	.asciz "wmdn_b04.pac"
	.balign 4, 0
	.global ov15_020E6620
ov15_020E6620:
	.asciz "wmdn_b05.pac"
	.balign 4, 0
	.global ov15_020E6630
ov15_020E6630:
	.asciz "wmdn_w01.pac"
	.balign 4, 0
	.global ov15_020E6640
ov15_020E6640:
	.asciz "wmdn_w02.pac"
	.balign 4, 0
	.global ov15_020E6650
ov15_020E6650:
	.asciz "wmdn_b06.pac"
	.balign 4, 0
	.global ov15_020E6660
ov15_020E6660:
	.asciz "wmdn_g00.pac"
	.balign 4, 0
	.global ov15_020E6670
ov15_020E6670:
	.asciz "wmdn_w03.pac"
	.balign 4, 0
	.global ov15_020E6680
ov15_020E6680:
	.asciz "wmdn_bg00.pac"
	.balign 4, 0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E6698
ov15_020E6698:
	.word FUN_02029e98
	.word FUN_ov15_020e2da8
	.word FUN_ov15_020e1510
	.word FUN_ov15_020e1988
	.word FUN_ov15_020e2574
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov15_020e262c
	.word FUN_ov15_020e2744
	.word FUN_ov15_020e2774
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
	.global ov15_020E6704
ov15_020E6704: ; shift-jis string
	.byte 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5
	.byte 0x82, 0xF1, 0x5D, 0x82, 0xF0, 0x5B, 0x92, 0x86, 0x92, 0x66, 0x2F, 0x82, 0xBF, 0x82, 0xE3, 0x82
	.byte 0xA4, 0x82, 0xBE, 0x82, 0xF1, 0x5D, 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7
	.byte 0x81, 0x42, 0x00, 0x00
	.global ov15_020E6734
ov15_020E6734: ; shift-jis string
	.byte 0x82, 0x76, 0x82, 0x89, 0x81, 0x7C, 0x82, 0x65, 0x82, 0x89, 0x83, 0x52
	.byte 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87, 0x83, 0x93, 0x82, 0xA9, 0x82, 0xE7, 0x0A, 0x5B
	.byte 0x90, 0xD8, 0x92, 0x66, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBE, 0x82, 0xF1, 0x5D, 0x82, 0xB5
	.byte 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00
	.global ov15_020E676C
ov15_020E676C:
	.asciz "/data_iz/pic2d/MTSWfDL.SPF_"
	.balign 4, 0
	.global ov15_020E6788
ov15_020E6788: ; shift-jis string
	.byte 0x83, 0x66, 0x81, 0x5B, 0x83, 0x5E, 0x82, 0xF0
	.byte 0x5B, 0x8D, 0x58, 0x90, 0x56, 0x2F, 0x82, 0xB1, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82
	.byte 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00, 0x00
	.global ov15_020E67AC
ov15_020E67AC: ; shift-jis string
	.byte 0x82, 0x76, 0x82, 0x89
	.byte 0x81, 0x7C, 0x82, 0x65, 0x82, 0x89, 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87
	.byte 0x83, 0x93, 0x82, 0xC9, 0x0A, 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82
	.byte 0xBC, 0x82, 0xAD, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00
	.global ov15_020E67E0
ov15_020E67E0: ; shift-jis string
	.byte 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x92, 0x86, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82, 0xAD
	.byte 0x82, 0xBF, 0x82, 0xE3, 0x82, 0xA4, 0x5D, 0x82, 0xC5, 0x82, 0xB7, 0x81, 0x45, 0x81, 0x45, 0x81
	.byte 0x45, 0x00, 0x00, 0x00
	.global ov15_020E6804
ov15_020E6804: ; shift-jis string
	.byte 0x82, 0x76, 0x82, 0x89, 0x81, 0x7C, 0x82, 0x65, 0x82, 0x89, 0x83, 0x52
	.byte 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87, 0x83, 0x93, 0x82, 0xC9, 0x0A, 0x5B, 0x90, 0xDA
	.byte 0x91, 0xB1, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82, 0xAD, 0x5D, 0x82, 0xB5, 0x82, 0xC4
	.byte 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x0A, 0x82, 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82
	.byte 0xAD, 0x82, 0xA8, 0x5B, 0x91, 0xD2, 0x2F, 0x82, 0xDC, 0x5D, 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE
	.byte 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00
	.global ov15_020E6858
ov15_020E6858: ; shift-jis string
	.byte 0x83, 0x5F, 0x83, 0x45, 0x83, 0x93, 0x83, 0x8D
	.byte 0x81, 0x5B, 0x83, 0x68, 0x82, 0xAA, 0x5B, 0x8A, 0xAE, 0x97, 0xB9, 0x2F, 0x82, 0xA9, 0x82, 0xF1
	.byte 0x82, 0xE8, 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB5, 0x82, 0xBD, 0x81
	.byte 0x42, 0x00, 0x00, 0x00
	.global ov15_020E6884
ov15_020E6884: ; shift-jis string
	.byte 0x83, 0x66, 0x81, 0x5B, 0x83, 0x5E, 0x82, 0xAA, 0x5B, 0x8D, 0x58, 0x90
	.byte 0x56, 0x2F, 0x82, 0xB1, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xB3, 0x82, 0xEA, 0x82
	.byte 0xDC, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00
	.global ov15_020E68A8
ov15_020E68A8: ; shift-jis string
	.byte 0x5B, 0x90, 0x56, 0x2F, 0x82, 0xA0, 0x82, 0xBD
	.byte 0x82, 0xE7, 0x5D, 0x82, 0xB5, 0x82, 0xA2, 0x83, 0x66, 0x81, 0x5B, 0x83, 0x5E, 0x82, 0xCD, 0x82
	.byte 0xA0, 0x82, 0xE8, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xC5, 0x82, 0xB5, 0x82, 0xBD, 0x81
	.byte 0x42, 0x00, 0x00, 0x00
	.global ov15_020E68D4
ov15_020E68D4: ; shift-jis string
	.byte 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5
	.byte 0x82, 0xF1, 0x5D, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xC5, 0x82
	.byte 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov15_020E68F8
ov15_020E68F8: ; shift-jis string
	.byte 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2
	.byte 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xF0, 0x5B, 0x92, 0x86, 0x92, 0x66, 0x2F, 0x82
	.byte 0xBF, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xBE, 0x82, 0xF1, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB5
	.byte 0x82, 0xBD, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E6928
ov15_020E6928: ; shift-jis string
	.byte 0x82, 0x76, 0x82, 0x89, 0x81, 0x7C, 0x82, 0x65
	.byte 0x82, 0x89, 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87, 0x83, 0x93, 0x82, 0xA9
	.byte 0x82, 0xE7, 0x0A, 0x5B, 0x90, 0xD8, 0x92, 0x66, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBE, 0x82
	.byte 0xF1, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E6960
ov15_020E6960: ; shift-jis string
	.byte 0x83, 0x5A, 0x81, 0x5B, 0x83, 0x75, 0x82, 0xB5, 0x82, 0xC4, 0x5B, 0x8F, 0x49, 0x97, 0xB9, 0x2F
	.byte 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xE8, 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x82, 0xB5, 0x82
	.byte 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00
	.global ov15_020E6988
ov15_020E6988: ; shift-jis string
	.byte 0x83, 0x5F, 0x83, 0x45, 0x83, 0x93, 0x83, 0x8D
	.byte 0x81, 0x5B, 0x83, 0x68, 0x82, 0xB9, 0x82, 0xB8, 0x82, 0xC9, 0x0A, 0x5B, 0x8F, 0x49, 0x97, 0xB9
	.byte 0x2F, 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xE8, 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x82, 0xB5
	.byte 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E69BC
ov15_020E69BC: ; shift-jis string
	.byte 0x83, 0x5F, 0x83, 0x45
	.byte 0x83, 0x93, 0x83, 0x8D, 0x81, 0x5B, 0x83, 0x68, 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xDC
	.byte 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E69D8
ov15_020E69D8: ; shift-jis string
	.byte 0x83, 0x5F, 0x83, 0x45, 0x83, 0x93, 0x83, 0x8D
	.byte 0x81, 0x5B, 0x83, 0x68, 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E69F4
ov15_020E69F4: ; shift-jis string
	.byte 0x83, 0x5F, 0x83, 0x45, 0x83, 0x93, 0x83, 0x8D, 0x81, 0x5B, 0x83, 0x68
	.byte 0x5B, 0x92, 0x86, 0x2F, 0x82, 0xBF, 0x82, 0xE3, 0x82, 0xA4, 0x5D, 0x82, 0xC5, 0x82, 0xB7, 0x81
	.byte 0x42, 0x0A, 0x82, 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82, 0xAD, 0x82, 0xA8, 0x5B, 0x91, 0xD2, 0x2F
	.byte 0x82, 0xDC, 0x5D, 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00
	.global ov15_020E6A30
ov15_020E6A30: ; shift-jis string
	.byte 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82
	.byte 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xC5, 0x82, 0xB5, 0x82, 0xBD, 0x81
	.byte 0x42, 0x00, 0x00, 0x00
	.global ov15_020E6A54
ov15_020E6A54: ; shift-jis string
	.byte 0x5B, 0x96, 0x7B, 0x91, 0xCC, 0x2F, 0x82, 0xD9, 0x82, 0xF1, 0x82, 0xBD
	.byte 0x82, 0xA2, 0x5D, 0x82, 0xCC, 0x82, 0x76, 0x82, 0x89, 0x81, 0x7C, 0x82, 0x65, 0x82, 0x89, 0x83
	.byte 0x86, 0x81, 0x5B, 0x83, 0x55, 0x81, 0x5B, 0x5B, 0x8F, 0xEE, 0x95, 0xF1, 0x2F, 0x82, 0xB6, 0x82
	.byte 0xE5, 0x82, 0xA4, 0x82, 0xD9, 0x82, 0xA4, 0x5D, 0x82, 0xAA, 0x0A, 0x5B, 0x8F, 0xC1, 0x2F, 0x82
	.byte 0xAB, 0x5D, 0x82, 0xA6, 0x82, 0xBD, 0x5B, 0x89, 0xC2, 0x94, 0x5C, 0x90, 0xAB, 0x2F, 0x82, 0xA9
	.byte 0x82, 0xCC, 0x82, 0xA4, 0x82, 0xB9, 0x82, 0xA2, 0x5D, 0x82, 0xAA, 0x82, 0xA0, 0x82, 0xE8, 0x82
	.byte 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x0A, 0x82, 0x76, 0x82, 0x89, 0x81, 0x7C, 0x82, 0x65, 0x82, 0x89
	.byte 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87, 0x83, 0x93, 0x5B, 0x90, 0xDD, 0x92
	.byte 0xE8, 0x2F, 0x82, 0xB9, 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xA2, 0x5D, 0x82, 0xC5, 0x0A, 0x5B, 0x90
	.byte 0xDA, 0x91, 0xB1, 0x90, 0xE6, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82, 0xAD, 0x82, 0xB3
	.byte 0x82, 0xAB, 0x5D, 0x82, 0xCC, 0x5B, 0x90, 0xDD, 0x92, 0xE8, 0x2F, 0x82, 0xB9, 0x82, 0xC1, 0x82
	.byte 0xC4, 0x82, 0xA2, 0x5D, 0x82, 0xF0, 0x82, 0xB2, 0x5B, 0x8A, 0x6D, 0x94, 0x46, 0x2F, 0x82, 0xA9
	.byte 0x82, 0xAD, 0x82, 0xC9, 0x82, 0xF1, 0x5D, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81
	.byte 0x42, 0x00, 0x00, 0x00
	.global ov15_020E6B24
ov15_020E6B24:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E6B3C
ov15_020E6B3C:   
	.asciz "wmdn_bg02.pac"
	.balign 4, 0
	.global ov15_020E6B4C
ov15_020E6B4C:   
	.asciz "wmdn_bg01.pac"
	.balign 4, 0
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E6B64
ov15_020E6B64:
	.word FUN_02029e9c
	.word FUN_ov15_020e31fc
	.word FUN_ov15_020e2df8
	.word FUN_ov15_020e2e40
	.word FUN_ov15_020e30d0
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov15_020e30f4
	.word FUN_ov15_020e3198
	.word FUN_ov15_020e31dc
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
	.word FUN_ov15_020e0c84
	.global ov15_020E6BD4
ov15_020E6BD4:
	.asciz "/data_iz/pic2d/MTSWfDL.SPF_"
	.balign 4, 0
	.global ov15_020E6BF0
ov15_020E6BF0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E6C08
ov15_020E6C08:
	.asciz "wmu_t00.pac"
	.balign 4, 0
	.global ov15_020E6C14
ov15_020E6C14:
	.asciz "wmu_t00.pac"
	.balign 4, 0
	.global ov15_020E6C20
ov15_020E6C20:
	.asciz "wf_level.pac"
	.balign 4, 0
	.global ov15_020E6C30
ov15_020E6C30:
	.asciz "wmup_w06.pac"
	.balign 4, 0
	.global ov15_020E6C40
ov15_020E6C40:
	.asciz "wc_level.pac"
	.balign 4, 0
	.global ov15_020E6C50
ov15_020E6C50:
	.asciz "wmup_w04.pac"
	.balign 4, 0
	.global ov15_020E6C60
ov15_020E6C60:
	.asciz "wmup_w04.pac"
	.balign 4, 0
	.global ov15_020E6C70
ov15_020E6C70:
	.asciz "wmup_bg00.pac"
	.balign 4, 0
	.global ov15_020E6C80
ov15_020E6C80:
	.asciz "wmup_bg00.pac"
	.balign 4, 0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E6C98
ov15_020E6C98:
	.word FUN_02029ea0
	.word FUN_ov15_020e3bc0
	.word _ZN15CommonSubScreen10updateKeysEtt
	.word _ZN15CommonSubScreen8updateTPEP6TPData
	.word FUN_ov15_020e3a10
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov15_020e3a9c
	.word FUN_ov15_020e3b14
	.word FUN_ov15_020e3b6c
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
	.word FUN_ov15_020e3210
	.word _ZN12CommonScreen6signalEi
	.word _ZN12CommonScreen5stateEv
	.global ov15_020E6D04
ov15_020E6D04:
	.asciz "/data_iz/pic2d/STSWic.SPF_"
	.balign 4, 0
	.global ov15_020E6D20
ov15_020E6D20:
	.asciz "%d"
	.balign 4, 0
	.global ov15_020E6D24
ov15_020E6D24: ; shift-jis string
	.byte 0x25, 0x73, 0x0A, 0x81, 0x6D, 0x83, 0x47, 0x83, 0x89, 0x81, 0x5B, 0x83
	.byte 0x52, 0x81, 0x5B, 0x83, 0x68, 0x25, 0x73, 0x81, 0x6E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.bss
	.global ov15_020ED848
ov15_020ED848:
	.space 0x04
	.global ov15_020ED84C
ov15_020ED84C:
	.space 0x04
	.global ov15_020ED850
ov15_020ED850:
	.space 0x1FC
	.global ov15_020EDA4C
ov15_020EDA4C:
	.space 0x200
	.global ov15_020EDC4C
ov15_020EDC4C:
	.space 0x200
	.global ov15_020EDE4C
ov15_020EDE4C:
	.space 0x14

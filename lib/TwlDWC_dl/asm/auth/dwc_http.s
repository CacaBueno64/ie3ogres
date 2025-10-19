
	.include "asm/macros/function.inc"
	.public CPSMyIp
	.public CPS_Resolve
	.public CPS_SetRootCa
	.public CPS_SetSsl
	.public CPS_SocBind
	.public CPS_SocConsume
	.public CPS_SocFlush
	.public CPS_SocGetLength
	.public CPS_SocRead
	.public CPS_SocRegister
	.public CPS_SocRelease
	.public CPS_SocUnRegister
	.public CPS_SocUse
	.public CPS_SocWrite
	.public CPS_SslAddRandomSeed
	.public CPS_TcpClose
	.public CPS_TcpConnect
	.public CPS_TcpShutdown
	.public DWC_Base64Decode
	.public DWC_Base64Encode
	.public DWCca_cybertrust_baltimore
	.public DWCca_cybertrust_globalsign
	.public DWCca_cybertrust_gteglroot
	.public DWCca_cybertrust_gteroot
	.public DWCca_globalsign_rootcar2
	.public DWCca_nas_self
	.public DWCca_thawte_premiumserver
	.public DWCca_thawte_server
	.public DWCca_verisign_c3pcag2v2
	.public DWCca_verisign_c3pcag3v2
	.public DWCca_verisign_pca3ssg4
	.public DWCca_verisign_secureserver
	.public MI_CpuCopy8
	.public MI_CpuFill8
	.public OS_CreateThread
	.public OS_GetLowEntropyData
	.public OS_GetTick
	.public OS_InitMutex
	.public OS_IsThreadTerminated
	.public OS_LockMutex
	.public OS_SNPrintf
	.public OS_Sleep
	.public OS_UnlockMutex
	.public OS_WakeupThreadDirect
	.public _ll_udiv
	.public atoi
	.public memmove
	.public strcmp
	.public strcpy
	.public strlen
	.public strncmp
	.public strncpy
	.public strstr

	.text
	arm_func_start DWC_Http_Create
DWC_Http_Create: ; 0x020C7FF0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r4, #0
	ldr r2, _020C80F4 ; =0x00001C50
	mov r7, r0
	mov r1, r4
	ldr r5, [r6, #0xc]
	bl MI_CpuFill8
	add r1, r7, #4
	sub r2, r4, #1
	add r0, r7, #0x1000
	mov lr, r6
	str r2, [r0, #0xa6c]
	str r2, [r0, #0xa70]
	add r12, r1, #0x1000
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2}
	stmia r12, {r0, r1, r2}
	ldr r1, _020C80F8 ; =0x00000B68
	mov r0, r4
	blx r5
	add r1, r7, #0x1000
	cmp r0, #0
	str r0, [r1, #0xa08]
	moveq r0, #1
	streq r0, [r1, #0x20]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _020C80FC ; =0x000005EA
	mov r0, r4
	blx r5
	add r2, r7, #0x1000
	str r0, [r2, #0xa0c]
	cmp r0, #0
	moveq r0, #1
	streq r0, [r2, #0x20]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r1, r7, #0x244
	ldr r2, [r2, #0xc]
	mov r0, r7
	add r1, r1, #0x1800
	bl DWCi_Http_AllocBuffer
	cmp r0, #0
	addeq r1, r7, #0x1000
	moveq r0, #1
	streq r0, [r1, #0x20]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6]
	mov r0, r7
	bl DWCi_Http_SetHostinfo
	cmp r0, #0
	addeq r1, r7, #0x1000
	moveq r0, #1
	streq r0, [r1, #0x20]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl DWCi_Http_WriteBasicHeader
	add r1, r7, #0x1000
	str r0, [r1, #0x20]
	cmp r0, #0
	moveq r0, #0xff
	streqb r0, [r1]
	add r0, r7, #0x1000
	ldr r0, [r0, #0x20]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C80F4: .word 0x00001C50
_020C80F8: .word 0x00000B68
_020C80FC: .word 0x000005EA
	arm_func_end DWC_Http_Create

	arm_func_start DWC_Http_FinishHeader
DWC_Http_FinishHeader: ; 0x020C8100
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r1, _020C8188 ; =0x020E4684
	ldr r2, _020C818C ; =0x020E4690
	mov r5, r0
	bl DWC_Http_Add_HeaderItem
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x1000
	ldr r0, [r0, #0xa34]
	ldr r1, _020C8190 ; =0x020E4698
	bl strstr
	add r0, r0, #4
	bl strlen
	movs r3, r0
	beq _020C817C
	add r4, sp, #0
	ldr r2, _020C8194 ; =0x020E46A0
	mov r0, r4
	mov r1, #7
	bl OS_SNPrintf
	ldr r1, _020C8198 ; =0x020E46A4
	mov r0, r5
	mov r2, r4
	bl DWC_Http_Add_HeaderItem
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
_020C817C:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020C8188: .word ov15_020E4684
_020C818C: .word ov15_020E4690
_020C8190: .word ov15_020E4698
_020C8194: .word ov15_020E46A0
_020C8198: .word ov15_020E46A4
	arm_func_end DWC_Http_FinishHeader

	arm_func_start DWC_Http_StartThread
DWC_Http_StartThread: ; 0x020C819C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	add r0, r6, #0x34
	add r2, r6, #0x1000
	mov r4, #0
	add r0, r0, #0x1c00
	mov r5, r1
	str r4, [r2, #0xc4c]
	bl OS_InitMutex
	add r0, r6, #0x254
	add r0, r0, #0x1800
	bl OS_InitMutex
	add r0, r6, #0x1000
	ldr r0, [r0, #0x18]
	cmp r0, #1
	ldreq r0, _020C8250 ; =DWChttpignoreca
	moveq r1, #1
	streq r1, [r0]
	ldrne r0, _020C8250 ; =DWChttpignoreca
	strne r4, [r0]
	add r0, r6, #0x1000
	ldr r0, [r0, #0xbe0]
	cmp r0, #0
	beq _020C8218
	add r0, r6, #0x374
	add r0, r0, #0x1800
	bl OS_IsThreadTerminated
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, pc}
_020C8218:
	add r0, r6, #0x374
	mov r1, #0x1000
	str r1, [sp]
	ldr r1, _020C8254 ; =DWCi_Http_Thread
	mov r2, r6
	add r0, r0, #0x1800
	add r3, r6, #0x1000
	str r5, [sp, #4]
	bl OS_CreateThread
	add r0, r6, #0x374
	add r0, r0, #0x1800
	bl OS_WakeupThreadDirect
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_020C8250: .word DWChttpignoreca
_020C8254: .word DWCi_Http_Thread
	arm_func_end DWC_Http_StartThread

	arm_func_start DWC_Http_Abort
DWC_Http_Abort: ; 0x020C8258
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldrb r0, [r0]
	cmp r0, #0xff
	ldmnefd sp!, {r4, pc}
	add r0, r4, #0x34
	add r0, r0, #0x1c00
	bl OS_LockMutex
	add r0, r4, #0x34
	add r1, r4, #0x1000
	mov r2, #1
	add r0, r0, #0x1c00
	str r2, [r1, #0xc4c]
	bl OS_UnlockMutex
	ldmfd sp!, {r4, pc}
	arm_func_end DWC_Http_Abort

	arm_static_func_start DWCi_Http_Yield
DWCi_Http_Yield: ; 0x020C8298
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x130]
	cmp r0, #1
	bne _020C82CC
	add r0, r4, #0xa10
	add r0, r0, #0x1000
	bl OS_GetLowEntropyData
	add r0, r4, #0xa10
	add r0, r0, #0x1000
	mov r1, #0x20
	bl CPS_SslAddRandomSeed
_020C82CC:
	add r0, r4, #0x34
	add r0, r0, #0x1c00
	bl OS_LockMutex
	add r0, r4, #0x1000
	ldr r0, [r0, #0xc4c]
	cmp r0, #1
	add r0, r4, #0x34
	add r0, r0, #0x1c00
	bne _020C82FC
	bl OS_UnlockMutex
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020C82FC:
	bl OS_UnlockMutex
	mov r0, #0xa
	bl OS_Sleep
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end DWCi_Http_Yield

	arm_static_func_start DWCi_Http_InitCpsSocket
DWCi_Http_InitCpsSocket: ; 0x020C8310
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x138
	add r0, r0, #0x1000
	mov r1, #0
	mov r2, #0xa0
	bl MI_CpuFill8
	add r1, r4, #0x1000
	add r0, r4, #0x138
	ldr r12, [r1, #0xa08]
	ldr r2, [r1, #0xa0c]
	ldr lr, _020C8360 ; =0x00000B68
	ldr r3, _020C8364 ; =0x000005EA
	add r0, r0, #0x1000
	str lr, [r1, #0x180]
	str r12, [r1, #0x184]
	str r3, [r1, #0x18c]
	str r2, [r1, #0x190]
	bl CPS_SocRegister
	ldmfd sp!, {r4, pc}
_020C8360: .word 0x00000B68
_020C8364: .word 0x000005EA
	arm_func_end DWCi_Http_InitCpsSocket

	arm_static_func_start DWCi_Http_Resolve
DWCi_Http_Resolve: ; 0x020C8368
	add r0, r0, #0x1000
	ldr r0, [r0, #0x124]
	ldr r12, _020C8378 ; =CPS_Resolve
	bx r12
_020C8378: .word CPS_Resolve
	arm_func_end DWCi_Http_Resolve

	arm_static_func_start DWCi_Http_CheckHeaderReceived
DWCi_Http_CheckHeaderReceived: ; 0x020C837C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	add r0, r5, #0x1000
	ldr r7, [r0, #0xa44]
	ldr r6, _020C8460 ; =0x020E4698
	add r2, r5, #0x244
	mov r0, r7
	mov r1, r6
	add r4, r2, #0x1800
	bl strstr
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	mov r1, r6
	bl strstr
	add r1, r5, #0x254
	add r6, r0, #4
	add r0, r1, #0x1800
	bl OS_LockMutex
	ldr r1, [r4, #4]
	add r0, r5, #0x254
	sub r2, r1, r6
	add r1, r5, #0x1000
	add r0, r0, #0x1800
	str r2, [r1, #0xa70]
	bl OS_UnlockMutex
	ldr r6, _020C8464 ; =0x020E46B4
	ldr r0, [r4]
	mov r1, r6
	bl strstr
	movs r8, r0
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	bl strlen
	mov r7, r0
	ldr r1, _020C8468 ; =0x020E46C8
	add r0, r8, r7
	bl strstr
	mov r6, r0
	add r0, r5, #0x254
	ldrsb r4, [r6]
	mov r1, #0
	add r0, r0, #0x1800
	strb r1, [r6]
	bl OS_LockMutex
	add r0, r8, r7
	bl atoi
	add r1, r5, #0x1000
	add r2, r5, #0x254
	str r0, [r1, #0xa6c]
	add r0, r2, #0x1800
	bl OS_UnlockMutex
	strb r4, [r6]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C8460: .word ov15_020E4698
_020C8464: .word ov15_020E46B4
_020C8468: .word ov15_020E46C8
	arm_func_end DWCi_Http_CheckHeaderReceived

	arm_static_func_start DWCi_Http_Thread
DWCi_Http_Thread: ; 0x020C846C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r10, r0
	add r0, r10, #0x1000
	ldr r8, [r0, #0x1c]
	add r0, r10, #0x138
	add r1, r10, #0x1d8
	add r2, r10, #0x244
	add r4, r0, #0x1000
	cmp r8, #0
	mov r0, r10
	add r5, r1, #0x1000
	add r7, r2, #0x1800
	mov r11, #0
	ldrle r8, _020C8764 ; =0x0000EA60
	bl DWCi_Http_InitCpsSocket
	mov r0, r10
	bl DWCi_Http_Resolve
	movs r6, r0
	add r0, r10, #0x1000
	moveq r1, #2
	streq r1, [r0, #0x20]
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r6, [r0, #0x12c]
	bl CPS_SocUse
	add r0, r10, #0x1000
	ldr r0, [r0, #0x130]
	cmp r0, #1
	bne _020C8520
	mov r0, r5
	mov r1, #0
	mov r2, #0x830
	bl MI_CpuFill8
	add r0, r10, #0x1000
	ldr r2, [r0, #0x124]
	ldr r3, _020C8768 ; =DWCi_Http_CPSCallback
	ldr r0, _020C876C ; =DWCcainfo
	mov r1, #0xc
	str r3, [r5, #0x810]
	str r2, [r5, #0x800]
	str r5, [r4, #0xc]
	bl CPS_SetRootCa
	mov r0, #1
	bl CPS_SetSsl
_020C8520:
	add r0, r10, #0x1100
	ldrh r1, [r0, #0x34]
	mov r2, r6
	mov r0, #0
	bl CPS_SocBind
	bl CPS_TcpConnect
	cmp r0, #0
	add r0, r10, #0x1000
	beq _020C855C
	mov r1, #3
	str r1, [r0, #0x20]
	bl CPS_SocRelease
	bl CPS_SocUnRegister
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C855C:
	ldr r4, [r0, #0xa34]
	mov r0, r4
	bl strlen
	mov r1, r0
	mov r0, r4
	bl CPS_SocWrite
	cmp r0, #0
	str r0, [sp, #0x10]
	addle r0, r10, #0x1000
	movle r1, #5
	strle r1, [r0, #0x20]
	ble _020C874C
	bl CPS_SocFlush
	mov r0, r10
	bl DWCi_Http_Yield
	cmp r0, #0
	addeq r0, r10, #0x1000
	moveq r1, #7
	streq r1, [r0, #0x20]
	beq _020C874C
	ldr r1, [r7]
	ldr r0, [r7, #0xc]
	str r1, [r7, #4]
	add r0, r1, r0
	str r0, [r7, #8]
	bl OS_GetTick
	str r0, [sp, #8]
	add r0, r10, #0xa70
	str r1, [sp, #4]
	add r5, r10, #0x254
	add r6, r0, #0x1000
	add r4, r10, #0x1000
_020C85DC:
	ldr r0, _020C8770 ; =CPSMyIp
	ldr r0, [r0]
	cmp r0, #0
	addeq r0, r10, #0x1000
	moveq r1, #5
	streq r1, [r0, #0x20]
	beq _020C874C
	bl CPS_SocGetLength
	str r0, [sp, #0x10]
	cmp r0, #0
	blt _020C8728
	ble _020C86AC
	bl OS_GetTick
	str r0, [sp, #8]
	add r0, sp, #0x10
	str r1, [sp, #4]
	bl CPS_SocRead
	cmp r0, #0
	beq _020C8728
	ldmib r7, {r1, r2}
	sub r2, r2, #1
	ldr r9, [sp, #0x10]
	sub r2, r2, r1
	cmp r9, r2
	movge r9, r2
	mov r2, r9
	bl MI_CpuCopy8
	ldr r1, [r7, #4]
	cmp r11, #1
	add r0, r1, r9
	str r0, [r7, #4]
	mov r0, #0
	strb r0, [r1, r9]
	bne _020C8684
	add r0, r5, #0x1800
	bl OS_LockMutex
	ldr r1, [r6]
	add r0, r5, #0x1800
	add r1, r1, r9
	str r1, [r6]
	bl OS_UnlockMutex
	b _020C8690
_020C8684:
	mov r0, r10
	bl DWCi_Http_CheckHeaderReceived
	mov r11, r0
_020C8690:
	ldr r0, [sp, #0x10]
	cmp r0, r9
	bls _020C86A4
	bl CPS_SocConsume
	b _020C8728
_020C86A4:
	mov r0, r9
	bl CPS_SocConsume
_020C86AC:
	ldr r1, [r4, #0xa6c]
	cmp r1, #0
	blt _020C86C4
	ldr r0, [r4, #0xa70]
	cmp r0, r1
	bge _020C8728
_020C86C4:
	bl OS_GetTick
	ldr r2, [sp, #8]
	mov r3, #0
	subs r2, r0, r2
	ldr r0, [sp, #4]
	sbc r0, r1, r0
	mov r1, r0, lsl #6
	orr r1, r1, r2, lsr #26
	mov r0, r2, lsl #6
	ldr r2, _020C8774 ; =0x000082EA
	bl _ll_udiv
	cmp r1, r8, asr #31
	cmpeq r0, r8
	addhi r0, r10, #0x1000
	movhi r1, #6
	strhi r1, [r0, #0x20]
	bhi _020C874C
	mov r0, r10
	bl DWCi_Http_Yield
	cmp r0, #0
	bne _020C85DC
	add r0, r10, #0x1000
	mov r1, #7
	str r1, [r0, #0x20]
	b _020C874C
_020C8728:
	bl CPS_TcpShutdown
	bl CPS_TcpClose
	bl CPS_SocRelease
	bl CPS_SocUnRegister
	add r0, r10, #0x1000
	mov r1, #8
	str r1, [r0, #0x20]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C874C:
	bl CPS_TcpShutdown
	bl CPS_TcpClose
	bl CPS_SocRelease
	bl CPS_SocUnRegister
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C8764: .word 0x0000EA60
_020C8768: .word DWCi_Http_CPSCallback
_020C876C: .word DWCcainfo
_020C8770: .word CPSMyIp
_020C8774: .word 0x000082EA
	arm_func_end DWCi_Http_Thread

	arm_func_start DWC_Http_Destroy
DWC_Http_Destroy: ; 0x020C8778
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r0
	add r1, r5, #0x1000
	ldr r4, [r1, #0x14]
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r1, r5, #0x274
	add r1, r1, #0x1800
	mov r2, #0x20
	bl DWCi_Http_DestroyResult
	add r1, r5, #0x244
	mov r0, r5
	add r1, r1, #0x1800
	bl DWCi_Http_FreeBuffer
	add r1, r5, #0x234
	mov r0, r5
	add r1, r1, #0x1800
	bl DWCi_Http_FreeBuffer
	add r0, r5, #0x1000
	ldr r1, [r0, #0xa08]
	cmp r1, #0
	beq _020C87E4
	mov r6, #0
	mov r0, r6
	mov r2, r6
	blx r4
	add r0, r5, #0x1000
	str r6, [r0, #0xa08]
_020C87E4:
	add r0, r5, #0x1000
	ldr r1, [r0, #0xa0c]
	cmp r1, #0
	beq _020C880C
	mov r6, #0
	mov r0, r6
	mov r2, r6
	blx r4
	add r0, r5, #0x1000
	str r6, [r0, #0xa0c]
_020C880C:
	ldr r2, _020C8820 ; =0x00001C50
	mov r0, r5
	mov r1, #0
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, pc}
_020C8820: .word 0x00001C50
	arm_func_end DWC_Http_Destroy

	arm_static_func_start DWCi_Http_WriteBasicHeader
DWCi_Http_WriteBasicHeader: ; 0x020C8824
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	add r0, r7, #0x1000
	ldr r1, [r0, #8]
	add r0, r7, #0x234
	add r5, r0, #0x1800
	add r0, r7, #0x1000
	ldr r6, _020C88DC ; =0x020E46CC
	cmp r1, #0
	ldrne r6, _020C88E0 ; =0x020E4720
	ldr r0, [r0, #0x124]
	bl strlen
	mov r4, r0
	mov r0, r6
	bl strlen
	add r1, r7, #0x1000
	mov r8, r0
	ldr r0, [r1, #0x128]
	bl strlen
	sub r1, r8, #4
	add r0, r1, r0
	add r2, r4, r0
	add r0, r7, #0x234
	add r1, r0, #0x1800
	add r2, r2, #0x400
	mov r0, r7
	bl DWCi_Http_AllocBuffer
	cmp r0, #1
	addne sp, sp, #4
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r3, r7, #0x1000
	ldr r0, [r3, #0x124]
	mov r2, r6
	str r0, [sp]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	ldr r3, [r3, #0x128]
	bl OS_SNPrintf
	ldr r1, [r5, #4]
	add r0, r1, r0
	str r0, [r5, #4]
	mov r0, #0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020C88DC: .word ov15_020E46CC
_020C88E0: .word ov15_020E4720
	arm_func_end DWCi_Http_WriteBasicHeader

	arm_func_start DWC_Http_Add_HeaderItem
DWC_Http_Add_HeaderItem: ; 0x020C88E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	mov r6, r2
	add r2, r8, #0x234
	mov r0, r6
	mov r7, r1
	add r5, r2, #0x1800
	bl strlen
	mov r4, r0
	ldr r0, _020C89B8 ; =0x020E4740
	bl strlen
	mov r9, r0
	mov r0, r7
	bl strlen
	sub r1, r9, #4
	add r0, r1, r0
	add r4, r4, r0
	ldmib r5, {r1, r2}
	add r0, r4, #1
	sub r1, r2, r1
	cmp r0, r1
	ble _020C895C
	sub r2, r4, r1
	mov r0, r8
	mov r1, r5
	add r2, r2, #1
	bl DWCi_Http_ReallocBuffer
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C895C:
	ldr r0, [r5]
	ldr r1, _020C89BC ; =0x020E4698
	bl strstr
	add r9, r0, #2
	ldrsb r8, [r0, #2]
	mov r0, r9
	bl strlen
	add r2, r0, #1
	add r0, r9, r4
	mov r1, r9
	bl memmove
	ldr r2, _020C89B8 ; =0x020E4740
	str r6, [sp]
	mov r3, r7
	mov r0, r9
	add r1, r4, #1
	bl OS_SNPrintf
	strb r8, [r9, r0]
	ldr r1, [r5, #4]
	mov r0, #0
	add r1, r1, r4
	str r1, [r5, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C89B8: .word ov15_020E4740
_020C89BC: .word ov15_020E4698
	arm_func_end DWC_Http_Add_HeaderItem

	arm_func_start DWC_Http_Add_PostBase64Item
DWC_Http_Add_PostBase64Item: ; 0x020C89C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	add r0, r10, #0x1000
	ldr r4, [r0, #0xa30]
	add r0, r10, #0x234
	cmp r4, #0
	ldr r7, _020C8AC0 ; =0x020E474C
	mov r8, r2
	add r4, r10, #0x1000
	add r6, r0, #0x1800
	ldr r0, [r4, #0xa30]
	mov r11, r3
	add r5, r0, #1
	mov r2, #0
	mov r9, r1
	ldrne r7, _020C8AC4 ; =0x020E4750
	mov r0, r8
	mov r1, r11
	mov r3, r2
	str r5, [r4, #0xa30]
	bl DWC_Base64Encode
	mov r5, r0
	mov r0, r7
	bl strlen
	mov r4, r0
	mov r0, r9
	bl strlen
	sub r1, r4, #2
	add r2, r1, r0
	ldmib r6, {r0, r1}
	add r2, r5, r2
	sub r1, r1, r0
	cmp r2, r1
	ble _020C8A70
	sub r2, r2, r1
	mov r0, r10
	mov r1, r6
	add r2, r2, #1
	bl DWCi_Http_ReallocBuffer
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldmib r6, {r0, r1}
	sub r1, r1, r0
_020C8A70:
	mov r2, r7
	mov r3, r9
	bl OS_SNPrintf
	ldr r2, [r6, #4]
	ldr r1, [r6, #8]
	add r2, r2, r0
	sub r3, r1, r2
	mov r0, r8
	mov r1, r11
	sub r3, r3, #1
	str r2, [r6, #4]
	bl DWC_Base64Encode
	cmp r0, #0
	ldrge r1, [r6, #4]
	movlt r0, #1
	addge r2, r1, r5
	movge r0, #0
	strge r2, [r6, #4]
	strgeb r0, [r1, r5]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C8AC0: .word ov15_020E474C
_020C8AC4: .word ov15_020E4750
	arm_func_end DWC_Http_Add_PostBase64Item

	arm_func_start DWC_Http_Add_Body
DWC_Http_Add_Body: ; 0x020C8AC8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	add r1, r7, #0x234
	mov r0, r6
	add r5, r1, #0x1800
	bl strlen
	mov r4, r0
	ldmib r5, {r0, r1}
	sub r1, r1, r0
	cmp r4, r1
	ble _020C8B20
	sub r2, r4, r1
	mov r0, r7
	mov r1, r5
	add r2, r2, #1
	bl DWCi_Http_ReallocBuffer
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldmib r5, {r0, r1}
	sub r1, r1, r0
_020C8B20:
	ldr r2, _020C8B48 ; =0x020E4758
	mov r3, r6
	bl OS_SNPrintf
	cmp r0, r4
	ldreq r1, [r5, #4]
	movne r0, #1
	addeq r0, r1, r0
	streq r0, [r5, #4]
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C8B48: .word ov15_020E4758
	arm_func_end DWC_Http_Add_Body

	arm_static_func_start DWCi_Http_CPSCallback
DWCi_Http_CPSCallback: ; 0x020C8B4C
	tst r0, #0x8000
	bicne r0, r0, #0x8000
	bx lr
	arm_func_end DWCi_Http_CPSCallback

	arm_static_func_start DWCi_Http_AllocBuffer
DWCi_Http_AllocBuffer: ; 0x020C8B58
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r2
	add r0, r0, #0x1000
	ldr r2, [r0, #0x10]
	mov r6, r1
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #0
	mov r0, r4
	mov r1, r5
	blx r2
	str r0, [r6]
	cmp r0, #0
	moveq r0, r4
	addne r1, r0, r5
	stmneib r6, {r0, r1}
	strne r5, [r6, #0xc]
	movne r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DWCi_Http_AllocBuffer

	arm_static_func_start DWCi_Http_FreeBuffer
DWCi_Http_FreeBuffer: ; 0x020C8BA4
	stmfd sp!, {r4, lr}
	mov r4, r1
	ldr r1, [r4]
	add r0, r0, #0x1000
	cmp r1, #0
	ldr r3, [r0, #0x14]
	beq _020C8BCC
	mov r0, #0
	mov r2, r0
	blx r3
_020C8BCC:
	mov r0, r4
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	ldmfd sp!, {r4, pc}
	arm_func_end DWCi_Http_FreeBuffer

	arm_static_func_start DWCi_Http_ReallocBuffer
DWCi_Http_ReallocBuffer: ; 0x020C8BE0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	add r0, r0, #0x1000
	ldr r8, [r0, #0x14]
	mov r5, r2
	mov r6, r1
	cmp r5, #0
	ldr r2, [r0, #0x10]
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r6, #0xc]
	mov r7, #0
	mov r0, r7
	add r1, r1, r5
	blx r2
	movs r4, r0
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r6]
	ldr r2, [r6, #0xc]
	mov r1, r4
	bl MI_CpuCopy8
	ldr r1, [r6]
	mov r0, r7
	mov r2, r7
	blx r8
	cmp r4, #0
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r6, #0xc]
	ldmia r6, {r2, r3}
	add r1, r0, r5
	sub r0, r4, r2
	add r2, r3, r0
	add r0, r4, r1
	str r0, [r6, #8]
	str r2, [r6, #4]
	str r1, [r6, #0xc]
	str r4, [r6]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end DWCi_Http_ReallocBuffer

	arm_static_func_start DWCi_Http_SetHostinfo
DWCi_Http_SetHostinfo: ; 0x020C8C80
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r0
	mov r0, r6
	mov r4, #0
	bl strlen
	cmp r0, #0x100
	movhs r0, r4
	ldmhsfd sp!, {r4, r5, r6, pc}
	add r0, r5, #0x24
	mov r1, r6
	add r0, r0, #0x1000
	mov r2, #0x100
	bl strncpy
	mov r0, r6
	bl strlen
	add r1, r5, #0x24
	mov r6, r0
	add r0, r1, #0x1000
	bl strlen
	cmp r6, r0
	movne r0, r4
	ldmnefd sp!, {r4, r5, r6, pc}
	add r0, r5, #0x24
	ldr r1, _020C8DB8 ; =0x020E475C
	add r0, r0, #0x1000
	bl strstr
	cmp r0, #0
	beq _020C8D14
	add r0, r5, #0x2b
	add r1, r5, #0x1000
	add r3, r0, #0x1000
	add r0, r5, #0x1100
	mov r2, #0x50
	str r3, [r1, #0x124]
	str r4, [r1, #0x130]
	b _020C8D4C
_020C8D14:
	add r0, r5, #0x24
	ldr r1, _020C8DBC ; =0x020E4764
	add r0, r0, #0x1000
	bl strstr
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r3, #1
	add r1, r5, #0x1000
	add r12, r0, #8
	rsb r2, r3, #0x1bc
	add r0, r5, #0x1100
	str r12, [r1, #0x124]
	str r3, [r1, #0x130]
_020C8D4C:
	strh r2, [r0, #0x34]
	add r0, r5, #0x1000
	ldr r0, [r0, #0x124]
	ldr r1, _020C8DC0 ; =0x020E4770
	bl strstr
	cmp r0, #0
	movne r1, #0
	strneb r1, [r0]
	addne r4, r0, #1
	add r0, r5, #0x1000
	ldr r0, [r0, #0x124]
	ldr r1, _020C8DC4 ; =0x020E4774
	bl strstr
	mov r1, #0
	cmp r0, #0
	strneb r1, [r0]
	addne r1, r0, #1
	add r0, r5, #0x1000
	str r1, [r0, #0x128]
	cmp r4, #0
	beq _020C8DB0
	mov r0, r4
	bl atoi
	add r1, r5, #0x1100
	strh r0, [r1, #0x34]
_020C8DB0:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020C8DB8: .word ov15_020E475C
_020C8DBC: .word ov15_020E4764
_020C8DC0: .word ov15_020E4770
_020C8DC4: .word ov15_020E4774
	arm_func_end DWCi_Http_SetHostinfo

	arm_static_func_start DWCi_Http_AddResult
DWCi_Http_AddResult: ; 0x020C8DC8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	add r0, r0, #0x1000
	mov r9, r1
	ldmib r9, {r1, r4}
	cmp r4, r1
	ldr r5, [r0, #0x10]
	ldr r6, [r0, #0x14]
	mov r4, #0
	mov r8, r2
	mov r7, r3
	movgt r0, r4
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r8
	bl strlen
	mov r1, r0
	mov r0, r4
	add r1, r1, #1
	blx r5
	ldr r2, [r9]
	ldr r1, [r9, #8]
	str r0, [r2, r1, lsl #3]
	ldr r1, [r9, #8]
	ldr r2, [r9]
	ldr r0, [r2, r1, lsl #3]
	cmp r0, #0
	beq _020C8EA8
	mov r0, r7
	bl strlen
	mov r1, r0
	mov r0, r4
	add r1, r1, #1
	blx r5
	ldr r2, [r9]
	ldr r1, [r9, #8]
	add r1, r2, r1, lsl #3
	str r0, [r1, #4]
	ldr r1, [r9, #8]
	ldr r2, [r9]
	add r0, r2, r1, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020C8EA8
	ldr r0, [r2, r1, lsl #3]
	mov r1, r8
	bl strcpy
	ldr r2, [r9]
	ldr r0, [r9, #8]
	mov r1, r7
	add r0, r2, r0, lsl #3
	ldr r0, [r0, #4]
	bl strcpy
	ldr r1, [r9, #8]
	mov r0, #1
	add r1, r1, #1
	str r1, [r9, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C8EA8:
	ldr r1, [r2, r1, lsl #3]
	cmp r1, #0
	beq _020C8ECC
	mov r0, r4
	mov r2, r4
	blx r6
	ldr r1, [r9]
	ldr r0, [r9, #8]
	str r4, [r1, r0, lsl #3]
_020C8ECC:
	ldr r1, [r9]
	ldr r0, [r9, #8]
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020C8F00
	mov r0, r4
	mov r2, r4
	blx r6
	ldr r1, [r9]
	ldr r0, [r9, #8]
	add r0, r1, r0, lsl #3
	str r4, [r0, #4]
_020C8F00:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end DWCi_Http_AddResult

	arm_func_start DWC_Http_ParseResult
DWC_Http_ParseResult: ; 0x020C8F08
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r10, r0
	add r0, r10, #0x274
	mov r4, #0
	mov r6, r1
	add r0, r0, #0x1800
	mov r3, #0x20
	mov r1, r4
	mov r2, #0x100
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r4, [sp, #0x10]
	bl MI_CpuFill8
	add r0, r10, #0x1000
	ldr r5, [r0, #0xa44]
	ldr r1, _020C918C ; =0x020E4698
	mov r0, r5
	bl strstr
	str r0, [sp, #4]
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r0, #4
	bl strlen
	ldr r1, [sp, #4]
	add r1, r1, #4
	add r0, r1, r0
	str r0, [sp]
	ldr r1, _020C9190 ; =0x020E4778
	mov r0, r5
	bl strstr
	movs r5, r0
	addeq sp, sp, #0x14
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsb r8, [r5, #4]
	ldr r2, _020C9194 ; =0x020E477C
	mov r0, r10
	add r1, sp, #8
	add r3, r5, #1
	strb r4, [r5, #4]
	bl DWCi_Http_AddResult
	cmp r0, #1
	addne sp, sp, #0x14
	movne r0, r4
	strneb r8, [r5, #4]
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	strb r8, [r5, #4]
	cmp r6, #1
	beq _020C8FF0
	ldr r1, _020C9198 ; =0x020E4788
	add r0, r5, #1
	mov r2, #3
	bl strncmp
	cmp r0, #0
	beq _020C8FFC
_020C8FF0:
	add sp, sp, #0x14
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C8FFC:
	ldr r1, _020C919C ; =0x020E46C8
	add r0, r5, #5
	mov r11, r4
	bl strstr
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	b _020C90A0
_020C9020:
	ldr r1, _020C91A0 ; =0x020E478C
	mov r0, r8
	bl strstr
	movs r5, r0
	beq _020C90BC
	ldrsb r6, [r5]
	add r9, r5, #2
	ldr r1, _020C919C ; =0x020E46C8
	mov r0, r9
	strb r11, [r5]
	bl strstr
	movs r4, r0
	streqb r6, [r5]
	beq _020C90BC
	ldrsb r7, [r4]
	mov r0, r10
	mov r2, r8
	strb r11, [r4]
	add r1, sp, #8
	mov r3, r9
	bl DWCi_Http_AddResult
	cmp r0, #1
	strneb r6, [r5]
	addne sp, sp, #0x14
	movne r0, r11
	strneb r7, [r4]
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	bl strlen
	strb r6, [r5]
	add r0, r9, r0
	strb r7, [r4]
_020C90A0:
	add r8, r0, #2
	ldrsb r0, [r8]
	cmp r0, #0xd
	beq _020C90BC
	ldrsb r0, [r8, #1]
	cmp r0, #0xa
	bne _020C9020
_020C90BC:
	ldr r0, [sp, #4]
	mov r11, #0
	add r6, r0, #4
	ldr r0, [sp]
	cmp r6, r0
	bhs _020C9180
_020C90D4:
	ldr r1, _020C91A4 ; =0x020E4790
	mov r0, r6
	bl strstr
	movs r4, r0
	beq _020C9180
	ldrsb r8, [r4]
	add r5, r4, #1
	ldr r1, _020C91A8 ; =0x020E4794
	mov r0, r5
	strb r11, [r4]
	bl strstr
	movs r9, r0
	bne _020C9118
	ldr r1, _020C919C ; =0x020E46C8
	mov r0, r5
	bl strstr
	mov r9, r0
_020C9118:
	cmp r9, #0
	ldrnesb r7, [r9]
	mov r2, r6
	mov r0, r10
	add r1, sp, #8
	mov r3, r5
	strneb r11, [r9]
	bl DWCi_Http_AddResult
	cmp r0, #1
	beq _020C9158
	strb r8, [r4]
	cmp r9, #0
	add sp, sp, #0x14
	strneb r7, [r9]
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C9158:
	mov r0, r5
	bl strlen
	add r0, r5, r0
	add r6, r0, #1
	ldr r0, [sp]
	strb r8, [r4]
	cmp r9, #0
	strneb r7, [r9]
	cmp r6, r0
	blo _020C90D4
_020C9180:
	mov r0, #1
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C918C: .word ov15_020E4698
_020C9190: .word ov15_020E4778
_020C9194: .word ov15_020E477C
_020C9198: .word ov15_020E4788
_020C919C: .word ov15_020E46C8
_020C91A0: .word ov15_020E478C
_020C91A4: .word ov15_020E4790
_020C91A8: .word ov15_020E4794
	arm_func_end DWC_Http_ParseResult

	arm_func_start DWC_Http_GetResult
DWC_Http_GetResult: ; 0x020C91AC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
_020C91BC:
	add r0, r6, r4, lsl #3
	add r0, r0, #0x1000
	ldr r1, [r0, #0xa74]
	cmp r1, #0
	beq _020C91F8
	mov r0, r5
	bl strcmp
	cmp r0, #0
	addeq r0, r6, r4, lsl #3
	addeq r0, r0, #0x1000
	ldreq r0, [r0, #0xa78]
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r4, r4, #1
	cmp r4, #0x20
	blt _020C91BC
_020C91F8:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DWC_Http_GetResult

	arm_func_start DWC_Http_GetBase64DecodedResult
DWC_Http_GetBase64DecodedResult: ; 0x020C9200
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r2
	mov r5, r3
	bl DWC_Http_GetResult
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl strlen
	mov r1, r0
	mov r0, r4
	mov r2, r6
	mov r3, r5
	bl DWC_Base64Decode
	cmn r0, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r0, r5
	movlo r1, #0
	strlob r1, [r6, r0]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DWC_Http_GetBase64DecodedResult

	arm_func_start DWC_Http_GetRawResult
DWC_Http_GetRawResult: ; 0x020C924C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r2
	mov r5, r3
	bl DWC_Http_GetResult
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl strlen
	cmp r0, r5
	movge r0, #0
	ldmgefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	bl strcpy
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DWC_Http_GetRawResult

	arm_static_func_start DWCi_Http_DestroyResult
DWCi_Http_DestroyResult: ; 0x020C928C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	add r0, r0, #0x1000
	ldr r5, [r0, #0x14]
	mov r7, r2
	mov r8, r1
	mov r6, #0
	cmp r7, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r4, r6
	mov r9, r6
_020C92B4:
	ldr r1, [r8, r6, lsl #3]
	cmp r1, #0
	beq _020C92D0
	mov r0, r4
	mov r2, r4
	blx r5
	str r4, [r8, r6, lsl #3]
_020C92D0:
	add r0, r8, r6, lsl #3
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020C92F4
	mov r0, r9
	mov r2, r9
	blx r5
	add r0, r8, r6, lsl #3
	str r9, [r0, #4]
_020C92F4:
	add r6, r6, #1
	cmp r6, r7
	blt _020C92B4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end DWCi_Http_DestroyResult

	.data
	.global DWCcainfo
DWCcainfo:
	.word DWCca_verisign_c3pcag3v2
	.word DWCca_verisign_c3pcag2v2
	.word DWCca_verisign_pca3ssg4
	.word DWCca_verisign_secureserver
	.word DWCca_cybertrust_globalsign
	.word DWCca_cybertrust_gteglroot
	.word DWCca_cybertrust_gteroot
	.word DWCca_cybertrust_baltimore
	.word DWCca_thawte_server
	.word DWCca_thawte_premiumserver
	.word DWCca_globalsign_rootcar2
	.word DWCca_nas_self
ov15_020E4684:
	.asciz "Connection"
	.balign 4, 0
ov15_020E4690:
	.asciz "close"
	.balign 4, 0
ov15_020E4698:
	.asciz "\r\n\r\n"
	.balign 4, 0
ov15_020E46A0:
	.asciz "%d"
	.balign 4, 0
ov15_020E46A4:
	.asciz "Content-Length"
	.balign 4, 0
ov15_020E46B4:
	.asciz "Content-Length: "
	.balign 4, 0
ov15_020E46C8:
	.asciz "\r\n"
	.balign 4, 0
ov15_020E46CC:
	.asciz "POST /%s HTTP/1.0\r\nContent-type: application/x-www-form-urlencoded\r\nHost: %s\r\n\r\n"
	.balign 4, 0
ov15_020E4720:
	.asciz "GET /%s HTTP/1.0\r\nHost: %s\r\n\r\n"
	.balign 4, 0
ov15_020E4740:
	.asciz "%s: %s\r\n"
	.balign 4, 0
ov15_020E474C:
	.asciz "%s="
	.balign 4, 0
ov15_020E4750:
	.asciz "&%s="
	.balign 4, 0
ov15_020E4758:
	.asciz "%s"
	.balign 4, 0
ov15_020E475C:
	.asciz "http://"
	.balign 4, 0
ov15_020E4764:
	.asciz "https://"
	.balign 4, 0
ov15_020E4770:
	.asciz ":"
	.balign 4, 0
ov15_020E4774:
	.asciz "/"
	.balign 4, 0
ov15_020E4778:
	.asciz " "
	.balign 4, 0
ov15_020E477C:
	.asciz "httpresult"
	.balign 4, 0
ov15_020E4788:
	.asciz "200"
	.balign 4, 0
ov15_020E478C:
	.asciz ": "
	.balign 4, 0
ov15_020E4790:
	.asciz "="
	.balign 4, 0
ov15_020E4794:
	.asciz "&"

	.bss
	.global DWChttpignoreca
DWChttpignoreca:
	.space 0x04
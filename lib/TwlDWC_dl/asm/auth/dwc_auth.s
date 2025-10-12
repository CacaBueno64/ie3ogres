
	.include "asm/macros/function.inc"
	.public DWC_Auth_GetCalInfoFromWiFiInfo
	.public DWC_Auth_SetCalInfoToHttp
	.public DWC_Auth_SetNasTimeDiff
	.public DWC_Http_Abort
	.public DWC_Http_Add_PostBase64Item
	.public DWC_Http_Create
	.public DWC_Http_Destroy
	.public DWC_Http_FinishHeader
	.public DWC_Http_GetBase64DecodedResult
	.public DWC_Http_GetRawResult
	.public DWC_Http_GetResult
	.public DWC_Http_ParseResult
	.public DWC_Http_StartThread
	.public DWCi_AUTH_MakeWiFiID
	.public DWCi_AUTH_RemakeWiFiID
	.public DWCi_AUTH_UpDateWiFiID
	.public DWCi_BM_GetWiFiInfo
	.public DWCishotspot
	.public MI_CpuCopy8
	.public MI_CpuFill8
	.public OS_CreateThread
	.public OS_GetThreadPriority
	.public OS_GetTick
	.public OS_InitMutex
	.public OS_IsThreadTerminated
	.public OS_JoinThread
	.public OS_LockMutex
	.public OS_Sleep
	.public OS_UnlockMutex
	.public OS_WakeupThreadDirect
	.public OSi_ThreadInfo
	.public _ll_udiv
	.public atoi
	.public errno
	.public strcmp
	.public strlen
	.public strtol
	.public wcslen

	.text
	arm_func_start DWC_Auth_SetCustomNas
DWC_Auth_SetCustomNas: ; 0x020C6BB8
	ldr r1, _020C6BC4 ; =DWCauthhttpparam
	str r0, [r1]
	bx lr
_020C6BC4: .word DWCauthhttpparam
	arm_func_end DWC_Auth_SetCustomNas

	arm_func_start DWC_Auth_GetCustomNas
DWC_Auth_GetCustomNas: ; 0x020C6BC8
	ldr r0, _020C6BD4 ; =DWCauthhttpparam
	ldr r0, [r0]
	bx lr
_020C6BD4: .word DWCauthhttpparam
	arm_func_end DWC_Auth_GetCustomNas

	arm_func_start DWC_Auth_Create
DWC_Auth_Create: ; 0x020C6BD8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r6, _020C6CE0 ; =DWCiswfcutil
	mov r5, r0
	ldr r0, [r6, #4]
	mov r4, r1
	cmp r0, #0
	ldr r2, [r5, #0x40]
	movne r0, #2
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r7, _020C6CE4 ; =0x000013F4
	mov r8, #0
	mov r0, r8
	mov r1, r7
	blx r2
	str r0, [r6, #4]
	cmp r0, #0
	moveq r0, #2
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, r8
	mov r2, r7
	bl MI_CpuFill8
	ldr r0, [r6, #4]
	mov r1, r8
	add r0, r0, #0x1000
	str r4, [r0, #0x314]
	str r8, [r6, #8]
	ldr r0, [r6, #4]
	mov r2, #0x1c4
	add r0, r0, #8
	add r0, r0, #0x1000
	bl MI_CpuFill8
	ldr r0, [r6, #4]
	ldr r1, _020C6CE8 ; =0x00004E84
	add r0, r0, #0x1000
	str r1, [r0, #8]
	ldr r7, [r6, #4]
	mov r4, #4
	add r0, r7, #0x1cc
	add r6, r0, #0x1000
_020C6C74:
	ldmia r5!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020C6C74
	ldmia r5, {r0, r1}
	stmia r6, {r0, r1}
	add r0, r7, #0x1100
	mov r4, #0
	strh r4, [r0, #0xfe]
	ldr r5, _020C6CE0 ; =DWCiswfcutil
	mov r0, #1
	ldr r1, [r5, #4]
	add r1, r1, #0x1000
	strb r4, [r1, #0x20b]
	bl DWCi_Auth_Start
	ldr r1, [r5, #4]
	add r1, r1, #0x1000
	str r0, [r1, #4]
	ldr r0, [r5, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #4]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	str r4, [r5]
	bl DWCi_Auth_StartThread
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C6CE0: .word DWCiswfcutil
_020C6CE4: .word 0x000013F4
_020C6CE8: .word 0x00004E84
	arm_func_end DWC_Auth_Create

	arm_static_func_start DWCi_Auth_StartThread
DWCi_Auth_StartThread: ; 0x020C6CEC
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, _020C6D8C ; =DWCiswfcutil
	ldr r0, [r4, #4]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_InitMutex
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, r0, #0x1000
	str r1, [r0, #0x3f0]
	ldr r1, [r4, #4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x384]
	cmp r0, #0
	beq _020C6D44
	add r0, r1, #0x318
	add r0, r0, #0x1000
	bl OS_IsThreadTerminated
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, pc}
_020C6D44:
	ldr r4, _020C6D8C ; =DWCiswfcutil
	mov r0, #0x1000
	ldr r12, [r4, #4]
	mov r3, #0x10
	str r0, [sp]
	add r0, r12, #0x318
	ldr r1, _020C6D90 ; =DWCi_Auth_Thread
	ldr r2, _020C6D94 ; =DWCauth
	str r3, [sp, #4]
	add r0, r0, #0x1000
	add r3, r12, #0x1000
	bl OS_CreateThread
	ldr r0, [r4, #4]
	add r0, r0, #0x318
	add r0, r0, #0x1000
	bl OS_WakeupThreadDirect
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020C6D8C: .word DWCiswfcutil
_020C6D90: .word DWCi_Auth_Thread
_020C6D94: .word DWCauth
	arm_func_end DWCi_Auth_StartThread

	arm_func_start DWC_Auth_Abort
DWC_Auth_Abort: ; 0x020C6D98
	stmfd sp!, {r4, lr}
	ldr r4, _020C6E30 ; =DWCiswfcutil
	ldr r0, [r4, #4]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, r0, #0x1000
	str r1, [r0, #0x3f0]
	ldr r0, [r4, #4]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	cmp r0, #0
	beq _020C6DF0
	bl DWC_Http_Abort
_020C6DF0:
	ldr r4, _020C6E30 ; =DWCiswfcutil
	ldr r1, [r4, #4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x384]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	add r0, r1, #0x318
	add r0, r0, #0x1000
	bl OS_IsThreadTerminated
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #4]
	add r0, r0, #0x318
	add r0, r0, #0x1000
	bl OS_JoinThread
	ldmfd sp!, {r4, pc}
_020C6E30: .word DWCiswfcutil
	arm_func_end DWC_Auth_Abort

	arm_func_start DWC_Auth_Destroy
DWC_Auth_Destroy: ; 0x020C6E34
	stmfd sp!, {r4, r5, r6, lr}
	ldr r0, _020C6E80 ; =DWCiswfcutil
	ldr r0, [r0, #4]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r1, r0, #0x1000
	ldr r0, [r1, #0x314]
	ldr r6, [r1, #0x210]
	cmp r0, #0
	beq _020C6E60
	bl DWC_Http_Destroy
_020C6E60:
	ldr r4, _020C6E80 ; =DWCiswfcutil
	mov r5, #0
	ldr r1, [r4, #4]
	mov r0, r5
	mov r2, r5
	blx r6
	str r5, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020C6E80: .word DWCiswfcutil
	arm_func_end DWC_Auth_Destroy

	arm_func_start DWC_Auth_Join
DWC_Auth_Join: ; 0x020C6E84
	stmfd sp!, {r4, lr}
	ldr r4, _020C6EC8 ; =DWCiswfcutil
	ldr r1, [r4, #4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x384]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	add r0, r1, #0x318
	add r0, r0, #0x1000
	bl OS_IsThreadTerminated
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #4]
	add r0, r0, #0x318
	add r0, r0, #0x1000
	bl OS_JoinThread
	ldmfd sp!, {r4, pc}
_020C6EC8: .word DWCiswfcutil
	arm_func_end DWC_Auth_Join

	arm_func_start DWC_Auth_GetError
DWC_Auth_GetError: ; 0x020C6ECC
	stmfd sp!, {r4, lr}
	ldr r4, _020C6F10 ; =DWCiswfcutil
	ldr r0, [r4, #4]
	cmp r0, #0
	moveq r0, #0x16
	ldmeqfd sp!, {r4, pc}
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r1, [r4, #4]
	add r0, r1, #0x3d8
	add r1, r1, #0x1000
	add r0, r0, #0x1000
	ldr r4, [r1, #4]
	bl OS_UnlockMutex
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020C6F10: .word DWCiswfcutil
	arm_func_end DWC_Auth_GetError

	arm_func_start DWC_Auth_GetResult
DWC_Auth_GetResult: ; 0x020C6F14
	stmfd sp!, {r4, lr}
	ldr r1, _020C6F90 ; =DWCiswfcutil
	mov r4, r0
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _020C6F38
	mov r1, #0
	mov r2, #0x1c4
	bl MI_CpuFill8
_020C6F38:
	ldr r0, _020C6F90 ; =DWCiswfcutil
	mov r1, r4
	ldr r0, [r0, #4]
	mov r2, #0x1c4
	add r0, r0, #8
	add r0, r0, #0x1000
	bl MI_CpuCopy8
	ldr r1, [r4]
	ldr r0, _020C6F94 ; =0x00004E20
	cmp r1, r0
	blt _020C6F70
	ldr r0, _020C6F98 ; =0x00007530
	cmp r1, r0
	blt _020C6F78
_020C6F70:
	ldr r0, _020C6F9C ; =0x00005206
	str r0, [r4]
_020C6F78:
	ldr r1, [r4]
	ldr r0, _020C6FA0 ; =0x00004E84
	cmp r1, r0
	rsbge r0, r1, #0
	strge r0, [r4]
	ldmfd sp!, {r4, pc}
_020C6F90: .word DWCiswfcutil
_020C6F94: .word 0x00004E20
_020C6F98: .word 0x00007530
_020C6F9C: .word 0x00005206
_020C6FA0: .word 0x00004E84
	arm_func_end DWC_Auth_GetResult

	arm_static_func_start DWCi_Auth_Start
DWCi_Auth_Start: ; 0x020C6FA4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _020C7094 ; =DWCauthhttpparam
	mov r4, r0
	ldr r0, [r5]
	ldr r1, _020C7098 ; =0x020E4438
	bl strcmp
	cmp r0, #0
	movne r0, #1
	strne r0, [r5, #0x14]
	ldr r0, _020C709C ; =DWCiswfcutil
	ldr r2, _020C7094 ; =DWCauthhttpparam
	ldr r0, [r0, #4]
	ldr r1, _020C70A0 ; =DWCauthhttpparam
	add r0, r0, #0x1000
	ldr r3, [r0, #0x20c]
	str r3, [r2, #0xc]
	ldr r3, [r0, #0x210]
	str r3, [r2, #0x10]
	ldr r0, [r0, #0x314]
	bl DWC_Http_Create
	cmp r0, #0
	movne r0, #4
	ldmnefd sp!, {r3, r4, r5, pc}
	cmp r4, #1
	bne _020C7010
	ldr r0, _020C70A4 ; =DWC_auth_wifiinfo
	bl DWCi_BM_GetWiFiInfo
_020C7010:
	ldr r4, _020C709C ; =DWCiswfcutil
	ldr r1, [r4, #4]
	add r0, r1, #0x1000
	add r2, r1, #0x1cc
	ldr r0, [r0, #0x314]
	add r1, r1, #0x1200
	add r2, r2, #0x1000
	bl DWCi_Auth_Prepare_FirstPost
	ldr r1, [r4, #4]
	add r1, r1, #0x1000
	str r0, [r1, #4]
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r1, [r0, #4]
	cmp r1, #0
	movne r0, #4
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r0, #0x314]
	bl DWC_Http_FinishHeader
	cmp r0, #0
	movne r0, #4
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _020C70A8 ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	ldr r1, [r4, #4]
	mov r2, r0
	add r0, r1, #0x1000
	ldr r0, [r0, #0x314]
	sub r1, r2, #1
	bl DWC_Http_StartThread
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020C7094: .word DWCauthhttpparam
_020C7098: .word ov15_020E4438
_020C709C: .word DWCiswfcutil
_020C70A0: .word DWCauthhttpparam
_020C70A4: .word DWC_auth_wifiinfo
_020C70A8: .word OSi_ThreadInfo
	arm_func_end DWCi_Auth_Start

	arm_static_func_start DWCi_Auth_Thread
DWCi_Auth_Thread: ; 0x020C70AC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r8, #0
_020C70B4:
	ldr r0, _020C7358 ; =DWCiswfcutil
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x314]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbe0]
	cmp r0, #0
	beq _020C7104
	add r0, r1, #0x374
	add r0, r0, #0x1800
	bl OS_IsThreadTerminated
	cmp r0, #0
	bne _020C7104
	ldr r0, _020C7358 ; =DWCiswfcutil
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	add r0, r0, #0x374
	add r0, r0, #0x1800
	bl OS_JoinThread
_020C7104:
	ldr r0, _020C7358 ; =DWCiswfcutil
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x314]
	add r1, r1, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #8
	beq _020C7198
	ldr r1, _020C735C ; =0x00004E84
	str r1, [r0, #8]
	ldr r0, _020C7358 ; =DWCiswfcutil
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x20]
	cmp r0, #7
	bne _020C7158
	mov r0, #0x14
	bl DWCi_Auth_SetError
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C7158:
	cmp r8, #2
	ble _020C7194
	cmp r0, #2
	bne _020C7174
	mov r0, #9
	bl DWCi_Auth_SetError
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C7174:
	cmp r0, #3
	bne _020C7188
	mov r0, #0xb
	bl DWCi_Auth_SetError
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C7188:
	mov r0, #0xd
	bl DWCi_Auth_SetError
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C7194:
	b _020C71F8
_020C7198:
	bl DWCi_Auth_ParseHttp
	cmp r0, #0x10
	beq _020C71C0
	cmp r0, #0x11
	beq _020C71E0
	cmp r0, #0x15
	bne _020C71E8
	mov r0, #0x15
	bl DWCi_Auth_SetError
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C71C0:
	cmp r8, #2
	ble _020C71D4
	mov r0, #0x10
	bl DWCi_Auth_SetError
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C71D4:
	add r8, r8, #1
	mov r11, #0
	b _020C7200
_020C71E0:
	bl DWCi_Auth_SetError
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C71E8:
	cmp r8, #2
	blt _020C71F8
	bl DWCi_Auth_SetError
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C71F8:
	add r8, r8, #1
	mov r11, #1
_020C7200:
	bl OS_GetTick
	mov r9, r0
	mov r10, r1
	bl OS_GetTick
	subs r2, r0, r9
	sbc r0, r1, r10
	mov r1, r0, lsl #6
	ldr r7, _020C7360 ; =0x000082EA
	orr r1, r1, r2, lsr #26
	mov r0, r2, lsl #6
	mov r3, #0
	mov r2, r7
	bl _ll_udiv
	ldr r6, _020C7364 ; =0x00001388
	cmp r1, #0
	cmpeq r0, r6
	bhs _020C72DC
	ldr r4, _020C7358 ; =DWCiswfcutil
	mov r5, #0
_020C724C:
	ldr r0, [r4, #4]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r2, [r4, #4]
	add r0, r2, #0x1000
	ldr r1, [r0, #0x3f0]
	cmp r1, #1
	bne _020C7298
	ldr r2, _020C735C ; =0x00004E84
	ldr r1, _020C7358 ; =DWCiswfcutil
	str r2, [r0, #8]
	ldr r0, [r1, #4]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	mov r0, #0x14
	bl DWCi_Auth_SetError
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C7298:
	add r0, r2, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	mov r0, r6
	bl OS_Sleep
	bl OS_GetTick
	subs r2, r0, r9
	sbc r0, r1, r10
	mov r1, r0, lsl #6
	orr r1, r1, r2, lsr #26
	mov r0, r2, lsl #6
	mov r2, r7
	mov r3, r5
	bl _ll_udiv
	cmp r1, #0
	cmpeq r0, r6
	blo _020C724C
_020C72DC:
	ldr r4, _020C7358 ; =DWCiswfcutil
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	bl DWC_Http_Destroy
	ldr r0, [r4, #4]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_LockMutex
	mov r0, r11
	bl DWCi_Auth_Start
	ldr r1, [r4, #4]
	add r1, r1, #0x1000
	str r0, [r1, #4]
	ldr r2, [r4, #4]
	add r0, r2, #0x1000
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020C7344
	ldr r1, _020C735C ; =0x00004E84
	str r1, [r0, #8]
	ldr r0, [r4, #4]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C7344:
	add r0, r2, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	b _020C70B4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C7358: .word DWCiswfcutil
_020C735C: .word 0x00004E84
_020C7360: .word 0x000082EA
_020C7364: .word 0x00001388
	arm_func_end DWCi_Auth_Thread

	arm_func_start DWCi_Auth_ParseHttp
DWCi_Auth_ParseHttp: ; 0x020C7368
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _020C74F4 ; =DWCiswfcutil
	mov r6, #0
	ldr r0, [r4, #4]
	mov r1, r6
	add r2, r0, #0x1000
	ldr r0, [r2, #0x314]
	ldr r7, [r2, #0x20c]
	ldr r8, [r2, #0x210]
	bl DWC_Http_ParseResult
	cmp r0, #1
	beq _020C73B0
	ldr r0, [r4, #4]
	ldr r1, _020C74F8 ; =0x00004E84
	add r0, r0, #0x1000
	str r1, [r0, #8]
	mov r0, #0xe
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C73B0:
	bl DWCi_Auth_FillResult
	cmp r0, #0
	movne r0, #0xe
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r4, #4]
	ldr r5, _020C74F8 ; =0x00004E84
	add r0, r0, #0x1000
	ldr r1, [r0, #8]
	cmp r1, r5
	bge _020C7450
	sub r0, r5, #0x62
	cmp r1, r0
	bne _020C7448
	ldr r1, _020C74FC ; =0x0000071F
	mov r0, r6
	blx r7
	movs r7, r0
	ldreq r1, [r4, #4]
	moveq r0, #2
	addeq r1, r1, #0x1000
	streq r5, [r1, #8]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r1, r7, #0x1f
	ldr r0, _020C7500 ; =DWC_auth_wifiinfo
	bic r1, r1, #0x1f
	bl DWCi_AUTH_UpDateWiFiID
	cmp r0, #1
	mov r0, r6
	mov r1, r7
	mov r2, r6
	beq _020C7444
	blx r8
	ldr r1, [r4, #4]
	mov r0, #0xf
	add r1, r1, #0x1000
	str r5, [r1, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C7444:
	blx r8
_020C7448:
	mov r0, #0x15
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C7450:
	add r0, r5, #4
	cmp r1, r0
	beq _020C746C
	add r0, r5, #8
	cmp r1, r0
	beq _020C748C
	b _020C74EC
_020C746C:
	ldr r0, _020C7500 ; =DWC_auth_wifiinfo
	bl DWCi_AUTH_RemakeWiFiID
	ldr r0, [r4, #4]
	add r1, r5, #4
	add r0, r0, #0x1000
	str r1, [r0, #8]
	mov r0, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C748C:
	mov r0, r6
	mov r1, #0x700
	blx r7
	movs r7, r0
	bne _020C74B8
	ldr r0, [r4, #4]
	add r1, r5, #8
	add r0, r0, #0x1000
	str r1, [r0, #8]
	mov r0, #0x11
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C74B8:
	add r0, r7, #0x1f
	bic r0, r0, #0x1f
	bl DWCi_AUTH_MakeWiFiID
	mov r0, r6
	mov r1, r7
	mov r2, r6
	blx r8
	ldr r0, [r4, #4]
	add r1, r5, #8
	add r0, r0, #0x1000
	str r1, [r0, #8]
	mov r0, #0x11
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C74EC:
	mov r0, #0x12
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C74F4: .word DWCiswfcutil
_020C74F8: .word 0x00004E84
_020C74FC: .word 0x0000071F
_020C7500: .word DWC_auth_wifiinfo
	arm_func_end DWCi_Auth_ParseHttp

	arm_static_func_start DWCi_Auth_FillResult
DWCi_Auth_FillResult: ; 0x020C7504
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _020C7754 ; =DWCiswfcutil
	mov r1, #0
	ldr r0, [r0, #4]
	str r1, [sp]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	ldr r1, _020C7758 ; =0x020E4458
	bl DWC_Http_GetResult
	str r0, [sp]
	cmp r0, #0
	beq _020C7538
	bl DWC_Auth_SetNasTimeDiff
_020C7538:
	ldr r4, _020C7754 ; =DWCiswfcutil
	mov r6, #0
	ldr r0, [r4, #4]
	ldr r5, _020C775C ; =errno
	str r6, [sp]
	str r6, [r5]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	ldr r1, _020C7760 ; =0x020E4460
	bl DWC_Http_GetResult
	bl atoi
	ldr r1, [r5]
	cmp r1, #0x22
	bne _020C7588
	ldr r0, [r4, #4]
	ldr r1, _020C7764 ; =0x00004E85
	add r0, r0, #0x1000
	str r1, [r0, #8]
	mov r0, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C7588:
	cmp r0, #0xc8
	beq _020C75AC
	ldr r1, [r4, #4]
	add r0, r0, #0x1d8
	add r2, r0, #0x5800
	add r0, r1, #0x1000
	str r2, [r0, #8]
	mov r0, #0x12
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C75AC:
	ldr r2, [r4, #4]
	ldr r1, _020C7768 ; =0x020E446C
	add r0, r2, #0x1000
	add r2, r2, #0xc
	ldr r0, [r0, #0x314]
	add r2, r2, #0x1000
	mov r3, #4
	bl DWC_Http_GetBase64DecodedResult
	cmp r0, #0
	ldr r0, [r4, #4]
	ldrle r1, _020C7764 ; =0x00004E85
	addle r0, r0, #0x1000
	strle r1, [r0, #8]
	movle r0, #0xe
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r0, #0xc
	add r1, sp, #0
	add r0, r0, #0x1000
	mov r2, #0xa
	bl strtol
	ldr r7, [r4, #4]
	mov r5, r0
	add r0, r7, #0xc
	add r0, r0, #0x1000
	bl strlen
	add r1, r7, #0xc
	add r1, r1, #0x1000
	ldr r2, [sp]
	add r0, r1, r0
	cmp r2, r0
	ldrne r1, _020C7764 ; =0x00004E85
	addne r0, r7, #0x1000
	strne r1, [r0, #8]
	movne r0, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r5, #0xe20
	add r1, r0, #0x4000
	add r0, r7, #0x1000
	str r1, [r0, #8]
	cmp r5, #0x64
	bge _020C774C
	ldr r0, [r4, #4]
	ldr r1, _020C776C ; =0x020E4478
	add r0, r0, #0x1000
	strb r6, [r0, #0x52]
	ldr r0, [r4, #4]
	ldr r3, _020C7770 ; =0x0000012D
	add r0, r0, #0x1000
	strb r6, [r0, #0x1f]
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	strb r6, [r0, #0x17f]
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	strb r6, [r0, #0x10]
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	strb r6, [r0, #0x188]
	ldr r2, [r4, #4]
	add r0, r2, #0x1000
	add r2, r2, #0x52
	ldr r0, [r0, #0x314]
	add r2, r2, #0x1000
	bl DWC_Http_GetBase64DecodedResult
	ldr r2, [r4, #4]
	ldr r1, _020C7774 ; =0x020E4480
	add r0, r2, #0x1000
	add r2, r2, #0x1f
	ldr r0, [r0, #0x314]
	add r2, r2, #0x1000
	mov r3, #0x33
	bl DWC_Http_GetBase64DecodedResult
	ldr r2, [r4, #4]
	ldr r1, _020C7778 ; =0x020E4488
	add r0, r2, #0x1000
	add r2, r2, #0x7f
	ldr r0, [r0, #0x314]
	add r2, r2, #0x1100
	mov r3, #9
	bl DWC_Http_GetBase64DecodedResult
	ldr r2, [r4, #4]
	ldr r1, _020C777C ; =0x020E4494
	add r0, r2, #0x1000
	add r2, r2, #0x10
	ldr r0, [r0, #0x314]
	add r2, r2, #0x1000
	mov r3, #0xf
	bl DWC_Http_GetBase64DecodedResult
	ldr r2, [r4, #4]
	ldr r1, _020C7780 ; =0x020E44A0
	add r0, r2, #0x1000
	add r2, r2, #0x188
	ldr r0, [r0, #0x314]
	add r2, r2, #0x1000
	mov r3, #0x41
	bl DWC_Http_GetRawResult
	ldr r0, [r4, #4]
	cmp r5, #0x28
	add r0, r0, #0x1000
	strb r6, [r0, #0x1b3]
	movne r0, #1
	strne r0, [r4, #8]
	moveq r0, #2
	streq r0, [r4, #8]
_020C774C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C7754: .word DWCiswfcutil
_020C7758: .word ov15_020E4458
_020C775C: .word errno
_020C7760: .word ov15_020E4460
_020C7764: .word 0x00004E85
_020C7768: .word ov15_020E446C
_020C776C: .word ov15_020E4478
_020C7770: .word 0x0000012D
_020C7774: .word ov15_020E4480
_020C7778: .word ov15_020E4488
_020C777C: .word ov15_020E4494
_020C7780: .word ov15_020E44A0
	arm_func_end DWCi_Auth_FillResult

	arm_static_func_start DWCi_Auth_Prepare_FirstPost
DWCi_Auth_Prepare_FirstPost: ; 0x020C7784
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x94
	ldr r3, _020C7910 ; =DWCiswfcutil
	mov r5, r0
	ldr r0, [r3, #0x10]
	ldr r6, [r3, #0xc]
	cmp r0, #0
	mov r7, r1
	mov r4, r2
	cmpeq r6, #0
	bne _020C77E4
	ldr r6, _020C7914 ; =0x020E44AC
	mov r0, r6
	bl strlen
	mov r3, r0
	ldr r1, _020C7918 ; =0x020E44B8
	mov r0, r5
	mov r2, r6
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	beq _020C7840
	add sp, sp, #0x94
	mov r0, #8
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020C77E4:
	ldr r6, _020C791C ; =0x020E44C0
	mov r0, r6
	bl strlen
	mov r3, r0
	ldr r1, _020C7918 ; =0x020E44B8
	mov r0, r5
	mov r2, r6
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x94
	movne r0, #8
	ldmnefd sp!, {r4, r5, r6, r7, pc}
	mov r0, r7
	bl strlen
	mov r3, r0
	ldr r1, _020C7920 ; =0x020E44C8
	mov r0, r5
	mov r2, r7
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x94
	movne r0, #8
	ldmnefd sp!, {r4, r5, r6, r7, pc}
_020C7840:
	add r6, sp, #0
	ldr r1, _020C7924 ; =DWC_auth_wifiinfo
	mov r0, r6
	bl DWC_Auth_GetCalInfoFromWiFiInfo
	cmp r0, #0
	addeq sp, sp, #0x94
	moveq r0, #5
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r1, _020C7928 ; =DWCishotspot
	mov r0, r5
	ldr r2, [r1]
	mov r1, r6
	bl DWC_Auth_SetCalInfoToHttp
	cmp r0, #0
	addeq sp, sp, #0x94
	moveq r0, #8
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, _020C7910 ; =DWCiswfcutil
	ldr r0, [r0]
	cmp r0, #1
	bne _020C78C4
	ldr r6, _020C792C ; =0x020E44D0
	mov r0, r6
	bl strlen
	mov r3, r0
	ldr r1, _020C7930 ; =0x020E44D4
	mov r0, r5
	mov r2, r6
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x94
	movne r0, #8
	ldmnefd sp!, {r4, r5, r6, r7, pc}
_020C78C4:
	mov r0, r4
	bl wcslen
	cmp r0, #0
	beq _020C7904
	mov r0, r4
	bl wcslen
	mov r3, r0
	ldr r1, _020C7934 ; =0x020E44DC
	mov r0, r5
	mov r2, r4
	mov r3, r3, lsl #1
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x94
	movne r0, #8
	ldmnefd sp!, {r4, r5, r6, r7, pc}
_020C7904:
	mov r0, #0
	add sp, sp, #0x94
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020C7910: .word DWCiswfcutil
_020C7914: .word ov15_020E44AC
_020C7918: .word ov15_020E44B8
_020C791C: .word ov15_020E44C0
_020C7920: .word ov15_020E44C8
_020C7924: .word DWC_auth_wifiinfo
_020C7928: .word DWCishotspot
_020C792C: .word ov15_020E44D0
_020C7930: .word ov15_020E44D4
_020C7934: .word ov15_020E44DC
	arm_func_end DWCi_Auth_Prepare_FirstPost

	arm_static_func_start DWCi_Auth_SetError
DWCi_Auth_SetError: ; 0x020C7938
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020C7974 ; =DWCiswfcutil
	mov r5, r0
	ldr r0, [r4, #4]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	str r5, [r0, #4]
	ldr r0, [r4, #4]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	ldmfd sp!, {r3, r4, r5, pc}
_020C7974: .word DWCiswfcutil
	arm_func_end DWCi_Auth_SetError

	.data
ov15_020E4418:
	.asciz ""
	.balign 4, 0
	.global DWCauthhttpparam
DWCauthhttpparam:
	.word ov15_020E4418
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x20, 0x4E, 0x00, 0x00
ov15_020E4438:
	.asciz "https://nas.nintendowifi.net/ac"
	.balign 4, 0
ov15_020E4458:
	.asciz "Date"
	.balign 4, 0
ov15_020E4460:
	.asciz "httpresult"
	.balign 4, 0
ov15_020E446C:
	.asciz "returncd"
	.balign 4, 0
ov15_020E4478:
	.asciz "token"
	.balign 4, 0
ov15_020E4480:
	.asciz "locator"
	.balign 4, 0
ov15_020E4488:
	.asciz "challenge"
	.balign 4, 0
ov15_020E4494:
	.asciz "datetime"
	.balign 4, 0
ov15_020E44A0:
	.asciz "Set-Cookie"
	.balign 4, 0
ov15_020E44AC:
	.asciz "acctcreate"
	.balign 4, 0
ov15_020E44B8:
	.asciz "action"
	.balign 4, 0
ov15_020E44C0:
	.asciz "login"
	.balign 4, 0
ov15_020E44C8:
	.asciz "gsbrcd"
	.balign 4, 0
ov15_020E44D0:
	.asciz "Y"
	.balign 4, 0
ov15_020E44D4:
	.asciz "iswfc"
	.balign 4, 0
ov15_020E44DC:
	.asciz "ingamesn"

	.bss
	.global DWCiswfcutil
DWCiswfcutil:
	.space 0x04
	.global DWCauth
DWCauth:
	.space 0x04
	.global DWCauthingamesncheckresult
DWCauthingamesncheckresult:
	.space 0x04
	.global DWC_auth_wifiinfo
DWC_auth_wifiinfo:
	.space 0x14

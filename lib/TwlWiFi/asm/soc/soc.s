
	.include "asm/macros/function.inc"
	.public MI_CpuFill8
	.public OS_Sleep
	.public SOCLSocketParamTCP
	.public SOCLSocketParamUDP
	.public SOCL_Bind
	.public SOCL_Cleanup
	.public SOCL_Close
	.public SOCL_Connect
	.public SOCL_CreateSocket
	.public SOCL_GetHostID
	.public SOCL_GetStatus
	.public SOCL_InetAtoH
	.public SOCL_ReadFrom
	.public SOCL_Resolve
	.public SOCL_SetResolver
	.public SOCL_Shutdown
	.public SOCL_Startup
	.public SOCL_WriteTo
	.public STD_CopyLString

	.text
	arm_func_start SOC_Socket
SOC_Socket: ; 0x020D6E0C
	stmfd sp!, {r3, lr}
	cmp r1, #1
	bne _020D6E24
	ldr r0, _020D6E30 ; =SOCLSocketParamTCP
	bl SOCL_CreateSocket
	ldmfd sp!, {r3, pc}
_020D6E24:
	ldr r0, _020D6E34 ; =SOCLSocketParamUDP
	bl SOCL_CreateSocket
	ldmfd sp!, {r3, pc}
_020D6E30: .word SOCLSocketParamTCP
_020D6E34: .word SOCLSocketParamUDP
	arm_func_end SOC_Socket

	arm_func_start SOC_Bind
SOC_Bind: ; 0x020D6E38
	ldrh r1, [r1, #2]
	ldr r12, _020D6E60 ; =SOCL_Bind
	mov r2, r1, asr #8
	mov r1, r1, lsl #8
	and r2, r2, #0xff
	and r1, r1, #0xff00
	orr r1, r2, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bx r12
_020D6E60: .word SOCL_Bind
	arm_func_end SOC_Bind

	arm_func_start SOC_Connect
SOC_Connect: ; 0x020D6E64
	stmfd sp!, {r4, lr}
	ldrh r2, [r1, #2]
	ldr lr, [r1, #4]
	mov r4, r2, asr #8
	mov r1, r2, lsl #8
	mov r3, lr, lsr #0x18
	mov r2, lr, lsr #8
	mov r12, lr, lsl #8
	mov lr, lr, lsl #0x18
	and r4, r4, #0xff
	and r1, r1, #0xff00
	orr r1, r4, r1
	mov r1, r1, lsl #0x10
	and r3, r3, #0xff
	and r2, r2, #0xff00
	and r12, r12, #0xff0000
	orr r2, r3, r2
	and r3, lr, #0xff000000
	orr r2, r12, r2
	mov r1, r1, lsr #0x10
	orr r2, r3, r2
	bl SOCL_Connect
	ldmfd sp!, {r4, pc}
	arm_func_end SOC_Connect

	arm_func_start SOC_Recv
SOC_Recv: ; 0x020D6EC0
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	mov r12, #0
	str r12, [sp]
	str r3, [sp, #4]
	mov r3, r12
	bl SOCL_ReadFrom
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end SOC_Recv

	arm_func_start SOC_RecvFrom
SOC_RecvFrom: ; 0x020D6EE4
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	add r12, sp, #0xc
	str r12, [sp]
	str r3, [sp, #4]
	add r3, sp, #8
	bl SOCL_ReadFrom
	cmp r0, #0
	addlt sp, sp, #0x10
	ldmltfd sp!, {r3, pc}
	ldr r1, [sp, #0x18]
	cmp r1, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, pc}
	ldrh r2, [sp, #8]
	mov r3, r2, asr #8
	mov r2, r2, lsl #8
	and r3, r3, #0xff
	and r2, r2, #0xff00
	orr r2, r3, r2
	strh r2, [r1, #2]
	ldr lr, [sp, #0xc]
	mov r3, lr, lsr #0x18
	mov r2, lr, lsr #8
	mov r12, lr, lsl #8
	mov lr, lr, lsl #0x18
	and r3, r3, #0xff
	and r2, r2, #0xff00
	and r12, r12, #0xff0000
	orr r2, r3, r2
	and r3, lr, #0xff000000
	orr r2, r12, r2
	orr r2, r3, r2
	str r2, [r1, #4]
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
	arm_func_end SOC_RecvFrom

	arm_func_start SOC_Send
SOC_Send: ; 0x020D6F74
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	mov r12, #0
	str r12, [sp]
	str r3, [sp, #4]
	mov r3, r12
	bl SOCL_WriteTo
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end SOC_Send

	arm_func_start SOC_SendTo
SOC_SendTo: ; 0x020D6F98
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r5, [sp, #0x20]
	cmp r5, #0
	moveq r5, #0
	moveq r4, r5
	beq _020D7004
	ldrh r4, [r5, #2]
	ldr r6, [r5, #4]
	mov r7, r4, asr #8
	mov r12, r4, lsl #8
	mov r4, r6, lsr #0x18
	mov lr, r6, lsr #8
	mov r5, r6, lsl #8
	mov r6, r6, lsl #0x18
	and r7, r7, #0xff
	and r12, r12, #0xff00
	orr r7, r7, r12
	and r4, r4, #0xff
	and lr, lr, #0xff00
	and r5, r5, #0xff0000
	orr r4, r4, lr
	mov r12, r7, lsl #0x10
	orr r4, r5, r4
	and r6, r6, #0xff000000
	mov r5, r12, lsr #0x10
	orr r4, r6, r4
_020D7004:
	str r4, [sp]
	str r3, [sp, #4]
	mov r3, r5
	bl SOCL_WriteTo
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end SOC_SendTo

	arm_func_start SOC_Shutdown
SOC_Shutdown: ; 0x020D701C
	ldr r12, _020D7024 ; =SOCL_Shutdown
	bx r12
_020D7024: .word SOCL_Shutdown
	arm_func_end SOC_Shutdown

	arm_func_start SOC_Close
SOC_Close: ; 0x020D7028
	ldr r12, _020D7030 ; =SOCL_Close
	bx r12
_020D7030: .word SOCL_Close
	arm_func_end SOC_Close

	arm_func_start SOC_GetHostByName
SOC_GetHostByName: ; 0x020D7034
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	bl SOCL_Resolve
	movs r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r7, _020D70E0 ; =0x020ED564
	ldr r6, _020D70E4 ; =0x00000101
	mov r4, #0
	mov r0, r7
	mov r1, r4
	mov r2, r6
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r8
	mov r2, r6
	bl STD_CopyLString
	ldr r1, _020D70E8 ; =0x020ED4DC
	mov r2, r5, lsr #0x18
	str r7, [r1, #0x20]
	mov r0, r5, lsr #8
	mov r3, r5, lsl #8
	mov r5, r5, lsl #0x18
	str r4, [r1, #0x24]
	mov r12, #2
	strh r12, [r1, #0x28]
	mov r12, #4
	ldr lr, _020D70EC ; =0x020ED4F4
	strh r12, [r1, #0x2a]
	and r2, r2, #0xff
	and r0, r0, #0xff00
	ldr r12, _020D70F0 ; =0x020ED4DC
	str lr, [r1, #0x2c]
	str r12, [r1, #0x18]
	and r3, r3, #0xff0000
	orr r0, r2, r0
	and r2, r5, #0xff000000
	orr r0, r3, r0
	str r4, [r1, #0x1c]
	orr r2, r2, r0
	ldr r0, _020D70F4 ; =0x020ED4FC
	str r2, [r1]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D70E0: .word _ZZ17SOC_GetHostByNamePKcE7entName_2
_020D70E4: .word 0x00000101
_020D70E8: .word _ZZ17SOC_GetHostByNamePKcE6hostip_1
_020D70EC: .word _ZZ17SOC_GetHostByNamePKcE12hostAddrList_0
_020D70F0: .word _ZZ17SOC_GetHostByNamePKcE6hostip_1
_020D70F4: .word _ZZ17SOC_GetHostByNamePKcE7hostent
	arm_func_end SOC_GetHostByName

	arm_func_start SOC_GetHostID
SOC_GetHostID: ; 0x020D70F8
	stmfd sp!, {r3, lr}
	bl SOCL_GetHostID
	mov r2, r0, lsr #0x18
	mov r1, r0, lsr #8
	mov r3, r0, lsl #8
	mov r12, r0, lsl #0x18
	and r2, r2, #0xff
	and r0, r1, #0xff00
	and r1, r3, #0xff0000
	orr r0, r2, r0
	and r2, r12, #0xff000000
	orr r0, r1, r0
	orr r0, r2, r0
	ldmfd sp!, {r3, pc}
	arm_func_end SOC_GetHostID

	arm_func_start SOC_SetResolver
SOC_SetResolver: ; 0x020D7130
	stmfd sp!, {r3, r4, r5, lr}
	ldr r12, [r1]
	ldr r0, [r0]
	mov r2, r12, lsr #0x18
	mov r4, r0, lsr #0x18
	mov lr, r0, lsr #8
	mov r1, r12, lsr #8
	mov r5, r0, lsl #8
	mov r3, r12, lsl #8
	mov r0, r0, lsl #0x18
	mov r12, r12, lsl #0x18
	and r4, r4, #0xff
	and lr, lr, #0xff00
	and r2, r2, #0xff
	and r1, r1, #0xff00
	and r5, r5, #0xff0000
	orr r4, r4, lr
	and r3, r3, #0xff0000
	orr r1, r2, r1
	and lr, r0, #0xff000000
	orr r0, r5, r4
	and r2, r12, #0xff000000
	orr r1, r3, r1
	orr r0, lr, r0
	orr r1, r2, r1
	bl SOCL_SetResolver
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end SOC_SetResolver

	arm_static_func_start AllocFunc_SOCL
AllocFunc_SOCL: ; 0x020D719C
	stmfd sp!, {r4, lr}
	ldr r1, _020D71C4 ; =0x020ED4DC
	add r4, r0, #4
	ldr r2, [r1, #0xc]
	mov r1, r4
	mov r0, #0
	blx r2
	cmp r0, #0
	strne r4, [r0], #4
	ldmfd sp!, {r4, pc}
_020D71C4: .word _ZZ17SOC_GetHostByNamePKcE6hostip_1
	arm_func_end AllocFunc_SOCL

	arm_static_func_start FreeFunc_SOCL
FreeFunc_SOCL: ; 0x020D71C8
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, _020D71F0 ; =0x020ED4DC
	ldr r2, [r0, #-4]
	ldr r3, [r1, #4]
	sub r1, r0, #4
	mov r0, #0
	blx r3
	ldmfd sp!, {r3, pc}
_020D71F0: .word _ZZ17SOC_GetHostByNamePKcE6hostip_1
	arm_func_end FreeFunc_SOCL

	arm_func_start SOC_Startup
SOC_Startup: ; 0x020D71F4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r1, [r0, #0xc]
	ldr r5, [r0, #0x14]
	cmp r1, #1
	ldr r1, [r0, #0x10]
	ldr r12, [r0, #0x18]
	mov r7, r1, lsr #0x18
	mov r6, r1, lsr #8
	mov r8, r1, lsl #8
	mov r10, #1
	mov r9, r1, lsl #0x18
	mov r1, r12, lsr #0x18
	str r1, [sp]
	mov r4, r5, lsl #8
	and r7, r7, #0xff
	and r6, r6, #0xff00
	orr r7, r7, r6
	mov r6, r12, lsr #8
	and r8, r8, #0xff0000
	str r6, [sp, #4]
	ldr r3, [r0, #0x1c]
	orr r7, r8, r7
	and r1, r9, #0xff000000
	mov lr, r5, lsr #0x18
	orr r1, r1, r7
	mov r7, r5, lsl #0x18
	mov r11, r5, lsr #8
	mov r8, r3, lsr #0x18
	str r8, [sp, #8]
	ldr r6, _020D7378 ; =0x020ED4DC
	movne r10, #0
	str r10, [r6, #0x50]
	str r1, [r6, #0x54]
	mov r5, r12, lsl #8
	mov r10, r12, lsl #0x18
	and r8, r11, #0xff00
	and r11, r10, #0xff000000
	and r10, r5, #0xff0000
	ldr r5, [sp]
	ldr r12, [sp, #4]
	and r9, lr, #0xff
	orr r8, r9, r8
	and r4, r4, #0xff0000
	and r5, r5, #0xff
	and r12, r12, #0xff00
	orr r5, r5, r12
	orr r5, r10, r5
	ldr r2, [r0, #0x20]
	orr r4, r4, r8
	and r7, r7, #0xff000000
	orr r7, r7, r4
	mov r8, r2, lsr #0x18
	mov r4, r2, lsr #8
	str r7, [r6, #0x58]
	orr r5, r11, r5
	ldr r10, [sp, #8]
	mov r1, r3, lsr #8
	and r11, r10, #0xff
	mov r9, r3, lsl #8
	and r10, r1, #0xff00
	mov r7, r3, lsl #0x18
	mov r3, r2, lsl #8
	and r1, r9, #0xff0000
	orr r9, r11, r10
	mov r2, r2, lsl #0x18
	and r10, r7, #0xff000000
	and r8, r8, #0xff
	and r4, r4, #0xff00
	orr r7, r1, r9
	orr r1, r8, r4
	and r3, r3, #0xff0000
	str r5, [r6, #0x5c]
	orr r4, r10, r7
	and r2, r2, #0xff000000
	orr r1, r3, r1
	orr r1, r2, r1
	str r4, [r6, #0x60]
	str r1, [r6, #0x64]
	ldr r2, _020D737C ; =AllocFunc_SOCL
	ldr r1, _020D7380 ; =FreeFunc_SOCL
	str r2, [r6, #0x68]
	str r1, [r6, #0x6c]
	ldr r2, [r0, #4]
	ldr r1, [r0, #8]
	str r2, [r6, #0xc]
	str r1, [r6, #4]
	mov r1, #0x40
	str r1, [r6, #0x70]
	ldr r2, [r0, #0x2c]
	ldr r1, [r0, #0x30]
	str r2, [r6, #0x80]
	ldr r0, _020D7384 ; =0x020ED52C
	str r1, [r6, #0x84]
	bl SOCL_Startup
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D7378: .word _ZZ17SOC_GetHostByNamePKcE6hostip_1
_020D737C: .word AllocFunc_SOCL
_020D7380: .word FreeFunc_SOCL
_020D7384: .word _ZZ11SOC_StartupPK9SOCConfigE10soclConfig
	arm_func_end SOC_Startup

	arm_func_start SOC_Cleanup
SOC_Cleanup: ; 0x020D7388
	ldr r12, _020D7390 ; =SOCL_Cleanup
	bx r12
_020D7390: .word SOCL_Cleanup
	arm_func_end SOC_Cleanup

	arm_func_start SOC_InetAtoN
SOC_InetAtoN: ; 0x020D7394
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl SOCL_InetAtoH
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	cmp r4, #0
	beq _020D73E4
	mov r2, r0, lsr #0x18
	mov r1, r0, lsr #8
	mov r3, r0, lsl #8
	mov r12, r0, lsl #0x18
	and r2, r2, #0xff
	and r0, r1, #0xff00
	and r1, r3, #0xff0000
	orr r0, r2, r0
	and r2, r12, #0xff000000
	orr r0, r1, r0
	orr r0, r2, r0
	str r0, [r4]
_020D73E4:
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end SOC_InetAtoN

	arm_func_start SOC_U32to4U8
SOC_U32to4U8: ; 0x020D73EC
	mov r12, r0, lsr #0x18
	mov r3, r0, lsr #0x10
	mov r2, r0, lsr #8
	strb r12, [r1]
	strb r3, [r1, #1]
	strb r2, [r1, #2]
	strb r0, [r1, #3]
	bx lr
	arm_func_end SOC_U32to4U8

	arm_func_start SOC_Poll
SOC_Poll: ; 0x020D740C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	movs r10, r1
	mov r9, r2
	mov r8, r3
	str r0, [sp]
	cmpne r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mvn r0, #0
	cmp r8, r0
	cmpeq r9, r0
	movne r11, #1
	moveq r11, #0
_020D7440:
	mov r6, #0
	ldr r4, [sp]
	mov r5, r6
	cmp r10, #0
	bls _020D7480
_020D7454:
	ldrsh r1, [r4, #4]
	ldr r0, [r4]
	orr r7, r1, #0xe0
	bl SOCL_GetStatus
	ands r0, r7, r0
	strh r0, [r4, #6]
	add r5, r5, #1
	addne r6, r6, #1
	cmp r5, r10
	add r4, r4, #8
	blo _020D7454
_020D7480:
	cmp r6, #0
	bgt _020D74B4
	cmp r11, #0
	beq _020D749C
	rsbs r0, r9, #0
	rscs r0, r8, #0
	bge _020D74B4
_020D749C:
	mov r0, #1
	bl OS_Sleep
	ldr r0, _020D74BC ; =0x0000020B
	subs r9, r9, r0
	sbc r8, r8, #0
	b _020D7440
_020D74B4:
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D74BC: .word 0x0000020B
	arm_func_end SOC_Poll

	.bss
	.global _ZZ17SOC_GetHostByNamePKcE6hostip_1
_ZZ17SOC_GetHostByNamePKcE6hostip_1:
	.space 0x04
	.global FreeFunc_SOC
FreeFunc_SOC:
	.space 0x04
	.global _ZZ17SOC_GetHostByAddrPKviiE6hostip_1
_ZZ17SOC_GetHostByAddrPKviiE6hostip_1:
	.space 0x04
	.global AllocFunc_SOC
AllocFunc_SOC:
	.space 0x04
	.global _ZZ17SOC_GetHostByAddrPKviiE12hostAddrList_0
_ZZ17SOC_GetHostByAddrPKviiE12hostAddrList_0:
	.space 0x08
	.global _ZZ17SOC_GetHostByNamePKcE12hostAddrList_0
_ZZ17SOC_GetHostByNamePKcE12hostAddrList_0:
	.space 0x08
	.global _ZZ17SOC_GetHostByNamePKcE7hostent
_ZZ17SOC_GetHostByNamePKcE7hostent:
	.space 0x10
	.global _ZZ12SOC_InetNtoA9SOCInAddrE6buffer
_ZZ12SOC_InetNtoA9SOCInAddrE6buffer:
	.space 0x10
	.global _ZZ17SOC_GetHostByAddrPKviiE7hostent
_ZZ17SOC_GetHostByAddrPKviiE7hostent:
	.space 0x10
	.global _ZZ11SOC_StartupPK9SOCConfigE10soclConfig
_ZZ11SOC_StartupPK9SOCConfigE10soclConfig:
	.space 0x38
	.global _ZZ17SOC_GetHostByNamePKcE7entName_2
_ZZ17SOC_GetHostByNamePKcE7entName_2:
	.space 0x101

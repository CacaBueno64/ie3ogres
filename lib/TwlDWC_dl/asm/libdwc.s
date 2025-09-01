
	.include "asm/macros/function.inc"
	.include "libdwc.inc"

    .text
	arm_func_start CPS_SetCheckNConfigCallback
CPS_SetCheckNConfigCallback: ; 0x020BCB40
	ldr r1, _020BCB4C ; =wfailed
	str r0, [r1, #0x48]
	bx lr
_020BCB4C: .word wfailed
	arm_func_end CPS_SetCheckNConfigCallback

	arm_func_start reset_network_vars
reset_network_vars: ; 0x020BCB50
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r1, _020BCC40 ; =wfailed
	ldr r2, _020BCC40 ; =wfailed
	ldr r1, [r1, #0x50]
	str r0, [r2, #0x4c]
	cmp r1, #0
	mov r1, #0
	str r1, [r2, #0x50]
	str r1, [r2, #0x10]
	str r1, [r2, #0x2c]
	str r1, [r2, #0x70]
	str r1, [r2, #0x74]
	mov r5, #0
	mov r3, #1
	moveq r3, r5
	str r1, [r2, #0x1c]
	cmp r3, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _020BCC44 ; =0x020E6E58
	mov r2, #0x60
	bl MI_CpuFill8
	ldr r0, _020BCC48 ; =OSi_ThreadInfo
	ldr r4, [r0, #8]
	cmp r4, #0
	beq _020BCBFC
_020BCBB4:
	ldr r1, [r4, #0xa4]
	cmp r1, #0
	ldrne r0, [r1]
	cmpne r0, #0
	beq _020BCBF0
	ldrb r0, [r1, #8]
	cmp r0, #0xa
	cmpne r0, #0xb
	strneb r5, [r1, #8]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _020BCBF0
	str r5, [r1, #4]
	ldr r0, [r1]
	bl OS_WakeupThreadDirect
_020BCBF0:
	ldr r4, [r4, #0x68]
	cmp r4, #0
	bne _020BCBB4
_020BCBFC:
	ldr r4, _020BCC4C ; =0x020E7538
	ldr r9, _020BCC40 ; =wfailed
	mov r6, #0
	mov r8, #0x38
_020BCC0C:
	mla r7, r6, r8, r4
	ldrh r0, [r7, #4]
	cmp r0, #0
	beq _020BCC2C
	ldr r0, [r7, #0x34]
	ldr r1, [r9, #0x44]
	blx r1
	strh r5, [r7, #4]
_020BCC2C:
	add r6, r6, #1
	cmp r6, #8
	blt _020BCC0C
	bl CPSi_SslCleanup
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BCC40: .word wfailed
_020BCC44: .word ov15_020E6E58
_020BCC48: .word OSi_ThreadInfo
_020BCC4C: .word ov15_020E7538
	arm_func_end reset_network_vars

	arm_func_start OS_YieldThread__
OS_YieldThread__: ; 0x020BCC50
	stmfd sp!, {r3, lr}
	ldr r0, _020BCC74 ; =wfailed
	ldr r0, [r0, #0x24]
	cmp r0, #0
	bne _020BCC6C
	bl OS_YieldThread
	ldmfd sp!, {r3, pc}
_020BCC6C:
	bl OS_Sleep
	ldmfd sp!, {r3, pc}
_020BCC74: .word wfailed
	arm_func_end OS_YieldThread__

	arm_func_start empty_func
empty_func: ; 0x020BCC78
	bx lr
	arm_func_end empty_func

	arm_func_start default_link_is_on
default_link_is_on: ; 0x020BCC7C
	mov r0, #1
	bx lr
	arm_func_end default_link_is_on

	arm_func_start CPS_Startup
CPS_Startup: ; 0x020BCC84
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, _020BCE48 ; =_version_UBIQUITOUS_CPS
	ldr r5, _020BCE4C ; =wfailed
	bl OSi_ReferSymbol
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x14]
	cmp r1, #0
	cmpeq r0, #0
	mov r6, #0
	bne _020BCCB8
	bl OS_GetTick
_020BCCB8:
	str r0, [r5, #0x78]
	str r1, [r5, #0x7c]
	ldr r0, _020BCE50 ; =0x6C078965
	ldr r1, _020BCE54 ; =0x5D588B65
	str r0, [r5, #0x80]
	ldr r0, _020BCE58 ; =0x00269EC3
	str r1, [r5, #0x84]
	str r0, [r5, #0x88]
	str r6, [r5, #0x8c]
	ldr r1, [r4, #4]
	cmp r1, #0
	ldrne r0, [r4, #8]
	cmpne r0, #0
	strne r1, [r5, #0x14]
	strne r0, [r5, #0x44]
	ldreq r0, _020BCE5C ; =empty_func
	streq r0, [r5, #0x14]
	streq r0, [r5, #0x44]
	ldr r0, [r4]
	str r0, [r5, #0xc]
	ldr r0, [r4, #0x24]
	cmp r0, #0
	ldreq r0, _020BCE60 ; =0x000005B4
	strh r0, [r5, #4]
	ldr r0, [r4, #0x28]
	str r0, [r5, #0x38]
	ldr r0, [r4, #0x2c]
	str r0, [r5, #0x24]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldreq r0, _020BCE5C ; =empty_func
	str r0, [r5, #0x28]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldreq r0, _020BCE64 ; =default_link_is_on
	str r0, [r5, #0x18]
	ldr r0, [r4, #0x1c]
	str r0, [r5, #0x20]
	ldr r0, [r4, #0x20]
	mov r4, #0
	str r0, [r5, #0x5c]
	str r4, [r5, #0x64]
	str r4, [r5, #0x60]
	ldr r2, [r5, #0x80]
	ldr r0, [r5, #0x78]
	ldr r1, [r5, #0x7c]
	umull r6, r3, r2, r0
	mla r3, r2, r1, r3
	ldr r1, [r5, #0x84]
	ldr r2, [r5, #0x88]
	mla r3, r1, r0, r3
	ldr r1, [r5, #0x8c]
	adds r6, r2, r6
	ldr r0, _020BCE68 ; =0x00000F88
	adc r2, r1, r3
	umull r0, r1, r2, r0
	str r6, [r5, #0x78]
	str r2, [r5, #0x7c]
	add r1, r1, #0x400
	ldr r0, _020BCE6C ; =CPSMyMac
	strh r1, [r5, #6]
	bl OS_GetMacAddress
	strb r4, [r5, #1]
	mov r8, #0x800
	ldr r7, _020BCE70 ; =tcpip_thread
	ldr r5, _020BCE74 ; =0x020E4340
	str r8, [sp]
	ldr r2, [r5]
	ldr r1, _020BCE78 ; =tcpip
	str r2, [sp, #4]
	ldr r3, _020BCE7C ; =gWdsWork
	mov r0, r7
	mov r2, r4
	bl OS_CreateThread
	str r8, [sp]
	ldr r0, [r5]
	ldr r6, _020BCE80 ; =0x020E70B8
	str r0, [sp, #4]
	ldr r1, _020BCE84 ; =scavenger
	ldr r3, _020BCE88 ; =0x020E8700
	mov r0, r6
	mov r2, r4
	bl OS_CreateThread
	mov r0, r7
	bl OS_WakeupThreadDirect
	mov r0, r6
	bl OS_WakeupThreadDirect
	ldr r0, _020BCE8C ; =0x020E6DD0
	bl OS_CreateAlarm
	str r8, [sp]
	ldr r0, [r5]
	ldr r1, _020BCE90 ; =dacktimer
	sub r0, r0, #1
	str r0, [sp, #4]
	ldr r0, _020BCE94 ; =0x020E6FF8
	ldr r3, _020BCE98 ; =0x020E7F00
	mov r2, r4
	bl OS_CreateThread
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BCE48: .word _version_UBIQUITOUS_CPS
_020BCE4C: .word wfailed
_020BCE50: .word 0x6C078965
_020BCE54: .word 0x5D588B65
_020BCE58: .word 0x00269EC3
_020BCE5C: .word empty_func
_020BCE60: .word 0x000005B4
_020BCE64: .word default_link_is_on
_020BCE68: .word 0x00000F88
_020BCE6C: .word CPSMyMac
_020BCE70: .word tcpip_thread
_020BCE74: .word ov15_020E4340
_020BCE78: .word tcpip
_020BCE7C: .word gWdsWork
_020BCE80: .word ov15_020E70B8
_020BCE84: .word scavenger
_020BCE88: .word ov15_020E8700
_020BCE8C: .word ov15_020E6DD0
_020BCE90: .word dacktimer
_020BCE94: .word ov15_020E6FF8
_020BCE98: .word ov15_020E7F00
	arm_func_end CPS_Startup

	arm_func_start CPS_CalmDown
CPS_CalmDown: ; 0x020BCE9C
	stmfd sp!, {r4, r5, r6, lr}
	bl OS_DisableInterrupts
	ldr r4, _020BCEE8 ; =0x020E70B8
	mov r5, r0
	mov r0, r4
	bl OS_IsThreadTerminated
	movs r6, r0
	ldreq r1, _020BCEEC ; =wfailed
	ldreq r0, [r1, #0x58]
	cmpeq r0, #0
	bne _020BCED8
	mov r2, #1
	mov r0, r4
	str r2, [r1, #0x58]
	bl OS_WakeupThreadDirect
_020BCED8:
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, pc}
_020BCEE8: .word ov15_020E70B8
_020BCEEC: .word wfailed
	arm_func_end CPS_CalmDown

	arm_func_start CPS_SetScavengerCallback
CPS_SetScavengerCallback: ; 0x020BCEF0
	ldr r1, _020BCEFC ; =wfailed
	str r0, [r1, #0x34]
	bx lr
_020BCEFC: .word wfailed
	arm_func_end CPS_SetScavengerCallback

	arm_func_start CPS_Cleanup
CPS_Cleanup: ; 0x020BCF00
	stmfd sp!, {r3, r4, r5, lr}
	bl CPS_CalmDown
	ldr r0, _020BCF74 ; =0x020E70B8
	bl OS_JoinThread
	ldr r0, _020BCF78 ; =tcpip_thread
	bl OS_DestroyThread
	ldr r0, _020BCF7C ; =0x020E6DD0
	bl OS_CancelAlarm
	bl OS_DisableInterrupts
	ldr r4, _020BCF80 ; =0x020E6FF8
	mov r5, r0
	mov r0, r4
	bl OS_IsThreadTerminated
	cmp r0, #0
	bne _020BCF44
	mov r0, r4
	bl OS_WakeupThreadDirect
_020BCF44:
	mov r0, r5
	bl OS_RestoreInterrupts
	ldr r0, _020BCF80 ; =0x020E6FF8
	bl OS_JoinThread
	mov r5, #0
	ldr r4, _020BCF84 ; =wfailed
	mov r0, r5
	str r5, [r4, #0x54]
	bl reset_network_vars
	str r5, [r4, #0x20]
	str r5, [r4, #0x5c]
	ldmfd sp!, {r3, r4, r5, pc}
_020BCF74: .word ov15_020E70B8
_020BCF78: .word tcpip_thread
_020BCF7C: .word ov15_020E6DD0
_020BCF80: .word ov15_020E6FF8
_020BCF84: .word wfailed
	arm_func_end CPS_Cleanup

	arm_func_start CPS_SetThreadPriority
CPS_SetThreadPriority: ; 0x020BCF88
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, _020BCFB4 ; =0x020E4340
	ldr r0, _020BCFB8 ; =tcpip_thread
	mov r1, r4
	str r4, [r2]
	bl OS_SetThreadPriority
	ldr r0, _020BCFBC ; =0x020E70B8
	mov r1, r4
	bl OS_SetThreadPriority
	ldmfd sp!, {r4, pc}
_020BCFB4: .word ov15_020E4340
_020BCFB8: .word tcpip_thread
_020BCFBC: .word ov15_020E70B8
	arm_func_end CPS_SetThreadPriority

	arm_func_start calc_checksum_do
calc_checksum_do: ; 0x020BCFC0
	stmfd sp!, {r4, lr}
	ands lr, r0, #3
	mov r4, #0
	beq _020BD030
	bic r3, r0, #3
	cmp lr, #1
	add r0, r3, #4
	ldr r12, [r3]
	beq _020BCFF0
	cmp lr, #2
	beq _020BD008
	b _020BD024
_020BCFF0:
	cmp r1, #3
	bic r3, r12, #0xff
	addlo r1, r1, #1
	blo _020BD064
	sub r1, r1, #3
	b _020BD02C
_020BD008:
	sub r3, r4, #0x10000
	cmp r1, #2
	and r3, r12, r3
	addlo r1, r1, #2
	blo _020BD064
	sub r1, r1, #2
	b _020BD02C
_020BD024:
	and r3, r12, #0xff000000
	sub r1, r1, #1
_020BD02C:
	mov r4, r3
_020BD030:
	cmp r1, #4
	blo _020BD058
_020BD038:
	ldr r3, [r0]
	sub r1, r1, #4
	add r4, r4, r3
	cmp r4, r3
	addlo r4, r4, #1
	cmp r1, #4
	add r0, r0, #4
	bhs _020BD038
_020BD058:
	cmp r1, #0
	beq _020BD08C
	ldr r3, [r0]
_020BD064:
	cmp r1, #1
	andeq r3, r3, #0xff
	beq _020BD080
	cmp r1, #2
	moveq r0, r3, lsl #0x10
	moveq r3, r0, lsr #0x10
	bicne r3, r3, #0xff000000
_020BD080:
	add r4, r4, r3
	cmp r4, r3
	addlo r4, r4, #1
_020BD08C:
	mov r0, r4, lsl #0x10
	mov r1, r4, lsr #0x10
	add r1, r1, r0, lsr #16
	mov r0, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	add r1, r1, r0, lsr #16
	tst lr, #1
	moveq r0, r1, lsl #8
	andeq r0, r0, #0xff00
	addeq r1, r0, r1, lsr #8
	add r1, r1, r2
	mov r0, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	add r0, r1, r0, lsr #16
	ldmfd sp!, {r4, pc}
	arm_func_end calc_checksum_do

	arm_func_start invert_checksum
invert_checksum: ; 0x020BD0C8
	ldr r1, _020BD0D8 ; =0x0000FFFF
	eors r0, r0, r1
	moveq r0, r1
	bx lr
_020BD0D8: .word 0x0000FFFF
	arm_func_end invert_checksum

	arm_func_start calc_checksum
calc_checksum: ; 0x020BD0DC
	stmfd sp!, {r3, lr}
	mov r2, #0
	bl calc_checksum_do
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl invert_checksum
	ldmfd sp!, {r3, pc}
	arm_func_end calc_checksum

	arm_func_start check_tcpudpsum
check_tcpudpsum: ; 0x020BD0F8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r2
	mov r2, r3
	mov r5, r1
	bl calc_checksum_do
	mov r2, r0
	add r0, r4, #0xc
	mov r1, #8
	bl calc_checksum_do
	add r1, r0, r5
	tst r1, #0x10000
	addne r0, r1, #1
	movne r0, r0, lsl #0x10
	movne r1, r0, lsr #0x10
	ldr r0, _020BD144 ; =0x0000FFFF
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020BD144: .word 0x0000FFFF
	arm_func_end check_tcpudpsum

	arm_func_start ip_islocal
ip_islocal: ; 0x020BD148
	mov r12, #1
	sub r1, r12, #2
	cmp r0, r1
	subne r1, r12, #0x81000000
	cmpne r0, r1
	beq _020BD17C
	ldr r1, _020BD184 ; =wfailed
	ldr r3, [r1, #0x10]
	ldr r1, [r1, #0x50]
	and r2, r0, r3
	and r0, r1, r3
	cmp r2, r0
	movne r12, #0
_020BD17C:
	mov r0, r12
	bx lr
_020BD184: .word wfailed
	arm_func_end ip_islocal

	arm_func_start get_targetip
get_targetip: ; 0x020BD188
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ip_islocal
	cmp r0, #0
	ldreq r0, _020BD1A8 ; =wfailed
	ldreq r4, [r0, #0x2c]
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020BD1A8: .word wfailed
	arm_func_end get_targetip

	arm_func_start is_broadcast
is_broadcast: ; 0x020BD1AC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	bl ip_islocal
	cmp r0, #0
	beq _020BD1DC
	ldr r0, _020BD1E4 ; =wfailed
	ldr r0, [r0, #0x10]
	mvn r1, r0
	and r0, r1, r5
	cmp r1, r0
	moveq r4, #1
_020BD1DC:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_020BD1E4: .word wfailed
	arm_func_end is_broadcast

	arm_func_start is_multicast
is_multicast: ; 0x020BD1E8
	and r0, r0, #0xf0000000
	cmp r0, #0xe0000000
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end is_multicast

	arm_func_start ip_isme
ip_isme: ; 0x020BD1FC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _020BD274 ; =wfailed
	mov r4, #1
	ldr r1, [r1, #0x50]
	mov r6, r0
	cmp r1, #0
	mov r0, r4
	cmpne r6, r1
	movne r0, #0
	mov r5, r4
	mov r2, r4
	cmp r0, #0
	bne _020BD23C
	ldr r0, _020BD278 ; =0x7F000001
	cmp r6, r0
	movne r2, #0
_020BD23C:
	cmp r2, #0
	bne _020BD254
	mov r0, r6
	bl is_broadcast
	cmp r0, #0
	moveq r5, #0
_020BD254:
	cmp r5, #0
	bne _020BD26C
	mov r0, r6
	bl is_multicast
	cmp r0, #0
	moveq r4, #0
_020BD26C:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_020BD274: .word wfailed
_020BD278: .word 0x7F000001
	arm_func_end ip_isme

	arm_func_start maccmp
maccmp: ; 0x020BD27C
	mov r12, #0
_020BD280:
	ldrh r3, [r0], #2
	ldrh r2, [r1], #2
	cmp r3, r2
	movne r0, #1
	bxne lr
	add r12, r12, #1
	cmp r12, #3
	blt _020BD280
	mov r0, #0
	bx lr
	arm_func_end maccmp

	arm_func_start send_packet
send_packet: ; 0x020BD2A8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	ldr r0, _020BD2FC ; =0x020E4368
	add r1, r7, #6
	mov r2, #6
	mov r4, r3
	bl MI_CpuCopy
	mov r0, r7
	mov r3, r5
	add r1, r7, #6
	sub r2, r6, #6
	str r4, [sp]
	bl WCM_SendDCFDataEx
	cmp r0, #0
	mov r1, #1
	ldr r0, _020BD300 ; =wfailed
	movge r1, #0
	strb r1, [r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BD2FC: .word ov15_020E4368
_020BD300: .word wfailed
	arm_func_end send_packet

	arm_func_start put_in_buffer
put_in_buffer: ; 0x020BD304
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r12, _020BD4DC ; =wfailed
	mov r6, r0
	ldr r7, [r12, #0x20]
	mov r5, r2
	cmp r7, #0
	ldrne r0, [r12, #0x5c]
	mov r4, r3
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [sp, #0x24]
	add r0, r4, r0
	cmp r0, #8
	ldmlofd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r2, _020BD4E0 ; =0x000005E4
	cmp r0, r2
	ldmhifd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r2, _020BD4E4 ; =0x020E4368
	ldrb r8, [r5]
	ldrb r3, [r2]
	cmp r8, r3
	ldreqb r8, [r5, #1]
	ldreqb r3, [r2, #1]
	cmpeq r8, r3
	ldreqb r3, [r5, #2]
	ldreqb r2, [r2, #2]
	cmpeq r3, r2
	ldreqb r2, [r5, #6]
	cmpeq r2, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r2, [r5, #7]
	cmp r2, #0
	beq _020BD390
	cmp r2, #6
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BD390:
	add r0, r0, #9
	bic r0, r0, #1
	ldr r9, [r12, #0x60]
	ldr r8, [r12, #0x60]
	ldr r3, [r12, #0x64]
	mov r0, r0, lsl #0x10
	cmp r8, r3
	mov r2, r0, lsr #0x10
	add r8, r9, r0, lsr #16
	bhs _020BD3C4
	ldr r0, [r12, #0x64]
	cmp r0, r8
	ldmlsfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BD3C4:
	ldr r0, _020BD4DC ; =wfailed
	ldr r3, [r0, #0x5c]
	cmp r8, r3
	bne _020BD3E8
	ldr r3, [r0, #0x64]
	mov r8, #0
	cmp r3, #0
	bne _020BD404
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BD3E8:
	ldr r3, [r0, #0x5c]
	cmp r8, r3
	bls _020BD404
	ldr r3, [r0, #0x64]
	mov r8, r2
	cmp r3, r2
	ldmlsfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BD404:
	ldr r9, [r0, #0x60]
	ldr r3, [r0, #0x5c]
	add r9, r9, r2
	cmp r9, r3
	bls _020BD440
	ldr r9, [r0, #0x5c]
	ldr r3, [r0, #0x60]
	sub r3, r9, r3
	cmp r3, #2
	ldrhs r0, [r0, #0x60]
	movhs r3, #0
	strhsh r3, [r7, r0]
	ldr r0, _020BD4DC ; =wfailed
	mov r3, #0
	str r3, [r0, #0x60]
_020BD440:
	ldr r9, _020BD4DC ; =wfailed
	mov r0, r1
	ldr r12, [r9, #0x20]
	ldr r3, [r9, #0x60]
	mov r7, #6
	strh r2, [r12, r3]
	ldr r3, [r9, #0x20]
	ldr r1, [r9, #0x60]
	mov r2, r7
	add r1, r3, r1
	add r1, r1, #2
	bl MI_CpuCopy
	ldr r2, [r9, #0x20]
	ldr r1, [r9, #0x60]
	mov r0, r6
	add r1, r2, r1
	mov r2, r7
	add r1, r1, #8
	bl MI_CpuCopy
	ldr r2, [r9, #0x20]
	ldr r1, [r9, #0x60]
	add r0, r5, #6
	add r1, r2, r1
	add r1, r1, #0xe
	sub r2, r4, #6
	bl MI_CpuCopy
	ldr r0, [sp, #0x20]
	cmp r0, #0
	ldrne r2, [sp, #0x24]
	cmpne r2, #0
	beq _020BD4D4
	ldr r3, [r9, #0x20]
	ldr r1, [r9, #0x60]
	add r1, r3, r1
	add r1, r1, #8
	add r1, r1, r4
	bl MI_CpuCopy
_020BD4D4:
	str r8, [r9, #0x60]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BD4DC: .word wfailed
_020BD4E0: .word 0x000005E4
_020BD4E4: .word ov15_020E4368
	arm_func_end put_in_buffer

	arm_func_start CPSi_RecvCallbackFunc
CPSi_RecvCallbackFunc: ; 0x020BD4E8
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	bl put_in_buffer
	ldr r4, _020BD538 ; =wfailed
	ldr r0, [r4, #0x54]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0x54]
	bl OS_IsThreadTerminated
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #0x54]
	bl OS_WakeupThreadDirect
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020BD538: .word wfailed
	arm_func_end CPSi_RecvCallbackFunc

	arm_func_start receive_packet
receive_packet: ; 0x020BD53C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r7, _020BD600 ; =wfailed
	mov r4, r0
	ldr r1, [r7, #0x64]
	ldr r0, [r7, #0x60]
	cmp r1, r0
	bne _020BD598
	ldr r6, _020BD604 ; =OSi_ThreadInfo
	mov r8, #0
_020BD56C:
	ldr r1, [r6, #4]
	mov r0, r8
	str r1, [sp]
	ldr r1, [sp]
	str r1, [r7, #0x54]
	bl OS_SleepThread
	str r8, [r7, #0x54]
	ldr r1, [r7, #0x64]
	ldr r0, [r7, #0x60]
	cmp r1, r0
	beq _020BD56C
_020BD598:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldr r0, _020BD600 ; =wfailed
	mov r3, #0
	ldr r6, [r0, #0x20]
	mov r1, r3
_020BD5B0:
	ldr r4, [r0, #0x5c]
	ldr r2, [r0, #0x64]
	sub r2, r4, r2
	cmp r2, #2
	strlo r3, [r0, #0x64]
	ldr r2, [r0, #0x64]
	ldrh r2, [r6, r2]
	cmp r2, #0
	streq r1, [r0, #0x64]
	cmp r2, #0
	beq _020BD5B0
	sub r1, r2, #2
	ldr r0, _020BD600 ; =wfailed
	str r1, [r5]
	ldr r1, [r0, #0x20]
	ldr r0, [r0, #0x64]
	add r0, r1, r0
	add r0, r0, #2
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020BD600: .word wfailed
_020BD604: .word OSi_ThreadInfo
	arm_func_end receive_packet

	arm_func_start throw_packet
throw_packet: ; 0x020BD608
	stmfd sp!, {r3, lr}
	bl OS_DisableInterrupts
	ldr r1, _020BD648 ; =wfailed
	ldr r12, [r1, #0x64]
	ldr r3, [r1, #0x20]
	ldr r2, [r1, #0x64]
	ldrh r2, [r3, r2]
	add r2, r12, r2
	str r2, [r1, #0x64]
	ldr r3, [r1, #0x64]
	ldr r2, [r1, #0x5c]
	cmp r3, r2
	movhs r2, #0
	strhs r2, [r1, #0x64]
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, pc}
_020BD648: .word wfailed
	arm_func_end throw_packet

	arm_func_start inq_arpcache
inq_arpcache: ; 0x020BD64C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	bl OS_DisableInterrupts
	ldr r1, _020BD6FC ; =0x7F000001
	mov r5, r0
	cmp r8, r1
	ldrne r0, _020BD700 ; =wfailed
	mov r4, #0
	ldrne r0, [r0, #0x50]
	cmpne r8, r0
	ldreq r4, _020BD704 ; =CPSMyMac
	beq _020BD6EC
	mov r0, r8
	bl is_broadcast
	cmp r0, #0
	bne _020BD69C
	mov r0, r8
	bl is_multicast
	cmp r0, #0
	beq _020BD6A4
_020BD69C:
	ldr r4, _020BD708 ; =0x020E4349
	b _020BD6EC
_020BD6A4:
	ldr r2, _020BD70C ; =0x020E6E58
	mov r3, r4
	mov r0, #0xc
_020BD6B0:
	mul r7, r3, r0
	ldr r1, [r2, r7]
	add r6, r2, r7
	cmp r8, r1
	bne _020BD6E0
	bl OS_GetTick
	mov r2, r0, lsr #0x10
	ldr r0, _020BD710 ; =0x020E6E62
	orr r2, r2, r1, lsl #16
	strh r2, [r0, r7]
	add r4, r6, #4
	b _020BD6EC
_020BD6E0:
	add r3, r3, #1
	cmp r3, #8
	blo _020BD6B0
_020BD6EC:
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BD6FC: .word 0x7F000001
_020BD700: .word wfailed
_020BD704: .word CPSMyMac
_020BD708: .word ov15_020E4349
_020BD70C: .word ov15_020E6E58
_020BD710: .word ov15_020E6E62
	arm_func_end inq_arpcache

	arm_func_start send_arprequest
send_arprequest: ; 0x020BD714
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x2c
	mov r6, #0
	mov r5, #0x2a
	add r7, sp, #0
	mov r8, r0
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl MI_CpuFill8
	mov r4, #6
	mov r0, r7
	mov r2, r4
	mov r1, #0xff
	bl MI_CpuFill8
	ldr r9, _020BD814 ; =CPSMyMac
	add r1, sp, #6
	mov r0, r9
	mov r2, r4
	bl MI_CpuCopy
	mov r1, #1
	ldr r2, _020BD818 ; =0x00000608
	strb r1, [sp, #0xf]
	strb r1, [sp, #0x15]
	mov r1, #8
	strb r1, [sp, #0x10]
	add r1, r4, #0x400
	strh r2, [sp, #0xc]
	strh r1, [sp, #0x12]
	mov r0, r9
	mov r2, r4
	add r1, sp, #0x16
	bl MI_CpuCopy
	ldr r2, _020BD81C ; =wfailed
	mov r1, r5
	mov r3, r8, lsr #0x10
	ldr r5, [r2, #0x50]
	mov r2, r3, lsl #0x10
	mov r4, r2, lsr #0x10
	mov r2, r8, lsl #0x10
	mov r3, r2, lsr #0x10
	mov r2, r5, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r0, r7
	mov r7, r2, lsr #0x10
	mov r2, r5, lsl #0x10
	mov r5, r2, lsr #0x10
	mov r2, r7, lsl #8
	orr r2, r2, r7, asr #8
	strh r2, [sp, #0x1c]
	mov r2, r5, lsl #8
	orr r2, r2, r5, asr #8
	strh r2, [sp, #0x1e]
	mov r2, r4, lsl #8
	orr r2, r2, r4, asr #8
	strh r2, [sp, #0x26]
	mov r2, r3, lsl #8
	orr r2, r2, r3, asr #8
	strh r2, [sp, #0x28]
	mov r2, r6
	mov r3, r6
	bl send_packet
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020BD814: .word CPSMyMac
_020BD818: .word 0x00000608
_020BD81C: .word wfailed
	arm_func_end send_arprequest

	arm_func_start arprequest
arprequest: ; 0x020BD820
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r8, #0
	ldr r7, _020BD8AC ; =0x020E4350
	ldr r4, _020BD8B0 ; =0x51EB851F
	ldr r5, _020BD8B4 ; =wfailed
	mov r10, r0
	mov r6, #0x64
	mov r11, r8
_020BD840:
	mov r0, r10
	bl send_arprequest
	ldr r1, [r7, r8, lsl #2]
	mov r9, r11
	umull r0, r2, r1, r4
	movs r2, r2, lsr #5
	beq _020BD898
_020BD85C:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r6
	bl OS_Sleep
	mov r0, r10
	bl inq_arpcache
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r7, r8, lsl #2]
	add r9, r9, #1
	umull r0, r2, r1, r4
	cmp r9, r2, lsr #5
	blo _020BD85C
_020BD898:
	add r8, r8, #1
	cmp r8, #6
	blo _020BD840
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BD8AC: .word ov15_020E4350
_020BD8B0: .word 0x51EB851F
_020BD8B4: .word wfailed
	arm_func_end arprequest

	arm_func_start reg_arpcache
reg_arpcache: ; 0x020BD8B8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _020BD9E4 ; =0x7F000001
	mov r4, r1
	mov r5, r0
	cmp r4, r3
	ldrne r0, _020BD9E8 ; =wfailed
	mov r7, r2
	ldrne r0, [r0, #0x50]
	cmpne r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	bl ip_islocal
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	bl is_multicast
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	bl OS_GetTick
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	mov r0, r0, lsl #0x10
	mov r6, r0, lsr #0x10
	ldr r2, _020BD9EC ; =0x020E6E58
	mov r3, #0
	mov r0, #0xc
_020BD920:
	mul lr, r3, r0
	ldr r1, [r2, lr]
	add r12, r2, lr
	cmp r4, r1
	bne _020BD950
	ldr r3, _020BD9F0 ; =0x020E6E62
	mov r0, r5
	add r1, r12, #4
	mov r2, #6
	strh r6, [r3, lr]
	bl MI_CpuCopy
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BD950:
	add r3, r3, #1
	cmp r3, #8
	blo _020BD920
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	ldr lr, _020BD9EC ; =0x020E6E58
	mov r0, r1
	mov r2, r1
	mov r7, #0xc
_020BD978:
	mul r12, r2, r7
	ldr r3, [lr, r12]
	add r12, lr, r12
	cmp r3, #0
	moveq r0, r2
	beq _020BD9B4
	ldrh r3, [r12, #0xa]
	sub r3, r6, r3
	mov r3, r3, lsl #0x10
	cmp r1, r3, asr #16
	movlt r0, r2
	add r2, r2, #1
	movlt r1, r3, lsr #0x10
	cmp r2, #8
	blo _020BD978
_020BD9B4:
	mov r1, #0xc
	mul r7, r0, r1
	ldr r3, _020BD9EC ; =0x020E6E58
	mov r0, r5
	add r1, r3, r7
	add r1, r1, #4
	mov r2, #6
	str r4, [r3, r7]
	bl MI_CpuCopy
	ldr r0, _020BD9F0 ; =0x020E6E62
	strh r6, [r0, r7]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BD9E4: .word 0x7F000001
_020BD9E8: .word wfailed
_020BD9EC: .word ov15_020E6E58
_020BD9F0: .word ov15_020E6E62
	arm_func_end reg_arpcache

	arm_func_start send_ether
send_ether: ; 0x020BD9F4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldrh r5, [sp, #0x1c]
	ldr r4, [sp, #0x18]
	mov r8, r0
	mov r0, r5, lsl #8
	orr r12, r0, r5, asr #8
	mov r0, r4
	mov r7, r1
	mov r6, r2
	mov r5, r3
	strh r12, [r8, #-2]
	bl is_multicast
	cmp r0, #0
	bne _020BDA68
	mov r0, r4
	bl get_targetip
	movs r4, r0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl inq_arpcache
	cmp r0, #0
	bne _020BDA50
	mov r0, r4
	bl arprequest
_020BDA50:
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	sub r1, r8, #0xe
	mov r2, #6
	bl MI_CpuCopy
	b _020BDA98
_020BDA68:
	mov r0, r4, lsr #0x10
	and r1, r0, #0x7f
	mov r0, r4, lsr #8
	mov r12, #1
	mov r3, #0
	mov r2, #0x5e
	strb r12, [r8, #-0xe]
	strb r3, [r8, #-0xd]
	strb r2, [r8, #-0xc]
	strb r1, [r8, #-0xb]
	strb r0, [r8, #-0xa]
	strb r4, [r8, #-9]
_020BDA98:
	ldr r0, _020BDAC0 ; =CPSMyMac
	sub r1, r8, #8
	mov r2, #6
	bl MI_CpuCopy
	mov r2, r6
	mov r3, r5
	sub r0, r8, #0xe
	add r1, r7, #0xe
	bl send_packet
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BDAC0: .word CPSMyMac
	arm_func_end send_ether

	arm_func_start send_ip_frag
send_ip_frag: ; 0x020BDAC4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r7, r1
	ldr r4, [sp, #0x24]
	mov r5, r3
	add r1, r7, #0x14
	add r1, r1, r5
	mov r1, r1, lsl #0x10
	mov r3, r4, lsl #0x10
	mov r4, r1, lsr #0x10
	mov r1, r3, lsr #0x10
	mov r8, r0
	mov r3, r4, lsl #8
	orr r12, r3, r4, asr #8
	mov r0, r1, lsl #8
	orr r4, r0, r1, asr #8
	mov r3, #0
	strh r4, [r8, #-0xe]
	sub r0, r8, #0x14
	mov r1, #0x14
	mov r6, r2
	strh r12, [r8, #-0x12]
	strh r3, [r8, #-0xa]
	ldr r4, [sp, #0x20]
	bl calc_checksum
	mov r2, r0, lsl #8
	ldr r1, _020BDBDC ; =0x7F000001
	orr r0, r2, r0, asr #8
	strh r0, [r8, #-0xa]
	cmp r4, r1
	ldrne r0, _020BDBE0 ; =wfailed
	ldrne r0, [r0, #0x50]
	cmpne r4, r0
	beq _020BDB6C
	mov r2, r6
	mov r3, r5
	str r4, [sp]
	mov r12, #0x800
	sub r0, r8, #0x14
	add r1, r7, #0x14
	str r12, [sp, #4]
	bl send_ether
_020BDB6C:
	ldr r0, _020BDBDC ; =0x7F000001
	cmp r4, r0
	ldrne r0, _020BDBE0 ; =wfailed
	ldrne r0, [r0, #0x50]
	cmpne r4, r0
	beq _020BDB98
	mov r0, r4
	bl is_multicast
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_020BDB98:
	ldr r0, _020BDBE4 ; =0x020E4368
	sub r1, r8, #0x1c
	mov r2, #8
	bl MI_CpuCopy
	bl OS_DisableInterrupts
	mov r4, r0
	ldr r0, _020BDBE8 ; =CPSMyMac
	str r6, [sp]
	mov r1, r0
	str r5, [sp, #4]
	sub r2, r8, #0x1c
	add r3, r7, #0x1c
	bl put_in_buffer
	mov r0, r4
	bl OS_RestoreInterrupts
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BDBDC: .word 0x7F000001
_020BDBE0: .word wfailed
_020BDBE4: .word ov15_020E4368
_020BDBE8: .word CPSMyMac
	arm_func_end send_ip_frag

	arm_func_start send_ip
send_ip: ; 0x020BDBEC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	mov r4, #0
	mov r0, #0x45
	ldr r7, _020BDDDC ; =wfailed
	strb r4, [r10, #-0x13]
	strb r0, [r10, #-0x14]
	ldrh r0, [r7, #2]
	ldrb r5, [sp, #0x34]
	ldr r6, [sp, #0x30]
	add r0, r0, #1
	strh r0, [r7, #2]
	ldrh r11, [r7, #2]
	mov r8, #0x80
	mov r0, r6, lsr #0x10
	mov r9, r11, lsl #8
	orr r9, r9, r11, asr #8
	strb r5, [r10, #-0xb]
	mov r5, r0, lsl #0x10
	strh r9, [r10, #-0x10]
	strb r8, [r10, #-0xc]
	ldr r8, [r7, #0x50]
	mov r11, r5, lsr #0x10
	mov r0, r8, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	mov r0, r8, lsl #8
	orr r0, r0, r8, asr #8
	strh r0, [r10, #-8]
	ldr r0, [r7, #0x50]
	mov r7, r6, lsl #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r8, r7, lsr #0x10
	mov r5, r0, lsl #8
	mov r7, r8, lsl #8
	orr r12, r7, r8, asr #8
	orr r5, r5, r0, asr #8
	mov r9, r11, lsl #8
	orr r0, r9, r11, asr #8
	ldr r11, _020BDDE0 ; =0x000005C8
	mov r9, r1
	mov r8, r2
	mov r7, r3
	strh r5, [r10, #-6]
	strh r0, [r10, #-4]
	strh r12, [r10, #-2]
	cmp r9, r11
	bls _020BDD58
	mov r5, r10
	bls _020BDCFC
_020BDCBC:
	mov r0, r10
	mov r1, #0
	mov r2, r5
	mov r3, r11
	str r6, [sp]
	orr r12, r4, #0x2000
	str r12, [sp, #4]
	bl send_ip_frag
	add r1, r4, #0xb9
	add r0, r5, #0x1c8
	sub r9, r9, r11
	mov r1, r1, lsl #0x10
	cmp r9, r11
	add r5, r0, #0x400
	mov r4, r1, lsr #0x10
	bhi _020BDCBC
_020BDCFC:
	cmp r9, #0
	beq _020BDD58
	cmp r7, #0
	mov r1, #0
	beq _020BDD2C
	mov r2, r5
	str r6, [sp]
	orr r5, r4, #0x2000
	mov r0, r10
	mov r3, r9
	str r5, [sp, #4]
	b _020BDD40
_020BDD2C:
	str r6, [sp]
	mov r0, r10
	mov r2, r5
	mov r3, r9
	str r4, [sp, #4]
_020BDD40:
	bl send_ip_frag
	mov r0, r9, lsl #0xd
	add r0, r4, r0, lsr #16
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
	mov r9, #0
_020BDD58:
	ldr r11, _020BDDE0 ; =0x000005C8
	add r0, r9, r7
	cmp r0, r11
	bls _020BDDAC
_020BDD68:
	sub r5, r11, r9
	mov r1, r9
	mov r0, r10
	mov r2, r8
	mov r3, r5
	str r6, [sp]
	orr r9, r4, #0x2000
	str r9, [sp, #4]
	bl send_ip_frag
	add r0, r4, #0xb9
	sub r7, r7, r5
	mov r0, r0, lsl #0x10
	mov r9, #0
	cmp r7, r11
	add r8, r8, r5
	mov r4, r0, lsr #0x10
	bhi _020BDD68
_020BDDAC:
	adds r0, r9, r7
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r6, [sp]
	mov r0, r10
	mov r1, r9
	mov r2, r8
	mov r3, r7
	str r4, [sp, #4]
	bl send_ip_frag
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BDDDC: .word wfailed
_020BDDE0: .word 0x000005C8
	arm_func_end send_ip

	arm_func_start send_ping
send_ping: ; 0x020BDDE4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r6, r2
	ldr r5, [r6, #0x58]
	mov r4, #8
	ldr r3, _020BDE90 ; =wfailed
	ldr r2, _020BDE94 ; =OSi_ThreadInfo
	strh r4, [r5, #0x22]
	ldr r2, [r2, #4]
	ldrh lr, [r3, #8]
	mov r8, r0
	mov r7, r1
	add r12, lr, #1
	strh r2, [r5, #0x26]
	mov r2, #0
	strh r2, [r5, #0x24]
	strh lr, [r6, #0xa]
	mov r1, r4
	add r0, r5, #0x22
	strh r12, [r3, #8]
	strh lr, [r5, #0x28]
	bl calc_checksum_do
	mov r2, r0
	mov r0, r8
	mov r1, r7
	bl calc_checksum_do
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl invert_checksum
	mov r1, r4
	mov r2, r8
	mov r3, r7
	mov r4, r0, lsl #8
	orr r0, r4, r0, asr #8
	strh r0, [r5, #0x24]
	ldr r4, [r6, #0x1c]
	add r0, r5, #0x22
	str r4, [sp]
	mov r4, #1
	str r4, [sp, #4]
	bl send_ip
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BDE90: .word wfailed
_020BDE94: .word OSi_ThreadInfo
	arm_func_end send_ping

	arm_func_start send_udp
send_udp: ; 0x020BDE98
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r7, _020BDFD0 ; =wfailed
	mov r5, r2
	ldr r2, [r7, #0x50]
	mov r6, r1
	mov r1, r2, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	ldr r3, [r5, #0x58]
	mov r1, r2, lsl #8
	add r4, r3, #0x22
	orr r1, r1, r2, asr #8
	strh r1, [r4, #-0xc]
	ldr r1, [r7, #0x50]
	add r2, r6, #8
	mov r1, r1, lsl #0x10
	mov r7, r1, lsr #0x10
	mov r1, r7, lsl #8
	orr r1, r1, r7, asr #8
	strh r1, [r4, #-0xa]
	ldr r1, [r5, #0x1c]
	mov r2, r2, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r7, r1, lsr #0x10
	mov r1, r7, lsl #8
	orr r1, r1, r7, asr #8
	strh r1, [r4, #-8]
	ldr r1, [r5, #0x1c]
	mov r2, r2, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r7, r1, lsr #0x10
	mov r1, r7, lsl #8
	orr r7, r1, r7, asr #8
	mov r1, r2, lsl #8
	strh r7, [r4, #-6]
	mov r7, #0x1100
	strh r7, [r4, #-4]
	orr r1, r1, r2, asr #8
	strh r1, [r4, #4]
	ldrh r1, [r4, #4]
	mov r7, r0
	sub r0, r4, #0xc
	strh r1, [r4, #-2]
	ldrh lr, [r5, #0x18]
	mov r2, #0
	mov r1, #0x14
	mov r12, lr, lsl #8
	orr r12, r12, lr, asr #8
	strh r12, [r4, #2]
	ldrh lr, [r5, #0xa]
	mov r12, lr, lsl #8
	orr r12, r12, lr, asr #8
	strh r12, [r3, #0x22]
	strh r2, [r4, #6]
	bl calc_checksum_do
	mov r2, r0
	mov r0, r7
	mov r1, r6
	bl calc_checksum_do
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl invert_checksum
	mov r2, r7
	mov r3, r6
	mov r1, r0, lsl #8
	orr r0, r1, r0, asr #8
	strh r0, [r4, #6]
	ldr r1, [r5, #0x1c]
	mov r0, r4
	str r1, [sp]
	mov r1, #0x11
	str r1, [sp, #4]
	mov r1, #8
	bl send_ip
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BDFD0: .word wfailed
	arm_func_end send_udp

	arm_func_start _send_tcp
_send_tcp: ; 0x020BDFD4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r11, r3
	mov r8, r2
	str r0, [sp, #8]
	tst r11, #5
	ldreqb r0, [r8, #8]
	str r1, [sp, #0xc]
	cmpeq r0, #0
	addeq sp, sp, #0x14
	moveq r0, r1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020BE460 ; =OSi_ThreadInfo
	ldr r1, _020BE464 ; =tcpip_thread
	ldr r0, [r0, #4]
	cmp r0, r1
	ldreq r7, _020BE468 ; =0x020E6E1E
	ldrne r0, [r8, #0x58]
	addne r7, r0, #0x22
	ands r0, r11, #2
	str r0, [sp, #0x10]
	movne r4, #0x1c
	bne _020BE214
	tst r11, #0x10
	ldrneb r0, [r8, #0x33]
	cmpne r0, #0
	ldrne r0, [r8, #0x70]
	cmpne r0, #0
	beq _020BE210
	mvn r4, #0
	mov r5, r4
	mov r6, #0
	bl OS_DisableInterrupts
_020BE058:
	mov r1, #0xc
	mla r9, r4, r1, r8
	mov lr, #0
	mov r2, r1
	b _020BE0A8
_020BE06C:
	cmp r5, #0
	blt _020BE088
	mla r3, r5, r2, r8
	ldr r12, [r3, #0x78]
	ldr r3, [r10, #0x78]
	cmp r12, r3
	bhs _020BE0A4
_020BE088:
	cmp r4, #0
	blt _020BE0A0
	ldr r10, [r10, #0x78]
	ldr r3, [r9, #0x78]
	cmp r10, r3
	bhs _020BE0A4
_020BE0A0:
	mov r5, lr
_020BE0A4:
	add lr, lr, #1
_020BE0A8:
	cmp lr, #4
	bge _020BE0C0
	mla r10, lr, r1, r8
	ldr r3, [r10, #0x70]
	cmp r3, #0
	bne _020BE06C
_020BE0C0:
	cmp r5, #0
	blt _020BE19C
	mov r3, #0xc
	mla r2, r5, r3, r8
	ldr r9, [r8, #0x24]
	ldr r4, [r2, #0x70]
	ldr r1, [r8, #0x50]
	add r4, r9, r4
	sub r1, r4, r1
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r9, r1, lsr #0x10
	mov r4, r9, lsl #8
	add r1, r7, r6, lsl #3
	orr r4, r4, r9, asr #8
	strh r4, [r1, #0x18]
	ldr r10, [r8, #0x24]
	ldr r9, [r2, #0x70]
	ldr r4, [r8, #0x50]
	add r9, r10, r9
	sub r4, r9, r4
	mov r4, r4, lsl #0x10
	mov r9, r4, lsr #0x10
	mov r4, r9, lsl #8
	orr r4, r4, r9, asr #8
	strh r4, [r1, #0x1a]
	ldr r10, [r8, #0x24]
	ldr r9, [r2, #0x70]
	ldr r4, [r8, #0x50]
	add r9, r10, r9
	sub r9, r9, r4
	ldr r4, [r2, #0x74]
	add r6, r6, #1
	add r4, r9, r4
	mov r4, r4, lsr #0x10
	mov r4, r4, lsl #0x10
	mov r9, r4, lsr #0x10
	mov r4, r9, lsl #8
	orr r4, r4, r9, asr #8
	strh r4, [r1, #0x1c]
	ldr r9, [r8, #0x24]
	ldr r4, [r2, #0x70]
	ldr r2, [r2, #0x74]
	add r10, r9, r4
	ldr r9, [r8, #0x50]
	mov r4, r5
	sub r5, r10, r9
	add r2, r5, r2
	mov r2, r2, lsl #0x10
	mov r9, r2, lsr #0x10
	sub r5, r3, #0xd
	mov r2, r9, lsl #8
	orr r2, r2, r9, asr #8
	strh r2, [r1, #0x1e]
	b _020BE058
_020BE19C:
	bl OS_RestoreInterrupts
	mov r0, r6, lsl #3
	ldr r1, _020BE46C ; =0x01010500
	add r2, r0, #2
	orr r2, r2, r1
	mov r1, r2, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r4, r1, lsr #0x10
	mov r1, r2, lsl #0x10
	mov r3, r4, lsl #8
	orr r3, r3, r4, asr #8
	mov r2, r1, lsr #0x10
	mov r1, r2, lsl #8
	strh r3, [r7, #0x14]
	orr r1, r1, r2, asr #8
	strh r1, [r7, #0x16]
	ldr r1, _020BE470 ; =wfailed
	ldrh r2, [r8, #0x3a]
	ldrh r1, [r1, #4]
	add r4, r0, #0x18
	cmp r2, r1
	movhs r2, r1
	sub r1, r2, #4
	sub r1, r1, r0
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bichi r0, r1, #1
	strhi r0, [sp, #0xc]
	b _020BE214
_020BE210:
	mov r4, #0x14
_020BE214:
	ldr r0, _020BE470 ; =wfailed
	ldr r1, [sp, #0xc]
	ldr r3, [r0, #0x50]
	add r1, r4, r1
	mov r2, r1, lsl #0x10
	mov r1, r3, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r1, r3, lsl #8
	orr r1, r1, r3, asr #8
	strh r1, [r7, #-0xc]
	ldr r1, [r0, #0x50]
	mov r3, r2, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	mov r1, r2, lsl #8
	orr r1, r1, r2, asr #8
	strh r1, [r7, #-0xa]
	ldr r1, [r8, #0x1c]
	mov r2, r3, lsl #8
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r5, r1, lsr #0x10
	mov r1, r5, lsl #8
	orr r1, r1, r5, asr #8
	strh r1, [r7, #-8]
	ldr r1, [r8, #0x1c]
	mov r5, #0x600
	mov r1, r1, lsl #0x10
	mov r6, r1, lsr #0x10
	mov r1, r6, lsl #8
	orr r1, r1, r6, asr #8
	strh r1, [r7, #-6]
	orr r1, r2, r3, asr #8
	strh r5, [r7, #-4]
	strh r1, [r7, #-2]
	ldrh r5, [r8, #0xa]
	mov r3, r4, lsl #2
	mov r2, #0
	mov r1, r5, lsl #8
	orr r1, r1, r5, asr #8
	strh r1, [r7]
	ldr r1, [sp, #0x10]
	ldrh r5, [r8, #0x18]
	cmp r1, #0
	mov r1, r5, lsl #8
	orr r1, r1, r5, asr #8
	strh r1, [r7, #2]
	ldr r1, [r8, #0x34]
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r5, r1, lsr #0x10
	mov r1, r5, lsl #8
	orr r1, r1, r5, asr #8
	strh r1, [r7, #4]
	ldr r1, [r8, #0x34]
	mov r1, r1, lsl #0x10
	mov r5, r1, lsr #0x10
	mov r1, r5, lsl #8
	orr r1, r1, r5, asr #8
	strh r1, [r7, #6]
	ldr r6, [r8, #0x24]
	mov r1, r6, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r5, r1, lsr #0x10
	mov r1, r5, lsl #8
	str r6, [r8, #0x28]
	orr r1, r1, r5, asr #8
	strh r1, [r7, #8]
	ldr r6, [r8, #0x24]
	mov r1, r6, lsl #0x10
	mov r5, r1, lsr #0x10
	mov r1, r5, lsl #8
	str r6, [r8, #0x28]
	orr r1, r1, r5, asr #8
	strh r1, [r7, #0xa]
	strb r3, [r7, #0xc]
	strb r11, [r7, #0xd]
	ldr r3, [r8, #0x48]
	ldr r1, [r8, #0x50]
	sub r1, r3, r1
	strh r1, [r8, #0x30]
	ldrh r3, [r8, #0x30]
	mov r1, r3, lsl #8
	orr r1, r1, r3, asr #8
	strh r1, [r7, #0xe]
	strh r2, [r7, #0x10]
	strh r2, [r7, #0x12]
	beq _020BE3C4
	ldrh r1, [r0, #4]
	ldr r3, _020BE474 ; =0x00000101
	mov r2, #0x204
	add r1, r1, #0x2040000
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r5, r1, lsr #0x10
	mov r1, r5, lsl #8
	orr r1, r1, r5, asr #8
	strh r1, [r7, #0x14]
	ldrh r0, [r0, #4]
	add r0, r0, #0x2040000
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, r1, lsl #8
	orr r0, r0, r1, asr #8
	strh r0, [r7, #0x16]
	strh r3, [r7, #0x18]
	strh r2, [r7, #0x1a]
_020BE3C4:
	tst r11, #0x10
	mov r0, #0
	beq _020BE3DC
	strb r0, [r8, #0x32]
	bl OS_GetTick
	str r0, [r8, #0x2c]
_020BE3DC:
	sub r0, r7, #0xc
	add r1, r4, #0xc
	mov r2, #0
	bl calc_checksum_do
	mov r2, r0
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl calc_checksum_do
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl invert_checksum
	mov r1, r0, lsl #8
	orr r0, r1, r0, asr #8
	strh r0, [r7, #0x10]
	ldr r1, [r8, #0x34]
	ldr r0, [sp, #0xc]
	tst r11, #3
	add r0, r1, r0
	str r0, [r8, #0x34]
	addne r0, r0, #1
	strne r0, [r8, #0x34]
	ldr r5, [r8, #0x1c]
	mov r1, r4
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	mov r0, r7
	str r5, [sp]
	mov r4, #6
	str r4, [sp, #4]
	bl send_ip
	ldr r0, [sp, #0xc]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BE460: .word OSi_ThreadInfo
_020BE464: .word tcpip_thread
_020BE468: .word ov15_020E6E1E
_020BE46C: .word 0x01010500
_020BE470: .word wfailed
_020BE474: .word 0x00000101
	arm_func_end _send_tcp

	arm_func_start reply_arp
reply_arp: ; 0x020BE478
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r3, #0x200
	add r0, r6, #8
	add r1, r6, #0x12
	mov r2, #0xa
	strh r3, [r6, #6]
	bl MI_CpuCopy
	ldr r5, _020BE520 ; =CPSMyMac
	mov r4, #6
	mov r0, r5
	mov r2, r4
	add r1, r6, #8
	bl MI_CpuCopy
	ldr r3, _020BE524 ; =wfailed
	mov r2, r4
	ldr r1, [r3, #0x50]
	add r0, r6, #0x12
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r12, r1, lsr #0x10
	mov r1, r12, lsl #8
	orr r1, r1, r12, asr #8
	strh r1, [r6, #0xe]
	ldr r3, [r3, #0x50]
	sub r1, r6, #0xe
	mov r3, r3, lsl #0x10
	mov r12, r3, lsr #0x10
	mov r3, r12, lsl #8
	orr r3, r3, r12, asr #8
	strh r3, [r6, #0x10]
	bl MI_CpuCopy
	mov r0, r5
	mov r2, r4
	sub r1, r6, #8
	bl MI_CpuCopy
	sub r0, r6, #0xe
	mov r1, #0x2a
	mov r2, #0
	mov r3, r2
	bl send_packet
	ldmfd sp!, {r4, r5, r6, pc}
_020BE520: .word CPSMyMac
_020BE524: .word wfailed
	arm_func_end reply_arp

	arm_func_start dispatch_arp
dispatch_arp: ; 0x020BE528
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	cmp r1, #0x1c
	ldmlofd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _020BE664 ; =CPSMyMac
	add r0, r6, #8
	bl maccmp
	cmp r0, #0
	ldrne r0, _020BE668 ; =wfailed
	ldrne r0, [r0, #0x50]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r6]
	cmp r0, #0x100
	ldreqh r0, [r6, #2]
	cmpeq r0, #8
	ldreqh r1, [r6, #4]
	ldreq r0, _020BE66C ; =0x00000406
	cmpeq r1, r0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r1, [r6, #6]
	mov r0, r1, lsl #8
	orr r0, r0, r1, asr #8
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
	cmp r4, #1
	beq _020BE59C
	cmp r4, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_020BE59C:
	ldrh r5, [r6, #0x10]
	ldrh r3, [r6, #0xe]
	ldrh lr, [r6, #0x1a]
	mov r0, r5, lsl #8
	mov r1, r3, lsl #8
	orr r3, r1, r3, asr #8
	orr r1, r0, r5, asr #8
	mov r0, r3, lsl #0x10
	mov r1, r1, lsl #0x10
	ldrh r12, [r6, #0x18]
	ldr r2, _020BE668 ; =wfailed
	mov r3, r0, lsr #0x10
	mov r1, r1, lsr #0x10
	ldr r0, [r2, #0x50]
	orr r1, r1, r3, lsl #16
	mov r3, r12, lsl #8
	mov r2, lr, lsl #8
	orr r12, r3, r12, asr #8
	orr r3, r2, lr, asr #8
	mov r2, r12, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r12, r2, lsr #0x10
	mov r2, r3, lsr #0x10
	mov r5, #1
	cmp r1, r0
	movne r5, #0
	orr r2, r2, r12, lsl #16
	mov r7, #1
	cmp r0, r2
	movne r7, #0
	cmp r5, #0
	bne _020BE628
	mov r2, r7
	add r0, r6, #8
	bl reg_arpcache
_020BE628:
	cmp r4, #1
	bne _020BE644
	cmp r7, #0
	beq _020BE644
	mov r0, r6
	bl reply_arp
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BE644:
	cmp r4, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, #0
	cmpne r5, #0
	ldrne r0, _020BE668 ; =wfailed
	movne r1, #1
	strneb r1, [r0, #1]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BE664: .word CPSMyMac
_020BE668: .word wfailed
_020BE66C: .word 0x00000406
	arm_func_end dispatch_arp

	arm_func_start reply_icmp
reply_icmp: ; 0x020BE670
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r6, r0
	ldrh r4, [r6, #0xe]
	ldrh r3, [r6, #0xc]
	mov r5, r1
	mov r0, r4, lsl #8
	mov r1, r3, lsl #8
	orr r3, r1, r3, asr #8
	orr r1, r0, r4, asr #8
	mov r0, r3, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r3, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r0, r0, r3, lsl #16
	mov r4, r2
	bl get_targetip
	movs r7, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl inq_arpcache
	cmp r0, #0
	bne _020BE6DC
	mov r0, r7
	bl send_arprequest
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BE6DC:
	ldrh r0, [r5, #2]
	mov r2, #0
	strb r2, [r5]
	add r0, r0, #8
	add r0, r0, r0, lsr #16
	strh r0, [r5, #2]
	ldrh r12, [r6, #0xe]
	ldrh r6, [r6, #0xc]
	mov r0, r5
	mov r1, r12, lsl #8
	mov r3, r6, lsl #8
	orr r5, r3, r6, asr #8
	orr r3, r1, r12, asr #8
	mov r1, r5, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r5, r1, lsr #0x10
	mov r1, r3, lsr #0x10
	orr r5, r1, r5, lsl #16
	mov r1, r4
	mov r3, r2
	str r5, [sp]
	mov r4, #1
	str r4, [sp, #4]
	bl send_ip
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end reply_icmp

	arm_func_start process_icmp_reply
process_icmp_reply: ; 0x020BE744
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl OS_DisableInterrupts
	ldr r1, _020BE840 ; =OSi_ThreadInfo
	mov r5, r0
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _020BE834
_020BE76C:
	ldr r4, [r1, #0xa4]
	cmp r4, #0
	ldrne r3, [r4]
	cmpne r3, #0
	beq _020BE828
	ldrb r0, [r4, #8]
	cmp r0, #0xb
	ldreqh r2, [r7, #4]
	moveq r0, r3, lsl #0x10
	cmpeq r2, r0, lsr #16
	ldreqh r2, [r4, #0xa]
	ldreqh r0, [r7, #6]
	cmpeq r2, r0
	ldreq r0, [r4, #0x50]
	cmpeq r0, #0
	bne _020BE828
	ldrh lr, [r8, #0xe]
	ldrh r12, [r8, #0xc]
	ldr r0, [r4, #0x1c]
	mov r2, lr, lsl #8
	mov r3, r12, lsl #8
	orr r12, r3, r12, asr #8
	orr r3, r2, lr, asr #8
	mov r2, r12, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r12, r2, lsr #0x10
	mov r2, r3, lsr #0x10
	orr r2, r2, r12, lsl #16
	cmp r0, r2
	bne _020BE828
	ldr r1, [r4, #0x48]
	sub r0, r6, #8
	cmp r0, r1
	strhi r1, [r4, #0x50]
	strls r0, [r4, #0x50]
	ldr r1, [r4, #0x4c]
	ldr r2, [r4, #0x50]
	add r0, r7, #8
	bl MI_CpuCopy
	ldr r0, [r4, #4]
	cmp r0, #3
	bne _020BE834
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4]
	bl OS_WakeupThreadDirect
	b _020BE834
_020BE828:
	ldr r1, [r1, #0x68]
	cmp r1, #0
	bne _020BE76C
_020BE834:
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BE840: .word OSi_ThreadInfo
	arm_func_end process_icmp_reply

	arm_func_start valid_IP
valid_IP: ; 0x020BE844
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	beq _020BE89C
	bl is_broadcast
	cmp r0, #0
	bne _020BE89C
	mov r0, r5
	bl is_multicast
	cmp r0, #0
	bne _020BE89C
	cmp r4, #0
	beq _020BE89C
	mov r0, r4
	bl is_broadcast
	cmp r0, #0
	bne _020BE89C
	mov r0, r4
	bl is_multicast
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
_020BE89C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end valid_IP

	arm_func_start dispatch_icmp
dispatch_icmp: ; 0x020BE8A4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r2
	mov r6, r0
	mov r5, r1
	cmp r4, #8
	ldmlofd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r5
	mov r1, r4
	bl calc_checksum
	ldr r1, _020BE978 ; =0x0000FFFF
	cmp r0, r1
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldrh r0, [r6, #0x12]
	ldrh r8, [r6, #0x10]
	ldrh r7, [r6, #0xe]
	ldrh lr, [r6, #0xc]
	mov r2, r8, lsl #8
	orr r2, r2, r8, asr #8
	mov r12, lr, lsl #8
	mov r2, r2, lsl #0x10
	mov r3, r7, lsl #8
	orr lr, r12, lr, asr #8
	mov r1, r0, lsl #8
	orr r12, r3, r7, asr #8
	orr r3, r1, r0, asr #8
	mov r0, lr, lsl #0x10
	mov r1, r12, lsl #0x10
	mov r12, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	mov r3, r3, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r1, r3, lsr #0x10
	orr r0, r0, r12, lsl #16
	orr r1, r1, r2, lsl #16
	bl valid_IP
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r0, [r5]
	cmp r0, #0
	beq _020BE950
	cmp r0, #8
	beq _020BE964
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BE950:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl process_icmp_reply
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BE964:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl reply_icmp
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BE978: .word 0x0000FFFF
	arm_func_end dispatch_icmp

	arm_func_start check_listener
check_listener: ; 0x020BE97C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _020BEA4C ; =OSi_ThreadInfo
	ldr r12, [r2, #8]
	cmp r12, #0
	beq _020BEA44
_020BE990:
	ldr r3, [r12, #0xa4]
	cmp r3, #0
	ldrne r2, [r3]
	cmpne r2, #0
	beq _020BEA38
	ldrb r2, [r3, #8]
	cmp r2, #1
	bne _020BEA38
	ldrh r5, [r1, #2]
	ldrh r4, [r3, #0xa]
	mov r2, r5, lsl #8
	orr r2, r2, r5, asr #8
	mov r2, r2, lsl #0x10
	cmp r4, r2, lsr #16
	bne _020BEA38
	ldrh r5, [r3, #0x18]
	cmp r5, #0
	beq _020BE9F0
	ldrh r4, [r1]
	mov r2, r4, lsl #8
	orr r2, r2, r4, asr #8
	mov r2, r2, lsl #0x10
	cmp r5, r2, lsr #16
	bne _020BEA38
_020BE9F0:
	ldr r2, [r3, #0x1c]
	cmp r2, #0
	beq _020BEA30
	ldrh r6, [r0, #0xe]
	ldrh r5, [r0, #0xc]
	mov r4, r6, lsl #8
	mov lr, r5, lsl #8
	orr lr, lr, r5, asr #8
	orr r4, r4, r6, asr #8
	mov lr, lr, lsl #0x10
	mov r4, r4, lsl #0x10
	mov lr, lr, lsr #0x10
	mov r4, r4, lsr #0x10
	orr r4, r4, lr, lsl #16
	cmp r2, r4
	bne _020BEA38
_020BEA30:
	mov r0, r3
	ldmfd sp!, {r4, r5, r6, pc}
_020BEA38:
	ldr r12, [r12, #0x68]
	cmp r12, #0
	bne _020BE990
_020BEA44:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020BEA4C: .word OSi_ThreadInfo
	arm_func_end check_listener

	arm_func_start check_socket
check_socket: ; 0x020BEA50
	stmfd sp!, {r4, r5, r6, lr}
	ldrb r4, [r2, #8]
	mov r3, #0
	mov r5, r3
	cmp r4, #0xa
	cmpne r4, #0xb
	movne r5, #1
	mov r12, r3
	mov r6, r3
	cmp r5, #0
	beq _020BEA98
	ldrh lr, [r1, #2]
	ldrh r5, [r2, #0xa]
	mov r4, lr, lsl #8
	orr r4, r4, lr, asr #8
	mov lr, r4, lsl #0x10
	cmp r5, lr, lsr #16
	moveq r6, #1
_020BEA98:
	cmp r6, #0
	beq _020BEABC
	ldrh lr, [r1]
	ldrh r4, [r2, #0x18]
	mov r1, lr, lsl #8
	orr r1, r1, lr, asr #8
	mov r1, r1, lsl #0x10
	cmp r4, r1, lsr #16
	moveq r12, #1
_020BEABC:
	cmp r12, #0
	beq _020BEAFC
	ldrh lr, [r0, #0xc]
	ldrh r4, [r0, #0xe]
	ldr r12, [r2, #0x1c]
	mov r1, lr, lsl #8
	mov r0, r4, lsl #8
	orr r2, r1, lr, asr #8
	orr r1, r0, r4, asr #8
	mov r0, r2, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r0, r0, r2, lsl #16
	cmp r12, r0
	moveq r3, #1
_020BEAFC:
	mov r0, r3
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end check_socket

	arm_func_start find_socket
find_socket: ; 0x020BEB04
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _020BEB64 ; =OSi_ThreadInfo
	mov r7, r0
	ldr r5, [r2, #8]
	mov r6, r1
	cmp r5, #0
	beq _020BEB5C
_020BEB20:
	ldr r4, [r5, #0xa4]
	cmp r4, #0
	ldrne r0, [r4]
	cmpne r0, #0
	beq _020BEB50
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl check_socket
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_020BEB50:
	ldr r5, [r5, #0x68]
	cmp r5, #0
	bne _020BEB20
_020BEB5C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BEB64: .word OSi_ThreadInfo
	arm_func_end find_socket

	arm_func_start parse_mss
parse_mss: ; 0x020BEB68
	stmfd sp!, {r3, lr}
	mov r2, #0x218
	strh r2, [r1, #0x3a]
	ldrb r2, [r0, #0xc]
	add r0, r0, #0x14
	and r3, r2, #0xf0
	mov r2, r3, asr #1
	add r2, r3, r2, lsr #30
	mov r2, r2, asr #2
	sub r2, r2, #0x14
	cmp r2, #0
	sub lr, r2, #1
	ldmlefd sp!, {r3, pc}
	mov r3, #1
_020BEBA0:
	ldrb r2, [r0], #1
	cmp r2, #4
	addls pc, pc, r2, lsl #2
	b _020BEC1C
_020BEBB0: ; jump table
	b _020BEBC4 ; case 0
	b _020BEC3C ; case 1
	b _020BEBC8 ; case 2
	b _020BEC1C ; case 3
	b _020BEBF8 ; case 4
_020BEBC4:
	ldmfd sp!, {r3, pc}
_020BEBC8:
	cmp lr, #2
	ldmlefd sp!, {r3, pc}
	ldrb r2, [r0]
	cmp r2, #4
	ldmnefd sp!, {r3, pc}
	ldrb r12, [r0, #1]
	ldrb r2, [r0, #2]
	add r0, r0, #3
	sub lr, lr, #3
	orr r2, r2, r12, lsl #8
	strh r2, [r1, #0x3a]
	b _020BEC3C
_020BEBF8:
	cmp lr, #0
	ldmlefd sp!, {r3, pc}
	ldrb r2, [r0]
	cmp r2, #2
	ldmnefd sp!, {r3, pc}
	strb r3, [r1, #0x33]
	add r0, r0, #1
	sub lr, lr, #1
	b _020BEC3C
_020BEC1C:
	cmp lr, #0
	ldmlefd sp!, {r3, pc}
	ldrb r2, [r0]
	cmp r2, #2
	ldmlofd sp!, {r3, pc}
	sub r2, r2, #1
	sub lr, lr, r2
	add r0, r0, r2
_020BEC3C:
	cmp lr, #0
	sub lr, lr, #1
	bgt _020BEBA0
	ldmfd sp!, {r3, pc}
	arm_func_end parse_mss

	arm_func_start no_need_inq
no_need_inq: ; 0x020BEC4C
	stmfd sp!, {r3, lr}
	bl get_targetip
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl inq_arpcache
	ldmfd sp!, {r3, pc}
	arm_func_end no_need_inq

	arm_func_start _tcp_send_handshake
_tcp_send_handshake: ; 0x020BEC68
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x1c]
	mov r4, r1
	bl no_need_inq
	cmp r0, #0
	ldreq r0, _020BECBC ; =OSi_ThreadInfo
	ldreq r1, _020BECC0 ; =tcpip_thread
	ldreq r0, [r0, #4]
	cmpeq r0, r1
	beq _020BECAC
	mov r0, #0
	mov r1, r0
	mov r2, r5
	mov r3, r4
	bl _send_tcp
	ldmfd sp!, {r3, r4, r5, pc}
_020BECAC:
	ldr r0, [r5, #0x1c]
	bl get_targetip
	bl send_arprequest
	ldmfd sp!, {r3, r4, r5, pc}
_020BECBC: .word OSi_ThreadInfo
_020BECC0: .word tcpip_thread
	arm_func_end _tcp_send_handshake

	arm_func_start _tcp_send_ack
_tcp_send_ack: ; 0x020BECC4
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #2
	beq _020BED40
	ldr r2, [r4, #0x28]
	ldr r0, [r4, #0x24]
	cmp r2, r0
	bne _020BED00
	ldr r2, [r4, #0x48]
	ldr r0, [r4, #0x50]
	ldrh r3, [r4, #0x30]
	sub r0, r2, r0
	mov r0, r0, lsl #0x10
	cmp r3, r0, lsr #16
	ldmeqfd sp!, {r4, pc}
_020BED00:
	cmp r1, #1
	beq _020BED40
	ldrb r0, [r4, #0x32]
	add r1, r0, #1
	and r0, r1, #0xff
	strb r1, [r4, #0x32]
	cmp r0, #2
	bhs _020BED40
	bl OS_GetTick
	ldr r2, [r4, #0x2c]
	ldr r1, _020BED50 ; =0x0001991B
	sub r0, r0, r2
	cmp r0, r1
	bhs _020BED40
	bl dacktimer_reschedule
	ldmfd sp!, {r4, pc}
_020BED40:
	mov r0, r4
	mov r1, #0x10
	bl _tcp_send_handshake
	ldmfd sp!, {r4, pc}
_020BED50: .word 0x0001991B
	arm_func_end _tcp_send_ack

	arm_func_start _tcp_send_finack
_tcp_send_finack: ; 0x020BED54
	ldr r12, _020BED60 ; =_tcp_send_handshake
	mov r1, #0x11
	bx r12
_020BED60: .word _tcp_send_handshake
	arm_func_end _tcp_send_finack

	arm_func_start _tcp_send_rst
_tcp_send_rst: ; 0x020BED64
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r5, _020BEE7C ; =0x020E6F58
	mov r4, #0
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r0, r5
	mov r1, r4
	mov r2, #0xa0
	bl MI_CpuFill8
	ldrh r1, [r7, #2]
	mov r0, r1, lsl #8
	orr r0, r0, r1, asr #8
	strh r0, [r5, #0xa]
	ldrh r1, [r7]
	mov r0, r1, lsl #8
	orr r0, r0, r1, asr #8
	strh r0, [r5, #0x18]
	ldrh r3, [r8, #0xe]
	ldrh r2, [r8, #0xc]
	mov r0, r3, lsl #8
	mov r1, r2, lsl #8
	orr r2, r1, r2, asr #8
	orr r1, r0, r3, asr #8
	mov r0, r2, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r0, r0, r2, lsl #16
	str r0, [r5, #0x1c]
	ldrb r0, [r7, #0xd]
	tst r0, #0x10
	beq _020BEE28
	ldrh r4, [r7, #0xa]
	ldrh r3, [r7, #8]
	mov r0, r5
	mov r1, r4, lsl #8
	mov r2, r3, lsl #8
	orr r3, r2, r3, asr #8
	orr r2, r1, r4, asr #8
	mov r1, r3, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r1, r2, lsr #0x10
	orr r2, r1, r3, lsl #16
	mov r1, #4
	str r2, [r5, #0x34]
	bl _tcp_send_handshake
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BEE28:
	str r4, [r5, #0x34]
	ldrh r2, [r7, #4]
	ldrh r3, [r7, #6]
	tst r0, #3
	mov r1, r2, lsl #8
	mov r0, r3, lsl #8
	orr r2, r1, r2, asr #8
	orr r1, r0, r3, asr #8
	mov r0, r2, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r0, r0, r2, lsl #16
	add r0, r6, r0
	str r0, [r5, #0x24]
	addne r0, r0, #1
	strne r0, [r5, #0x24]
	mov r0, r5
	mov r1, #0x14
	bl _tcp_send_handshake
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BEE7C: .word ov15_020E6F58
	arm_func_end _tcp_send_rst

	arm_func_start dt_syn_LISTEN
dt_syn_LISTEN: ; 0x020BEE80
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r2
	mov r2, #3
	mov r6, r0
	mov r5, r1
	strb r2, [r4, #8]
	bl OS_GetTick
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	str r0, [r4, #0x10]
	ldrh r12, [r6, #0x12]
	ldrh r3, [r6, #0x10]
	mov r0, r5
	mov r1, r12, lsl #8
	mov r2, r3, lsl #8
	orr r3, r2, r3, asr #8
	orr r2, r1, r12, asr #8
	mov r1, r3, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r1, r2, lsr #0x10
	orr r1, r1, r3, lsl #16
	str r1, [r4, #0x14]
	ldrh r3, [r5]
	mov r1, r4
	mov r2, r3, lsl #8
	orr r2, r2, r3, asr #8
	strh r2, [r4, #0x18]
	ldrh r12, [r6, #0xe]
	ldrh r6, [r6, #0xc]
	mov r2, r12, lsl #8
	mov r3, r6, lsl #8
	orr r6, r3, r6, asr #8
	orr r3, r2, r12, asr #8
	mov r2, r6, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r6, r2, lsr #0x10
	mov r2, r3, lsr #0x10
	orr r2, r2, r6, lsl #16
	str r2, [r4, #0x1c]
	ldrh r6, [r5, #6]
	ldrh r5, [r5, #4]
	mov r2, r6, lsl #8
	mov r3, r5, lsl #8
	orr r5, r3, r5, asr #8
	orr r3, r2, r6, asr #8
	mov r2, r5, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r5, r2, lsr #0x10
	mov r2, r3, lsr #0x10
	orr r2, r2, r5, lsl #16
	add r2, r2, #1
	str r2, [r4, #0x24]
	bl parse_mss
	mov r0, r4
	mov r1, #0x12
	bl _tcp_send_handshake
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end dt_syn_LISTEN

	arm_func_start find_specific_socket
find_specific_socket: ; 0x020BEF68
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl find_socket
	movs r2, r0
	beq _020BEFD8
	ldrb r0, [r2, #8]
	cmp r0, #1
	bne _020BEFA0
	mov r0, r6
	mov r1, r5
_020BEF98:
	bl dt_syn_LISTEN
	b _020BEFD0
_020BEFA0:
	cmp r0, #3
	bne _020BEFC0
	ldr r1, [r2, #0x34]
	mov r0, r6
	sub r3, r1, #1
	mov r1, r5
	str r3, [r2, #0x34]
	b _020BEF98
_020BEFC0:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl _tcp_send_rst
_020BEFD0:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020BEFD8:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end find_specific_socket

	arm_func_start dt_syn
dt_syn: ; 0x020BEFE0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	ldrh r0, [r4, #0x12]
	ldrh r8, [r4, #0x10]
	ldrh r7, [r4, #0xe]
	ldrh r6, [r4, #0xc]
	mov r12, r8, lsl #8
	orr r12, r12, r8, asr #8
	mov r5, r6, lsl #8
	mov r12, r12, lsl #0x10
	mov lr, r7, lsl #8
	orr r6, r5, r6, asr #8
	mov r3, r0, lsl #8
	orr r5, lr, r7, asr #8
	orr lr, r3, r0, asr #8
	mov r0, r6, lsl #0x10
	mov r3, r5, lsl #0x10
	mov r5, r0, lsr #0x10
	mov r0, r3, lsr #0x10
	mov lr, lr, lsl #0x10
	orr r0, r0, r5, lsl #16
	mov r12, r12, lsr #0x10
	mov r3, lr, lsr #0x10
	mov r6, r1
	orr r1, r3, r12, lsl #16
	mov r5, r2
	bl valid_IP
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl find_specific_socket
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	mov r1, r6
	bl check_listener
	movs r2, r0
	beq _020BF090
	mov r0, r4
	mov r1, r6
	bl dt_syn_LISTEN
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BF090:
	bl OS_YieldThread
	mov r0, r4
	mov r1, r6
	bl check_listener
	movs r2, r0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	mov r1, r6
	bl dt_syn_LISTEN
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end dt_syn

	arm_func_start dt_synack
dt_synack: ; 0x020BF0B8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r5, r1
	mov r6, r2
	bl find_socket
	movs r4, r0
	beq _020BF0E0
	ldrb r0, [r4, #8]
	cmp r0, #2
	beq _020BF0F4
_020BF0E0:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl _tcp_send_rst
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BF0F4:
	bl OS_YieldThread
	ldrh r12, [r5, #6]
	ldrh r3, [r5, #4]
	mov r0, r5
	mov r1, r12, lsl #8
	mov r2, r3, lsl #8
	orr r3, r2, r3, asr #8
	orr r2, r1, r12, asr #8
	mov r1, r3, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r1, r2, lsr #0x10
	orr r1, r1, r3, lsl #16
	add r1, r1, #1
	str r1, [r4, #0x24]
	ldrh lr, [r5, #0xa]
	ldrh r12, [r5, #8]
	mov r1, r4
	mov r2, lr, lsl #8
	mov r3, r12, lsl #8
	orr r12, r3, r12, asr #8
	orr r3, r2, lr, asr #8
	mov r2, r12, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r12, r2, lsr #0x10
	mov r2, r3, lsr #0x10
	orr r2, r2, r12, lsl #16
	str r2, [r4, #0x3c]
	ldrh r3, [r5, #0xe]
	mov r2, r3, lsl #8
	orr r2, r2, r3, asr #8
	strh r2, [r4, #0x38]
	bl parse_mss
	mov r0, r4
	mov r1, #2
	bl _tcp_send_ack
	mov r0, #4
	strb r0, [r4, #8]
	ldr r0, [r4, #4]
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4]
	bl OS_WakeupThreadDirect
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end dt_synack

	arm_func_start mark_rwin_chunk
mark_rwin_chunk: ; 0x020BF1AC
	stmfd sp!, {r4, lr}
	mov lr, #0
	mov r12, lr
	mov r2, #0xc
	b _020BF1D0
_020BF1C0:
	ldr r3, [r4, #0x78]
	add r12, r12, #1
	cmp lr, r3
	movlo lr, r3
_020BF1D0:
	cmp r12, #3
	bge _020BF1E8
	mla r4, r12, r2, r0
	ldr r3, [r4, #0x70]
	cmp r3, #0
	bne _020BF1C0
_020BF1E8:
	mov r2, #0xc
	mla r0, r1, r2, r0
	add r1, lr, #1
	str r1, [r0, #0x78]
	ldmfd sp!, {r4, pc}
	arm_func_end mark_rwin_chunk

	arm_func_start merge_rwin_chunks
merge_rwin_chunks: ; 0x020BF1FC
	stmfd sp!, {r4, lr}
	mov r4, r0
_020BF204:
	ldr r2, [r4, #0x70]
	cmp r2, #0
	beq _020BF248
	ldr r12, [r4, #0x50]
	cmp r12, r2
	blo _020BF248
	ldr r0, [r4, #0x74]
	mov r1, #0
	add r2, r2, r0
	ldr r3, [r4, #0x24]
	sub r0, r2, r12
	add r3, r3, r0
	mov r0, r4
	str r3, [r4, #0x24]
	str r2, [r4, #0x50]
	str r1, [r4, #0x70]
	bl pull_rwin_chunks
_020BF248:
	mov lr, #0
	mov r0, #0xc
_020BF250:
	mla r12, lr, r0, r4
	ldr r3, [r12, #0x70]
	cmp r3, #0
	ldrne r2, [r12, #0x7c]
	cmpne r2, #0
	beq _020BF29C
	ldr r1, [r12, #0x74]
	add r1, r3, r1
	cmp r1, r2
	blo _020BF29C
	ldr r1, [r12, #0x80]
	mov r0, r4
	add r1, r2, r1
	sub r1, r1, r3
	str r1, [r12, #0x74]
	mov r1, #0
	str r1, [r12, #0x7c]
	bl pull_rwin_chunks
	b _020BF204
_020BF29C:
	add lr, lr, #1
	cmp lr, #3
	blt _020BF250
	ldmfd sp!, {r4, pc}
	arm_func_end merge_rwin_chunks

	arm_func_start pull_rwin_chunks
pull_rwin_chunks: ; 0x020BF2AC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #0
	mov r6, r0
	mov r12, r5
	mov r3, #0xc
_020BF2C0:
	mla r4, r5, r3, r6
	ldr r0, [r4, #0x70]
	add r5, r5, #1
	cmp r0, #0
	addeq r0, r4, #0x7c
	addeq lr, r4, #0x70
	ldmeqia r0, {r0, r1, r2}
	stmeqia lr, {r0, r1, r2}
	streq r12, [r4, #0x7c]
	cmp r5, #3
	blt _020BF2C0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end pull_rwin_chunks

	arm_func_start push_rwin_chunks
push_rwin_chunks: ; 0x020BF2F0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #2
	mov lr, #2
	bgt _020BF32C
	mov r3, #0xc
_020BF30C:
	mla r1, lr, r3, r5
	add r0, r1, #0x70
	sub lr, lr, #1
	add r12, r1, #0x7c
	ldmia r0, {r0, r1, r2}
	stmia r12, {r0, r1, r2}
	cmp lr, r4
	bge _020BF30C
_020BF32C:
	mov r0, #0xc
	mla r0, r4, r0, r5
	mov r1, #0
	str r1, [r0, #0x70]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end push_rwin_chunks

	arm_func_start dt_ack
dt_ack: ; 0x020BF340
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r5, r1
	mov r4, r2
	mov r7, #0
	bl find_socket
	movs r6, r0
	bne _020BF374
	mov r0, r10
	mov r1, r5
	mov r2, r4
	bl _tcp_send_rst
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF374:
	ldrh r8, [r5, #0xa]
	ldrh r3, [r5, #8]
	ldr r2, [r6, #0x3c]
	mov r0, r8, lsl #8
	mov r1, r3, lsl #8
	orr r3, r1, r3, asr #8
	orr r1, r0, r8, asr #8
	mov r0, r3, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r3, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r1, r0, r3, lsl #16
	sub r0, r1, r2
	ldrb r8, [r5, #0xd]
	cmp r0, #0
	strgt r1, [r6, #0x3c]
	ldrh r3, [r5, #6]
	ldrh r2, [r5, #4]
	mov r0, r3, lsl #8
	mov r1, r2, lsl #8
	orr r2, r1, r2, asr #8
	orr r1, r0, r3, asr #8
	mov r0, r2, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r9, r0, r2, lsl #16
	bl OS_DisableInterrupts
	ldrb r1, [r6, #8]
	str r0, [sp]
	cmp r1, #4
	bne _020BF5A0
	ldr r2, [r6, #0x24]
	cmp r2, r9
	beq _020BF5A0
	ldr r1, [r6, #0x50]
	add r0, r1, r9
	sub r7, r0, r2
	cmp r1, r7
	ldrlo r0, [r6, #0x48]
	cmplo r7, r0
	bhs _020BF588
	sub r0, r0, r7
	cmp r4, r0
	movhi r4, r0
	cmp r4, #0
	beq _020BF588
	add r9, r7, r4
	mov r8, #0
_020BF438:
	mov r0, #0xc
	mul r11, r8, r0
	add r10, r6, r11
_020BF444:
	ldr r2, [r10, #0x70]
	cmp r2, #0
	bne _020BF490
	ldrb r0, [r5, #0xc]
	ldr r1, [r6, #0x4c]
	mov r2, r4
	and r0, r0, #0xf0
	add r0, r5, r0, lsr #2
	add r1, r1, r7
	bl MI_CpuCopy
	add r2, r6, r11
	str r7, [r2, #0x70]
	mov r0, r6
	mov r1, r8
	str r4, [r2, #0x74]
_020BF480:
	bl mark_rwin_chunk
	mov r0, r6
	bl merge_rwin_chunks
	b _020BF588
_020BF490:
	ldr r0, [r10, #0x74]
	cmp r7, r2
	add r1, r2, r0
	bhs _020BF4F4
	cmp r2, r9
	bhi _020BF4F4
	ldrb r0, [r5, #0xc]
	add r4, r6, #0x70
	ldr r1, [r6, #0x4c]
	ldr r2, [r4, r11]
	and r0, r0, #0xf0
	add r0, r5, r0, lsr #2
	add r1, r1, r7
	sub r2, r2, r7
	bl MI_CpuCopy
	add r2, r6, #0x74
	ldr r0, [r4, r11]
	ldr r1, [r2, r11]
	sub r0, r0, r7
	add r0, r1, r0
	str r0, [r2, r11]
	mov r0, r6
	mov r1, r8
	str r7, [r4, r11]
	b _020BF480
_020BF4F4:
	cmp r7, r1
	bhi _020BF554
	cmp r1, r9
	bhs _020BF554
	ldrb r0, [r5, #0xc]
	ldr r3, [r6, #0x4c]
	sub r4, r9, r1
	and r0, r0, #0xf0
	add r0, r5, r0, lsr #2
	add r0, r0, r1
	mov r2, r4
	sub r0, r0, r7
	add r1, r3, r1
	bl MI_CpuCopy
	add r2, r6, #0x74
	ldr r1, [r2, r11]
	mov r0, r6
	add r1, r1, r4
	str r1, [r2, r11]
	bl merge_rwin_chunks
	mov r0, r6
	mov r1, r8
	bl mark_rwin_chunk
	b _020BF588
_020BF554:
	cmp r2, r7
	bhi _020BF564
	cmp r9, r1
	bls _020BF588
_020BF564:
	cmp r7, r2
	bhs _020BF57C
	mov r0, r6
	mov r1, r8
	bl push_rwin_chunks
	b _020BF444
_020BF57C:
	add r8, r8, #1
	cmp r8, #4
	blt _020BF438
_020BF588:
	ldr r0, [sp]
	bl OS_RestoreInterrupts
	mov r0, r6
	mov r1, #2
	bl _tcp_send_ack
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF5A0:
	ldrh r1, [r5, #0xe]
	mov r0, r1, lsl #8
	orr r0, r0, r1, asr #8
	strh r0, [r6, #0x38]
	ldrb r0, [r6, #8]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _020BF834
_020BF5C0: ; jump table
	b _020BF5E8 ; case 0
	b _020BF834 ; case 1
	b _020BF5E8 ; case 2
	b _020BF604 ; case 3
	b _020BF638 ; case 4
	b _020BF834 ; case 5
	b _020BF818 ; case 6
	b _020BF7A8 ; case 7
	b _020BF7A8 ; case 8
	b _020BF818 ; case 9
_020BF5E8:
	ldr r0, [sp]
	bl OS_RestoreInterrupts
	mov r0, r10
	mov r1, r5
	mov r2, r4
	bl _tcp_send_rst
	b _020BF858
_020BF604:
	mov r0, #4
	strb r0, [r6, #8]
	ldr r0, [r6, #4]
	cmp r0, #1
	bne _020BF624
	str r7, [r6, #4]
	ldr r0, [r6]
	bl OS_WakeupThreadDirect
_020BF624:
	cmp r4, #0
	bne _020BF638
	ldr r0, [sp]
	bl OS_RestoreInterrupts
	b _020BF858
_020BF638:
	ldr r0, [r6, #0x40]
	add r0, r0, #1
	str r0, [r6, #0x40]
	ldr r1, [r6, #0x50]
	ldr r0, [r6, #0x48]
	sub r0, r0, r1
	cmp r4, r0
	movhi r9, #0
	movhi r4, r0
	movls r9, #1
	cmp r4, #0
	beq _020BF738
	ldr r2, [r6, #0x70]
	cmp r2, #0
	beq _020BF6E0
	add r0, r1, r4
	cmp r2, r0
	bhi _020BF6E0
	tst r8, #1
	ldrb r0, [r5, #0xc]
	ldr r3, [r6, #0x4c]
	bne _020BF6BC
	and r0, r0, #0xf0
	sub r2, r2, r1
	add r0, r5, r0, lsr #2
	add r1, r3, r1
	bl MI_CpuCopy
	ldr r2, [r6, #0x70]
	ldr r1, [r6, #0x74]
	ldr r0, [r6, #0x50]
	add r1, r2, r1
	sub r4, r1, r0
	b _020BF6D0
_020BF6BC:
	and r0, r0, #0xf0
	mov r2, r4
	add r0, r5, r0, lsr #2
	add r1, r3, r1
	bl MI_CpuCopy
_020BF6D0:
	mov r0, r6
	str r7, [r6, #0x70]
	bl pull_rwin_chunks
	b _020BF6FC
_020BF6E0:
	ldrb r0, [r5, #0xc]
	ldr r3, [r6, #0x4c]
	mov r2, r4
	and r0, r0, #0xf0
	add r0, r5, r0, lsr #2
	add r1, r3, r1
	bl MI_CpuCopy
_020BF6FC:
	ldr r1, [r6, #0x50]
	mov r0, r6
	add r1, r1, r4
	str r1, [r6, #0x50]
	ldr r1, [r6, #0x24]
	mov r5, #0
	add r1, r1, r4
	str r1, [r6, #0x24]
	bl merge_rwin_chunks
	ldr r0, [r6, #4]
	cmp r0, #2
	bne _020BF738
	str r5, [r6, #4]
	ldr r0, [r6]
	bl OS_WakeupThreadDirect
_020BF738:
	cmp r9, #0
	beq _020BF78C
	tst r8, #1
	beq _020BF78C
	ldr r1, [r6, #0x24]
	ldr r0, [sp]
	add r1, r1, #1
	str r1, [r6, #0x24]
	mov r1, #6
	strb r1, [r6, #8]
	bl OS_RestoreInterrupts
	mov r0, r6
	bl _tcp_send_finack
	cmp r4, #0
	ldreq r0, [r6, #4]
	cmpeq r0, #2
	bne _020BF858
_020BF77C:
	str r7, [r6, #4]
	ldr r0, [r6]
	bl OS_WakeupThreadDirect
	b _020BF858
_020BF78C:
	ldr r0, [sp]
	bl OS_RestoreInterrupts
	cmp r4, #0
	beq _020BF858
	mov r0, r6
	mov r1, #0
	b _020BF854
_020BF7A8:
	tst r8, #1
	beq _020BF7E8
	ldr r1, [r6, #0x24]
	add r0, r4, #1
	add r1, r1, r0
	ldr r0, [sp]
	str r1, [r6, #0x24]
	bl OS_RestoreInterrupts
	mov r0, r6
	mov r1, #2
	bl _tcp_send_ack
	strb r7, [r6, #8]
	ldr r0, [r6, #4]
	cmp r0, #2
	bne _020BF858
	b _020BF77C
_020BF7E8:
	ldr r0, [sp]
	mov r1, #8
	strb r1, [r6, #8]
	bl OS_RestoreInterrupts
	cmp r4, #0
	beq _020BF858
	ldr r1, [r6, #0x24]
	mov r0, r6
	add r2, r1, r4
	mov r1, #2
	str r2, [r6, #0x24]
	b _020BF854
_020BF818:
	ldr r0, [sp]
	strb r7, [r6, #8]
	bl OS_RestoreInterrupts
	ldr r0, [r6, #4]
	cmp r0, #2
	bne _020BF858
	b _020BF77C
_020BF834:
	ldr r0, [sp]
	bl OS_RestoreInterrupts
	tst r8, #1
	ldrne r0, [r6, #0x24]
	mov r1, #2
	addne r0, r0, #1
	strne r0, [r6, #0x24]
	mov r0, r6
_020BF854:
	bl _tcp_send_ack
_020BF858:
	bl OS_YieldThread
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end dt_ack

	arm_func_start dt_fin
dt_fin: ; 0x020BF860
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl find_socket
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl OS_DisableInterrupts
	ldrb r1, [r4, #8]
	cmp r1, #4
	beq _020BF908
	cmp r1, #7
	beq _020BF8A0
	cmp r1, #8
	beq _020BF8C8
	b _020BF92C
_020BF8A0:
	ldr r2, [r4, #0x24]
	mov r1, #9
	add r2, r2, #1
	str r2, [r4, #0x24]
	strb r1, [r4, #8]
	bl OS_RestoreInterrupts
	mov r0, r4
	mov r1, #2
	bl _tcp_send_ack
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BF8C8:
	ldr r1, [r4, #0x24]
	add r1, r1, #1
	str r1, [r4, #0x24]
	bl OS_RestoreInterrupts
	mov r0, r4
	mov r1, #2
	bl _tcp_send_ack
	mov r1, #0
	strb r1, [r4, #8]
	ldr r0, [r4, #4]
	cmp r0, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	str r1, [r4, #4]
	ldr r0, [r4]
	bl OS_WakeupThreadDirect
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BF908:
	ldr r2, [r4, #0x24]
	mov r1, #6
	add r2, r2, #1
	str r2, [r4, #0x24]
	strb r1, [r4, #8]
	bl OS_RestoreInterrupts
	mov r0, r4
	bl _tcp_send_finack
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BF92C:
	bl OS_RestoreInterrupts
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl _tcp_send_rst
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end dt_fin

	arm_func_start dt_rst
dt_rst: ; 0x020BF944
	stmfd sp!, {r4, lr}
	bl find_socket
	movs r4, r0
	ldmeqfd sp!, {r4, pc}
	bl OS_YieldThread
	mov r1, #0
	strb r1, [r4, #8]
	ldr r0, [r4, #4]
	sub r0, r0, #1
	cmp r0, #1
	ldmhifd sp!, {r4, pc}
	str r1, [r4, #4]
	ldr r0, [r4]
	bl OS_WakeupThreadDirect
	ldmfd sp!, {r4, pc}
	arm_func_end dt_rst

	arm_func_start dispatch_tcp
dispatch_tcp: ; 0x020BF980
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r2
	mov r6, r0
	mov r5, r1
	cmp r4, #0x14
	ldmlofd sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0xc]
	and r0, r0, #0xf0
	cmp r0, #0x50
	ldmltfd sp!, {r4, r5, r6, pc}
	cmp r4, r0, lsr #2
	ldmlofd sp!, {r4, r5, r6, pc}
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, #6
	bl check_tcpudpsum
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0xc]
	ldrb r2, [r5, #0xd]
	and r1, r0, #0xf0
	and r0, r2, #0x17
	cmp r0, #0x10
	sub r4, r4, r1, lsr #2
	bgt _020BFA10
	cmp r0, #0x10
	bge _020BFA68
	cmp r0, #2
	bgt _020BFA90
	cmp r0, #1
	blt _020BFA90
	beq _020BFA7C
	cmp r0, #2
	beq _020BFA30
	b _020BFA90
_020BFA10:
	cmp r0, #0x12
	bgt _020BFA90
	cmp r0, #0x11
	blt _020BFA90
	beq _020BFA68
	cmp r0, #0x12
	beq _020BFA4C
	b _020BFA90
_020BFA30:
	tst r2, #0x28
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl dt_syn
	ldmfd sp!, {r4, r5, r6, pc}
_020BFA4C:
	tst r2, #0x28
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl dt_synack
	ldmfd sp!, {r4, r5, r6, pc}
_020BFA68:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl dt_ack
	ldmfd sp!, {r4, r5, r6, pc}
_020BFA7C:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl dt_fin
	ldmfd sp!, {r4, r5, r6, pc}
_020BFA90:
	tst r2, #4
	mov r0, r6
	mov r1, r5
	beq _020BFAA8
	bl dt_rst
	ldmfd sp!, {r4, r5, r6, pc}
_020BFAA8:
	mov r2, r4
	bl _tcp_send_rst
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end dispatch_tcp

	arm_func_start dispatch_udp
dispatch_udp: ; 0x020BFAB4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r2
	mov r8, r0
	mov r7, r1
	cmp r6, #8
	ldmlofd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrh r0, [r7, #6]
	cmp r0, #0
	beq _020BFAF4
	mov r0, r7
	mov r1, r6
	mov r2, r8
	mov r3, #0x11
	bl check_tcpudpsum
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFAF4:
	bl OS_DisableInterrupts
	ldr r1, _020BFCC4 ; =OSi_ThreadInfo
	mov r5, r0
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _020BFCB8
	mvn r12, #0
_020BFB10:
	ldr r4, [r1, #0xa4]
	cmp r4, #0
	ldrne r0, [r4]
	cmpne r0, #0
	beq _020BFCAC
	ldrb r0, [r4, #8]
	cmp r0, #0xa
	bne _020BFCAC
	ldrh r3, [r7, #2]
	ldrh r2, [r4, #0xa]
	mov r0, r3, lsl #8
	orr r0, r0, r3, asr #8
	mov r0, r0, lsl #0x10
	cmp r2, r0, lsr #16
	bne _020BFCAC
	ldrh r3, [r4, #0x18]
	cmp r3, #0
	beq _020BFB70
	ldrh r2, [r7]
	mov r0, r2, lsl #8
	orr r0, r0, r2, asr #8
	mov r0, r0, lsl #0x10
	cmp r3, r0, lsr #16
	bne _020BFCAC
_020BFB70:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	cmpne r0, r12
	beq _020BFBB4
	ldrh r9, [r8, #0xe]
	ldrh lr, [r8, #0xc]
	mov r2, r9, lsl #8
	mov r3, lr, lsl #8
	orr lr, r3, lr, asr #8
	orr r3, r2, r9, asr #8
	mov r2, lr, lsl #0x10
	mov r3, r3, lsl #0x10
	mov lr, r2, lsr #0x10
	mov r2, r3, lsr #0x10
	orr r2, r2, lr, lsl #16
	cmp r0, r2
	bne _020BFCAC
_020BFBB4:
	ldrh r3, [r8, #0x12]
	ldrh r2, [r8, #0x10]
	mov r0, r3, lsl #8
	mov r1, r2, lsl #8
	orr r2, r1, r2, asr #8
	orr r1, r0, r3, asr #8
	mov r0, r2, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r0, r0, r2, lsl #16
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _020BFC30
	ldrh r3, [r8, #0xe]
	ldrh r2, [r8, #0xc]
	mov r0, r3, lsl #8
	mov r1, r2, lsl #8
	orr r2, r1, r2, asr #8
	orr r1, r0, r3, asr #8
	mov r0, r2, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r0, r0, r2, lsl #16
	str r0, [r4, #0x1c]
	ldrh r1, [r7]
	mov r0, r1, lsl #8
	orr r0, r0, r1, asr #8
	strh r0, [r4, #0x18]
_020BFC30:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bne _020BFCB8
	ldr r1, [r4, #0x48]
	sub r0, r6, #8
	cmp r0, r1
	strhi r1, [r4, #0x50]
	strls r0, [r4, #0x50]
	ldr r1, [r4, #0x4c]
	ldr r2, [r4, #0x50]
	add r0, r7, #8
	bl MI_CpuCopy
	ldr r0, [r4, #4]
	cmp r0, #3
	bne _020BFC80
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4]
	bl OS_WakeupThreadDirect
	b _020BFCB8
_020BFC80:
	ldr r3, [r4, #0x44]
	cmp r3, #0
	beq _020BFCB8
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x50]
	mov r2, r4
	blx r3
	cmp r0, #0
	movne r0, #0
	strne r0, [r4, #0x50]
	b _020BFCB8
_020BFCAC:
	ldr r1, [r1, #0x68]
	cmp r1, #0
	bne _020BFB10
_020BFCB8:
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFCC4: .word OSi_ThreadInfo
	arm_func_end dispatch_udp

	arm_func_start check_frag
check_frag: ; 0x020BFCC8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r6, #0
	mov r10, r0
	str r6, [r1]
	ldrh r3, [r10, #6]
	str r1, [sp]
	ldr r2, _020BFF84 ; =0x00003FFF
	mov r1, r3, lsl #8
	orr r1, r1, r3, asr #8
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	str r1, [sp, #8]
	tst r1, r2
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r3, [r10, #0xe]
	ldrh r2, [r10, #0xc]
	ldrb r4, [r10]
	mov r0, r3, lsl #8
	mov r1, r2, lsl #8
	orr r2, r1, r2, asr #8
	orr r1, r0, r3, asr #8
	mov r3, r4, lsl #0x1c
	mov r0, r2, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r1, r1, lsr #0x10
	ldrh r4, [r10, #4]
	ldr r7, _020BFF88 ; =0x020E7538
	mov r0, r6
	mov r5, r3, lsr #0x1a
	orr r9, r1, r2, lsl #16
_020BFD4C:
	ldrh r2, [r7, #4]
	cmp r2, #0
	beq _020BFD70
	ldr r1, [r7]
	cmp r1, r9
	bne _020BFD70
	ldrh r1, [r7, #6]
	cmp r1, r4
	beq _020BFD8C
_020BFD70:
	add r0, r0, #1
	cmp r2, #0
	cmpeq r6, #0
	moveq r6, r7
	cmp r0, #8
	add r7, r7, #0x38
	blo _020BFD4C
_020BFD8C:
	ldrh r2, [r10, #2]
	cmp r0, #8
	ldr r1, _020BFF8C ; =0x00001FFF
	mov r0, r2, lsl #8
	orr r0, r0, r2, asr #8
	mov r0, r0, lsl #0x10
	rsb r0, r5, r0, lsr #16
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	and r11, r0, r1
	ldr r0, [sp, #4]
	add r8, r0, r11, lsl #3
	bne _020BFE48
	cmp r6, #0
	beq _020BFDD0
	cmp r8, #0x1000
	bls _020BFDDC
_020BFDD0:
	add sp, sp, #0xc
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BFDDC:
	ldr r1, _020BFF90 ; =wfailed
	add r0, r5, #0xe
	ldr r1, [r1, #0x14]
	add r0, r0, #0x1000
	mov r7, r6
	blx r1
	cmp r0, #0
	str r0, [r6, #0x34]
	addeq sp, sp, #0xc
	mov r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r9, [r6]
	strh r4, [r6, #6]
	strh r0, [r6, #8]
	bl OS_GetTick
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	str r0, [r6, #0x2c]
	ldr r1, [r6, #0x34]
	mov r0, r10
	add r1, r1, #0xe
	add r1, r1, r5
	str r1, [r6, #0x30]
	ldr r1, [r6, #0x34]
	mov r2, r5
	add r1, r1, #0xe
	bl MI_CpuCopy
_020BFE48:
	ldrh r0, [r7, #4]
	mov r6, #0
	cmp r0, #8
	beq _020BFE64
	cmp r8, #0x1000
	mov r4, r6
	bls _020BFE84
_020BFE64:
	ldr r1, _020BFF90 ; =wfailed
	strh r6, [r7, #4]
	ldr r0, [r7, #0x34]
	ldr r1, [r1, #0x44]
	blx r1
	add sp, sp, #0xc
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BFE84:
	ldr r0, [sp, #4]
	ldr r2, [sp, #4]
	add r1, r0, #7
	ldr r0, [sp, #8]
	add r3, r11, r1, lsr #3
	tst r0, #0x2000
	streqh r8, [r7, #0xa]
	streqh r3, [r7, #8]
	ldrh r1, [r7, #4]
	add r0, r10, r5
	add r1, r7, r1, lsl #1
	strh r11, [r1, #0xc]
	ldrh r1, [r7, #4]
	add r1, r7, r1, lsl #1
	strh r3, [r1, #0x1c]
	ldrh r1, [r7, #4]
	add r1, r1, #1
	strh r1, [r7, #4]
	ldr r1, [r7, #0x30]
	add r1, r1, r11, lsl #3
	bl MI_CpuCopy
	ldrh r3, [r7, #8]
	cmp r3, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r2, [r7, #4]
	mov r6, #0
	mov r5, r6
	cmp r2, #0
	bls _020BFF30
_020BFF00:
	add r1, r7, r5, lsl #1
	ldrh r0, [r1, #0xc]
	cmp r0, r6
	bhi _020BFF24
	ldrh r0, [r1, #0x1c]
	cmp r6, r0
	movlo r6, r0
	movlo r5, r4
	blo _020BFF28
_020BFF24:
	add r5, r5, #1
_020BFF28:
	cmp r5, r2
	blo _020BFF00
_020BFF30:
	cmp r6, r3
	addlo sp, sp, #0xc
	movlo r0, #0
	ldmlofd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r3, [r7, #0x34]
	ldrh r2, [r7, #0xa]
	ldrb r0, [r3, #0xe]
	mov r1, #1
	mov r0, r0, lsl #0x1c
	add r0, r2, r0, lsr #26
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r2, lsl #8
	orr r0, r0, r2, asr #8
	strh r0, [r3, #0x10]
	ldr r0, [sp]
	strh r4, [r7, #4]
	str r1, [r0]
	add r0, r3, #0xe
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BFF84: .word 0x00003FFF
_020BFF88: .word ov15_020E7538
_020BFF8C: .word 0x00001FFF
_020BFF90: .word wfailed
	arm_func_end check_frag

	arm_func_start dispatch_ip
dispatch_ip: ; 0x020BFF94
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldrh r7, [r4, #0xe]
	ldrh r6, [r4, #0xc]
	ldrh lr, [r4, #0x12]
	ldrh r5, [r4, #0x10]
	mov r2, r6, lsl #8
	mov r3, lr, lsl #8
	mov r12, r5, lsl #8
	mov r0, r7, lsl #8
	orr r5, r12, r5, asr #8
	orr lr, r3, lr, asr #8
	orr r3, r2, r6, asr #8
	orr r12, r0, r7, asr #8
	mov r0, r5, lsl #0x10
	mov r2, lr, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r12, r12, lsl #0x10
	mov lr, r0, lsr #0x10
	mov r0, r2, lsr #0x10
	mov r3, r3, lsr #0x10
	mov r2, r12, lsr #0x10
	orr r0, r0, lr, lsl #16
	orr r2, r2, r3, lsl #16
	cmp r0, r2
	beq _020C00D8
	cmp r1, #0x14
	ldmlofd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r2, [r4]
	and r12, r2, #0xf
	cmp r12, #5
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r3, [r4, #2]
	mov r2, r3, lsl #8
	orr r2, r2, r3, asr #8
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	cmp r2, r12, lsl #2
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, r2
	ldmlofd sp!, {r3, r4, r5, r6, r7, pc}
	bl ip_isme
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r4]
	mov r0, r4
	mov r1, r1, lsl #0x1c
	mov r1, r1, lsr #0x1a
	bl calc_checksum
	ldr r1, _020C0170 ; =0x0000FFFF
	cmp r0, r1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r12, [r4, #0x12]
	ldrh r3, [r4, #0x10]
	ldr r2, _020C0174 ; =wfailed
	mov r0, r12, lsl #8
	mov r1, r3, lsl #8
	orr r3, r1, r3, asr #8
	orr r1, r0, r12, asr #8
	mov r0, r3, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r3, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	ldr r1, [r2, #0x50]
	orr r0, r0, r3, lsl #16
	cmp r1, r0
	bne _020C00D8
	ldrh r12, [r4, #0xe]
	ldrh r3, [r4, #0xc]
	sub r0, r4, #8
	mov r1, r12, lsl #8
	mov r2, r3, lsl #8
	orr r3, r2, r3, asr #8
	orr r2, r1, r12, asr #8
	mov r1, r3, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r1, r2, lsr #0x10
	orr r1, r1, r3, lsl #16
	mov r2, #1
	bl reg_arpcache
_020C00D8:
	add r1, sp, #0
	mov r0, r4
	bl check_frag
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r2, [r4, #2]
	ldrb r3, [r4]
	ldrb r12, [r4, #9]
	mov r1, r2, lsl #8
	orr r1, r1, r2, asr #8
	mov r1, r1, lsl #0x10
	mov r3, r3, lsl #0x1c
	mov r2, r1, lsr #0x10
	cmp r12, #0x11
	add r1, r4, r3, lsr #26
	sub r2, r2, r3, lsr #26
	bne _020C0124
	bl dispatch_udp
	b _020C0150
_020C0124:
	ldr r3, _020C0174 ; =wfailed
	ldr r3, [r3, #0x50]
	cmp r3, #0
	beq _020C0150
	cmp r12, #1
	bne _020C0144
	bl dispatch_icmp
	b _020C0150
_020C0144:
	cmp r12, #6
	bne _020C0150
	bl dispatch_tcp
_020C0150:
	ldr r0, [sp]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _020C0174 ; =wfailed
	sub r0, r4, #0xe
	ldr r1, [r1, #0x44]
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C0170: .word 0x0000FFFF
_020C0174: .word wfailed
	arm_func_end dispatch_ip

	arm_func_start tcpip
tcpip: ; 0x020C0178
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _020C01E4 ; =0x00000806
	add r4, sp, #0
_020C0184:
	mov r0, r4
	bl receive_packet
	ldr r3, [sp]
	cmp r3, #0x22
	bls _020C01DC
	ldrh r2, [r0, #0xc]
	mov r1, r2, lsl #8
	orr r1, r1, r2, asr #8
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	cmp r1, #0x800
	beq _020C01C0
	cmp r1, r5
	beq _020C01D0
	b _020C01DC
_020C01C0:
	add r0, r0, #0xe
	sub r1, r3, #0xe
	bl dispatch_ip
	b _020C01DC
_020C01D0:
	add r0, r0, #0xe
	sub r1, r3, #0xe
	bl dispatch_arp
_020C01DC:
	bl throw_packet
	b _020C0184
_020C01E4: .word 0x00000806
	arm_func_end tcpip

	arm_func_start CPS_SocGetEport
CPS_SocGetEport: ; 0x020C01E8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r0, _020C0284 ; =OSi_ThreadInfo
	ldr r2, _020C0288 ; =wfailed
	ldr r0, [r0, #8]
	ldr r1, _020C028C ; =0x00001388
	mov r4, #0x400
	mov r3, #1
	mov r5, #0
_020C0208:
	ldrh r12, [r2, #6]
	mov r6, r5
	add r12, r12, #1
	strh r12, [r2, #6]
	ldrh r12, [r2, #6]
	cmp r12, #0x400
	blo _020C022C
	cmp r12, r1
	blo _020C0230
_020C022C:
	strh r4, [r2, #6]
_020C0230:
	mov r7, r0
	cmp r0, #0
	beq _020C0270
	ldrh r8, [r2, #6]
_020C0240:
	ldr lr, [r7, #0xa4]
	cmp lr, #0
	ldrne r12, [lr]
	cmpne r12, #0
	beq _020C0264
	ldrh r12, [lr, #0xa]
	cmp r12, r8
	moveq r6, r3
	beq _020C0270
_020C0264:
	ldr r7, [r7, #0x68]
	cmp r7, #0
	bne _020C0240
_020C0270:
	cmp r6, #0
	bne _020C0208
	ldr r0, _020C0288 ; =wfailed
	ldrh r0, [r0, #6]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C0284: .word OSi_ThreadInfo
_020C0288: .word wfailed
_020C028C: .word 0x00001388
	arm_func_end CPS_SocGetEport

	arm_func_start get_seqno
get_seqno: ; 0x020C0290
	stmfd sp!, {r3, lr}
	ldr r1, _020C02D0 ; =wfailed
	ldr r12, [r1, #0x80]
	ldr r0, [r1, #0x78]
	ldr r2, [r1, #0x7c]
	umull lr, r3, r12, r0
	mla r3, r12, r2, r3
	ldr r2, [r1, #0x84]
	ldr r12, [r1, #0x88]
	mla r3, r2, r0, r3
	ldr r0, [r1, #0x8c]
	adds r2, r12, lr
	str r2, [r1, #0x78]
	adc r0, r0, r3
	str r0, [r1, #0x7c]
	ldmfd sp!, {r3, pc}
_020C02D0: .word wfailed
	arm_func_end get_seqno

	arm_func_start CPS_SocRegister
CPS_SocRegister: ; 0x020C02D4
	ldr r1, _020C02E4 ; =OSi_ThreadInfo
	ldr r1, [r1, #4]
	str r0, [r1, #0xa4]
	bx lr
_020C02E4: .word OSi_ThreadInfo
	arm_func_end CPS_SocRegister

	arm_func_start CPS_SocUnRegister
CPS_SocUnRegister: ; 0x020C02E8
	ldr r0, _020C02FC ; =OSi_ThreadInfo
	mov r1, #0
	ldr r0, [r0, #4]
	str r1, [r0, #0xa4]
	bx lr
_020C02FC: .word OSi_ThreadInfo
	arm_func_end CPS_SocUnRegister

	arm_func_start CPS_SocDatagramMode
CPS_SocDatagramMode: ; 0x020C0300
	ldr r0, _020C0324 ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	ldr r1, [r0, #0xa4]
	cmp r1, #0
	movne r0, #0xa
	strneb r0, [r1, #8]
	movne r0, #0
	strne r0, [r1, #0x50]
	bx lr
_020C0324: .word OSi_ThreadInfo
	arm_func_end CPS_SocDatagramMode

	arm_func_start CPS_SocBind
CPS_SocBind: ; 0x020C0328
	stmfd sp!, {r4, lr}
	ldr r3, _020C037C ; =OSi_ThreadInfo
	ldr r3, [r3, #4]
	ldr r4, [r3, #0xa4]
	cmp r4, #0
	ldmeqfd sp!, {r4, pc}
	ldr r3, _020C0380 ; =0x7F000001
	cmp r2, r3
	ldreq r2, _020C0384 ; =wfailed
	ldreq r2, [r2, #0x50]
	cmp r0, #0
	strh r1, [r4, #0x1a]
	ldrh r1, [r4, #0x1a]
	strh r1, [r4, #0x18]
	str r2, [r4, #0x20]
	str r2, [r4, #0x1c]
	strneh r0, [r4, #0xa]
	ldmnefd sp!, {r4, pc}
	bl CPS_SocGetEport
	strh r0, [r4, #0xa]
	ldmfd sp!, {r4, pc}
_020C037C: .word OSi_ThreadInfo
_020C0380: .word 0x7F000001
_020C0384: .word wfailed
	arm_func_end CPS_SocBind

	arm_func_start CPS_SocUse
CPS_SocUse: ; 0x020C0388
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020C03D0 ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	ldr r5, [r0, #0xa4]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, #0
	str r0, [r5]
	strb r4, [r5, #8]
	mov r1, r4
	str r4, [r5, #0x50]
	add r0, r5, #0x70
	mov r2, #0x30
	bl MI_CpuFill8
	str r4, [r5, #0x6c]
	str r4, [r5, #0x44]
	strb r4, [r5, #0x33]
	ldmfd sp!, {r3, r4, r5, pc}
_020C03D0: .word OSi_ThreadInfo
	arm_func_end CPS_SocUse

	arm_func_start CPS_SocRelease
CPS_SocRelease: ; 0x020C03D4
	ldr r0, _020C03F0 ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	ldr r1, [r0, #0xa4]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1]
	bx lr
_020C03F0: .word OSi_ThreadInfo
	arm_func_end CPS_SocRelease

	arm_func_start CPS_SocDup
CPS_SocDup: ; 0x020C03F4
	ldr r1, _020C0408 ; =OSi_ThreadInfo
	ldr r1, [r1, #4]
	ldr r1, [r1, #0xa4]
	str r1, [r0, #0xa4]
	bx lr
_020C0408: .word OSi_ThreadInfo
	arm_func_end CPS_SocDup

	arm_func_start CPS_SetUdpCallback
CPS_SetUdpCallback: ; 0x020C040C
	ldr r1, _020C0424 ; =OSi_ThreadInfo
	ldr r1, [r1, #4]
	ldr r1, [r1, #0xa4]
	cmp r1, #0
	strne r0, [r1, #0x44]
	bx lr
_020C0424: .word OSi_ThreadInfo
	arm_func_end CPS_SetUdpCallback

	arm_func_start CPSi_TcpConnectRaw
CPSi_TcpConnectRaw: ; 0x020C0428
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	bl get_seqno
	mov r7, #0
	ldr r4, _020C04D4 ; =wfailed
	mov r8, r0
	mov r5, #1
	mov r11, r7
	mov r6, #2
_020C044C:
	str r8, [r10, #0x34]
	strb r6, [r10, #8]
	bl OS_GetTick
	mov r2, r0, lsr #0x10
	orr r2, r2, r1, lsl #16
	mov r0, r10
	mov r1, r6
	str r2, [r10, #0x10]
	bl _tcp_send_handshake
	bl OS_DisableInterrupts
	ldrb r1, [r10, #8]
	mov r9, r0
	cmp r1, #2
	bne _020C049C
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _020C049C
	mov r0, r11
	str r5, [r10, #4]
	bl OS_SleepThread
_020C049C:
	mov r0, r9
	bl OS_RestoreInterrupts
	ldrb r0, [r10, #8]
	cmp r0, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _020C04CC
	add r7, r7, #1
	cmp r7, #3
	blo _020C044C
_020C04CC:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C04D4: .word wfailed
	arm_func_end CPSi_TcpConnectRaw

	arm_func_start CPS_TcpConnect
CPS_TcpConnect: ; 0x020C04D8
	stmfd sp!, {r3, lr}
	ldr r0, _020C0514 ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	ldr r0, [r0, #0xa4]
	cmp r0, #0
	beq _020C050C
	ldrb r1, [r0, #9]
	cmp r1, #0
	beq _020C0504
	bl CPSi_SslConnect
	ldmfd sp!, {r3, pc}
_020C0504:
	bl CPSi_TcpConnectRaw
	ldmfd sp!, {r3, pc}
_020C050C:
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020C0514: .word OSi_ThreadInfo
	arm_func_end CPS_TcpConnect

	arm_func_start CPSi_TcpShutdownRaw
CPSi_TcpShutdownRaw: ; 0x020C0518
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_YieldThread
	bl OS_DisableInterrupts
	ldrb r2, [r4, #8]
	add r1, r2, #0xfd
	and r1, r1, #0xff
	cmp r1, #1
	bhi _020C0554
	mov r1, #7
	strb r1, [r4, #8]
	bl OS_RestoreInterrupts
	mov r0, r4
	bl _tcp_send_finack
	ldmfd sp!, {r4, pc}
_020C0554:
	cmp r2, #0
	beq _020C0570
	bl OS_RestoreInterrupts
	mov r0, r4
	mov r1, #2
	bl _tcp_send_ack
	ldmfd sp!, {r4, pc}
_020C0570:
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, pc}
	arm_func_end CPSi_TcpShutdownRaw

	arm_func_start CPS_TcpShutdown
CPS_TcpShutdown: ; 0x020C0578
	stmfd sp!, {r4, lr}
	ldr r0, _020C05B0 ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	ldr r4, [r0, #0xa4]
	cmp r4, #0
	ldmeqfd sp!, {r4, pc}
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _020C05A4
	mov r0, r4
	bl CPSi_SslShutdown
_020C05A4:
	mov r0, r4
	bl CPSi_TcpShutdownRaw
	ldmfd sp!, {r4, pc}
_020C05B0: .word OSi_ThreadInfo
	arm_func_end CPS_TcpShutdown

	arm_func_start CPS_TcpClose
CPS_TcpClose: ; 0x020C05B4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r0, _020C0634 ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	ldr r4, [r0, #0xa4]
	cmp r4, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _020C05E0
	mov r0, r4
	bl CPSi_SslClose
_020C05E0:
	bl OS_GetTick
	mov r6, r0, lsr #0x10
	orr r6, r6, r1, lsl #16
	ldr r5, _020C0638 ; =wfailed
	b _020C05F8
_020C05F4:
	bl OS_YieldThread__
_020C05F8:
	ldr r0, [r5, #0x18]
	blx r0
	cmp r0, #0
	ldrneb r0, [r4, #8]
	cmpne r0, #0
	beq _020C0628
	bl OS_GetTick
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	sub r0, r0, r6
	cmp r0, #0x27
	blt _020C05F4
_020C0628:
	mov r0, #0
	strb r0, [r4, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_020C0634: .word OSi_ThreadInfo
_020C0638: .word wfailed
	arm_func_end CPS_TcpClose

	arm_func_start udp_read_raw
udp_read_raw: ; 0x020C063C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r1
	mov r9, r0
	bl OS_DisableInterrupts
	ldr r6, [r8, #0x50]
	mov r7, r0
	cmp r6, #0
	bne _020C067C
	mov r5, #3
	mov r4, #0
_020C0664:
	mov r0, r4
	str r5, [r8, #4]
	bl OS_SleepThread
	ldr r6, [r8, #0x50]
	cmp r6, #0
	beq _020C0664
_020C067C:
	mov r0, r7
	bl OS_RestoreInterrupts
	str r6, [r9]
	ldr r0, [r8, #0x4c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end udp_read_raw

	arm_func_start CPSi_TcpReadRaw
CPSi_TcpReadRaw: ; 0x020C0690
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r1
	ldrb r1, [r4, #8]
	mov r5, r0
	cmp r1, #4
	bne _020C06B4
	mov r0, r4
	mov r1, #1
	bl _tcp_send_ack
_020C06B4:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	ldreqb r0, [r4, #8]
	cmpeq r0, #4
	bne _020C070C
	bl OS_DisableInterrupts
	mov r8, r0
	mov r7, #2
	mov r6, #0
	b _020C06E8
_020C06DC:
	mov r0, r6
	str r7, [r4, #4]
	bl OS_SleepThread
_020C06E8:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bne _020C0700
	ldrb r0, [r4, #8]
	cmp r0, #4
	beq _020C06DC
_020C0700:
	mov r0, r8
	bl OS_RestoreInterrupts
	b _020C0710
_020C070C:
	bl OS_YieldThread
_020C0710:
	ldr r0, [r4, #0x50]
	str r0, [r5]
	cmp r0, #0
	ldrne r0, [r4, #0x4c]
	moveq r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end CPSi_TcpReadRaw

	arm_func_start CPS_SocRead
CPS_SocRead: ; 0x020C0728
	stmfd sp!, {r3, lr}
	ldr r1, _020C0788 ; =OSi_ThreadInfo
	ldr r1, [r1, #4]
	ldr r1, [r1, #0xa4]
	cmp r1, #0
	beq _020C0778
	ldrb r2, [r1, #8]
	add r2, r2, #0xf6
	and r2, r2, #0xff
	cmp r2, #1
	bhi _020C075C
	bl udp_read_raw
	ldmfd sp!, {r3, pc}
_020C075C:
	ldrb r2, [r1, #9]
	cmp r2, #0
	beq _020C0770
	bl CPSi_SslRead
	ldmfd sp!, {r3, pc}
_020C0770:
	bl CPSi_TcpReadRaw
	ldmfd sp!, {r3, pc}
_020C0778:
	mov r1, #0
	str r1, [r0]
	mov r0, r1
	ldmfd sp!, {r3, pc}
_020C0788: .word OSi_ThreadInfo
	arm_func_end CPS_SocRead

	arm_func_start CPSi_SocConsumeRaw
CPSi_SocConsumeRaw: ; 0x020C078C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r1
	mov r9, r0
	mov r8, #0
	bl OS_DisableInterrupts
	ldr r6, [r7, #0x50]
	ldr r1, [r7, #0x48]
	mov r4, r0
	cmp r6, r1
	mov r5, r8
	bne _020C07C0
	cmp r9, #0
	movne r5, #1
_020C07C0:
	cmp r9, r6
	strhs r8, [r7, #0x50]
	bhs _020C07E0
	ldr r1, [r7, #0x4c]
	sub r2, r6, r9
	add r0, r1, r9
	str r2, [r7, #0x50]
	bl MI_CpuMove
_020C07E0:
	ldr r2, [r7, #0x70]
	cmp r2, #0
	beq _020C08A0
	ldr r0, [r7, #0x50]
	subs r6, r6, r0
	beq _020C08A0
	mov r3, #0
	mov r0, #0xc
	b _020C0808
_020C0804:
	add r3, r3, #1
_020C0808:
	cmp r3, #4
	bge _020C0820
	mla r1, r3, r0, r7
	ldr r1, [r1, #0x70]
	cmp r1, #0
	bne _020C0804
_020C0820:
	cmp r2, r6
	bls _020C088C
	sub r1, r3, #1
	mov r0, #0xc
	mla r0, r1, r0, r7
	ldr r12, [r7, #0x4c]
	ldr r3, [r0, #0x70]
	ldr r1, [r0, #0x74]
	add r0, r12, r2
	add r3, r3, r1
	sub r1, r0, r6
	sub r2, r3, r2
	bl MI_CpuMove
	mov r3, #0
	mov r0, #0xc
	b _020C0870
_020C0860:
	ldr r1, [r2, #0x70]
	add r3, r3, #1
	sub r1, r1, r6
	str r1, [r2, #0x70]
_020C0870:
	cmp r3, #4
	bge _020C08A0
	mla r2, r3, r0, r7
	ldr r1, [r2, #0x70]
	cmp r1, #0
	bne _020C0860
	b _020C08A0
_020C088C:
	add r0, r7, #0x70
	mov r1, #0
	mov r2, #0x30
	bl MI_CpuFill8
	bl OS_Terminate
_020C08A0:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldrb r0, [r7, #8]
	cmp r0, #0xa
	cmpne r0, #0xb
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r7, #0x50]
	cmp r0, #0
	beq _020C08CC
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C08CC:
	mov r0, r7
	mov r1, #0
	bl _tcp_send_ack
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end CPSi_SocConsumeRaw

	arm_func_start CPS_SocConsume
CPS_SocConsume: ; 0x020C08DC
	stmfd sp!, {r3, lr}
	ldr r1, _020C0910 ; =OSi_ThreadInfo
	ldr r1, [r1, #4]
	ldr r1, [r1, #0xa4]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldrb r2, [r1, #9]
	cmp r2, #0
	beq _020C0908
	bl CPSi_SslConsume
	ldmfd sp!, {r3, pc}
_020C0908:
	bl CPSi_SocConsumeRaw
	ldmfd sp!, {r3, pc}
_020C0910: .word OSi_ThreadInfo
	arm_func_end CPS_SocConsume

	arm_func_start tcp_write_do
tcp_write_do: ; 0x020C0914
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r8, r2
	ldr r6, [r8, #0x40]
	movs r11, r3
	mov r10, r0
	movne r5, #1
	mov r0, r6, lsl #1
	mov r9, r1
	ldreqh r5, [r8, #0x38]
	add r7, r0, #4
	b _020C09B4
_020C0940:
	ldr r0, _020C09D0 ; =wfailed
	ldrh r4, [r8, #0x3a]
	ldrh r0, [r0, #4]
	ldr r1, [r8, #0x40]
	cmp r4, r5
	movhs r4, r5
	cmp r0, r4
	movlo r4, r0
	cmp r11, #0
	biceq r4, r4, #1
	cmp r9, r4
	sub r0, r1, r6
	movlo r4, r9
	adds r0, r7, r0
	moveq r4, #0
	mov r6, r1
	sub r7, r0, #1
	cmp r4, #0
	beq _020C09C8
	mov r0, r10
	mov r1, r4
	mov r2, r8
	mov r3, #0x18
	bl _send_tcp
	mov r4, r0
	bl OS_YieldThread
	sub r5, r5, r4
	add r10, r10, r4
	sub r9, r9, r4
_020C09B4:
	cmp r9, #0
	beq _020C09C8
	ldrb r0, [r8, #8]
	cmp r0, #4
	beq _020C0940
_020C09C8:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C09D0: .word wfailed
	arm_func_end tcp_write_do

	arm_func_start tcp_write_do2
tcp_write_do2: ; 0x020C09D4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r2
	mov r4, r3
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl tcp_write_do
	cmp r0, #0
	cmpne r4, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r2, [sp, #0x10]
	mov r0, r5
	mov r1, r4
	mov r3, #0
	bl tcp_write_do
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end tcp_write_do2

	arm_func_start CPSi_TcpWrite2Raw
CPSi_TcpWrite2Raw: ; 0x020C0A10
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r4, #0
	mov r11, r0
	ldr r8, [sp, #0x38]
	mov r0, r4
	str r4, [sp, #0x10]
	mov r10, r1
	mov r9, r2
	str r3, [sp, #8]
	mov r6, r4
	str r0, [r8, #0x40]
	bl OS_GetTick
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	str r0, [sp, #0xc]
	b _020C0BC8
_020C0A54:
	ldr r7, [r8, #0x34]
	ldr r3, [sp, #8]
	str r8, [sp]
	mov r0, r11
	mov r1, r10
	mov r2, r9
	str r6, [sp, #4]
	bl tcp_write_do2
	bl OS_GetTick
	mov r5, r0, lsr #0x10
	ldr r4, _020C0C14 ; =wfailed
	orr r5, r5, r1, lsl #16
_020C0A84:
	bl OS_YieldThread__
	ldr r0, [r4, #0x18]
	blx r0
	cmp r0, #0
	beq _020C0ADC
	ldrb r0, [r8, #8]
	cmp r0, #4
	bne _020C0ADC
	ldr r1, [r8, #0x34]
	ldr r0, [r8, #0x3c]
	cmp r1, r0
	beq _020C0ADC
	bl OS_GetTick
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	sub r0, r0, r5
	cmp r0, #0xf
	bge _020C0ADC
	cmp r6, #0
	ldrneh r0, [r8, #0x38]
	cmpne r0, #0
	beq _020C0A84
_020C0ADC:
	ldr r1, [r8, #0x3c]
	ldr r0, [r8, #0x34]
	sub r5, r1, r7
	sub r0, r0, r7
	cmp r5, r0
	movhi r5, #0
	ldr r0, [sp, #0x10]
	cmp r5, #0
	add r0, r0, r5
	str r0, [sp, #0x10]
	beq _020C0B18
	bl OS_GetTick
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	str r0, [sp, #0xc]
_020C0B18:
	ldr r0, [r8, #0x3c]
	str r0, [r8, #0x34]
	ldrb r0, [r8, #8]
	cmp r0, #4
	ldreqh r0, [r8, #0x38]
	cmpeq r0, #0
	cmpeq r5, #0
	bne _020C0B9C
	cmp r6, #0
	bne _020C0BA0
	bl OS_GetTick
	mov r7, r0, lsr #0x10
	orr r7, r7, r1, lsl #16
	ldr r4, _020C0C14 ; =wfailed
	b _020C0B64
_020C0B54:
	bl OS_YieldThread__
	ldrh r0, [r8, #0x38]
	cmp r0, #0
	bne _020C0B8C
_020C0B64:
	ldr r0, [r4, #0x18]
	blx r0
	cmp r0, #0
	beq _020C0B8C
	bl OS_GetTick
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	sub r0, r0, r7
	cmp r0, #0xf
	blt _020C0B54
_020C0B8C:
	ldrh r0, [r8, #0x38]
	cmp r0, #0
	moveq r6, #1
	b _020C0BA0
_020C0B9C:
	mov r6, #0
_020C0BA0:
	cmp r5, r10
	addlo r11, r11, r5
	sublo r10, r10, r5
	blo _020C0BC8
	sub r1, r5, r10
	ldr r0, [sp, #8]
	add r11, r9, r1
	mov r9, #0
	sub r10, r0, r1
	str r9, [sp, #8]
_020C0BC8:
	ldr r0, _020C0C14 ; =wfailed
	ldr r0, [r0, #0x18]
	blx r0
	cmp r0, #0
	cmpne r10, #0
	beq _020C0C08
	ldrb r0, [r8, #8]
	cmp r0, #4
	bne _020C0C08
	bl OS_GetTick
	mov r2, r0, lsr #0x10
	ldr r0, [sp, #0xc]
	orr r2, r2, r1, lsl #16
	sub r0, r2, r0
	cmp r0, #0x9f
	blt _020C0A54
_020C0C08:
	ldr r0, [sp, #0x10]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C0C14: .word wfailed
	arm_func_end CPSi_TcpWrite2Raw

	arm_func_start CPSi_SocWrite2
CPSi_SocWrite2: ; 0x020C0C18
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r12, _020C0CE0 ; =OSi_ThreadInfo
	mov r7, r1
	ldr r12, [r12, #4]
	mov r6, r2
	ldr r4, [r12, #0xa4]
	mov r5, r3
	cmp r4, #0
	beq _020C0CD8
	ldrb r12, [r4, #8]
	cmp r12, #0xa
	bne _020C0C78
	cmp r7, #0
	beq _020C0C58
	mov r2, r4
	bl send_udp
_020C0C58:
	cmp r5, #0
	beq _020C0C70
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl send_udp
_020C0C70:
	add r0, r7, r5
	b _020C0CC8
_020C0C78:
	cmp r12, #0xb
	bne _020C0CAC
	cmp r7, #0
	beq _020C0C90
	mov r2, r4
	bl send_ping
_020C0C90:
	cmp r5, #0
	beq _020C0CA8
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl send_ping
_020C0CA8:
	b _020C0C70
_020C0CAC:
	ldrb r12, [r4, #9]
	cmp r12, #0
	str r4, [sp]
	beq _020C0CC4
	bl CPSi_SslWrite2
	b _020C0CC8
_020C0CC4:
	bl CPSi_TcpWrite2Raw
_020C0CC8:
	ldr r1, _020C0CE4 ; =wfailed
	ldrb r1, [r1]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_020C0CD8:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C0CE0: .word OSi_ThreadInfo
_020C0CE4: .word wfailed
	arm_func_end CPSi_SocWrite2

	arm_func_start CPS_SocWrite
CPS_SocWrite: ; 0x020C0CE8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r3, _020C0D78 ; =OSi_ThreadInfo
	mov r2, r0
	ldr r4, [r3, #4]
	mov r3, r1
	ldr r5, [r4, #0xa4]
	cmp r5, #0
	beq _020C0D70
	ldr r4, [r5, #0x6c]
	cmp r4, #0
	beq _020C0D60
	ldr r0, [r5, #0x68]
	mov r1, r4
	bl CPSi_SocWrite2
	ldr r2, [r5, #0x6c]
	mov r4, r0
	cmp r4, r2
	movhs r0, #0
	strhs r0, [r5, #0x6c]
	subhs r0, r4, r2
	ldmhsfd sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #0x68]
	sub r2, r2, r4
	add r0, r1, r4
	bl MI_CpuMove
	ldr r1, [r5, #0x6c]
	mov r0, #0
	sub r1, r1, r4
	str r1, [r5, #0x6c]
	ldmfd sp!, {r3, r4, r5, pc}
_020C0D60:
	mov r2, #0
	mov r3, r2
	bl CPSi_SocWrite2
	ldmfd sp!, {r3, r4, r5, pc}
_020C0D70:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020C0D78: .word OSi_ThreadInfo
	arm_func_end CPS_SocWrite

	arm_func_start CPS_SocGetLength
CPS_SocGetLength: ; 0x020C0D7C
	stmfd sp!, {r4, lr}
	ldr r0, _020C0DF8 ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	ldr r4, [r0, #0xa4]
	cmp r4, #0
	beq _020C0DF0
	ldrb r0, [r4, #8]
	cmp r0, #4
	bne _020C0DAC
	mov r0, r4
	mov r1, #1
	bl _tcp_send_ack
_020C0DAC:
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _020C0DC4
	mov r0, r4
	bl CPSi_SslGetLength
	ldmfd sp!, {r4, pc}
_020C0DC4:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldrb r1, [r4, #8]
	cmp r1, #4
	ldmeqfd sp!, {r4, pc}
	add r1, r1, #0xf6
	and r1, r1, #0xff
	cmp r1, #1
	mvnhi r0, #0
	ldmfd sp!, {r4, pc}
_020C0DF0:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020C0DF8: .word OSi_ThreadInfo
	arm_func_end CPS_SocGetLength

	arm_func_start CPS_SocFlush
CPS_SocFlush: ; 0x020C0DFC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020C0E38 ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	ldr r5, [r0, #0xa4]
	cmp r5, #0
	ldrne r1, [r5, #0x6c]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, #0
	ldr r0, [r5, #0x68]
	mov r2, r4
	mov r3, r4
	bl CPSi_SocWrite2
	str r4, [r5, #0x6c]
	ldmfd sp!, {r3, r4, r5, pc}
_020C0E38: .word OSi_ThreadInfo
	arm_func_end CPS_SocFlush

	arm_func_start garprequest
garprequest: ; 0x020C0E3C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020C0EB8 ; =wfailed
	ldr r0, [r4, #0x50]
	bl send_arprequest
	mov r0, #0x64
	bl OS_Sleep
	ldr r0, [r4, #0x50]
	bl send_arprequest
	bl OS_GetTick
	mov r6, r0, lsr #0x10
	orr r6, r6, r1, lsl #16
	mov r5, #0x64
	b _020C0E88
_020C0E70:
	ldrb r0, [r4, #1]
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl OS_Sleep
_020C0E88:
	ldr r0, [r4, #0x18]
	blx r0
	cmp r0, #0
	beq _020C0EB0
	bl OS_GetTick
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	sub r0, r0, r6
	cmp r0, #0x17
	blt _020C0E70
_020C0EB0:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020C0EB8: .word wfailed
	arm_func_end garprequest

	arm_func_start set_fixed_ip
set_fixed_ip: ; 0x020C0EBC
	stmfd sp!, {r4, lr}
	ldr r4, _020C0EF0 ; =wfailed
	ldr r0, [r4, #0x28]
	blx r0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl garprequest
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #4
	bl reset_network_vars
	ldmfd sp!, {r4, pc}
_020C0EF0: .word wfailed
	arm_func_end set_fixed_ip

	arm_func_start scavenger
scavenger: ; 0x020C0EF4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r4, _020C1318 ; =0x020E6EB8
	mov r5, #0
	ldr r3, _020C131C ; =wfailed
	mov r0, r4
	mov r1, r5
	mov r2, #0xa0
	str r5, [r3, #0x58]
	bl MI_CpuFill8
	mov r2, #0x180
	ldr r0, _020C1320 ; =0x020E73B8
	str r2, [r4, #0x48]
	str r0, [r4, #0x4c]
	ldr r1, _020C1324 ; =0x020E7238
	str r2, [r4, #0x54]
	mov r0, r4
	str r1, [r4, #0x58]
	bl CPS_SocRegister
	mov r6, #1
	ldr r0, _020C131C ; =wfailed
	str r6, [sp, #4]
	str r6, [sp]
	str r6, [r0, #0x4c]
_020C0F54:
	mov r0, #0x3e8
	bl OS_Sleep
	ldr r0, _020C131C ; =wfailed
	ldr r0, [r0, #0x58]
	cmp r0, #0
	bne _020C12F0
	bl OS_GetTick
	mov r7, r0, lsr #0x10
	ldr r0, _020C131C ; =wfailed
	orr r7, r7, r1, lsl #16
	ldr r0, [r0, #0x18]
	blx r0
	cmp r0, #0
	beq _020C1154
	ldr r0, [sp, #4]
	subs r0, r0, #1
	str r0, [sp, #4]
	bne _020C1168
	ldr r0, _020C131C ; =wfailed
	ldr r0, [r0, #0xc]
	tst r0, #1
	beq _020C0FC0
	cmp r5, #0
	bne _020C1168
	bl set_fixed_ip
	mov r5, #1
	b _020C1168
_020C0FC0:
	cmp r5, #3
	addls pc, pc, r5, lsl #2
	b _020C1168
_020C0FCC: ; jump table
	b _020C0FDC ; case 0
	b _020C1074 ; case 1
	b _020C10DC ; case 2
	b _020C1168 ; case 3
_020C0FDC:
	ldr r0, [sp]
	cmp r0, #0
	ldrne r0, _020C131C ; =wfailed
	movne r1, #2
	strne r1, [r0, #0x4c]
	movne r0, #0
	strne r0, [sp]
	bl dhcp_discover_server
	cmp r0, #0
	beq _020C101C
	mov r4, #0
	add r0, sp, #4
	mov r1, r4
	bl dhcp_request_server
	cmp r0, #0
	bne _020C1020
_020C101C:
	b _020C104C
_020C1020:
	ldr r0, _020C131C ; =wfailed
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _020C103C
	blx r0
	cmp r0, #0
	moveq r4, #1
_020C103C:
	cmp r4, #0
	beq _020C1058
_020C1044:
	mov r0, #5
	bl reset_network_vars
_020C104C:
	bl set_fixed_ip
_020C1050:
	mov r5, #3
	b _020C1168
_020C1058:
	mov r5, #1
	bl garprequest
	cmp r0, #0
	bne _020C1168
_020C1068:
	mov r0, #4
	bl reset_network_vars
	b _020C1050
_020C1074:
	add r0, sp, #4
	mov r1, #1
	bl dhcp_request_server
	cmp r0, #0
	bne _020C1098
	ldr r0, [sp, #4]
	cmp r0, #0x3c
	movlo r5, #2
	blo _020C1168
_020C1098:
	ldr r0, _020C131C ; =wfailed
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _020C10BC
	blx r0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	b _020C10C0
_020C10BC:
	mov r0, #0
_020C10C0:
	cmp r0, #0
	beq _020C10CC
	b _020C1044
_020C10CC:
	bl garprequest
	cmp r0, #0
	bne _020C1168
	b _020C1068
_020C10DC:
	add r0, sp, #4
	mov r1, #2
	bl dhcp_request_server
	cmp r0, #0
	beq _020C1138
	ldr r0, _020C131C ; =wfailed
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _020C1114
	blx r0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	b _020C1118
_020C1114:
	mov r0, #0
_020C1118:
	cmp r0, #0
	beq _020C1124
	b _020C1044
_020C1124:
	mov r5, #1
	bl garprequest
	cmp r0, #0
	bne _020C1168
	b _020C1068
_020C1138:
	ldr r0, [sp, #4]
	cmp r0, #0x3c
	bhs _020C1168
	mov r0, #3
	bl reset_network_vars
	mov r6, #1
	b _020C1160
_020C1154:
	mov r6, #1
	mov r0, r6
	bl reset_network_vars
_020C1160:
	str r6, [sp, #4]
	mov r5, #0
_020C1168:
	ldr r0, _020C1328 ; =0x020E6E58
	ldr r4, _020C132C ; =0x000003BD
	mov r2, #0
	mov r8, #0xc
_020C1178:
	mul r1, r2, r8
	ldr r3, [r0, r1]
	add r1, r0, r1
	cmp r3, #0
	ldrneh r3, [r1, #0xa]
	add r2, r2, #1
	subne r3, r7, r3
	movne r3, r3, lsl #0x10
	cmpne r4, r3, asr #16
	movlt r3, #0
	strlt r3, [r1]
	cmp r2, #8
	blt _020C1178
	ldr r0, _020C131C ; =wfailed
	mov r9, #1
	ldr r0, [r0, #0x2c]
	mov r8, #0
	cmp r0, #0
	beq _020C11D4
	subs r6, r6, #1
	bne _020C11D4
	bl send_arprequest
	mov r6, #0x69
_020C11D4:
	ldr r0, _020C1330 ; =OSi_ThreadInfo
	ldr r4, [r0, #8]
	cmp r4, #0
	beq _020C1284
_020C11E4:
	ldr r0, [r4, #0xa4]
	cmp r0, #0
	ldrne r1, [r0]
	cmpne r1, #0
	beq _020C1278
	ldrb r2, [r0, #8]
	cmp r2, #3
	bne _020C122C
	ldr r1, [r0, #0x10]
	sub r1, r7, r1
	cmp r1, #0x27
	ble _020C122C
	strb r9, [r0, #8]
	ldrh r1, [r0, #0x1a]
	strh r1, [r0, #0x18]
	ldr r1, [r0, #0x20]
	str r1, [r0, #0x1c]
	b _020C1278
_020C122C:
	cmp r2, #2
	bne _020C1258
	ldr r1, [r0, #0x10]
	sub r1, r7, r1
	cmp r1, #0x27
	ble _020C1258
	ldr r1, [r0, #4]
	cmp r1, #1
	bne _020C1278
	strb r8, [r0, #8]
	b _020C126C
_020C1258:
	cmp r2, #4
	beq _020C1278
	ldr r1, [r0, #4]
	cmp r1, #2
	bne _020C1278
_020C126C:
	str r8, [r0, #4]
	ldr r0, [r0]
	bl OS_WakeupThreadDirect
_020C1278:
	ldr r4, [r4, #0x68]
	cmp r4, #0
	bne _020C11E4
_020C1284:
	mov r10, #0
	ldr r11, _020C131C ; =wfailed
	ldr r4, _020C1334 ; =0x020E7538
	mov r9, r10
_020C1294:
	mov r0, #0x38
	mla r8, r9, r0, r4
	ldrh r0, [r8, #4]
	cmp r0, #0
	ldrne r0, [r8, #0x2c]
	subne r0, r7, r0
	cmpne r0, #0xef
	ble _020C12C4
	ldr r0, [r8, #0x34]
	ldr r1, [r11, #0x44]
	blx r1
	strh r10, [r8, #4]
_020C12C4:
	add r9, r9, #1
	cmp r9, #8
	blt _020C1294
	mov r0, r7
	bl CPSi_SslPeriodical
	ldr r0, _020C131C ; =wfailed
	ldr r0, [r0, #0x34]
	cmp r0, #0
	beq _020C0F54
	blx r0
	b _020C0F54
_020C12F0:
	ldr r0, _020C131C ; =wfailed
	ldr r0, [r0, #0xc]
	tst r0, #1
	bne _020C130C
	cmp r5, #3
	beq _020C130C
	bl dhcp_release_server
_020C130C:
	bl CPS_SocUnRegister
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C1318: .word ov15_020E6EB8
_020C131C: .word wfailed
_020C1320: .word ov15_020E73B8
_020C1324: .word ov15_020E7238
_020C1328: .word ov15_020E6E58
_020C132C: .word 0x000003BD
_020C1330: .word OSi_ThreadInfo
_020C1334: .word ov15_020E7538
	arm_func_end scavenger

	arm_func_start dacktimer_reschedule
dacktimer_reschedule: ; 0x020C1338
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mvn r5, #0
	bl OS_DisableInterrupts
	mov r7, r0
	bl OS_GetTick
	ldr r1, _020C1418 ; =OSi_ThreadInfo
	mov r8, r0
	ldr r6, [r1, #8]
	cmp r6, #0
	beq _020C13D8
	ldr r10, _020C141C ; =0x0001991B
	mov r4, #1
	mov r9, #0
_020C1370:
	ldr r0, [r6, #0xa4]
	cmp r0, #0
	ldrne r1, [r0]
	cmpne r1, #0
	beq _020C13CC
	ldrb r1, [r0, #8]
	cmp r1, #4
	bne _020C13CC
	ldrb r1, [r0, #0x32]
	cmp r1, #0
	beq _020C13CC
	ldr r1, [r0, #0x2c]
	sub r2, r8, r1
	cmp r2, r10
	blo _020C13B8
	mov r1, r4
	bl _tcp_send_ack
	b _020C13CC
_020C13B8:
	subs r1, r10, r2
	rsc r0, r9, #0
	cmp r0, #0
	cmpeq r1, r5
	sublo r5, r10, r2
_020C13CC:
	ldr r6, [r6, #0x68]
	cmp r6, #0
	bne _020C1370
_020C13D8:
	cmn r5, #1
	beq _020C1408
	ldr r6, _020C1420 ; =0x020E6DD0
	mov r0, r6
	bl OS_CancelAlarm
	mov r4, #0
	ldr r3, _020C1424 ; =dacktimer_alarmhandler
	mov r0, r6
	mov r1, r5
	mov r2, #0
	str r4, [sp]
	bl OS_SetAlarm
_020C1408:
	mov r0, r7
	bl OS_RestoreInterrupts
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C1418: .word OSi_ThreadInfo
_020C141C: .word 0x0001991B
_020C1420: .word ov15_020E6DD0
_020C1424: .word dacktimer_alarmhandler
	arm_func_end dacktimer_reschedule

	arm_func_start dacktimer
dacktimer: ; 0x020C1428
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _020C1464 ; =0x020E70B8
	mov r0, r5
	bl OS_IsThreadTerminated
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
_020C1444:
	bl dacktimer_reschedule
	mov r0, r4
	bl OS_SleepThread
	mov r0, r5
	bl OS_IsThreadTerminated
	cmp r0, #0
	beq _020C1444
	ldmfd sp!, {r3, r4, r5, pc}
_020C1464: .word ov15_020E70B8
	arm_func_end dacktimer

	arm_func_start dacktimer_alarmhandler
dacktimer_alarmhandler: ; 0x020C1468
	ldr r0, _020C1474 ; =0x020E6FF8
	ldr r12, _020C1478 ; =OS_WakeupThreadDirect
	bx r12
_020C1474: .word ov15_020E6FF8
_020C1478: .word OS_WakeupThreadDirect
	arm_func_end dacktimer_alarmhandler

	arm_func_start dhcp_setcommon
dhcp_setcommon: ; 0x020C147C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, #0xec
	mov r7, r1
	mov r2, r6
	mov r1, #0
	mov r8, r0
	bl MI_CpuFill8
	mov r5, #6
	add r0, r6, #0x15
	ldr r3, _020C15B0 ; =wfailed
	strh r0, [r8]
	strb r5, [r8, #2]
	ldr r0, [r3, #0x30]
	ldr r4, _020C15B4 ; =CPSMyMac
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, r1, lsl #8
	orr r0, r0, r1, asr #8
	strh r0, [r8, #4]
	ldr r1, [r3, #0x30]
	mov r0, r4
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	mov r1, r2, lsl #8
	orr r1, r1, r2, asr #8
	strh r1, [r8, #6]
	ldr r1, [r3, #0x50]
	mov r2, r5
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r12, r1, lsr #0x10
	mov r1, r12, lsl #8
	orr r1, r1, r12, asr #8
	strh r1, [r8, #0xc]
	ldr r3, [r3, #0x50]
	add r1, r8, #0x1c
	mov r3, r3, lsl #0x10
	mov r12, r3, lsr #0x10
	mov r3, r12, lsl #8
	orr r3, r3, r12, asr #8
	strh r3, [r8, #0xe]
	bl MI_CpuCopy
	ldr r0, _020C15B8 ; =0x00008263
	ldr r2, _020C15BC ; =0x00006353
	strh r0, [r8, #0xec]
	add r0, r6, #0x49
	mov r1, #0x3d
	strh r2, [r8, #0xee]
	mov r3, #7
	strh r0, [r8, #0xf0]
	mov r6, #1
	strb r7, [r8, #0xf2]
	mov r0, r4
	mov r2, r5
	strb r1, [r8, #0xf3]
	add r1, r8, #0xf6
	strb r3, [r8, #0xf4]
	strb r6, [r8, #0xf5]
	bl MI_CpuCopy
	mov r0, #0xc
	strb r0, [r8, #0xfc]
	mov r2, #0xa
	strb r2, [r8, #0xfd]
	ldr r0, _020C15C0 ; =0x020E4374
	add r1, r8, #0xfe
	bl MI_CpuCopy
	strb r6, [r8, #0x10a]
	mov r1, #3
	strb r5, [r8, #0x10c]
	add r0, r8, #0xd
	add r0, r0, #0x100
	strb r1, [r8, #0x109]
	strb r1, [r8, #0x10b]
	mov r1, #0x37
	strb r1, [r8, #0x108]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C15B0: .word wfailed
_020C15B4: .word CPSMyMac
_020C15B8: .word 0x00008263
_020C15BC: .word 0x00006353
_020C15C0: .word ov15_020E4374
	arm_func_end dhcp_setcommon

	arm_func_start pad_mem
pad_mem: ; 0x020C15C4
	stmfd sp!, {r3, r4, r5, lr}
	mov r12, r0
	mov r5, r2
	cmp r3, r1
	bhs _020C15F0
	sub r4, r1, r3
	mov r0, r5
	mov r1, r12
	mov r2, r4
	bl MI_CpuFill8
	add r5, r5, r4
_020C15F0:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end pad_mem

	arm_func_start dhcp_send_discover
dhcp_send_discover: ; 0x020C15F8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _020C16E4 ; =wfailed
	ldr r4, _020C16E8 ; =0x020E7262
	ldr r2, [r5, #0x80]
	ldr r0, [r5, #0x78]
	ldr r1, [r5, #0x7c]
	umull r12, r3, r2, r0
	mla r3, r2, r1, r3
	ldr r1, [r5, #0x84]
	ldr r2, [r5, #0x88]
	mla r3, r1, r0, r3
	ldr r0, [r5, #0x8c]
	adds r2, r2, r12
	str r2, [r5, #0x78]
	adc r1, r0, r3
	str r1, [r5, #0x7c]
	mov r0, r4
	str r1, [r5, #0x30]
	mov r1, #1
	bl dhcp_setcommon
	ldr r1, [r5, #0x38]
	mov r12, r0
	cmp r1, #0
	beq _020C16AC
	mov r0, #0x32
	strb r0, [r12]
	mov r0, #4
	strb r0, [r12, #1]
	ldr r0, [r5, #0x38]
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #8
	strb r0, [r12, #2]
	ldr r0, [r5, #0x38]
	mov r0, r0, lsr #0x10
	strb r0, [r12, #3]
	ldr r0, [r5, #0x38]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #8
	strb r0, [r12, #4]
	ldr r0, [r5, #0x38]
	strb r0, [r12, #5]
	add r12, r12, #6
_020C16AC:
	add r2, r12, #1
	mov r5, #0xff
	sub r3, r2, r4
	mov r0, #0
	mov r1, #0x12c
	strb r5, [r12]
	bl pad_mem
	mov r1, r0
	mov r0, r4
	sub r1, r1, r4
	bl CPS_SocWrite
	ldr r0, _020C16E4 ; =wfailed
	ldr r0, [r0, #0x30]
	ldmfd sp!, {r3, r4, r5, pc}
_020C16E4: .word wfailed
_020C16E8: .word ov15_020E7262
	arm_func_end dhcp_send_discover

	arm_func_start dhcp_send_request
dhcp_send_request: ; 0x020C16EC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020C17EC ; =0x020E7262
	mov r5, r0
	mov r0, r4
	mov r1, #3
	bl dhcp_setcommon
	mov r12, r0
	cmp r5, #0
	bne _020C17B4
	mov r0, #0x32
	strb r0, [r12]
	mov r0, #4
	ldr r2, _020C17F0 ; =wfailed
	strb r0, [r12, #1]
	ldr r1, [r2, #0x38]
	mov r3, #0x36
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, asr #8
	strb r1, [r12, #2]
	ldr r1, [r2, #0x38]
	mov r1, r1, lsr #0x10
	strb r1, [r12, #3]
	ldr r1, [r2, #0x38]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, asr #8
	strb r1, [r12, #4]
	ldr r1, [r2, #0x38]
	strb r1, [r12, #5]
	strb r3, [r12, #6]
	strb r0, [r12, #7]
	ldr r0, [r2, #0x1c]
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #8
	strb r0, [r12, #8]
	ldr r0, [r2, #0x1c]
	mov r0, r0, lsr #0x10
	strb r0, [r12, #9]
	ldr r0, [r2, #0x1c]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #8
	strb r0, [r12, #0xa]
	ldr r0, [r2, #0x1c]
	strb r0, [r12, #0xb]
	add r12, r12, #0xc
_020C17B4:
	add r2, r12, #1
	mov lr, #0xff
	sub r3, r2, r4
	mov r0, #0
	mov r1, #0x12c
	strb lr, [r12]
	bl pad_mem
	mov r1, r0
	mov r0, r4
	sub r1, r1, r4
	bl CPS_SocWrite
	ldr r0, _020C17F0 ; =wfailed
	ldr r0, [r0, #0x30]
	ldmfd sp!, {r3, r4, r5, pc}
_020C17EC: .word ov15_020E7262
_020C17F0: .word wfailed
	arm_func_end dhcp_send_request

	arm_func_start dhcp_analyze_response
dhcp_analyze_response: ; 0x020C17F4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r2, _020C1B58 ; =0x020E4344
	str r0, [sp]
	ldrb r0, [r2, r1]
	rsb r0, r0, r0, lsl #3
	str r0, [sp, #4]
	bl OS_GetTick
	mov r11, r0, lsr #0x10
	orr r11, r11, r1, lsl #16
	mov r4, #0
	b _020C1B14
_020C1824:
	bl CPS_SocGetLength
	cmp r0, #0
	bne _020C1838
	bl OS_YieldThread__
	b _020C1B14
_020C1838:
	add r0, sp, #8
	bl CPS_SocRead
	ldr r1, [sp, #8]
	mov r5, r0
	cmp r1, #0xf0
	bls _020C1B0C
	ldrb r0, [r5]
	cmp r0, #2
	bne _020C1B0C
	ldrh r3, [r5, #6]
	ldrh r2, [r5, #4]
	mov r0, r3, lsl #8
	mov r1, r2, lsl #8
	orr r2, r1, r2, asr #8
	orr r1, r0, r3, asr #8
	mov r0, r2, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r1, r0, r2, lsl #16
	ldr r0, [sp]
	cmp r0, r1
	bne _020C1B0C
	ldr r1, _020C1B5C ; =CPSMyMac
	add r0, r5, #0x1c
	bl maccmp
	cmp r0, #0
	bne _020C1B0C
	ldrb r3, [r5, #0x10]
	ldrb r2, [r5, #0x11]
	ldrb r1, [r5, #0x12]
	ldrb r0, [r5, #0x13]
	orr r3, r2, r3, lsl #8
	ldrb r2, [r5, #0xec]
	orr r1, r0, r1, lsl #8
	mov r0, r3, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r4, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	cmp r2, #0x63
	orr r2, r0, r4, lsl #16
	ldreqb r0, [r5, #0xed]
	ldr r3, [sp, #8]
	mov r4, #3
	cmpeq r0, #0x82
	ldreqb r0, [r5, #0xee]
	add r1, r5, r3
	cmpeq r0, #0x53
	ldreqb r0, [r5, #0xef]
	addeq r3, r5, #0xf0
	cmpeq r0, #0x63
	bne _020C1B0C
	ldr lr, _020C1B60 ; =wfailed
	mov r9, #2
	ldr r0, [lr, #0xc]
	mov r10, #1
	and r12, r0, #2
	mov r0, #0
	b _020C1AF8
_020C1924:
	cmp r5, #0
	beq _020C1AF8
	cmp r5, #0x33
	bgt _020C1960
	bge _020C1A60
	cmp r5, #6
	bgt _020C1AEC
	cmp r5, #1
	blt _020C1AEC
	beq _020C197C
	cmp r5, #3
	beq _020C19B0
	cmp r5, #6
	beq _020C19E4
	b _020C1AEC
_020C1960:
	cmp r5, #0x35
	bgt _020C1970
	beq _020C1A94
	b _020C1AEC
_020C1970:
	cmp r5, #0x36
	beq _020C1ABC
	b _020C1AEC
_020C197C:
	ldrb r8, [r3, #1]
	ldrb r7, [r3, #2]
	ldrb r6, [r3, #3]
	ldrb r5, [r3, #4]
	orr r7, r7, r8, lsl #8
	mov r7, r7, lsl #0x10
	orr r6, r5, r6, lsl #8
	mov r5, r7, lsr #0x10
	mov r6, r6, lsl #0x10
	mov r6, r6, lsr #0x10
	orr r5, r6, r5, lsl #16
	str r5, [lr, #0x10]
	b _020C1AEC
_020C19B0:
	ldrb r8, [r3, #1]
	ldrb r7, [r3, #2]
	ldrb r6, [r3, #3]
	ldrb r5, [r3, #4]
	orr r7, r7, r8, lsl #8
	mov r7, r7, lsl #0x10
	orr r6, r5, r6, lsl #8
	mov r5, r7, lsr #0x10
	mov r6, r6, lsl #0x10
	mov r6, r6, lsr #0x10
	orr r5, r6, r5, lsl #16
	str r5, [lr, #0x2c]
	b _020C1AEC
_020C19E4:
	cmp r12, #0
	bne _020C1AEC
	ldrb r5, [r3]
	cmp r5, #8
	strlo r0, [lr, #0x74]
	blo _020C1A2C
	ldrb r8, [r3, #5]
	ldrb r7, [r3, #6]
	ldrb r6, [r3, #7]
	ldrb r5, [r3, #8]
	orr r7, r7, r8, lsl #8
	mov r7, r7, lsl #0x10
	orr r6, r5, r6, lsl #8
	mov r5, r7, lsr #0x10
	mov r6, r6, lsl #0x10
	mov r6, r6, lsr #0x10
	orr r5, r6, r5, lsl #16
	str r5, [lr, #0x74]
_020C1A2C:
	ldrb r8, [r3, #1]
	ldrb r7, [r3, #2]
	ldrb r6, [r3, #3]
	ldrb r5, [r3, #4]
	orr r7, r7, r8, lsl #8
	mov r7, r7, lsl #0x10
	orr r6, r5, r6, lsl #8
	mov r5, r7, lsr #0x10
	mov r6, r6, lsl #0x10
	mov r6, r6, lsr #0x10
	orr r5, r6, r5, lsl #16
	str r5, [lr, #0x70]
	b _020C1AEC
_020C1A60:
	ldrb r8, [r3, #1]
	ldrb r7, [r3, #2]
	ldrb r6, [r3, #3]
	ldrb r5, [r3, #4]
	orr r7, r7, r8, lsl #8
	mov r7, r7, lsl #0x10
	orr r6, r5, r6, lsl #8
	mov r5, r7, lsr #0x10
	mov r6, r6, lsl #0x10
	mov r6, r6, lsr #0x10
	orr r5, r6, r5, lsl #16
	str r5, [lr, #0x3c]
	b _020C1AEC
_020C1A94:
	ldrb r5, [r3, #1]
	cmp r5, #2
	beq _020C1AB0
	cmp r5, #5
	moveq r4, r9
	streq r2, [lr, #0x50]
	b _020C1AEC
_020C1AB0:
	mov r4, r10
	str r2, [lr, #0x38]
	b _020C1AEC
_020C1ABC:
	ldrb r8, [r3, #1]
	ldrb r7, [r3, #2]
	ldrb r6, [r3, #3]
	ldrb r5, [r3, #4]
	orr r7, r7, r8, lsl #8
	mov r7, r7, lsl #0x10
	orr r6, r5, r6, lsl #8
	mov r5, r7, lsr #0x10
	mov r6, r6, lsl #0x10
	mov r6, r6, lsr #0x10
	orr r5, r6, r5, lsl #16
	str r5, [lr, #0x1c]
_020C1AEC:
	ldrb r5, [r3]
	add r5, r5, #1
	add r3, r3, r5
_020C1AF8:
	cmp r3, r1
	bhs _020C1B0C
	ldrb r5, [r3], #1
	cmp r5, #0xff
	bne _020C1924
_020C1B0C:
	ldr r0, [sp, #8]
	bl CPS_SocConsume
_020C1B14:
	ldr r0, _020C1B60 ; =wfailed
	ldr r0, [r0, #0x18]
	blx r0
	cmp r0, #0
	beq _020C1B4C
	cmp r4, #0
	bne _020C1B4C
	bl OS_GetTick
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	sub r1, r0, r11
	ldr r0, [sp, #4]
	cmp r1, r0
	blt _020C1824
_020C1B4C:
	mov r0, r4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C1B58: .word ov15_020E4344
_020C1B5C: .word CPSMyMac
_020C1B60: .word wfailed
	arm_func_end dhcp_analyze_response

	arm_func_start dhcp_discover_server
dhcp_discover_server: ; 0x020C1B64
	stmfd sp!, {r3, r4, r5, lr}
	bl CPS_SocUse
	bl CPS_SocDatagramMode
	mov r1, #0x43
	sub r2, r1, #0x44
	mov r0, #0x44
	bl CPS_SocBind
	mov r5, #0
_020C1B84:
	bl dhcp_send_discover
	mov r1, r5
	bl dhcp_analyze_response
	mov r4, r0
	cmp r4, #1
	beq _020C1BA8
	add r5, r5, #1
	cmp r5, #5
	blt _020C1B84
_020C1BA8:
	bl CPS_SocRelease
	mov r0, #1
	cmp r4, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end dhcp_discover_server

	arm_func_start dhcp_request_server
dhcp_request_server: ; 0x020C1BBC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	mov r5, r0
	bl CPS_SocUse
	bl CPS_SocDatagramMode
	cmp r4, #1
	mov r0, #0x44
	bne _020C1BEC
	ldr r1, _020C1CB4 ; =wfailed
	ldr r2, [r1, #0x1c]
	mov r1, #0x43
	b _020C1BF4
_020C1BEC:
	mov r1, #0x43
	sub r2, r1, #0x44
_020C1BF4:
	bl CPS_SocBind
	mov r7, #0
_020C1BFC:
	mov r0, r4
	bl dhcp_send_request
	mov r1, r7
	bl dhcp_analyze_response
	movs r6, r0
	cmpne r6, #1
	bne _020C1C24
	add r7, r7, #1
	cmp r7, #5
	blt _020C1BFC
_020C1C24:
	bl CPS_SocRelease
	cmp r6, #2
	bne _020C1C58
	ldr r1, _020C1CB4 ; =wfailed
	mov r0, #1
	ldr r2, [r1, #0x3c]
	mov r2, r2, lsr #1
	str r2, [r5]
	ldr r2, [r1, #0x3c]
	add r2, r2, r2, lsl #1
	mov r2, r2, lsr #3
	str r2, [r1, #0x40]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C1C58:
	ldr r0, _020C1CB4 ; =wfailed
	cmp r4, #1
	ldr r1, [r0, #0x40]
	mov r1, r1, lsr #1
	str r1, [r0, #0x40]
	str r1, [r5]
	beq _020C1C80
	cmp r4, #2
	beq _020C1CA0
	b _020C1CAC
_020C1C80:
	cmp r1, #0x3c
	bhs _020C1CAC
	mov r1, #1
	str r1, [r5]
	ldr r1, [r0, #0x3c]
	mov r1, r1, lsr #3
	str r1, [r0, #0x40]
	b _020C1CAC
_020C1CA0:
	cmp r1, #0x3c
	movlo r0, #1
	strlo r0, [r5]
_020C1CAC:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C1CB4: .word wfailed
	arm_func_end dhcp_request_server

	arm_func_start dhcp_release_server
dhcp_release_server: ; 0x020C1CB8
	stmfd sp!, {r4, lr}
	bl CPS_SocUse
	bl CPS_SocDatagramMode
	ldr r1, _020C1D18 ; =wfailed
	mov r0, #0x44
	ldr r2, [r1, #0x1c]
	mov r1, #0x43
	bl CPS_SocBind
	ldr r4, _020C1D1C ; =0x020E7262
	mov r1, #7
	mov r0, r4
	bl dhcp_setcommon
	mov r1, #0xff
	add r2, r0, #1
	strb r1, [r0]
	mov r0, #0
	mov r1, #0x12c
	sub r3, r2, r4
	bl pad_mem
	sub r1, r0, r4
	mov r0, r4
	bl CPS_SocWrite
	bl CPS_SocRelease
	ldmfd sp!, {r4, pc}
_020C1D18: .word wfailed
_020C1D1C: .word ov15_020E7262
	arm_func_end dhcp_release_server

	arm_func_start dns_skipname
dns_skipname: ; 0x020C1D20
	ldrb r2, [r0], #1
	cmp r2, #0
	bxeq lr
_020C1D2C:
	and r1, r2, #0xc0
	cmp r1, #0xc0
	addeq r0, r0, #1
	bxeq lr
	add r0, r0, r2
	ldrb r2, [r0], #1
	cmp r2, #0
	bne _020C1D2C
	bx lr
	arm_func_end dns_skipname

	arm_func_start resolve_common
resolve_common: ; 0x020C1D50
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x48
	mov r9, r2
	mov r2, r9, lsl #8
	mov r10, r1
	orr r1, r2, r9, asr #8
	strh r1, [sp, #4]
	cmp r10, #0x20
	mov r6, #0
	movne r1, #1
	strneh r1, [sp, #6]
	ldreq r1, _020C1FF0 ; =0x00001001
	add r7, sp, #0x10
	streqh r1, [sp, #6]
	mov r1, #0x100
	strh r1, [sp, #8]
	strh r6, [sp, #0xa]
	strh r6, [sp, #0xc]
	strh r6, [sp, #0xe]
	str r6, [sp]
	ldrb r12, [r0], #1
	mov r11, r3
	ldr r8, [sp, #0x70]
	mov r1, r6
	add r2, r7, #1
	cmp r12, #0
	beq _020C1E1C
	mov r3, r6
	add r4, sp, #4
_020C1DC4:
	sub r5, r2, r4
	cmp r5, #0x3c
	addgt sp, sp, #0x48
	mvngt r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r12, #0x2e
	addne r6, r6, #1
	movne r1, r6
	strne r6, [sp]
	strneb r12, [r2], #1
	bne _020C1E10
	cmp r6, #0
	beq _020C1E10
	strb r6, [r7]
	mov r7, r2
	mov r1, r3
	mov r6, r3
	str r3, [sp]
	add r2, r2, #1
_020C1E10:
	ldrb r12, [r0], #1
	cmp r12, #0
	bne _020C1DC4
_020C1E1C:
	strb r1, [r7]
	mov r4, #0
	strb r4, [r2]
	mov r0, r10, lsr #8
	strb r0, [r2, #1]
	strb r10, [r2, #2]
	add r0, sp, #4
	add r1, r2, #5
	strb r4, [r2, #3]
	mov r3, #1
	sub r1, r1, r0
	strb r3, [r2, #4]
	bl CPS_SocWrite
	bl OS_GetTick
	mov r5, r0, lsr #0x10
	orr r5, r5, r1, lsl #16
	b _020C1FB0
_020C1E60:
	bl CPS_SocGetLength
	cmp r0, #0
	bne _020C1E78
	mov r0, #0xa
	bl OS_Sleep
	b _020C1FB0
_020C1E78:
	add r0, sp, #0
	bl CPS_SocRead
	ldr r1, [sp]
	cmp r1, #0xc
	bls _020C1FA8
	ldrh r3, [r0]
	mov r2, r3, lsl #8
	orr r2, r2, r3, asr #8
	mov r2, r2, lsl #0x10
	cmp r9, r2, lsr #16
	bne _020C1FA8
	ldrb r2, [r0, #3]
	and r2, r2, #0xf
	cmp r2, #3
	mvneq r4, #0
	beq _020C1FA8
	cmp r2, #0
	bne _020C1FA8
	ldrb r3, [r0, #4]
	ldrb r2, [r0, #5]
	add r6, r0, r1
	add r0, r0, #0xc
	orr r1, r2, r3, lsl #8
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	sub r7, r1, #1
	beq _020C1EF8
_020C1EE4:
	bl dns_skipname
	cmp r7, #0
	add r0, r0, #4
	sub r7, r7, #1
	bne _020C1EE4
_020C1EF8:
	cmp r0, r6
	bhs _020C1FA8
_020C1F00:
	bl dns_skipname
	ldrb r7, [r0, #8]
	ldrb r1, [r0, #9]
	ldrb r3, [r0]
	ldrb r2, [r0, #1]
	orr r1, r1, r7, lsl #8
	mov r1, r1, lsl #0x10
	orr r2, r2, r3, lsl #8
	mov r2, r2, lsl #0x10
	cmp r10, r2, lsr #16
	mov r2, r1, lsr #0x10
	bne _020C1F98
	cmp r10, #0xc
	beq _020C1F78
	add r4, r0, #8
	add r0, r0, #6
	add r6, r4, r2
	add r1, r0, r2
	ldrb r3, [r0, r2]
	ldrb r0, [r1, #1]
	ldrb r2, [r4, r2]
	ldrb r1, [r6, #1]
	orr r0, r0, r3, lsl #8
	mov r0, r0, lsl #0x10
	orr r1, r1, r2, lsl #8
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r4, r0, r2, lsl #16
	b _020C1FA8
_020C1F78:
	cmp r2, r8
	movhi r4, #2
	bhi _020C1FA8
	mov r1, r11
	add r0, r0, #0xa
	bl MI_CpuCopy
	mov r4, #1
	b _020C1FA8
_020C1F98:
	add r1, r2, #0xa
	add r0, r0, r1
	cmp r0, r6
	blo _020C1F00
_020C1FA8:
	ldr r0, [sp]
	bl CPS_SocConsume
_020C1FB0:
	ldr r0, _020C1FF4 ; =wfailed
	ldr r0, [r0, #0x18]
	blx r0
	cmp r0, #0
	beq _020C1FE4
	cmp r4, #0
	bne _020C1FE4
	bl OS_GetTick
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	sub r0, r0, r5
	cmp r0, #0xf
	blt _020C1E60
_020C1FE4:
	mov r0, r4
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C1FF0: .word 0x00001001
_020C1FF4: .word wfailed
	arm_func_end resolve_common

	arm_func_start strtol10
strtol10: ; 0x020C1FF8
	str r0, [r1]
	mov r12, #0
	mov r2, #0xa
_020C2004:
	ldrb r3, [r0]
	sub r3, r3, #0x30
	and r3, r3, #0xff
	cmp r3, #9
	mlals r12, r2, r12, r3
	addls r0, r0, #1
	strls r0, [r1]
	bls _020C2004
	mov r0, r12
	bx lr
	arm_func_end strtol10

	arm_func_start rawip
rawip: ; 0x020C202C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r5, #0
	mov r8, r0
	mov r7, r1
	mov r6, r5
	add r4, sp, #0
_020C2048:
	mov r0, r8
	mov r1, r4
	bl strtol10
	ldr r2, [sp]
	cmp r8, r2
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r8, r2
	cmp r0, #0xff
	bhi _020C20A0
	cmp r6, #3
	beq _020C208C
	ldrb r1, [r2]
	add r8, r2, #1
	cmp r1, #0x2e
	bne _020C20A0
_020C208C:
	cmp r6, #3
	bne _020C20AC
	ldrb r1, [r8]
	cmp r1, #0
	beq _020C20AC
_020C20A0:
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020C20AC:
	add r6, r6, #1
	cmp r6, #4
	orr r5, r0, r5, lsl #8
	blt _020C2048
	str r5, [r7]
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end rawip

	arm_func_start resolve_sub
resolve_sub: ; 0x020C20CC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	mov r5, r2
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl CPS_SocUse
	bl CPS_SocDatagramMode
	mov r4, #0
	mov r0, r4
	mov r2, r6
	mov r1, #0x35
	bl CPS_SocBind
	mov r0, r7
	mov r2, r5
	str r4, [sp]
	mov r3, r4
	mov r1, #1
	bl resolve_common
	mov r4, r0
	bl CPS_SocRelease
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end resolve_sub

	arm_func_start CPS_Resolve
CPS_Resolve: ; 0x020C2128
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	ldr r2, _020C229C ; =wfailed
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r8, [r2, #0x80]
	ldr r4, [r2, #0x78]
	str r1, [sp]
	ldr r5, [r2, #0x7c]
	umull r3, r1, r8, r4
	mla r1, r8, r5, r1
	ldr r7, [r2, #0x84]
	ldr r6, [r2, #0x88]
	mla r1, r7, r4, r1
	ldr r4, [r2, #0x8c]
	adds r10, r6, r3
	adc r11, r4, r1
	umull r3, r1, r8, r10
	mla r1, r8, r11, r1
	str r10, [r2, #0x78]
	mla r1, r7, r10, r1
	mov r5, #0
	adds r6, r6, r3
	str r11, [r2, #0x7c]
	mov r7, r5, lsl #0x10
	adc r4, r4, r1
	mov r3, r5, lsl #0x10
	orr r7, r7, r11, lsr #16
	str r6, [r2, #0x78]
	orr r3, r3, r4, lsr #16
	add r1, sp, #0xc
	mov r10, r0
	str r4, [r2, #0x7c]
	strh r7, [sp, #6]
	strh r3, [sp, #8]
	bl rawip
	cmp r0, #0
	ldrne r0, [sp, #0xc]
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #1
	ldr r6, _020C22A0 ; =CPSDnsIp
	strb r0, [sp, #4]
	strb r0, [sp, #5]
	mov r8, r5
	add r11, sp, #6
	add r7, sp, #4
_020C21E4:
	mov r9, r8
	mvn r4, #0
_020C21EC:
	ldrb r0, [r7, r9]
	cmp r0, #0
	beq _020C2268
	ldr r0, [r6, r9, lsl #2]
	cmp r0, #0
	beq _020C2210
	bl get_targetip
	movs r5, r0
	bne _020C2218
_020C2210:
	strb r8, [r7, r9]
	b _020C2268
_020C2218:
	bl inq_arpcache
	cmp r0, #0
	bne _020C2238
	mov r0, r5
	bl arprequest
	cmp r0, #0
	streqb r8, [r7, r9]
	beq _020C2268
_020C2238:
	mov r0, r9, lsl #1
	ldrh r2, [r11, r0]
	ldr r1, [r6, r9, lsl #2]
	mov r0, r10
	bl resolve_sub
	str r0, [sp, #0xc]
	cmp r0, #0
	beq _020C2260
	cmp r0, r4
	bne _020C2288
_020C2260:
	cmp r0, r4
	streqb r8, [r7, r9]
_020C2268:
	add r9, r9, #1
	cmp r9, #2
	blt _020C21EC
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #3
	blt _020C21E4
_020C2288:
	ldr r0, [sp, #0xc]
	cmn r0, #1
	moveq r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C229C: .word wfailed
_020C22A0: .word CPSDnsIp
	arm_func_end CPS_Resolve

	arm_func_start WDSGetRssi8
WDSGetRssi8: ; 0x020C22A4
	tst r0, #2
	mov r0, r0, asr #2
	addeq r0, r0, #0x19
	and r0, r0, #0xff
	bx lr
	arm_func_end WDSGetRssi8

	arm_func_start WDSScanCallback
WDSScanCallback: ; 0x020C22B8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	ldr r7, _020C2594 ; =gWdsWork
	mov r6, r0
	ldr r0, [r7]
	mov r1, #0x400
	add r0, r0, #0xf00
	bl DC_InvalidateRange
	ldrh r0, [r6, #2]
	cmp r0, #0
	ldreqh r0, [r6, #8]
	cmpeq r0, #5
	bne _020C2558
	ldrh r0, [r6, #0xe]
	mov r5, #0
	cmp r0, #0
	bls _020C2558
_020C22FC:
	add r0, r6, r5, lsl #2
	ldr r0, [r0, #0x10]
	ldrb r1, [r0, #0x4a]
	add r1, r1, #0x10
	cmp r1, #0x80
	ldreqh r1, [r0, #0x40]
	cmpeq r1, #1
	ldreq r2, [r0, #0x44]
	ldreq r1, _020C2598 ; =0x00000857
	cmpeq r2, r1
	bne _020C2548
	ldr r1, [r7]
	mov r8, #0
	add r3, r1, #0x1000
	ldr r2, [r3, #0xa88]
	mov r4, r8
	cmp r2, #0
	bls _020C2370
	ldrh r9, [r0, #0x48]
_020C2348:
	add r2, r1, r4, lsl #1
	add r2, r2, #0x1a00
	ldrh r2, [r2, #0x68]
	cmp r2, r9
	moveq r8, #1
	beq _020C2370
	ldr r2, [r3, #0xa88]
	add r4, r4, #1
	cmp r4, r2
	blo _020C2348
_020C2370:
	cmp r8, #1
	beq _020C2548
	ldr r1, [r7]
	mov r4, #0x70
	add r2, r1, #0x1000
	add r1, r1, #0x348
	ldr r2, [r2, #0xa8c]
	add r1, r1, #0x1000
	mla r1, r2, r4, r1
	mov r2, r4
	add r0, r0, #0x50
	bl MI_CpuCopy8
	add r8, sp, #0
	mov r9, #4
	ldr r0, _020C259C ; =0x020E3CCC
	mov r1, r8
	mov r2, r9
	bl MI_CpuCopy8
	add r0, r6, r5, lsl #2
	ldr r0, [r0, #0x10]
	mov r2, r9
	add r1, sp, #4
	add r0, r0, #6
	bl MI_CpuCopy8
	ldr r0, [r7]
	mov r1, r8
	add r0, r0, #0x96
	mov r2, #8
	add r0, r0, #0x1c00
	bl CRYPTO_RC4Init
	ldr r3, [r7]
	mov r2, r4
	add r0, r3, #0x348
	add r8, r0, #0x1000
	add r0, r3, #0x1000
	ldr r1, [r0, #0xa8c]
	add r0, r3, #0x96
	mul r3, r1, r4
	add r1, r8, r3
	add r0, r0, #0x1c00
	add r3, r8, r3
	bl CRYPTO_RC4Encrypt
	ldr r2, [r7]
	mov r8, #0x6e
	add r0, r2, #0x348
	add r10, r0, #0x1000
	add r0, r2, #0x1000
	ldr r1, [r0, #0xa8c]
	add r0, r2, #0x96
	mul r9, r1, r4
	add r1, r2, #0x294
	add r0, r0, #0x1a00
	add r1, r1, #0x1800
	add r2, r10, r9
	mov r3, r8
	bl MATHi_CRC16UpdateRev
	ldr r0, [r7]
	add r1, r10, r9
	add r0, r0, #0x96
	mov r2, r8
	add r0, r0, #0x1a00
	bl MATH_CalcCRC16
	ldr r8, [r7]
	add r1, r8, #0x1000
	ldr r2, [r1, #0xa8c]
	mul r1, r2, r4
	add r2, r8, r1
	add r2, r2, #0x1300
	ldrh r2, [r2, #0xb6]
	cmp r0, r2
	cmpne r2, #0
	beq _020C24AC
	add r0, r8, #0x348
	add r0, r0, #0x1000
	mov r2, r4
	add r0, r0, r1
	mov r1, #0
	bl MI_CpuFill8
	b _020C2548
_020C24AC:
	add r0, r6, r5, lsl #2
	ldr r0, [r0, #0x10]
	ldrh r0, [r0, #2]
	and r0, r0, #0xff
	bl WDSGetRssi8
	add r1, r8, #0x1000
	ldr r1, [r1, #0xa8c]
	ldr r3, _020C2594 ; =gWdsWork
	add r1, r8, r1, lsl #1
	add r1, r1, #0x1a00
	strh r0, [r1, #0x48]
	ldr r2, [r3]
	add r1, r6, r5, lsl #2
	add r0, r2, #0x1000
	ldr r1, [r1, #0x10]
	ldr r0, [r0, #0xa8c]
	ldrh r1, [r1, #0x48]
	add r0, r2, r0, lsl #1
	add r0, r0, #0x1a00
	strh r1, [r0, #0x68]
	ldr r0, [r3]
	add r2, r0, #0x1000
	ldr r0, [r2, #0xa8c]
	add r0, r0, #1
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #28
	add r0, r1, r0, ror #28
	str r0, [r2, #0xa8c]
	ldr r0, [r3]
	add r0, r0, #0x1000
	ldr r1, [r0, #0xa88]
	add r1, r1, #1
	str r1, [r0, #0xa88]
	ldr r0, [r3]
	add r0, r0, #0x1000
	ldr r1, [r0, #0xa88]
	cmp r1, #0x10
	movgt r1, #0x10
	strgt r1, [r0, #0xa88]
_020C2548:
	ldrh r0, [r6, #0xe]
	add r5, r5, #1
	cmp r5, r0
	blo _020C22FC
_020C2558:
	ldr r1, _020C2594 ; =gWdsWork
	mov r2, #2
	ldr r0, [r1]
	add r0, r0, #0x1000
	str r2, [r0, #0xa90]
	ldr r0, [r1]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x344]
	cmp r1, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r6
	blx r1
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C2594: .word gWdsWork
_020C2598: .word 0x00000857
_020C259C: .word ov15_020E3CCC
	arm_func_end WDSScanCallback

	arm_func_start WDS_GetWorkAreaSize
WDS_GetWorkAreaSize: ; 0x020C25A0
	ldr r0, _020C25A8 ; =0x00001DA0
	bx lr
_020C25A8: .word 0x00001DA0
	arm_func_end WDS_GetWorkAreaSize

	arm_func_start WDS_Initialize
WDS_Initialize: ; 0x020C25AC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r5, r2
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _020C2628 ; =gWdsWork
	str r0, [r7]
	bl WDS_GetWorkAreaSize
	mov r2, r0
	mov r4, #0
	ldr r0, [r7]
	mov r1, r4
	bl MI_CpuFill8
	ldr r0, [r7]
	ldr r1, _020C262C ; =0x0000A001
	add r0, r0, #0x1000
	str r4, [r0, #0xa90]
	ldr r0, [r7]
	add r0, r0, #0x1a00
	strh r4, [r0, #0x94]
	ldr r0, [r7]
	add r0, r0, #0x96
	add r0, r0, #0x1a00
	bl MATHi_CRC16InitTableRev
	ldr r0, [r7]
	mov r1, r6
	mov r2, r5
	bl WM_Initialize
	cmp r0, #2
	moveq r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C2628: .word gWdsWork
_020C262C: .word 0x0000A001
	arm_func_end WDS_Initialize

	arm_func_start WDS_End
WDS_End: ; 0x020C2630
	stmfd sp!, {r4, lr}
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r2, _020C266C ; =gWdsWork
	mov r3, #3
	ldr r1, [r2]
	mov r4, #0
	add r1, r1, #0x1000
	str r3, [r1, #0xa90]
	str r4, [r2]
	bl WM_End
	cmp r0, #2
	moveq r0, r4
	ldmfd sp!, {r4, pc}
_020C266C: .word gWdsWork
	arm_func_end WDS_End

	arm_func_start WDS_StartScan
WDS_StartScan: ; 0x020C2670
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r4, _020C2720 ; =gWdsWork
	mov r1, #0x400
	ldr r0, [r4]
	add r2, r0, #0xf00
	add r0, r0, #0x1000
	str r2, [r0, #0x300]
	ldr r0, [r4]
	add r0, r0, #0x1300
	strh r1, [r0, #4]
	bl WM_GetAllowedChannel
	ldr r1, [r4]
	add r1, r1, #0x1300
	strh r0, [r1, #6]
	bl WM_GetDispersionScanPeriod
	ldr r1, [r4]
	mov r5, #1
	add r1, r1, #0x1300
	strh r0, [r1, #8]
	ldr r0, [r4]
	mov r1, #0xff
	add r0, r0, #0x1300
	strh r5, [r0, #0x10]
	ldr r0, [r4]
	mov r2, #6
	add r0, r0, #0xa
	add r0, r0, #0x1300
	bl MI_CpuFill8
	ldr r1, [r4]
	ldr r0, _020C2724 ; =WDSScanCallback
	add r1, r1, #0x1000
	str r6, [r1, #0x344]
	ldr r1, [r4]
	add r1, r1, #0x1000
	str r5, [r1, #0xa90]
	ldr r1, [r4]
	add r1, r1, #0x1300
	bl WM_StartScanEx
	cmp r0, #2
	moveq r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020C2720: .word gWdsWork
_020C2724: .word WDSScanCallback
	arm_func_end WDS_StartScan

	arm_func_start WDS_EndScan
WDS_EndScan: ; 0x020C2728
	stmfd sp!, {r3, lr}
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, _020C275C ; =gWdsWork
	mov r2, #2
	ldr r1, [r1]
	add r1, r1, #0x1000
	str r2, [r1, #0xa90]
	bl WM_EndScan
	cmp r0, #2
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_020C275C: .word gWdsWork
	arm_func_end WDS_EndScan

	arm_func_start WDS_GetApInfoByIndex
WDS_GetApInfoByIndex: ; 0x020C2760
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _020C27F8 ; =gWdsWork
	mov r6, r0
	ldr r0, [r7]
	mov r5, r1
	add r0, r0, #0x1000
	ldr r1, [r0, #0xa90]
	cmp r1, #2
	mvnne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	blt _020C279C
	ldr r0, [r0, #0xa88]
	cmp r6, r0
	blt _020C27A4
_020C279C:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C27A4:
	mov r4, #0
	mov r0, r5
	mov r1, r4
	mov r2, #0x78
	bl MI_CpuFill8
	mov r0, #1
	str r0, [r5]
	ldr r0, [r7]
	mov r2, #0x70
	add r0, r0, r6, lsl #1
	add r0, r0, #0x1a00
	ldrh r0, [r0, #0x48]
	add r1, r5, #6
	strh r0, [r5, #4]
	ldr r0, [r7]
	add r0, r0, #0x348
	add r0, r0, #0x1000
	mla r0, r6, r2, r0
	bl MI_CpuCopy8
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C27F8: .word gWdsWork
	arm_func_end WDS_GetApInfoByIndex

	arm_func_start WDS_GetApInfoAll
WDS_GetApInfoAll: ; 0x020C27FC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _020C28A0 ; =gWdsWork
	mov r5, r0
	ldr r1, [r1]
	add r1, r1, #0x1000
	ldr r1, [r1, #0xa90]
	cmp r1, #2
	mvnne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r6, #0
	mov r1, r6
	mov r2, #0x780
	bl MI_CpuFill8
	mov r4, r6
	mov r0, #0x78
_020C2838:
	mul r1, r6, r0
	add r6, r6, #1
	str r4, [r5, r1]
	cmp r6, #0x10
	blt _020C2838
	ldr r8, _020C28A0 ; =gWdsWork
	ldr r0, [r8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0xa88]
	cmp r0, #0
	ble _020C2898
	mov r6, #0x78
	mvn r7, #0
_020C286C:
	mla r1, r4, r6, r5
	mov r0, r4
	bl WDS_GetApInfoByIndex
	cmp r0, r7
	beq _020C2898
	ldr r0, [r8]
	add r4, r4, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0xa88]
	cmp r4, r0
	blt _020C286C
_020C2898:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C28A0: .word gWdsWork
	arm_func_end WDS_GetApInfoAll

	arm_func_start DWCi_AC_GetBeacon
DWCi_AC_GetBeacon: ; 0x020C28A4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r0, #0x10
	mvn r5, #0
	bl DWCi_AC_GetMemPtr
	mov r4, #1
	mov r6, r0
	mov r0, r4
	bl DWCi_AC_GetMemPtr
	ldrb r1, [r0, #0xb]
	bic r1, r1, #0xf
	orr r1, r1, #1
	strb r1, [r0, #0xb]
	bl DWCi_AC_GetPhase
	cmp r0, #3
	beq _020C28F8
	cmp r0, #4
	beq _020C294C
	cmp r0, #5
	beq _020C2998
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C28F8:
	ldrh r1, [r7, #0xa]
	ldrb r4, [r6, #0xd11]
	cmp r1, #0
	ldrneb r0, [r7, #0xc]
	cmpne r0, #0
	bne _020C291C
	ldrh r0, [r7, #0x36]
	bl DWCi_AC_SetStealthChannel
	b _020C29DC
_020C291C:
	cmp r1, #1
	cmpeq r0, #0x20
	bne _020C2948
	ldrh r0, [r7, #0x36]
	bl DWCi_AC_SetStealthChannel
_020C2930:
	ldrb r1, [r6, #0xd10]
	mov r0, r7
	add r2, r6, #0x300
	bl dwcacbeacon_CompareList
	mov r5, r0
	b _020C29DC
_020C2948:
	b _020C2930
_020C294C:
	ldrb r2, [r6, #0xd0f]
	mov r1, #0xc0
	mov r0, r7
	mla r1, r2, r1, r6
	add r1, r1, #0x400
	ldrh r2, [r1, #0xa6]
	mov r1, r6
	sub r2, r2, #1
	and r4, r2, #0xff
	bl dwcacbeacon_CompareListDiff
	movs r5, r0
	bmi _020C29DC
	ldrb r1, [r6, #0xd0f]
	add r0, r6, #0x47
	add r2, r0, #0x400
	ldrb r0, [r2, r1, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r2, r1, lsl #2]
	b _020C29DC
_020C2998:
	ldrb r0, [r6, #0xd0f]
	add r1, r6, #0x300
	mov r8, #0x24
	mla r2, r0, r8, r1
	mov r1, r4
	mov r0, r7
	ldrb r4, [r6, #0xd11]
	bl dwcacbeacon_CompareList
	movs r5, r0
	bmi _020C29DC
	ldrb r0, [r6, #0xd0f]
	add r2, r6, #0x300
	mul r1, r0, r8
	ldrb r0, [r2, r1]
	bic r0, r0, #0xf
	orr r0, r0, #1
	strb r0, [r2, r1]
_020C29DC:
	cmp r5, #0
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r5
	mov r1, r7
	mov r2, r4
	mov r3, r6
	bl dwcacbeacon_AddList
	mov r1, r6
	bl dwcacbeacon_SortList
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end DWCi_AC_GetBeacon

	arm_func_start DWCi_AC_CheckNintendoSSID
DWCi_AC_CheckNintendoSSID: ; 0x020C2A04
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	mov r4, r0
	ldrb r0, [r4, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	beq _020C2A30
	cmp r0, #4
	bne _020C2A58
_020C2A30:
	ldrh r0, [r5, #0x2c]
	mov r0, r0, asr #4
	and r0, r0, #1
	cmp r0, #1
	bne _020C2A58
	add r0, r5, #0xc
	bl DWCi_AC_CheckNintendoUsbAP
	cmp r0, #1
	moveq r0, #6
	ldmeqfd sp!, {r3, r4, r5, pc}
_020C2A58:
	ldrb r0, [r4, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	beq _020C2A70
	cmp r0, #5
	bne _020C2A98
_020C2A70:
	ldrh r0, [r5, #0x2c]
	mov r0, r0, asr #4
	and r0, r0, #1
	cmp r0, #1
	bne _020C2A98
	add r0, r5, #0xc
	bl DWCi_AC_CheckNintendoShopAP
	cmp r0, #1
	moveq r0, #7
	ldmeqfd sp!, {r3, r4, r5, pc}
_020C2A98:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DWCi_AC_CheckNintendoSSID

	arm_func_start DWCi_AC_IsSupportWPA
DWCi_AC_IsSupportWPA: ; 0x020C2AA0
	mov r0, #0
	bx lr
	arm_func_end DWCi_AC_IsSupportWPA

	arm_func_start dwcacbeacon_CompareList
dwcacbeacon_CompareList: ; 0x020C2AA8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r0
	ldrh r3, [r6, #0xa]
	mov r5, r1
	mov r4, r2
	cmp r3, #0x20
	bne _020C2AD0
	bl DWCi_AC_CheckNintendoSSID
	cmp r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C2AD0:
	cmp r5, #0
	mov r8, #0
	ble _020C2B1C
	ldrh r9, [r6, #0xa]
	and r7, r9, #0xff
_020C2AE4:
	ldrb r0, [r4, #3]
	cmp r7, r0
	bne _020C2B0C
	mov r2, r9
	add r0, r6, #0xc
	add r1, r4, #4
	bl strncmp
	cmp r0, #0
	ldreqb r0, [r4, #1]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C2B0C:
	add r8, r8, #1
	cmp r8, r5
	add r4, r4, #0x24
	blt _020C2AE4
_020C2B1C:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end dwcacbeacon_CompareList

	arm_func_start dwcacbeacon_CompareListDiff
dwcacbeacon_CompareListDiff: ; 0x020C2B24
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	ldrh r2, [r9, #0xa]
	mov r8, r1
	cmp r2, #0x20
	bne _020C2B48
	bl DWCi_AC_CheckNintendoSSID
	cmp r0, #0
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C2B48:
	ldrb r7, [r8, #0xd12]
	mov r5, #0
	cmp r7, #0
	ble _020C2BAC
	ldrh r6, [r9, #0xa]
	add r0, r8, #0x7c
	add r4, r0, #0x400
	mov r10, #0xc0
_020C2B68:
	mul r1, r5, r10
	add r0, r8, r1
	add r0, r0, #0x400
	ldrh r0, [r0, #0x7a]
	cmp r6, r0
	bne _020C2BA0
	mov r2, r6
	add r0, r9, #0xc
	add r1, r4, r1
	bl strncmp
	cmp r0, #0
	addeq r0, r8, r5, lsl #2
	ldreqb r0, [r0, #0x445]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C2BA0:
	add r5, r5, #1
	cmp r5, r7
	blt _020C2B68
_020C2BAC:
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end dwcacbeacon_CompareListDiff

	arm_func_start dwcacbeacon_AddList
dwcacbeacon_AddList: ; 0x020C2BB4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	ldrb r4, [r3, #0xd12]
	str r0, [sp]
	mvn r0, #0
	str r3, [sp, #8]
	mov r5, r1
	str r2, [sp, #4]
	cmp r4, #0
	mov r6, #1
	str r0, [sp, #0xc]
	mov r7, #0
	ble _020C2CD8
	mov r0, r3
	add r1, r0, #0x7c
	add r2, r0, #0x74
	add r0, r1, #0x400
	str r0, [sp, #0x14]
	add r0, r2, #0x400
	ldrb r11, [r5, #4]
	str r0, [sp, #0x10]
_020C2C08:
	mov r0, #0xc0
	mul r9, r7, r0
	ldr r0, [sp, #0x10]
	mov r2, #0
	add r10, r0, r9
	ldrb r0, [r0, r9]
	mov r8, r2
	mov r3, r2
	cmp r11, r0
	ldreqb r1, [r5, #5]
	ldreqb r0, [r10, #1]
	mov r12, r2
	mov lr, r2
	cmpeq r1, r0
	moveq r8, r6
	cmp r8, #0
	beq _020C2C5C
	ldrb r1, [r5, #6]
	ldrb r0, [r10, #2]
	cmp r1, r0
	moveq lr, r6
_020C2C5C:
	cmp lr, #0
	beq _020C2C74
	ldrb r1, [r5, #7]
	ldrb r0, [r10, #3]
	cmp r1, r0
	moveq r12, r6
_020C2C74:
	cmp r12, #0
	beq _020C2C8C
	ldrb r1, [r5, #8]
	ldrb r0, [r10, #4]
	cmp r1, r0
	moveq r3, r6
_020C2C8C:
	cmp r3, #0
	beq _020C2CA4
	ldrb r0, [r10, #5]
	ldrb r1, [r5, #9]
	cmp r1, r0
	moveq r2, r6
_020C2CA4:
	cmp r2, #0
	beq _020C2CCC
	ldr r0, [sp, #0x14]
	ldrh r2, [r5, #0xa]
	add r1, r0, r9
	add r0, r5, #0xc
	bl strncmp
	cmp r0, #0
	streq r7, [sp, #0xc]
	beq _020C2CD8
_020C2CCC:
	add r7, r7, #1
	cmp r7, r4
	blt _020C2C08
_020C2CD8:
	ldr r0, [sp, #0xc]
	mov r1, r5
	cmn r0, #1
	bne _020C2D20
	ldr r0, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	and r0, r0, #0xff
	bl dwcacbeacon_SetDataListTail
	ldr r0, [sp, #8]
	ldrb r0, [r0, #0xd12]
	cmp r0, #0xa
	addlo r1, r0, #1
	ldrlo r0, [sp, #8]
	strlob r1, [r0, #0xd12]
	mov r0, #0xa
	str r0, [sp, #0xc]
	b _020C2D2C
_020C2D20:
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl dwcacbeacon_UpDateList
_020C2D2C:
	ldr r0, [sp, #0xc]
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end dwcacbeacon_AddList

	arm_func_start dwcacbeacon_SetDataListTail
dwcacbeacon_SetDataListTail: ; 0x020C2D38
	stmfd sp!, {r4, lr}
	ldrb lr, [r3, #0xd0c]
	add r12, r3, #0x6c
	strb r0, [r12, #0x401]
	mov r0, lr, lsl #0x1a
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	ldrh r4, [r1, #2]
	bne _020C2D70
	mov r0, r4, asr #2
	tst r4, #2
	andne r4, r0, #0xff
	addeq r0, r0, #0x19
	andeq r4, r0, #0xff
_020C2D70:
	ldrb lr, [r12, #0x403]
	mov r0, r1
	and r1, r2, #0x7f
	bic r2, lr, #0x7f
	orr r2, r2, r1
	add r1, r3, #0xbf0
	strb r4, [r12, #0x402]
	strb r2, [r12, #0x403]
	bl WCMi_BssDescCopy
	ldmfd sp!, {r4, pc}
	arm_func_end dwcacbeacon_SetDataListTail

	arm_func_start dwcacbeacon_UpDateList
dwcacbeacon_UpDateList: ; 0x020C2D98
	stmfd sp!, {r4, lr}
	ldrb r4, [r3, #0xd0c]
	mov r12, #0xc0
	mul r12, r0, r12
	add lr, r3, #0x44
	mov r4, r4, lsl #0x1a
	add lr, lr, #0x400
	mov r4, r4, lsr #0x1f
	cmp r4, #1
	add r0, lr, r0, lsl #2
	add r3, r3, #0x470
	ldrh r4, [r1, #2]
	bne _020C2DE0
	tst r4, #2
	mov r4, r4, asr #2
	andne r4, r4, #0xff
	addeq r4, r4, #0x19
	andeq r4, r4, #0xff
_020C2DE0:
	ldrb lr, [r0, #2]
	and r4, r4, #0xff
	cmp r4, lr
	bls _020C2E08
	strb r4, [r0, #2]
	ldrb lr, [r0, #3]
	and r2, r2, #0x7f
	bic lr, lr, #0x7f
	orr r2, lr, r2
	strb r2, [r0, #3]
_020C2E08:
	mov r0, r1
	add r1, r3, r12
	mov r2, #0xc0
	bl MIi_CpuCopy32
	ldmfd sp!, {r4, pc}
	arm_func_end dwcacbeacon_UpDateList

	arm_func_start dwcacbeacon_SortList
dwcacbeacon_SortList: ; 0x020C2E1C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc4
	mov r11, r1
	mov r10, r0
	add r0, r11, #0x44
	add r6, r0, #0x400
	add r7, r11, #0x470
	subs r9, r10, #1
	mov r5, #1
	mov r4, #0xc0
	bmi _020C2FDC
_020C2E48:
	ldrb r0, [r11, #0xd0c]
	mov r8, #0
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _020C2E94
	mla r0, r10, r4, r7
	bl DWCi_AC_IsSupportWPA
	cmp r0, #1
	bne _020C2E94
	add r0, r6, r10, lsl #2
	ldrb r1, [r0, #2]
	add r0, r6, r9, lsl #2
	ldrb r0, [r0, #2]
	cmp r1, r0
	bhs _020C2E8C
	b _020C2F2C
_020C2E8C:
	mov r8, r5
	b _020C2F58
_020C2E94:
	add r1, r6, r10, lsl #2
	ldrb r0, [r1, #1]
	cmp r0, #7
	blo _020C2F00
	cmp r0, #0xa
	bhi _020C2F00
	ldrb r0, [r1, #2]
	add r1, r6, r9, lsl #2
	ldrb r3, [r1, #2]
	cmp r0, r3
	blo _020C2F58
	ldrb r2, [r1, #1]
	cmp r2, #7
	blo _020C2ED4
	cmp r2, #0xa
	bls _020C2EFC
_020C2ED4:
	add r0, r6, r9, lsl #2
	ldrb r0, [r0, #3]
	ldrb r12, [r6, r9, lsl #2]
	mov r1, r0, lsl #0x18
	add r2, r12, r2
	add r2, r3, r2
	mov r0, r0, lsl #0x19
	add r0, r2, r0, lsr #25
	adds r0, r0, r1, lsr #31
	bne _020C2F58
_020C2EFC:
	b _020C2E8C
_020C2F00:
	add r0, r6, r10, lsl #2
	ldrb r2, [r0, #2]
	add r1, r6, r9, lsl #2
	ldrb r0, [r1, #2]
	cmp r2, r0
	blo _020C2F44
	ldrb r0, [r11, #0xd0c]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _020C2F40
_020C2F2C:
	mla r0, r9, r4, r7
	bl DWCi_AC_IsSupportWPA
	cmp r0, #0
	moveq r8, r5
	b _020C2F58
_020C2F40:
	b _020C2E8C
_020C2F44:
	ldrb r0, [r1, #1]
	cmp r0, #7
	blo _020C2F58
	cmp r0, #0xa
	movls r8, r5
_020C2F58:
	cmp r8, #1
	bne _020C2FD4
	add r8, r6, r9, lsl #2
	mov r0, r8
	add r1, sp, #0
	mov r2, #4
	bl MIi_CpuCopy32
	mov r1, r8
	add r8, r6, r10, lsl #2
	mov r0, r8
	mov r2, #4
	bl MIi_CpuCopy32
	mov r1, r8
	add r0, sp, #0
	mov r2, #4
	bl MIi_CpuCopy32
	mul r8, r9, r4
	add r0, r7, r8
	add r1, sp, #4
	mov r2, r4
	bl MIi_CpuCopy32
	add r1, r7, r8
	mul r8, r10, r4
	add r0, r7, r8
	mov r2, r4
	bl MIi_CpuCopy32
	add r1, r7, r8
	add r0, sp, #4
	mov r2, r4
	bl MIi_CpuCopy32
	mov r10, r9
_020C2FD4:
	subs r9, r9, #1
	bpl _020C2E48
_020C2FDC:
	mov r4, #0
	mov r0, r4
	add r1, r6, #0x28
	mov r2, #4
	bl MIi_CpuClear32
	mov r0, r4
	add r1, r7, #0x780
	mov r2, #0xc0
	bl MIi_CpuClear32
	add sp, sp, #0xc4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end dwcacbeacon_SortList

	arm_func_start DWCi_AC_CallBackWCM
DWCi_AC_CallBackWCM: ; 0x020C3008
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	ldrsh r1, [r4]
	cmp r1, #5
	bne _020C3080
	ldrsh r1, [r4, #2]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r4, #8]
	cmp r1, #0xd
	beq _020C3050
	cmp r1, #0xf
	beq _020C305C
	cmp r1, #0x11
	beq _020C3068
	b _020C3074
_020C3050:
	mov r1, #1
	strb r1, [r0, #0xd14]
	ldmfd sp!, {r4, pc}
_020C305C:
	mov r1, #2
	strb r1, [r0, #0xd14]
	ldmfd sp!, {r4, pc}
_020C3068:
	mov r1, #3
	strb r1, [r0, #0xd14]
	ldmfd sp!, {r4, pc}
_020C3074:
	mov r1, #4
	strb r1, [r0, #0xd14]
	ldmfd sp!, {r4, pc}
_020C3080:
	cmp r1, #7
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #4]
	bl DWCi_AC_GetBeacon
	ldmfd sp!, {r4, pc}
	arm_func_end DWCi_AC_CallBackWCM

	arm_func_start DWCi_AC_CloseNetwork
DWCi_AC_CloseNetwork: ; 0x020C3094
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4]
	cmp r0, #0xa
	bhi _020C30D8
	bl dwcacclose_DisConnectAP
	cmp r0, #1
	moveq r0, #0
	streqb r0, [r4]
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	cmn r0, #1
	bne _020C310C
	mov r0, #0x12
	strb r0, [r4]
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020C30D8:
	cmp r0, #0xe
	bne _020C30F4
	bl DWC_Netcheck_Abort
	bl DWC_Netcheck_Destroy
	mov r0, #0xc
	strb r0, [r4]
	b _020C310C
_020C30F4:
	cmp r0, #0x12
	bhs _020C310C
	bl dwcacclose_CloseSocket
	cmp r0, #1
	moveq r0, #0xa
	streqb r0, [r4]
_020C310C:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end DWCi_AC_CloseNetwork

	arm_func_start dwcacclose_DisConnectAP
dwcacclose_DisConnectAP: ; 0x020C3114
	stmfd sp!, {r4, lr}
	bl WCM_GetPhase
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _020C31A0
_020C3128: ; jump table
	b _020C315C ; case 0
	b _020C3164 ; case 1
	b _020C31A0 ; case 2
	b _020C316C ; case 3
	b _020C31A0 ; case 4
	b _020C31A0 ; case 5
	b _020C3174 ; case 6
	b _020C31A0 ; case 7
	b _020C31A0 ; case 8
	b _020C317C ; case 9
	b _020C31A0 ; case 10
	b _020C318C ; case 11
	b _020C3184 ; case 12
_020C315C:
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020C3164:
	bl WCM_Finish
	b _020C31A0
_020C316C:
	bl WCM_CleanupAsync
	b _020C31A0
_020C3174:
	bl WCM_EndSearchAsync
	b _020C31A0
_020C317C:
	bl WCM_DisconnectAsync
	b _020C31A0
_020C3184:
	bl WCM_TerminateAsync
	b _020C31A0
_020C318C:
	mov r4, #0
	mov r0, r4
	bl DWCi_AC_SetError
	sub r0, r4, #1
	ldmfd sp!, {r4, pc}
_020C31A0:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end dwcacclose_DisConnectAP

	arm_func_start dwcacclose_CloseSocket
dwcacclose_CloseSocket: ; 0x020C31A8
	stmfd sp!, {r3, lr}
	ldr r0, _020C31E8 ; =SOCLiConfigPtr
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl SOCL_CalmDown
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, pc}
	bl SOC_Cleanup
	cmp r0, #0
	cmnne r0, #0x27
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_020C31E8: .word SOCLiConfigPtr
	arm_func_end dwcacclose_CloseSocket

	arm_func_start DWCi_AC_ConnectAP
DWCi_AC_ConnectAP: ; 0x020C31EC
	stmfd sp!, {r4, lr}
	bl DWCi_AC_GetPhase
	mov r4, r0
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	cmp r4, #7
	beq _020C3214
	cmp r4, #8
	beq _020C321C
	b _020C3224
_020C3214:
	bl dwcacconnect_ConnectStart
	b _020C3220
_020C321C:
	bl dwcacconnect_ConnectAP
_020C3220:
	mov r4, r0
_020C3224:
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end DWCi_AC_ConnectAP

	arm_func_start dwcacconnect_ConnectStart
dwcacconnect_ConnectStart: ; 0x020C322C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r2, [r5, #0xd13]
	add r3, r5, #0x470
	mov r1, #0xc0
	mla r4, r2, r1, r3
	bl dwcacconnect_GetConnectType
	add r1, r5, #0xb8
	strb r0, [r5, #0xd0d]
	add r0, r1, #0xc00
	mov r1, #0
	mov r2, #0x52
	bl MI_CpuFill8
	add r2, r5, #0xb8
	ldrb r1, [r5, #0xd0d]
	mov r0, r5
	add r2, r2, #0xc00
	bl dwcacconnect_GetWepKey
	cmp r0, #0
	ldrb r0, [r5, #0xd0b]
	bic r0, r0, #0xc
	beq _020C32E0
	orr r0, r0, #4
	strb r0, [r5, #0xd0b]
	ldrh r0, [r4, #0x2c]
	mov r0, r0, asr #4
	tst r0, #1
	bne _020C32B4
	ldrb r1, [r5, #0xd13]
	mov r2, #3
	mov r0, #9
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmfd sp!, {r3, r4, r5, pc}
_020C32B4:
	ldrb r0, [r5, #0xd0d]
	cmp r0, #6
	ldreqb r0, [r4, #0x15]
	cmpeq r0, #0
	bne _020C3310
	ldrb r1, [r5, #0xd13]
	mov r2, #3
	mov r0, #9
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmfd sp!, {r3, r4, r5, pc}
_020C32E0:
	strb r0, [r5, #0xd0b]
	ldrh r0, [r4, #0x2c]
	mov r0, r0, asr #4
	and r0, r0, #1
	cmp r0, #1
	bne _020C3310
	ldrb r1, [r5, #0xd13]
	mov r2, #3
	mov r0, #9
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmfd sp!, {r3, r4, r5, pc}
_020C3310:
	mov r0, #0
	strb r0, [r5, #0xd15]
	strb r0, [r5, #0xd14]
	mov r0, #8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end dwcacconnect_ConnectStart

	arm_func_start dwcacconnect_ConnectAP
dwcacconnect_ConnectAP: ; 0x020C3324
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r4, #0
	bl WCM_GetPhase
	ldrb r2, [r8, #0xd13]
	mov r1, #0xc0
	cmp r0, #3
	add r6, r8, #0x470
	smulbb r5, r2, r1
	bne _020C3428
	mov r0, r8
	bl dwcacconnect_GetPowerMode
	ldrb r1, [r8, #0xd15]
	mov r7, r0
	add r0, r1, #1
	and r1, r0, #0xff
	strb r0, [r8, #0xd15]
	cmp r1, #3
	bls _020C338C
	ldrb r0, [r8, #0xd13]
	strb r4, [r8, #0xd15]
	mov r1, #1
	add r0, r8, r0, lsl #2
	strb r1, [r0, #0x444]
	mov r0, #9
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C338C:
	cmp r1, #1
	beq _020C3404
	ldrb r0, [r8, #0xd14]
	cmp r0, #1
	ldreqb r0, [r8, #0xd0b]
	biceq r0, r0, #0xc
	streqb r0, [r8, #0xd0b]
	beq _020C3404
	cmp r0, #2
	bne _020C33D0
	ldrb r0, [r8, #0xd13]
	strb r4, [r8, #0xd15]
	mov r1, #3
	add r0, r8, r0, lsl #2
	strb r1, [r0, #0x444]
	mov r0, #9
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C33D0:
	cmp r0, #3
	bne _020C33F4
	ldrb r0, [r8, #0xd13]
	strb r4, [r8, #0xd15]
	mov r1, #4
	add r0, r8, r0, lsl #2
	strb r1, [r0, #0x444]
	mov r0, #9
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C33F4:
	cmp r1, #3
	ldreqb r0, [r8, #0xd0b]
	biceq r0, r0, #0xc
	streqb r0, [r8, #0xd0b]
_020C3404:
	mov r0, r8
	bl dwcacconnect_GetAuthMode
	mov r2, r0
	add r1, r8, #0xb8
	add r0, r6, r5
	add r1, r1, #0xc00
	orr r2, r7, r2
	bl WCM_ConnectAsync
	b _020C3474
_020C3428:
	cmp r0, #9
	bne _020C3448
	strb r4, [r8, #0xd15]
	bl OS_GetTick
	str r0, [r8, #0xcb0]
	str r1, [r8, #0xcb4]
	mov r0, #0xa
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C3448:
	cmp r0, #0xb
	bne _020C3460
	mov r0, r4
	bl DWCi_AC_SetError
	mov r0, #0x11
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C3460:
	ble _020C3474
	mov r0, #4
	bl DWCi_AC_SetError
	mov r0, #0x11
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C3474:
	mov r0, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end dwcacconnect_ConnectAP

	arm_func_start dwcacconnect_GetConnectType
dwcacconnect_GetConnectType: ; 0x020C347C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	ldrb r1, [r10, #0xd13]
	mov r9, #0
	add r2, r10, #0x470
	mov r0, #0xc0
	str r9, [sp, #4]
	mla r5, r1, r0, r2
	bl DWCi_AC_GetSearchListNum
	ldrb r1, [r10, #0xd0c]
	mov r8, r0
	mov r0, r1, lsl #0x19
	movs r0, r0, lsr #0x1f
	bne _020C3598
	ldrh r0, [r5, #0xa]
	cmp r0, #0x20
	bne _020C34E0
	mov r0, r5
	bl DWCi_AC_CheckNintendoSSID
	cmp r0, #0
	str r0, [sp, #4]
	addgt r9, r9, #1
	strle r9, [sp, #4]
	b _020C3500
_020C34E0:
	cmp r0, #8
	bne _020C3500
	mov r0, r5
	bl DWCi_AC_CheckFreespot
	cmp r0, #0
	str r0, [sp, #4]
	addne r9, r9, #1
	streq r9, [sp, #4]
_020C3500:
	cmp r8, #0
	mov r6, #0
	ble _020C35FC
	add r0, r10, #0x304
	add r4, r10, #0x300
	add r11, r10, #0x10c
	str r0, [sp, #8]
_020C351C:
	mov r0, #0x24
	mul r7, r6, r0
	add r0, r10, r7
	str r0, [sp]
	ldrh r2, [r5, #0xa]
	ldrb r0, [r0, #0x303]
	cmp r2, r0
	bne _020C3588
	ldr r1, [sp, #8]
	add r0, r5, #0xc
	add r1, r1, r7
	bl strncmp
	cmp r0, #0
	bne _020C3588
	cmp r9, #0
	ldreq r0, [sp]
	ldreqb r0, [r0, #0x301]
	streq r0, [sp, #4]
	beq _020C3584
	ldrb r0, [r4, r7]
	bic r0, r0, #0xf0
	orr r0, r0, #0x10
	strb r0, [r4, r7]
	ldrb r0, [r11, #0xc00]
	orr r0, r0, #0x40
	strb r0, [r11, #0xc00]
_020C3584:
	add r9, r9, #1
_020C3588:
	add r6, r6, #1
	cmp r6, r8
	blt _020C351C
	b _020C35FC
_020C3598:
	mov r5, r9
	cmp r8, #0
	ble _020C35EC
	add r3, r10, #0x300
	mov r1, #0x24
_020C35AC:
	mul r4, r9, r1
	ldrb r0, [r3, r4]
	mov r2, r0, lsl #0x18
	mov r2, r2, lsr #0x1c
	cmp r2, #1
	bne _020C35E0
	cmp r5, #0
	biceq r0, r0, #0xf0
	streqb r0, [r3, r4]
	addeq r0, r10, r4
	ldreqb r0, [r0, #0x301]
	add r5, r5, #1
	streq r0, [sp, #4]
_020C35E0:
	add r9, r9, #1
	cmp r9, r8
	blt _020C35AC
_020C35EC:
	cmp r5, #1
	ldreqb r0, [r10, #0xd0c]
	biceq r0, r0, #0x40
	streqb r0, [r10, #0xd0c]
_020C35FC:
	ldr r0, [sp, #4]
	and r0, r0, #0xff
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end dwcacconnect_GetConnectType

	arm_func_start dwcacconnect_GetPowerMode
dwcacconnect_GetPowerMode: ; 0x020C360C
	ldrb r0, [r0, #0xd0b]
	mov r0, r0, lsl #0x1e
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	moveq r0, #0x30000
	movne r0, #0x20000
	bx lr
	arm_func_end dwcacconnect_GetPowerMode

	arm_func_start dwcacconnect_GetAuthMode
dwcacconnect_GetAuthMode: ; 0x020C3628
	ldrb r0, [r0, #0xd0b]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	moveq r0, #0xc0000
	movne r0, #0x80000
	bx lr
	arm_func_end dwcacconnect_GetAuthMode

	arm_func_start dwcacconnect_GetWepKey
dwcacconnect_GetWepKey: ; 0x020C3644
	stmfd sp!, {r4, lr}
	mov r4, r2
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _020C3714
_020C3658: ; jump table
	b _020C3688 ; case 0
	b _020C3684 ; case 1
	b _020C3680 ; case 2
	b _020C36B4 ; case 3
	b _020C36B0 ; case 4
	b _020C36AC ; case 5
	b _020C36C8 ; case 6
	b _020C36F0 ; case 7
	b _020C3714 ; case 8
	b _020C3714 ; case 9
_020C3680:
	add r0, r0, #0x100
_020C3684:
	add r0, r0, #0x100
_020C3688:
	ldrb r2, [r0, #0xe6]
	add r0, r0, #0x80
	add r1, r4, #2
	mov r2, r2, lsl #0x1e
	mov r3, r2, lsr #0x1e
	mov r2, #0x10
_020C36A0:
	strb r3, [r4]
	bl MI_CpuCopy8
	b _020C3714
_020C36AC:
	add r0, r0, #0x100
_020C36B0:
	add r0, r0, #0x100
_020C36B4:
	mov r3, #1
	add r0, r0, #0xd1
	add r1, r4, #2
	mov r2, #5
	b _020C36A0
_020C36C8:
	mov r1, #2
	strb r1, [r4]
	ldrb r1, [r0, #0xd13]
	add r0, r0, #0x7c
	add r2, r0, #0x400
	mov r0, #0xc0
	mla r0, r1, r0, r2
	add r1, r4, #2
	bl DWCi_AC_GetNintendoUSBWepKey
	b _020C3714
_020C36F0:
	mov r1, #2
	strb r1, [r4]
	ldrb r1, [r0, #0xd13]
	add r0, r0, #0x7c
	add r2, r0, #0x400
	mov r0, #0xc0
	mla r0, r1, r0, r2
	add r1, r4, #2
	bl DWCi_AC_GetNintendoShopWepKey
_020C3714:
	ldrb r0, [r4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end dwcacconnect_GetWepKey

	arm_func_start DWC_AC_Create
DWC_AC_Create: ; 0x020C3728
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, #1
	mov r5, #0xcc
	ldr r2, [r10]
	mov r0, r9
	mov r1, r5
	blx r2
	ldr r4, _020C38E8 ; =dwcac_wcmBuffer
	mov r1, r0
	mov r8, #0
	mov r0, r8
	mov r2, r5
	str r1, [r4, #0xc]
	bl MIi_CpuClear32
	ldr r3, [r4, #0xc]
	ldr r1, [r10]
	ldr r7, _020C38EC ; =0x00000D28
	str r1, [r3]
	ldr r2, [r10, #4]
	mov r0, #0x10
	str r2, [r3, #4]
	strb r9, [r3, #9]
	strb r9, [r3, #0x16]
	mov r1, r7
	strb r9, [r3, #8]
	bl DWCi_AC_Alloc
	mov r6, #0x2300
	str r0, [r4, #0x10]
	mov r0, #2
	mov r1, r6
	bl DWCi_AC_Alloc
	mov r5, #0x58
	str r0, [r4]
	mov r0, #4
	mov r1, r5
	bl DWCi_AC_Alloc
	mov r11, #0xc
	str r0, [r4, #4]
	mov r0, #8
	mov r1, r11
	bl DWCi_AC_Alloc
	str r0, [r4, #8]
	ldr r1, [r4, #0x10]
	mov r2, r7
	mov r0, r8
	bl MIi_CpuClear32
	ldr r1, [r4]
	mov r0, r8
	mov r2, r6
	bl MIi_CpuClear32
	ldr r1, [r4, #4]
	mov r2, r5
	mov r0, r8
	bl MIi_CpuClear32
	ldr r1, [r4, #8]
	mov r2, r11
	mov r0, r8
	bl MIi_CpuClear32
	ldrb r1, [r10, #8]
	ldr r0, [r4, #0x10]
	strb r1, [r0, #0xd0a]
	ldrb r2, [r0, #0xd0b]
	ldrb r1, [r10, #9]
	bic r2, r2, #3
	and r1, r1, #3
	orr r1, r2, r1
	strb r1, [r0, #0xd0b]
	ldr r1, [r10, #0xc]
	str r1, [r0, #0xd18]
	ldrb r1, [r10, #0x10]
	strb r1, [r0, #0xd1c]
	ldr r2, [r4, #8]
	ldr r1, [r10]
	str r1, [r2]
	ldr r1, [r10, #4]
	stmib r2, {r1, r8}
	ldrb r2, [r0, #0xd0c]
	ldrb r1, [r10, #0xa]
	bic r2, r2, #0xf
	and r1, r1, #0xf
	orr r1, r2, r1
	strb r1, [r0, #0xd0c]
	and r1, r1, #0xff
	bic r2, r1, #0x10
	ldrb r1, [r10, #0xb]
	mov r1, r1, lsl #0x1c
	mov r1, r1, lsr #0x1c
	mov r1, r1, lsl #0x1f
	orr r1, r2, r1, lsr #27
	strb r1, [r0, #0xd0c]
	and r1, r1, #0xff
	bic r2, r1, #0x20
	ldrb r1, [r10, #0xb]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x1c
	mov r1, r1, lsl #0x1f
	orr r1, r2, r1, lsr #26
	strb r1, [r0, #0xd0c]
	bl DWCi_BM_GetApInfo
	ldr r0, [r4]
	mov r1, r6
	bl WCM_Init
	cmp r0, #1
	beq _020C38D4
	cmp r0, #4
	ble _020C38E0
_020C38D4:
	bl DWCi_AC_FreeAll
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C38E0:
	mov r0, r9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C38E8: .word dwcac_wcmBuffer
_020C38EC: .word 0x00000D28
	arm_func_end DWC_AC_Create

	arm_func_start DWC_AC_Process
DWC_AC_Process: ; 0x020C38F0
	stmfd sp!, {r3, r4, r5, lr}
	bl DWCi_AC_GetPhase
	mov r5, r0
	cmp r5, #1
	bne _020C3938
	bl dwcacac_CheckEULA
	cmp r0, #0
	beq _020C392C
	bl dwcacac_CheckWirelessPowerON
	cmp r0, #0
	beq _020C3924
	bl DWCi_AC_Start
_020C3920:
	b _020C399C
_020C3924:
	mov r0, #8
	b _020C3930
_020C392C:
	mov r0, #7
_020C3930:
	bl DWCi_AC_SetError
	b _020C3998
_020C3938:
	cmp r5, #7
	bhs _020C3960
	bl OS_DisableInterrupts
	mov r4, r0
	bl DWCi_AC_SearchAP
	mov r5, r0
	bl DWCi_AC_SetPhase
	mov r0, r4
	bl OS_RestoreInterrupts
	b _020C39A0
_020C3960:
	cmp r5, #9
	bhs _020C3970
	bl DWCi_AC_ConnectAP
	b _020C3920
_020C3970:
	cmp r5, #0xa
	bhs _020C3980
	bl DWCi_AC_ConnectRetryAP
	b _020C3920
_020C3980:
	cmp r5, #0x10
	bhs _020C3990
	bl DWCi_AC_ConnectTest
	b _020C3920
_020C3990:
	cmp r5, #0x11
	bne _020C39A0
_020C3998:
	bl DWCi_AC_Error
_020C399C:
	mov r5, r0
_020C39A0:
	mov r0, r5
	bl DWCi_AC_SetPhase
	cmp r5, #0x10
	bne _020C39C4
	bl dwcacac_CheckDuplicate
	mov r4, r0
	bl dwcacac_Free_Disused
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_020C39C4:
	cmp r5, #0x12
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl dwcacac_Free_Disused
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DWC_AC_Process

	arm_func_start DWC_AC_GetStatus
DWC_AC_GetStatus: ; 0x020C39DC
	stmfd sp!, {r3, lr}
	bl DWCi_AC_GetPhase
	cmp r0, #1
	movls r0, #0
	ldmlsfd sp!, {r3, pc}
	cmp r0, #7
	movlo r0, #1
	ldmlofd sp!, {r3, pc}
	cmp r0, #9
	moveq r0, #4
	ldmeqfd sp!, {r3, pc}
	cmp r0, #0xa
	movlo r0, #2
	ldmlofd sp!, {r3, pc}
	cmp r0, #0xb
	moveq r0, #4
	ldmeqfd sp!, {r3, pc}
	cmp r0, #0x10
	movlo r0, #3
	ldmlofd sp!, {r3, pc}
	moveq r0, #5
	ldmeqfd sp!, {r3, pc}
	cmp r0, #0x11
	moveq r0, #4
	ldmeqfd sp!, {r3, pc}
	bl DWCi_AC_GetResult
	ldmfd sp!, {r3, pc}
	arm_func_end DWC_AC_GetStatus

	arm_func_start DWC_AC_GetApType
DWC_AC_GetApType: ; 0x020C3A48
	stmfd sp!, {r4, lr}
	mov r4, #0xff
	bl DWCi_AC_GetPhase
	cmp r0, #0xa
	blo _020C3A6C
	cmp r0, #0x10
	ldrls r0, _020C3A74 ; =dwcac_wcmBuffer
	ldrls r0, [r0, #0xc]
	ldrlsb r4, [r0, #0x17]
_020C3A6C:
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020C3A74: .word dwcac_wcmBuffer
	arm_func_end DWC_AC_GetApType

	arm_func_start DWC_AC_GetApSpotInfo
DWC_AC_GetApSpotInfo: ; 0x020C3A78
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	bl DWCi_AC_GetPhase
	cmp r0, #0xa
	blo _020C3AC4
	cmp r0, #0x10
	bhi _020C3AC4
	ldr r0, _020C3ACC ; =dwcac_wcmBuffer
	ldr r2, [r0, #0xc]
	ldrb r0, [r2, #0x17]
	cmp r0, #4
	cmpne r0, #8
	bne _020C3AC4
	mov r1, r5
	add r0, r2, #0x18
	mov r2, #0xa
	bl MI_CpuCopy8
	mov r4, #1
_020C3AC4:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_020C3ACC: .word dwcac_wcmBuffer
	arm_func_end DWC_AC_GetApSpotInfo

	arm_func_start DWC_AC_GetSecuritySetting
DWC_AC_GetSecuritySetting: ; 0x020C3AD0
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl DWCi_AC_GetMemPtr
	ldrb r0, [r0, #0x23]
	ldmfd sp!, {r3, pc}
	arm_func_end DWC_AC_GetSecuritySetting

	arm_func_start DWC_AC_Destroy
DWC_AC_Destroy: ; 0x020C3AE4
	stmfd sp!, {r3, lr}
	bl DWCi_AC_GetPhase
	strb r0, [sp]
	ands r0, r0, #0xff
	cmpne r0, #0x12
	bne _020C3B08
	bl DWCi_AC_FreeAll
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020C3B08:
	add r0, sp, #0
	bl DWCi_AC_CloseNetwork
	ldrb r0, [sp]
	bl DWCi_AC_SetPhase
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end DWC_AC_Destroy

	arm_func_start DWC_AC_SetSpecifyApEx
DWC_AC_SetSpecifyApEx: ; 0x020C3B20
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #1
	mov r6, r1
	mov r5, r2
	bl DWCi_AC_GetMemPtr
	mov r4, r0
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	ldr r0, [sp, #0x18]
	mov r2, #0xa
	cmp r0, #0
	beq _020C3B60
	add r1, r4, #0x18
	bl MI_CpuCopy8
	b _020C3B6C
_020C3B60:
	add r0, r4, #0x18
	mov r1, #0
	bl MI_CpuFill8
_020C3B6C:
	ldr r3, [sp, #0x1c]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	strb r3, [r4, #0x22]
	bl DWC_AC_SetSpecifyAp
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end DWC_AC_SetSpecifyApEx

	arm_func_start DWC_AC_SetSpecifyAp
DWC_AC_SetSpecifyAp: ; 0x020C3B88
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r0, #0x10
	mov r7, r1
	mov r6, r2
	bl DWCi_AC_GetMemPtr
	mov r4, r0
	ldrb r2, [r4, #0xd0c]
	mov r5, #0
	mov r1, r5
	bic r2, r2, #0xf
	orr r3, r2, #1
	mov r2, #0xf0
	strb r3, [r4, #0xd0c]
	bl MI_CpuFill8
_020C3BC4:
	ldrb r1, [r8, r5]
	cmp r1, #0
	beq _020C3BE4
	add r0, r4, r5
	add r5, r5, #1
	strb r1, [r0, #0x40]
	cmp r5, #0x20
	blt _020C3BC4
_020C3BE4:
	cmp r7, #0
	cmpne r6, #0
	ldreqb r0, [r4, #0xe6]
	biceq r0, r0, #3
	streqb r0, [r4, #0xe6]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r6, #1
	moveq r2, #5
	beq _020C3C14
	mov r2, #0xd
	cmp r6, #2
	movne r2, #0x10
_020C3C14:
	mov r0, r7
	add r1, r4, #0x80
	bl MI_CpuCopy8
	ldrb r1, [r4, #0xe6]
	and r0, r6, #0xff
	and r0, r0, #3
	bic r1, r1, #3
	orr r0, r1, r0
	strb r0, [r4, #0xe6]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end DWC_AC_SetSpecifyAp

	arm_func_start DWCi_AC_InsertApInfo
DWCi_AC_InsertApInfo: ; 0x020C3C3C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x10
	mov r4, r1
	bl DWCi_AC_GetMemPtr
	mov r1, r0
	mov r0, r4
	add r1, r1, r5, lsl #8
	mov r2, #0xf0
	bl MIi_CpuCopy32
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DWCi_AC_InsertApInfo

	arm_func_start DWCi_AC_InvalidatePriorityWPA
DWCi_AC_InvalidatePriorityWPA: ; 0x020C3C68
	stmfd sp!, {r3, lr}
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	ldrb r1, [r0, #0xd0c]
	bic r1, r1, #0x80
	strb r1, [r0, #0xd0c]
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_AC_InvalidatePriorityWPA

	arm_func_start DWCi_AC_Alloc
DWCi_AC_Alloc: ; 0x020C3C84
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, #1
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl DWCi_AC_GetMemPtr
	ldrb r2, [r0, #8]
	tst r2, r6
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	and r1, r6, #0xff
	orr r1, r2, r1
	strb r1, [r0, #8]
	ldr r2, [r0]
	mov r0, r4
	mov r1, r5
	blx r2
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DWCi_AC_Alloc

	arm_func_start DWCi_AC_Free
DWCi_AC_Free: ; 0x020C3CCC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #1
	mov r7, r0
	mov r0, r4
	mov r6, r1
	mov r5, r2
	bl DWCi_AC_GetMemPtr
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r2, [r0, #8]
	tst r2, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mvn r1, r7
	and r1, r1, #0xff
	and r1, r2, r1
	strb r1, [r0, #8]
	ldr r3, [r0, #4]
	mov r0, r4
	mov r1, r6
	mov r2, r5
	blx r3
	cmp r7, #1
	ldreq r0, _020C3D34 ; =dwcac_wcmBuffer
	moveq r1, #0
	streq r1, [r0, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C3D34: .word dwcac_wcmBuffer
	arm_func_end DWCi_AC_Free

	arm_func_start DWCi_AC_FreeAll
DWCi_AC_FreeAll: ; 0x020C3D38
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl DWCi_AC_GetMemPtr
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #8]
	tst r0, #0x10
	beq _020C3D84
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	ldrb r3, [r4, #8]
	mov r1, r0
	ldr r2, _020C3E58 ; =0x00000D28
	and r0, r3, #0xef
	strb r0, [r4, #8]
	ldr r3, [r4, #4]
	mov r0, r5
	blx r3
_020C3D84:
	ldrb r0, [r4, #8]
	tst r0, #8
	beq _020C3DB8
	mov r0, #8
	bl DWCi_AC_GetMemPtr
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #1
	and r2, r2, #0xf7
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0xc
	blx r3
_020C3DB8:
	ldrb r0, [r4, #8]
	tst r0, #4
	beq _020C3DEC
	mov r0, #4
	bl DWCi_AC_GetMemPtr
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #1
	and r2, r2, #0xfb
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0x58
	blx r3
_020C3DEC:
	ldrb r0, [r4, #8]
	tst r0, #2
	beq _020C3E20
	mov r0, #2
	bl DWCi_AC_GetMemPtr
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #1
	and r2, r2, #0xfd
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0x2300
	blx r3
_020C3E20:
	ldrb r0, [r4, #8]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	and r0, r0, #0xfe
	strb r0, [r4, #8]
	ldr r3, [r4, #4]
	mov r1, r4
	mov r0, #1
	mov r2, #0xcc
	blx r3
	ldr r0, _020C3E5C ; =dwcac_wcmBuffer
	mov r1, #0
	str r1, [r0, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_020C3E58: .word 0x00000D28
_020C3E5C: .word dwcac_wcmBuffer
	arm_func_end DWCi_AC_FreeAll

	arm_func_start DWCi_AC_GetMemPtr
DWCi_AC_GetMemPtr: ; 0x020C3E60
	ldr r1, _020C3EA4 ; =dwcac_wcmBuffer
	tst r0, #1
	ldrne r0, [r1, #0xc]
	bxne lr
	tst r0, #2
	ldrne r0, [r1]
	bxne lr
	tst r0, #4
	ldrne r0, [r1, #4]
	bxne lr
	tst r0, #8
	ldrne r0, [r1, #8]
	bxne lr
	tst r0, #0x10
	ldrne r0, [r1, #0x10]
	moveq r0, #0
	bx lr
_020C3EA4: .word dwcac_wcmBuffer
	arm_func_end DWCi_AC_GetMemPtr

	arm_func_start DWCi_AC_SetPhase
DWCi_AC_SetPhase: ; 0x020C3EA8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl DWCi_AC_GetMemPtr
	mov r5, r0
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	mov r4, r0
	strb r6, [r5, #9]
	cmp r6, #0x10
	ldmhsfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0x16]
	cmp r6, r0
	strhib r6, [r5, #0x16]
	cmphi r6, #7
	ldmlsfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #0xd0d]
	bl DWCi_ConvConnectAPType
	strb r0, [r5, #0x15]
	ldrb r0, [r4, #0xd13]
	add r0, r4, r0, lsl #2
	ldrb r0, [r0, #0x444]
	strb r0, [r5, #0x14]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DWCi_AC_SetPhase

	arm_func_start DWCi_AC_GetPhase
DWCi_AC_GetPhase: ; 0x020C3F08
	ldr r0, _020C3F24 ; =dwcac_wcmBuffer
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ldrneb r0, [r0, #9]
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
_020C3F24: .word dwcac_wcmBuffer
	arm_func_end DWCi_AC_GetPhase

	arm_func_start DWCi_AC_SetError
DWCi_AC_SetError: ; 0x020C3F28
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	bl DWCi_AC_GetMemPtr
	mov r4, r0
	str r5, [r4, #0xc]
	bl DWCi_AC_GetPhase
	strb r0, [r4, #0xa]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DWCi_AC_SetError

	arm_func_start DWCi_AC_GetError
DWCi_AC_GetError: ; 0x020C3F4C
	ldr r0, _020C3F5C ; =dwcac_wcmBuffer
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0xc]
	bx lr
_020C3F5C: .word dwcac_wcmBuffer
	arm_func_end DWCi_AC_GetError

	arm_func_start DWCi_AC_SetApType
DWCi_AC_SetApType: ; 0x020C3F60
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020C3FFC ; =dwcac_wcmBuffer
	ldr r1, [r1, #0xc]
	ldrb r2, [r1, #0x22]
	cmp r2, #0
	bne _020C3F80
	bl DWCi_ConvConnectAPType
	mov r2, r0
_020C3F80:
	ldr r4, _020C3FFC ; =dwcac_wcmBuffer
	mov r0, #0
	ldr r1, [r4, #0xc]
	strb r2, [r1, #0x17]
	bl WCM_GetApEssid
	movs r5, r0
	beq _020C3FB4
	mov r1, #0x20
	bl DC_InvalidateRange
	ldr r1, [r4, #0xc]
	mov r0, r5
	add r1, r1, #0x18
	bl DWCi_AC_GetPostalCode
_020C3FB4:
	ldr r0, _020C3FFC ; =dwcac_wcmBuffer
	mov r1, #0
	ldr r2, [r0, #0xc]
_020C3FC0:
	add r0, r2, r1
	ldrsb r0, [r0, #0x18]
	cmp r0, #0x20
	blt _020C3FD8
	cmp r0, #0x7e
	ble _020C3FEC
_020C3FD8:
	add r0, r2, #0x18
	mov r1, #0
	mov r2, #0xa
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
_020C3FEC:
	add r1, r1, #1
	cmp r1, #0xa
	blt _020C3FC0
	ldmfd sp!, {r3, r4, r5, pc}
_020C3FFC: .word dwcac_wcmBuffer
	arm_func_end DWCi_AC_SetApType

	arm_func_start DWCi_AC_CopyExSetting
DWCi_AC_CopyExSetting: ; 0x020C4000
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl DWCi_AC_GetMemPtr
	mov r5, r0
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	mov r4, r0
	mov r0, r6
	bl DWCi_ConvConnectAPType
	add r0, r4, r0, lsl #8
	ldrb r0, [r0, #0xe6]
	mov r0, r0, lsl #0x1e
	mov r0, r0, lsr #0x1e
	strb r0, [r5, #0x23]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DWCi_AC_CopyExSetting

	arm_func_start DWCi_ConvConnectAPType
DWCi_ConvConnectAPType: ; 0x020C4040
	cmp r0, #2
	subhi r0, r0, #3
	andhi r0, r0, #0xff
	bx lr
	arm_func_end DWCi_ConvConnectAPType

	arm_func_start dwcacac_Free_Disused
dwcacac_Free_Disused: ; 0x020C4050
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020C4080 ; =dwcac_wcmBuffer
	mov r5, #8
	ldr r1, [r4, #8]
	mov r0, r5
	mov r2, #0xc
	bl DWCi_AC_Free
	ldr r1, [r4, #0x10]
	add r2, r5, #0xd20
	mov r0, #0x10
	bl DWCi_AC_Free
	ldmfd sp!, {r3, r4, r5, pc}
_020C4080: .word dwcac_wcmBuffer
	arm_func_end dwcacac_Free_Disused

	arm_func_start dwcacac_CheckDuplicate
dwcacac_CheckDuplicate: ; 0x020C4084
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r0, _020C4120 ; =dwcac_wcmBuffer
	mov r1, #0xc0
	ldr r8, [r0, #0x10]
	ldrb r7, [r8, #0xd13]
	ldrb r2, [r8, #0xd0d]
	add r0, r8, #0x74
	smulbb r4, r7, r1
	add r5, r0, #0x400
	cmp r2, #6
	movhs r0, #1
	ldmhsfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r9, [r8, #0xd12]
	mov r6, #0
	cmp r9, #0
	bls _020C4118
	mov r10, r1
_020C40C8:
	cmp r6, r7
	beq _020C4108
	add r0, r8, r6, lsl #2
	ldrb r0, [r0, #0x445]
	cmp r0, #6
	bhs _020C4108
	mul r1, r6, r10
	add r0, r8, r1
	add r0, r0, #0x400
	ldrh r2, [r0, #0x7a]
	add r0, r5, r4
	add r1, r5, r1
	bl strncmp
	cmp r0, #0
	moveq r0, #2
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C4108:
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, r9
	blo _020C40C8
_020C4118:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C4120: .word dwcac_wcmBuffer
	arm_func_end dwcacac_CheckDuplicate

	arm_func_start dwcacac_CheckEULA
dwcacac_CheckEULA: ; 0x020C4124
	mov r0, #1
	bx lr
	arm_func_end dwcacac_CheckEULA

	arm_func_start dwcacac_CheckWirelessPowerON
dwcacac_CheckWirelessPowerON: ; 0x020C412C
	mov r0, #1
	bx lr
	arm_func_end dwcacac_CheckWirelessPowerON

	arm_func_start DWC_InitInetEx
DWC_InitInetEx: ; 0x020C4134
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _020C4194 ; =_ZZ17DWC_GetInetStatusvE8stateOld
	mov r8, r0
	ldr r2, [r4, #4]
	mov r7, r1
	mov r6, r3
	cmp r2, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r5, #0
	mov r1, r5
	mov r2, #0x68
	bl MI_CpuFill8
	mov r1, #1
	mov r0, r6
	strh r7, [r8, #8]
	strh r1, [r8, #0xa]
	strh r1, [r8, #4]
	strh r5, [r8, #6]
	strb r5, [r8, #0x11]
	str r5, [r8, #0x14]
	strb r5, [r8, #0x10]
	str r8, [r4, #4]
	bl CPS_SetSslHandshakePriority
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C4194: .word _ZZ17DWC_GetInetStatusvE8stateOld
	arm_func_end DWC_InitInetEx

	arm_func_start DWC_InitInet
DWC_InitInet: ; 0x020C4198
	ldr r12, _020C41AC ; =DWC_InitInetEx
	mov r1, #3
	mov r2, #1
	mov r3, #0x14
	bx r12
_020C41AC: .word DWC_InitInetEx
	arm_func_end DWC_InitInet

	arm_func_start DWC_SetRwinSize
DWC_SetRwinSize: ; 0x020C41B0
	ldr r1, _020C41C4 ; =_ZZ17DWC_GetInetStatusvE8stateOld
	ldr r1, [r1, #4]
	cmp r1, #0
	cmpne r0, #0x10c0
	bx lr
_020C41C4: .word _ZZ17DWC_GetInetStatusvE8stateOld
	arm_func_end DWC_SetRwinSize

	arm_func_start DWC_ConnectInetAsync
DWC_ConnectInetAsync: ; 0x020C41C8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	ldr r4, _020C427C ; =_ZZ17DWC_GetInetStatusvE8stateOld
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _020C4268
	ldrh r0, [r0, #4]
	cmp r0, #1
	addne sp, sp, #0x14
	ldmnefd sp!, {r4, r5, pc}
	add r5, sp, #0
	mov r1, #0
	mov r0, r5
	mov r2, #0x14
	bl MI_CpuFill8
	ldr r12, [r4, #4]
	ldr r3, _020C4280 ; =DWC_Alloc
	ldrh r1, [r12, #8]
	ldr r2, _020C4284 ; =DWC_Free
	mov r0, r5
	strb r1, [sp, #8]
	ldrh r4, [r12, #0xa]
	mov r1, #2
	strb r4, [sp, #9]
	ldr r4, [r12, #0xc]
	str r4, [sp, #0xc]
	str r3, [sp]
	str r2, [sp, #4]
	ldrb r2, [r12, #0x10]
	strb r2, [sp, #0x10]
	strh r1, [r12, #4]
	bl DWC_AC_Create
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r4, r5, pc}
	ldr r1, _020C4288 ; =0xFFFF3BE9
	mov r0, #9
	bl DWCi_SetError
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
_020C4268:
	ldr r1, _020C4288 ; =0xFFFF3BE9
	mov r0, #9
	bl DWCi_SetError
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
_020C427C: .word _ZZ17DWC_GetInetStatusvE8stateOld
_020C4280: .word DWC_Alloc
_020C4284: .word DWC_Free
_020C4288: .word 0xFFFF3BE9
	arm_func_end DWC_ConnectInetAsync

	arm_func_start DWC_DebugConnectInetExAsync
DWC_DebugConnectInetExAsync: ; 0x020C428C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl DWC_ConnectInetAsync
	ldr r0, _020C42F8 ; =_ZZ17DWC_GetInetStatusvE8stateOld
	ldr r1, [r0, #4]
	cmp r1, #0
	movne r0, #1
	strneb r0, [r1, #0x11]
	bl DWC_GetInetStatus
	cmp r0, #2
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [sp, #0x20]
	ldr r12, [sp, #0x24]
	str r0, [sp]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str r12, [sp, #4]
	bl DWC_AC_SetSpecifyApEx
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C42F8: .word _ZZ17DWC_GetInetStatusvE8stateOld
	arm_func_end DWC_DebugConnectInetExAsync

	arm_func_start DWC_CheckInet
DWC_CheckInet: ; 0x020C42FC
	stmfd sp!, {r4, lr}
	ldr r4, _020C434C ; =_ZZ17DWC_GetInetStatusvE8stateOld
	ldr r1, [r4, #4]
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r1]
	cmp r0, #0
	beq _020C4344
	mov r0, #3
	strh r0, [r1, #4]
	bl DWC_GetInetStatus
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
_020C4344:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020C434C: .word _ZZ17DWC_GetInetStatusvE8stateOld
	arm_func_end DWC_CheckInet

	arm_func_start DWC_ProcessInet
DWC_ProcessInet: ; 0x020C4350
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, _020C448C ; =_ZZ17DWC_GetInetStatusvE8stateOld
	ldr r1, [r4, #4]
	cmp r1, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r1, #0x14]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _020C4418
_020C437C: ; jump table
	b _020C4418 ; case 0
	b _020C4394 ; case 1
	b _020C43B0 ; case 2
	b _020C43F4 ; case 3
	b _020C4410 ; case 4
	b _020C4410 ; case 5
_020C4394:
	mov r0, #0
	str r0, [r1]
	bl DWC_AC_ProcessGetWDSInfo
	ldr r1, [r4, #4]
	add sp, sp, #8
	str r0, [r1, #0x14]
	ldmfd sp!, {r4, pc}
_020C43B0:
	bl DWC_AC_CleanupGetWDSInfo
	ldr r12, [r4, #4]
	mov r0, #8
	add r1, r12, #0x5e
	str r1, [sp]
	str r0, [sp, #4]
	ldrh r3, [r12, #0x5c]
	ldr r2, [r12, #0x58]
	add r0, r12, #0x18
	add r1, r12, #0x38
	bl DWC_DebugConnectInetExAsync
	bl DWCi_AC_InvalidatePriorityWPA
	ldr r0, [r4, #4]
	mov r1, #0
	str r1, [r0, #0x14]
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020C43F4:
	bl DWC_AC_CleanupGetWDSInfo
	ldr r0, [r4, #4]
	mvn r1, #0
	str r1, [r0]
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0, #0x11]
_020C4410:
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020C4418:
	ldrh r0, [r1, #4]
	cmp r0, #2
	bne _020C443C
	bl DWC_AC_Process
	ldr r1, _020C448C ; =_ZZ17DWC_GetInetStatusvE8stateOld
	add sp, sp, #8
	ldr r1, [r1, #4]
	str r0, [r1]
	ldmfd sp!, {r4, pc}
_020C443C:
	cmp r0, #4
	addne sp, sp, #8
	ldmnefd sp!, {r4, pc}
	ldrh r0, [r1, #6]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, pc}
	bl WCM_GetPhase
	cmp r0, #9
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020C448C ; =_ZZ17DWC_GetInetStatusvE8stateOld
	mov r3, #0
	ldr r2, [r0, #4]
	mov r1, #6
	strh r3, [r2, #6]
	ldr r0, [r0, #4]
	strh r1, [r0, #4]
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020C448C: .word _ZZ17DWC_GetInetStatusvE8stateOld
	arm_func_end DWC_ProcessInet

	arm_func_start DWC_GetInetStatus
DWC_GetInetStatus: ; 0x020C4490
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, _020C4684 ; =_ZZ17DWC_GetInetStatusvE8stateOld
	mov r5, #1
	ldr r1, [r4, #4]
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r1, #0x14]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _020C4520
_020C44BC: ; jump table
	b _020C4520 ; case 0
	b _020C44D4 ; case 1
	b _020C44DC ; case 2
	b _020C44E4 ; case 3
	b _020C4510 ; case 4
	b _020C4518 ; case 5
_020C44D4:
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C44DC:
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C44E4:
	bl DWC_ProcessInet
	ldr r1, [r4]
	mov r0, #5
	bl DWCi_SetError
	ldr r1, [r4, #4]
	mov r0, #7
	strh r0, [r1, #4]
	ldr r1, [r4, #4]
	mov r2, #4
	str r2, [r1, #0x14]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4510:
	mov r0, #7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4518:
	mov r0, #5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4520:
	ldrh r0, [r1, #4]
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl DWC_AC_GetStatus
	mov r6, r0
	cmp r6, #5
	bne _020C455C
	ldr r1, [r4, #4]
	mov r0, #4
	strh r0, [r1, #4]
	ldr r1, [r4, #4]
	strh r5, [r1, #6]
	ldr r1, [r4, #4]
	strb r5, [r1, #0x11]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C455C:
	cmp r6, #0
	bge _020C467C
	cmn r6, #0xa
	blt _020C4590
	ldr r0, [r4, #4]
	ldr r1, _020C4688 ; =0xFFFF3BE9
	strb r5, [r0, #0x11]
	mov r0, #9
	bl DWCi_SetError
	ldr r1, [r4, #4]
	mov r0, #8
	strh r0, [r1, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4590:
	ldr r0, _020C468C ; =0xFFFF3A59
	cmp r6, r0
	subne r0, r0, #0x64
	cmpne r6, r0
	bne _020C45C8
	ldr r0, [r4, #4]
	mov r1, r6
	strb r5, [r0, #0x11]
	mov r0, #5
	bl DWCi_SetError
	ldr r1, [r4, #4]
	mov r0, #7
	strh r0, [r1, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C45C8:
	ldr r10, [r4, #4]
	ldrb r0, [r10, #0x11]
	cmp r0, #0
	bne _020C4654
	ldrh r7, [r10, #8]
	bl CPS_GetSslHandshakePriority
	ldr r1, [r4, #4]
	mov r11, r0
	ldrb r8, [r1, #0x10]
	ldr r9, [r1, #0xc]
	str r6, [r4]
	bl DWC_CleanupInet
	mov r1, r11, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r0, r10
	mov r1, r7
	mov r2, #1
	bl DWC_InitInetEx
	ldr r0, [r4, #4]
	cmp r9, #0
	strb r8, [r0, #0x10]
	beq _020C4628
	mov r0, r9
	bl DWC_SetRwinSize
_020C4628:
	ldr r0, [r4, #4]
	mov r1, r7
	add r0, r0, #0x18
	bl DWC_AC_StartupGetWDSInfo
	ldr r0, [r4, #4]
	mov r1, #0
	str r5, [r0, #0x14]
	ldr r0, [r4, #4]
	str r1, [r0]
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4654:
	ldr r0, [r4]
	cmp r0, r6
	movlt r6, r0
	mov r1, r6
	mov r0, #5
	bl DWCi_SetError
	ldr r1, [r4, #4]
	mov r0, #7
	strh r0, [r1, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C467C:
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4684: .word _ZZ17DWC_GetInetStatusvE8stateOld
_020C4688: .word 0xFFFF3BE9
_020C468C: .word 0xFFFF3A59
	arm_func_end DWC_GetInetStatus

	arm_func_start DWC_CleanupInet
DWC_CleanupInet: ; 0x020C4690
	stmfd sp!, {r4, lr}
	ldr r0, _020C4718 ; =_ZZ17DWC_GetInetStatusvE8stateOld
	ldr r1, [r0, #4]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldrh r0, [r1, #4]
	cmp r0, #1
	bne _020C46E4
	ldr r0, [r1, #0x14]
	cmp r0, #1
	bne _020C46D4
	bl DWC_AC_CancelGetWDSInfo
_020C46C0:
	bl DWC_AC_ProcessGetWDSInfo
	sub r0, r0, #2
	cmp r0, #2
	bhi _020C46C0
	bl DWC_AC_CleanupGetWDSInfo
_020C46D4:
	ldr r0, _020C4718 ; =_ZZ17DWC_GetInetStatusvE8stateOld
	mov r1, #0
	str r1, [r0, #4]
	ldmfd sp!, {r4, pc}
_020C46E4:
	bl DWC_AC_Destroy
	cmp r0, #0
	bne _020C4708
	mov r4, #0xa
_020C46F4:
	mov r0, r4
	bl OS_Sleep
	bl DWC_AC_Destroy
	cmp r0, #0
	beq _020C46F4
_020C4708:
	ldr r0, _020C4718 ; =_ZZ17DWC_GetInetStatusvE8stateOld
	mov r1, #0
	str r1, [r0, #4]
	ldmfd sp!, {r4, pc}
_020C4718: .word _ZZ17DWC_GetInetStatusvE8stateOld
	arm_func_end DWC_CleanupInet

	arm_func_start DWC_CleanupInetAsync
DWC_CleanupInetAsync: ; 0x020C471C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020C47CC ; =_ZZ17DWC_GetInetStatusvE8stateOld
	mov r5, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrh r0, [r1, #4]
	cmp r0, #8
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r0, #1
	bne _020C47AC
	ldr r0, [r1, #0x14]
	cmp r0, #1
	bne _020C4774
	bl DWC_AC_CancelGetWDSInfo
	ldr r0, [r4, #4]
	mov r1, #5
	str r1, [r0, #0x14]
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020C4774:
	cmp r0, #5
	bne _020C479C
	bl DWC_AC_ProcessGetWDSInfo
	cmp r0, #1
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, pc}
	sub r0, r0, #2
	cmp r0, #2
	bhi _020C479C
	bl DWC_AC_CleanupGetWDSInfo
_020C479C:
	ldr r0, _020C47CC ; =_ZZ17DWC_GetInetStatusvE8stateOld
	str r5, [r0, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020C47AC:
	mov r0, #5
	strh r0, [r1, #4]
	bl DWC_AC_Destroy
	cmp r0, #0
	movne r0, #1
	strne r5, [r4, #4]
	moveq r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020C47CC: .word _ZZ17DWC_GetInetStatusvE8stateOld
	arm_func_end DWC_CleanupInetAsync

	arm_func_start DWCi_CheckDisconnected
DWCi_CheckDisconnected: ; 0x020C47D0
	ldr r0, _020C47F8 ; =_ZZ17DWC_GetInetStatusvE8stateOld
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020C47F0
	ldrh r0, [r0, #4]
	cmp r0, #6
	moveq r0, #1
	bxeq lr
_020C47F0:
	mov r0, #0
	bx lr
_020C47F8: .word _ZZ17DWC_GetInetStatusvE8stateOld
	arm_func_end DWCi_CheckDisconnected

	arm_func_start DWC_GetLinkLevel
DWC_GetLinkLevel: ; 0x020C47FC
	ldr r12, _020C4804 ; =WCM_GetLinkLevel
	bx r12
_020C4804: .word WCM_GetLinkLevel
	arm_func_end DWC_GetLinkLevel

	arm_func_start DWC_GetApInfo
DWC_GetApInfo: ; 0x020C4808
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r7, #0
	mov r1, r7
	mov r2, #0x40
	mov r4, r0
	bl MI_CpuFill8
	mov r0, #0xff
	str r0, [r4, #4]
	bl DWC_GetInetStatus
	cmp r0, #4
	addne sp, sp, #0xc
	movne r0, r7
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	bl DWC_AC_GetApType
	str r0, [r4]
	cmp r0, #0xff
	beq _020C4858
	cmp r0, #0x63
	ble _020C486C
_020C4858:
	mov r0, #0x63
	str r0, [r4]
	add sp, sp, #0xc
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020C486C:
	bl OS_DisableInterrupts
	mov r8, r0
	bl WCM_GetApMacAddress
	mov r5, #6
	mov r6, r0
	mov r1, r5
	bl DC_InvalidateRange
	cmp r6, #0
	bne _020C48A4
	mov r0, r8
	bl OS_RestoreInterrupts
	add sp, sp, #0xc
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020C48A4:
	mov r0, r6
	mov r2, r5
	add r1, r4, #0x37
	bl MI_CpuCopy8
	ldr r0, [r4]
	cmp r0, #2
	bhi _020C4900
	add r0, sp, #0
	bl WCM_GetApEssid
	mov r5, r0
	mov r1, #0x20
	bl DC_InvalidateRange
	cmp r5, #0
	bne _020C48F0
	mov r0, r8
	bl OS_RestoreInterrupts
	add sp, sp, #0xc
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020C48F0:
	ldrh r2, [sp]
	mov r0, r5
	add r1, r4, #0x16
	bl MI_CpuCopy8
_020C4900:
	mov r0, r8
	bl OS_RestoreInterrupts
	add r0, sp, #2
	bl DWC_AC_GetApSpotInfo
	cmp r0, #0
	beq _020C4954
	ldrb r1, [sp, #2]
	mov r0, #0
	cmp r1, #0x30
	blo _020C4930
	cmp r1, #0x39
	movls r0, #1
_020C4930:
	sub r3, r1, #0x30
	cmp r0, #0
	moveq r3, #0xff
	add r0, sp, #3
	add r1, r4, #0xc
	mov r2, #9
	str r3, [r4, #4]
	bl MI_CpuCopy8
	b _020C495C
_020C4954:
	mov r0, #0xff
	str r0, [r4, #4]
_020C495C:
	bl DWC_AC_GetSecuritySetting
	str r0, [r4, #8]
	mov r0, #1
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end DWC_GetApInfo

	arm_func_start DWC_UpdateConnection
DWC_UpdateConnection: ; 0x020C4970
	stmfd sp!, {r4, lr}
	bl DWC_ProcessInet
	bl DWCi_CheckDisconnected
	cmp r0, #0
	beq _020C49D0
	bl DWC_AC_GetApType
	mov r4, r0
	cmp r4, #0xff
	beq _020C499C
	cmp r4, #0x63
	bls _020C49A0
_020C499C:
	mov r4, #0x63
_020C49A0:
	bl WCM_GetPhase
	cmp r0, #0xb
	bne _020C49B8
	ldr r1, _020C49D8 ; =0xFFFF298C
	mov r0, #9
	b _020C49C0
_020C49B8:
	ldr r1, _020C49DC ; =0xFFFF2D10
	mov r0, #8
_020C49C0:
	sub r1, r1, r4
	bl DWCi_SetError
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020C49D0:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020C49D8: .word 0xFFFF298C
_020C49DC: .word 0xFFFF2D10
	arm_func_end DWC_UpdateConnection

	arm_func_start DWCi_AC_Error
DWCi_AC_Error: ; 0x020C49E0
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl DWCi_AC_GetMemPtr
	add r0, r0, #0xa
	bl DWCi_AC_CloseNetwork
	cmp r0, #1
	moveq r0, #0x12
	movne r0, #0x11
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_AC_Error

	arm_func_start DWCi_AC_GetResult
DWCi_AC_GetResult: ; 0x020C4A04
	stmfd sp!, {r4, lr}
	mov r0, #1
	bl DWCi_AC_GetMemPtr
	mov r4, r0
	bl DWCi_AC_GetError
	cmp r0, #4
	bge _020C4A28
	bl dwcacerror_GetProgramaError
	ldmfd sp!, {r4, pc}
_020C4A28:
	cmp r0, #5
	bge _020C4A38
	bl dwcacerror_GetIrregularError
	ldmfd sp!, {r4, pc}
_020C4A38:
	bne _020C4A48
	mov r0, r4
	bl dwcacerror_GetNotFoundAP
	ldmfd sp!, {r4, pc}
_020C4A48:
	cmp r0, #7
	ldreq r0, _020C4A6C ; =0xFFFF3A59
	ldmeqfd sp!, {r4, pc}
	cmp r0, #8
	ldreq r0, _020C4A70 ; =0xFFFF39F5
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl dwcacerror_GetNotFoundInet
	ldmfd sp!, {r4, pc}
_020C4A6C: .word 0xFFFF3A59
_020C4A70: .word 0xFFFF39F5
	arm_func_end DWCi_AC_GetResult

	arm_func_start dwcacerror_GetProgramaError
dwcacerror_GetProgramaError: ; 0x020C4A74
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020C4AB0
_020C4A80: ; jump table
	b _020C4A98 ; case 0
	b _020C4A90 ; case 1
	b _020C4AA0 ; case 2
	b _020C4AA8 ; case 3
_020C4A90:
	mvn r0, #8
	bx lr
_020C4A98:
	mvn r0, #9
	bx lr
_020C4AA0:
	mvn r0, #7
	bx lr
_020C4AA8:
	mvn r0, #6
	bx lr
_020C4AB0:
	mov r0, #0
	bx lr
	arm_func_end dwcacerror_GetProgramaError

	arm_func_start dwcacerror_GetIrregularError
dwcacerror_GetIrregularError: ; 0x020C4AB8
	mvn r0, #5
	bx lr
	arm_func_end dwcacerror_GetIrregularError

	arm_func_start dwcacerror_GetNotFoundAP
dwcacerror_GetNotFoundAP: ; 0x020C4AC0
	ldrb r0, [r0, #0xb]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	ldreq r0, _020C4AD8 ; =0xFFFF3C4D
	ldrne r0, _020C4ADC ; =0xFFFF3865
	bx lr
_020C4AD8: .word 0xFFFF3C4D
_020C4ADC: .word 0xFFFF3865
	arm_func_end dwcacerror_GetNotFoundAP

	arm_func_start dwcacerror_GetNotFoundInet
dwcacerror_GetNotFoundInet: ; 0x020C4AE0
	ldrb r1, [r0, #0x22]
	ldrb r2, [r0, #0x16]
	cmp r1, #0
	ldreqb r1, [r0, #0x15]
	cmp r2, #0xa
	and r1, r1, #0xff
	bhs _020C4B2C
	ldrb r0, [r0, #0x14]
	cmp r0, #3
	ldreq r0, _020C4BE8 ; =0xFFFF3864
	subeq r3, r0, r1
	beq _020C4BE0
	cmp r0, #4
	moveq r0, #0xc800
	rsbeq r0, r0, #0
	subeq r3, r0, r1
	ldrne r0, _020C4BEC ; =0xFFFF379C
	subne r3, r0, r1
	b _020C4BE0
_020C4B2C:
	cmp r2, #0xd
	ldrlo r0, _020C4BF0 ; =0xFFFF34E0
	sublo r3, r0, r1
	blo _020C4BE0
	ldr r3, [r0, #0x10]
	cmp r3, #0
	ldreq r0, _020C4BF4 ; =0xFFFF3CB0
	subeq r3, r0, r1
	beq _020C4BE0
	ldrb r0, [r0, #0xb]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1c
	cmp r0, #1
	ldreq r0, _020C4BF8 ; =0xFFFF3224
	subeq r3, r0, r1
	beq _020C4BE0
	mvn r2, #0
	cmp r3, r2
	ldreq r0, _020C4BFC ; =0xFFFF347C
	subeq r3, r0, r1
	beq _020C4BE0
	sub r0, r2, #1
	cmp r3, r0
	ldreq r0, _020C4C00 ; =0xFFFF3418
	subeq r3, r0, r1
	beq _020C4BE0
	sub r0, r2, #2
	cmp r3, r0
	ldreq r0, _020C4C04 ; =0xFFFF33B4
	subeq r3, r0, r1
	beq _020C4BE0
	sub r0, r2, #3
	cmp r3, r0
	ldreq r0, _020C4C08 ; =0xFFFF30F8
	subeq r3, r0, r1
	beq _020C4BE0
	sub r0, r2, #4
	cmp r3, r0
	ldreq r0, _020C4C0C ; =0xFFFF3094
	subeq r3, r0, r1
	beq _020C4BE0
	sub r0, r2, #5
	cmp r3, r0
	ldreq r0, _020C4C10 ; =0xFFFF3030
	subeq r3, r0, r1
_020C4BE0:
	mov r0, r3
	bx lr
_020C4BE8: .word 0xFFFF3864
_020C4BEC: .word 0xFFFF379C
_020C4BF0: .word 0xFFFF34E0
_020C4BF4: .word 0xFFFF3CB0
_020C4BF8: .word 0xFFFF3224
_020C4BFC: .word 0xFFFF347C
_020C4C00: .word 0xFFFF3418
_020C4C04: .word 0xFFFF33B4
_020C4C08: .word 0xFFFF30F8
_020C4C0C: .word 0xFFFF3094
_020C4C10: .word 0xFFFF3030
	arm_func_end dwcacerror_GetNotFoundInet

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
	bl dwcacmakelist_MakeAroundList
	strb r0, [r5, #0xd10]
	b _020C4CBC
_020C4C64:
	bl dwcacmakelist_MakeDifferChannelList
	strb r0, [r5, #0xd10]
	mov r0, r5
	bl dwcacmakelist_CheckDifferChannelStart
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
	bl dwcacmakelist_MakeStealthList
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
	ldr r1, _020C4D14 ; =dwcacmakelist_FREESPOT_SSID
	mov r2, r4
	add r0, r5, #0xc
	bl strncmp
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
_020C4D0C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020C4D14: .word dwcacmakelist_FREESPOT_SSID
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

	arm_func_start dwcacmakelist_MakeAroundList
dwcacmakelist_MakeAroundList: ; 0x020C4D54
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	add r4, r5, #0x300
	bl dwcacmakelist_MakeUserList
	ldrb r1, [r5, #0xd0c]
	mov r6, r0
	mov r0, #0x24
	mla r4, r6, r0, r4
	mov r1, r1, lsl #0x1c
	movs r0, r1, lsr #0x1c
	cmpne r0, #6
	bne _020C4DA8
	mov r5, #8
	ldr r0, _020C4DB0 ; =dwcacmakelist_FREESPOT_SSID
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
_020C4DB0: .word dwcacmakelist_FREESPOT_SSID
	arm_func_end dwcacmakelist_MakeAroundList

	arm_func_start dwcacmakelist_MakeStealthList
dwcacmakelist_MakeStealthList: ; 0x020C4DB4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	add r5, r6, #0x300
	bl dwcacmakelist_MakeUserList
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
	ldr r0, _020C4E98 ; =dwcacmakelist_WAYPORT_SSID
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
	ldr r0, _020C4E9C ; =dwcacmakelist_NINTENDOWFC_SSID
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
_020C4E98: .word dwcacmakelist_WAYPORT_SSID
_020C4E9C: .word dwcacmakelist_NINTENDOWFC_SSID
	arm_func_end dwcacmakelist_MakeStealthList

	arm_func_start dwcacmakelist_MakeUserList
dwcacmakelist_MakeUserList: ; 0x020C4EA0
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
	arm_func_end dwcacmakelist_MakeUserList

	arm_func_start dwcacmakelist_MakeDifferChannelList
dwcacmakelist_MakeDifferChannelList: ; 0x020C4FA4
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
	arm_func_end dwcacmakelist_MakeDifferChannelList

	arm_func_start dwcacmakelist_CheckDifferChannelStart
dwcacmakelist_CheckDifferChannelStart: ; 0x020C502C
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
	arm_func_end dwcacmakelist_CheckDifferChannelStart

	arm_func_start DWC_AC_StartupGetWDSInfo
DWC_AC_StartupGetWDSInfo: ; 0x020C5070
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	bl WDS_GetWorkAreaSize
	mov r6, #1
	mov r1, r0
	mov r0, r6
	bl DWC_Alloc
	ldr r4, _020C50D8 ; =gDwcWdsWork
	ldr r5, _020C50DC ; =0x00000794
	str r0, [r4, #4]
	mov r0, r6
	mov r1, r5
	bl DWC_Alloc
	mov r2, r5
	str r0, [r4]
	mov r5, #0
	mov r1, r5
	bl MI_CpuFill8
	mov r0, r6
	ldr r1, [r4]
	str r8, [r1]
	ldr r1, [r4]
	strh r7, [r1, #4]
	str r5, [r4, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C50D8: .word gDwcWdsWork
_020C50DC: .word 0x00000794
	arm_func_end DWC_AC_StartupGetWDSInfo

	arm_func_start DWC_AC_ProcessGetWDSInfo
DWC_AC_ProcessGetWDSInfo: ; 0x020C50E0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r5, _020C53AC ; =gDwcWdsWork
	ldr r0, [r5, #4]
	cmp r0, #0
	ldrne r2, [r5]
	cmpne r2, #0
	moveq r0, #3
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r5, #8]
	mov r6, #1
	cmp r1, #0xb
	addls pc, pc, r1, lsl #2
	b _020C53A4
_020C5114: ; jump table
	b _020C5144 ; case 0
	b _020C53A4 ; case 1
	b _020C5158 ; case 2
	b _020C53A4 ; case 3
	b _020C51A8 ; case 4
	b _020C51F8 ; case 5
	b _020C53A4 ; case 6
	b _020C5214 ; case 7
	b _020C53A4 ; case 8
	b _020C52D8 ; case 9
	b _020C5380 ; case 10
	b _020C53A0 ; case 11
_020C5144:
	str r6, [r5, #8]
	ldrh r2, [r2, #4]
	ldr r1, _020C53B0 ; =WDS_Initialize_CB
	bl WDS_Initialize
	b _020C5390
_020C5158:
	ldr r0, _020C53B4 ; =WDS_StartScan_CB
	mov r1, #3
	str r1, [r5, #8]
	bl WDS_StartScan
	cmp r0, #0
	bne _020C519C
	ldr r1, [r5]
	ldr r0, [r1, #0xc]
	ldr r2, [r1, #8]
	cmp r0, #0
	cmpeq r2, #0
	bne _020C53A4
	bl OS_GetTick
	ldr r2, [r5]
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	b _020C53A4
_020C519C:
	mov r0, #0xa
	str r0, [r5, #8]
	b _020C53A4
_020C51A8:
	bl OS_GetTick
	ldr r4, [r5]
	mov r3, #0
	ldr r2, [r4, #8]
	ldr r4, [r4, #0xc]
	subs r7, r0, r2
	sbc r0, r1, r4
	mov r1, r0, lsl #6
	ldr r2, _020C53B8 ; =0x000082EA
	orr r1, r1, r7, lsr #26
	mov r0, r7, lsl #6
	bl _ll_udiv
	ldr r2, _020C53BC ; =0x00000BB8
	cmp r1, #0
	cmpeq r0, r2
	movlo r0, #2
	strlo r0, [r5, #8]
	movhs r0, #5
	strhs r0, [r5, #8]
	b _020C53A4
_020C51F8:
	ldr r0, _020C53C0 ; =WDS_EndScan_CB
	mov r1, #6
	str r1, [r5, #8]
	bl WDS_EndScan
	cmp r0, #0
	movne r0, #0xa
	b _020C5398
_020C5214:
	add r0, r2, #0x10
	bl WDS_GetApInfoAll
	cmp r0, #0
	movne r0, #0xa
	mov r4, #0
	strne r0, [r5, #8]
	ldr r9, _020C53AC ; =gDwcWdsWork
	sub r1, r4, #1
	ldr r0, [r9]
	mov r5, r4
	str r1, [r0, #0x790]
	mov r8, #0x78
_020C5244:
	mul r7, r4, r8
	ldr r2, [r9]
	add r1, r2, r7
	ldr r0, [r1, #0x10]
	cmp r0, #0
	beq _020C52A8
	ldrb r0, [r1, #0x7c]
	tst r0, #2
	beq _020C52A8
	ldrb r0, [r1, #0x7b]
	cmp r0, #3
	bhi _020C52A8
	add r0, r2, #0x36
	add r0, r0, r7
	bl WDS_IsAvailableForAutoConnect
	cmp r0, #0
	beq _020C52A8
	ldr r1, [r9]
	add r0, r1, r7
	ldrh r0, [r0, #0x14]
	cmp r0, r5
	strhs r4, [r1, #0x790]
	ldrhs r0, [r9]
	addhs r0, r0, r7
	ldrhsh r5, [r0, #0x14]
_020C52A8:
	add r4, r4, #1
	cmp r4, #0x10
	blt _020C5244
	ldr r4, _020C53AC ; =gDwcWdsWork
	mov r1, #8
	ldr r0, _020C53C4 ; =WDS_End_CB
	str r1, [r4, #8]
	bl WDS_End
	cmp r0, #0
	movne r0, #0xb
	strne r0, [r4, #8]
	b _020C53A4
_020C52D8:
	ldr r1, [r2, #0x790]
	cmp r1, #0
	movlt r0, #0xb
	strlt r0, [r5, #8]
	blt _020C53A4
	add r0, r2, #0x16
	mov r4, #0x78
	mla r0, r1, r4, r0
	mov r6, #0x20
	ldr r1, [r2]
	mov r2, r6
	bl MI_CpuCopy8
	ldr r0, [r5]
	mov r2, r6
	ldr r1, [r0]
	ldr r3, [r0, #0x790]
	add r0, r0, #0x5a
	mla r0, r3, r4, r0
	add r1, r1, #0x20
	bl MI_CpuCopy8
	ldr r1, [r5]
	mov r2, #0xa
	ldr r3, [r1, #0x790]
	ldr r0, [r1]
	mla r1, r3, r4, r1
	ldrb r1, [r1, #0x7b]
	str r1, [r0, #0x40]
	ldr r1, [r5]
	ldr r3, [r1, #0x790]
	ldr r0, [r1]
	mla r1, r3, r4, r1
	ldrh r1, [r1, #0x82]
	strh r1, [r0, #0x44]
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r3, [r0, #0x790]
	add r0, r0, #0x36
	mla r0, r3, r4, r0
	add r1, r1, #0x46
	bl MI_CpuCopy8
	mov r6, #2
	b _020C53A4
_020C5380:
	ldr r0, _020C53C8 ; =WDS_Error_End_CB
	mov r1, #8
	str r1, [r5, #8]
	bl WDS_End
_020C5390:
	cmp r0, #0
	movne r0, #0xb
_020C5398:
	strne r0, [r5, #8]
	b _020C53A4
_020C53A0:
	mov r6, #3
_020C53A4:
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C53AC: .word gDwcWdsWork
_020C53B0: .word WDS_Initialize_CB
_020C53B4: .word WDS_StartScan_CB
_020C53B8: .word 0x000082EA
_020C53BC: .word 0x00000BB8
_020C53C0: .word WDS_EndScan_CB
_020C53C4: .word WDS_End_CB
_020C53C8: .word WDS_Error_End_CB
	arm_func_end DWC_AC_ProcessGetWDSInfo

	arm_func_start DWC_AC_CancelGetWDSInfo
DWC_AC_CancelGetWDSInfo: ; 0x020C53CC
	ldr r0, _020C53E4 ; =gDwcWdsWork
	ldr r1, [r0, #8]
	cmp r1, #4
	moveq r1, #5
	streq r1, [r0, #8]
	bx lr
_020C53E4: .word gDwcWdsWork
	arm_func_end DWC_AC_CancelGetWDSInfo

	arm_func_start DWC_AC_CleanupGetWDSInfo
DWC_AC_CleanupGetWDSInfo: ; 0x020C53E8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020C5438 ; =gDwcWdsWork
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _020C5410
	mov r5, #0
	mov r2, r5
	mov r0, #1
	bl DWC_Free
	str r5, [r4, #4]
_020C5410:
	ldr r4, _020C5438 ; =gDwcWdsWork
	ldr r1, [r4]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r5, #0
	mov r2, r5
	mov r0, #1
	bl DWC_Free
	str r5, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020C5438: .word gDwcWdsWork
	arm_func_end DWC_AC_CleanupGetWDSInfo

	arm_func_start WDS_IsAvailableForAutoConnect
WDS_IsAvailableForAutoConnect: ; 0x020C543C
	mov r2, #0
_020C5440:
	ldrb r1, [r0, r2]
	cmp r1, #0x20
	blo _020C5454
	cmp r1, #0x7e
	bls _020C545C
_020C5454:
	mov r0, #0
	bx lr
_020C545C:
	add r2, r2, #1
	cmp r2, #0xa
	blt _020C5440
	mov r0, #1
	bx lr
	arm_func_end WDS_IsAvailableForAutoConnect

	arm_func_start WDS_Initialize_CB
WDS_Initialize_CB: ; 0x020C5470
	ldr r0, _020C5480 ; =gDwcWdsWork
	mov r1, #2
	str r1, [r0, #8]
	bx lr
_020C5480: .word gDwcWdsWork
	arm_func_end WDS_Initialize_CB

	arm_func_start WDS_StartScan_CB
WDS_StartScan_CB: ; 0x020C5484
	ldr r0, _020C5494 ; =gDwcWdsWork
	mov r1, #4
	str r1, [r0, #8]
	bx lr
_020C5494: .word gDwcWdsWork
	arm_func_end WDS_StartScan_CB

	arm_func_start WDS_EndScan_CB
WDS_EndScan_CB: ; 0x020C5498
	ldr r0, _020C54A8 ; =gDwcWdsWork
	mov r1, #7
	str r1, [r0, #8]
	bx lr
_020C54A8: .word gDwcWdsWork
	arm_func_end WDS_EndScan_CB

	arm_func_start WDS_End_CB
WDS_End_CB: ; 0x020C54AC
	ldr r0, _020C54BC ; =gDwcWdsWork
	mov r1, #9
	str r1, [r0, #8]
	bx lr
_020C54BC: .word gDwcWdsWork
	arm_func_end WDS_End_CB

	arm_func_start WDS_Error_End_CB
WDS_Error_End_CB: ; 0x020C54C0
	ldr r0, _020C54D0 ; =gDwcWdsWork
	mov r1, #0xb
	str r1, [r0, #8]
	bx lr
_020C54D0: .word gDwcWdsWork
	arm_func_end WDS_Error_End_CB

	arm_func_start DWCi_AC_ConnectRetryAP
DWCi_AC_ConnectRetryAP: ; 0x020C54D4
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	mov r4, r0
	mov r5, #9
	bl WCM_GetPhase
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _020C55A0
_020C54F8: ; jump table
	b _020C55A0 ; case 0
	b _020C55A0 ; case 1
	b _020C55A0 ; case 2
	b _020C552C ; case 3
	b _020C55A0 ; case 4
	b _020C55A0 ; case 5
	b _020C5578 ; case 6
	b _020C55A0 ; case 7
	b _020C55A0 ; case 8
	b _020C5580 ; case 9
	b _020C55A0 ; case 10
	b _020C5594 ; case 11
	b _020C5588 ; case 12
_020C552C:
	ldrb r0, [r4, #0xd0c]
	ldrb r5, [r4, #0xd0e]
	mov r0, r0, lsl #0x19
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _020C555C
	ldrb r0, [r4, #0xd13]
	mov r1, #0
	mov r5, #7
	add r0, r4, r0, lsl #2
	strb r1, [r0, #0x444]
	b _020C55A0
_020C555C:
	cmp r5, #3
	blo _020C55A0
	cmp r5, #5
	bhi _020C55A0
	mov r0, r5
	bl DWCi_AC_SearchReStart
	b _020C55A0
_020C5578:
	bl WCM_EndSearchAsync
	b _020C55A0
_020C5580:
	bl WCM_DisconnectAsync
	b _020C55A0
_020C5588:
	bl WCM_TerminateAsync
	mov r0, #4
	b _020C5598
_020C5594:
	mov r0, #0
_020C5598:
	bl DWCi_AC_SetError
	mov r5, #0x11
_020C55A0:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DWCi_AC_ConnectRetryAP

	arm_func_start DWCi_AC_SearchAP
DWCi_AC_SearchAP: ; 0x020C55A8
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	mov r4, r0
	bl DWCi_AC_GetPhase
	mov r5, r0
	bl WCM_GetPhase
	cmp r5, #2
	cmpeq r0, #3
	bne _020C561C
	bl WCM_GetAllowedChannel
	mov r2, #0
	mov r1, #0x1000
_020C55DC:
	tst r0, r1, asr r2
	bne _020C55F0
	add r2, r2, #1
	cmp r2, #0xc
	ble _020C55DC
_020C55F0:
	rsb r0, r2, #0xd
	add r1, r4, #0xd00
	strh r0, [r1, #0x1e]
	mov r2, #0x12c
	mov r0, r4
	strh r2, [r1, #0x22]
	mov r2, #0x96
	strh r2, [r1, #0x24]
	bl dwcacsearch_SearchAround1stLap
_020C5614:
	mov r5, r0
	b _020C56C4
_020C561C:
	cmp r5, #6
	bne _020C5634
	mov r0, r4
	mov r1, r5
	bl dwcacsearch_SearchEndCheck
	b _020C5614
_020C5634:
	cmp r0, #3
	beq _020C5644
	cmp r0, #6
	bne _020C5698
_020C5644:
	mov r0, r4
	mov r1, r5
	bl dwcacsearch_SearchEndCheck
	mov r5, r0
	cmp r5, #7
	beq _020C56C4
	cmp r5, #3
	bne _020C5670
	mov r0, r4
	bl dwcacsearch_SearchAround
	b _020C5614
_020C5670:
	cmp r5, #4
	bne _020C5684
	mov r0, r4
	bl dwcacsearch_SearchDifferChannel
	b _020C5614
_020C5684:
	cmp r5, #5
	bne _020C56C4
	mov r0, r4
	bl dwcacsearch_SearchStealth
	b _020C5614
_020C5698:
	cmp r0, #0xb
	bne _020C56B0
	mov r0, #0
	bl DWCi_AC_SetError
	mov r0, #0x11
	ldmfd sp!, {r3, r4, r5, pc}
_020C56B0:
	ble _020C56C4
	mov r0, #4
	bl DWCi_AC_SetError
	mov r0, #0x11
	ldmfd sp!, {r3, r4, r5, pc}
_020C56C4:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DWCi_AC_SearchAP

	arm_func_start DWCi_AC_SetStealthChannel
DWCi_AC_SetStealthChannel: ; 0x020C56CC
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	add r1, r0, #0xd00
	ldrh r1, [r1, #0x1e]
	add r0, r0, #0xd00
	ldrh r3, [r0, #0x16]
	cmp r4, r1
	movhi r4, r1
	sub r1, r4, #1
	mov r2, #1
	orr r1, r3, r2, lsl r1
	strh r1, [r0, #0x16]
	ldmfd sp!, {r4, pc}
	arm_func_end DWCi_AC_SetStealthChannel

	arm_func_start DWCi_AC_SearchReStart
DWCi_AC_SearchReStart: ; 0x020C5708
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	mov r4, r0
	cmp r5, #3
	beq _020C5738
	cmp r5, #4
	beq _020C5768
	cmp r5, #5
	beq _020C5810
	ldmfd sp!, {r4, r5, r6, pc}
_020C5738:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	add r0, r4, #0xd00
	ldrsb r2, [r0, #0x11]
	ldr r1, _020C584C ; =DWC_AC_SEARCH_CHANNEL
	ldr r0, _020C5850 ; =WCM_Bssid_Any
	ldr r2, [r1, r2, lsl #2]
	ldr r1, _020C5854 ; =WCM_Essid_Any
	orr r2, r2, #0x200000
	bl WCM_SearchAsync
	ldmfd sp!, {r4, r5, r6, pc}
_020C5768:
	ldrb r1, [r4, #0xd0f]
	mov r0, #0xc0
	mov r5, #1
	mla r0, r1, r0, r4
	add r0, r0, #0x400
	ldrh r0, [r0, #0xa6]
	sub r0, r0, #1
	mov r0, r5, lsl r0
	mov r6, r0, lsl #0x10
	bl WCM_GetAllowedChannel
	tst r0, r6, lsr #16
	moveq r5, #0
	cmp r5, #1
	bne _020C57F4
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrb r2, [r4, #0xd0f]
	mov r0, #0xc0
	add r1, r4, #0x74
	smulbb r5, r2, r0
	add r0, r4, r5
	add r0, r0, #0x400
	ldrh r2, [r0, #0xa6]
	add r0, r4, #0x7c
	add r4, r1, #0x400
	sub r1, r2, #1
	orr r1, r1, #0x300000
	add r3, r0, #0x400
	mov r2, r1, lsl #0x10
	add r0, r4, r5
	add r1, r3, r5
	mov r2, r2, lsr #0x10
	bl WCM_SearchAsync
	ldmfd sp!, {r4, r5, r6, pc}
_020C57F4:
	ldrb r1, [r4, #0xd0f]
	add r0, r4, #0x47
	add r2, r0, #0x400
	ldrb r0, [r2, r1, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r2, r1, lsl #2]
	ldmfd sp!, {r4, r5, r6, pc}
_020C5810:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	add r2, r4, #0xd00
	ldrb r3, [r4, #0xd0f]
	add r1, r4, #0x304
	mov r0, #0x24
	mla r1, r3, r0, r1
	ldrsb r3, [r2, #0x11]
	ldr r2, _020C584C ; =DWC_AC_SEARCH_CHANNEL
	ldr r0, _020C5850 ; =WCM_Bssid_Any
	ldr r2, [r2, r3, lsl #2]
	orr r2, r2, #0x300000
	bl WCM_SearchAsync
	ldmfd sp!, {r4, r5, r6, pc}
_020C584C: .word DWC_AC_SEARCH_CHANNEL
_020C5850: .word WCM_Bssid_Any
_020C5854: .word WCM_Essid_Any
	arm_func_end DWCi_AC_SearchReStart

	arm_func_start dwcacsearch_SearchAround1stLap
dwcacsearch_SearchAround1stLap: ; 0x020C5858
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	mov r0, #0
	str r1, [r4, #0xcb4]
	bl dwcacsearch_GetStartChannel
	strb r0, [r4, #0xd11]
	bl OS_GetTick
	add r2, r4, #0xd00
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrsb r2, [r2, #0x11]
	ldr r1, _020C58AC ; =DWC_AC_SEARCH_CHANNEL
	ldr r0, _020C58B0 ; =WCM_Bssid_Any
	ldr r2, [r1, r2, lsl #2]
	ldr r1, _020C58B4 ; =WCM_Essid_Any
	orr r2, r2, #0x200000
	bl WCM_SearchAsync
	mov r0, #3
	ldmfd sp!, {r4, pc}
_020C58AC: .word DWC_AC_SEARCH_CHANNEL
_020C58B0: .word WCM_Bssid_Any
_020C58B4: .word WCM_Essid_Any
	arm_func_end dwcacsearch_SearchAround1stLap

	arm_func_start dwcacsearch_SearchAround2ndLap
dwcacsearch_SearchAround2ndLap: ; 0x020C58B8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r2, [r4, #0xd0b]
	mov r0, #0
	strb r0, [r4, #0xd15]
	mov r1, r2, lsl #0x18
	mov r1, r1, lsr #0x1c
	add r1, r1, #1
	and r1, r1, #0xff
	bic r2, r2, #0xf0
	mov r1, r1, lsl #0x1c
	orr r1, r2, r1, lsr #24
	strb r1, [r4, #0xd0b]
	bl DWCi_AC_MakeSearchList
	mov r0, #1
	bl dwcacsearch_GetStartChannel
	strb r0, [r4, #0xd11]
	mov r0, #3
	ldmfd sp!, {r4, pc}
	arm_func_end dwcacsearch_SearchAround2ndLap

	arm_func_start dwcacsearch_SearchAround
dwcacsearch_SearchAround: ; 0x020C5904
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl OS_GetTick
	ldr r2, [r4, #0xcb0]
	mov r5, #0
	subs r12, r0, r2
	ldr r0, [r4, #0xcb4]
	ldr r2, _020C59B4 ; =0x000082EA
	sbc r0, r1, r0
	mov r1, r0, lsl #6
	mov r3, r5
	orr r1, r1, r12, lsr #26
	mov r0, r12, lsl #6
	bl _ll_udiv
	add r2, r4, #0xd00
	ldrh r3, [r2, #0x22]
	cmp r1, r3, asr #31
	cmpeq r0, r3
	blo _020C59AC
	ldrsb r0, [r2, #0x11]
	bl dwcacsearch_GetNextAroundChannel
	strb r0, [r4, #0xd11]
	add r0, r4, #0xd00
	ldrsb r1, [r0, #0x11]
	sub r0, r5, #1
	cmp r1, r0
	bne _020C5980
	mov r0, r4
	mov r1, #3
	bl dwcacsearch_NextSearchCheck
	ldmfd sp!, {r3, r4, r5, pc}
_020C5980:
	bl OS_GetTick
	add r2, r4, #0xd00
	ldrsb r3, [r2, #0x11]
	ldr r2, _020C59B8 ; =DWC_AC_SEARCH_CHANNEL
	str r0, [r4, #0xcb0]
	ldr r2, [r2, r3, lsl #2]
	str r1, [r4, #0xcb4]
	ldr r0, _020C59BC ; =WCM_Bssid_Any
	ldr r1, _020C59C0 ; =WCM_Essid_Any
	orr r2, r2, #0x200000
	bl WCM_SearchAsync
_020C59AC:
	mov r0, #3
	ldmfd sp!, {r3, r4, r5, pc}
_020C59B4: .word 0x000082EA
_020C59B8: .word DWC_AC_SEARCH_CHANNEL
_020C59BC: .word WCM_Bssid_Any
_020C59C0: .word WCM_Essid_Any
	arm_func_end dwcacsearch_SearchAround

	arm_func_start dwcacsearch_SearchDifferChannel
dwcacsearch_SearchDifferChannel: ; 0x020C59C4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl OS_GetTick
	ldr r2, [r4, #0xcb0]
	ldr r3, [r4, #0xcb4]
	subs r5, r0, r2
	sbc r0, r1, r3
	mov r1, r0, lsl #6
	ldr r2, _020C5B48 ; =0x000082EA
	orr r1, r1, r5, lsr #26
	mov r0, r5, lsl #6
	mov r3, #0
	bl _ll_udiv
	add r2, r4, #0xd00
	ldrh r2, [r2, #0x24]
	cmp r1, r2, asr #31
	cmpeq r0, r2
	bhs _020C5A28
	ldrb r0, [r4, #0xd0f]
	add r0, r4, r0, lsl #2
	ldrb r0, [r0, #0x447]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _020C5B40
_020C5A28:
	ldrb r1, [r4, #0xd0f]
	add r0, r4, #0x47
	add r2, r0, #0x400
	ldrb r0, [r2, r1, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r2, r1, lsl #2]
	ldrb r2, [r4, #0xd12]
	ldrb r1, [r4, #0xd0f]
	cmp r1, r2
	bhs _020C5A80
_020C5A50:
	add r0, r4, r1, lsl #2
	ldrb r0, [r0, #0x447]
	mov r0, r0, lsl #0x18
	movs r0, r0, lsr #0x1f
	beq _020C5A80
	ldrb r0, [r4, #0xd0f]
	ldrb r2, [r4, #0xd12]
	add r0, r0, #1
	and r1, r0, #0xff
	strb r0, [r4, #0xd0f]
	cmp r1, r2
	blo _020C5A50
_020C5A80:
	cmp r2, r1
	bhi _020C5AA0
	mov r2, #0
	mov r0, r4
	mov r1, #4
	strb r2, [r4, #0xd0f]
	bl dwcacsearch_NextSearchCheck
	ldmfd sp!, {r4, r5, r6, pc}
_020C5AA0:
	mov r0, #0xc0
	mla r0, r1, r0, r4
	add r0, r0, #0x400
	ldrh r0, [r0, #0xa6]
	mov r6, #1
	sub r0, r0, #1
	mov r0, r6, lsl r0
	mov r5, r0, lsl #0x10
	bl WCM_GetAllowedChannel
	tst r0, r5, lsr #16
	moveq r6, #0
	cmp r6, #1
	bne _020C5B28
	bl OS_GetTick
	ldrb r5, [r4, #0xd0f]
	mov r2, #0xc0
	add r3, r4, #0x74
	smulbb r2, r5, r2
	add r5, r4, r2
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	add r0, r5, #0x400
	ldrh r1, [r0, #0xa6]
	add r0, r4, #0x7c
	add r5, r3, #0x400
	sub r1, r1, #1
	orr r1, r1, #0x300000
	add r4, r0, #0x400
	mov r3, r1, lsl #0x10
	add r0, r5, r2
	add r1, r4, r2
	mov r2, r3, lsr #0x10
	bl WCM_SearchAsync
	b _020C5B40
_020C5B28:
	ldrb r1, [r4, #0xd0f]
	add r0, r4, #0x47
	add r2, r0, #0x400
	ldrb r0, [r2, r1, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r2, r1, lsl #2]
_020C5B40:
	mov r0, #4
	ldmfd sp!, {r4, r5, r6, pc}
_020C5B48: .word 0x000082EA
	arm_func_end dwcacsearch_SearchDifferChannel

	arm_func_start dwcacsearch_SearchStealth
dwcacsearch_SearchStealth: ; 0x020C5B4C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_GetTick
	ldr r2, [r4, #0xcb0]
	ldr r3, [r4, #0xcb4]
	subs r12, r0, r2
	sbc r0, r1, r3
	mov r1, r0, lsl #6
	ldr r2, _020C5C70 ; =0x000082EA
	orr r1, r1, r12, lsr #26
	mov r0, r12, lsl #6
	mov r3, #0
	bl _ll_udiv
	add r2, r4, #0xd00
	ldrh r2, [r2, #0x24]
	cmp r1, r2, asr #31
	cmpeq r0, r2
	bhs _020C5BB4
	ldrb r1, [r4, #0xd0f]
	mov r0, #0x24
	mla r0, r1, r0, r4
	ldrb r0, [r0, #0x300]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	cmp r0, #1
	bne _020C5C68
_020C5BB4:
	ldrb r1, [r4, #0xd0f]
	mov r0, #0x24
	add r2, r4, #0x300
	smulbb r1, r1, r0
	ldrb r0, [r2, r1]
	bic r0, r0, #0xf
	strb r0, [r2, r1]
	ldrb r0, [r4, #0xd0f]
	ldrb r1, [r4, #0xd10]
	add r2, r0, #1
	and r0, r2, #0xff
	strb r2, [r4, #0xd0f]
	cmp r1, r0
	bhi _020C5C08
	ldrb r1, [r4, #0xd15]
	mov r0, #0
	strb r0, [r4, #0xd0f]
	add r0, r1, #1
	strb r0, [r4, #0xd15]
	bl dwcacsearch_GetNextStealthChannel
	strb r0, [r4, #0xd11]
_020C5C08:
	add r0, r4, #0xd00
	ldrsb r0, [r0, #0x11]
	cmp r0, #0
	bge _020C5C30
	mov r2, #0
	mov r0, r4
	mov r1, #5
	strb r2, [r4, #0xd15]
	bl dwcacsearch_NextSearchCheck
	ldmfd sp!, {r4, pc}
_020C5C30:
	bl OS_GetTick
	add r3, r4, #0xd00
	ldrb r12, [r4, #0xd0f]
	add lr, r4, #0x304
	mov r2, #0x24
	str r1, [r4, #0xcb4]
	str r0, [r4, #0xcb0]
	mla r1, r12, r2, lr
	ldrsb r3, [r3, #0x11]
	ldr r2, _020C5C74 ; =DWC_AC_SEARCH_CHANNEL
	ldr r0, _020C5C78 ; =WCM_Bssid_Any
	ldr r2, [r2, r3, lsl #2]
	orr r2, r2, #0x300000
	bl WCM_SearchAsync
_020C5C68:
	mov r0, #5
	ldmfd sp!, {r4, pc}
_020C5C70: .word 0x000082EA
_020C5C74: .word DWC_AC_SEARCH_CHANNEL
_020C5C78: .word WCM_Bssid_Any
	arm_func_end dwcacsearch_SearchStealth

	arm_func_start dwcacsearch_NextSearchCheck
dwcacsearch_NextSearchCheck: ; 0x020C5C7C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #3
	beq _020C5CA4
	cmp r4, #4
	beq _020C5CFC
	cmp r4, #5
	beq _020C5D00
	b _020C5D20
_020C5CA4:
	ldrb r1, [r5, #0xd12]
	cmp r1, #0
	bne _020C5CC0
	add r1, r5, #0xd00
	ldrh r1, [r1, #0x16]
	cmp r1, #0
	beq _020C5CE0
_020C5CC0:
	mov r0, #1
	bl DWCi_AC_MakeSearchList
	cmp r0, #1
	moveq r4, #4
	beq _020C5D20
	mov r0, r5
_020C5CD8:
	bl dwcacsearch_CheckStartStealthSearch
	b _020C5D1C
_020C5CE0:
	ldrb r1, [r5, #0xd0b]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmp r1, #1
	movhs r4, #6
	bhs _020C5D20
	b _020C5D18
_020C5CFC:
	b _020C5CD8
_020C5D00:
	ldrb r1, [r5, #0xd0b]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmp r1, #1
	movhs r4, #6
	bhs _020C5D20
_020C5D18:
	bl dwcacsearch_SearchAround2ndLap
_020C5D1C:
	mov r4, r0
_020C5D20:
	mov r0, r4
	bl DWCi_AC_SearchReStart
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end dwcacsearch_NextSearchCheck

	arm_func_start dwcacsearch_SearchEndCheck
dwcacsearch_SearchEndCheck: ; 0x020C5D30
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	cmp r5, #0x11
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r1, [r6, #0xd12]
	mov r4, #0
	cmp r1, #0
	bls _020C5D78
_020C5D58:
	add r0, r6, r4, lsl #2
	ldrb r0, [r0, #0x444]
	cmp r0, #0
	beq _020C5D78
	add r0, r4, #1
	and r4, r0, #0xff
	cmp r4, r1
	blo _020C5D58
_020C5D78:
	cmp r5, #6
	bne _020C5DA8
	cmp r1, r4
	bne _020C5E34
	cmp r4, #0
	bne _020C5D98
	mov r0, #5
	b _020C5D9C
_020C5D98:
	mov r0, #6
_020C5D9C:
	bl DWCi_AC_SetError
	mov r0, #0x11
	ldmfd sp!, {r4, r5, r6, pc}
_020C5DA8:
	cmp r1, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r1, r4
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r6, #0xd0c]
	mov r0, r0, lsl #0x1a
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _020C5DE8
	add r0, r6, r4, lsl #2
	ldrb r0, [r0, #0x446]
	cmp r0, #0x14
	movlo r0, r5
	ldmlofd sp!, {r4, r5, r6, pc}
_020C5DE8:
	add r0, r6, r4, lsl #2
	ldrb r0, [r0, #0x445]
	cmp r0, #7
	blo _020C5E04
	cmp r0, #0xa
	movls r0, r5
	ldmlsfd sp!, {r4, r5, r6, pc}
_020C5E04:
	ldrb r0, [r6, #0xd0c]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _020C5E34
	add r1, r6, #0x470
	mov r0, #0xc0
	mla r0, r4, r0, r1
	bl DWCi_AC_IsSupportWPA
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
_020C5E34:
	strb r4, [r6, #0xd13]
	bl WCM_EndSearchAsync
	cmp r0, #1
	strneb r5, [r6, #0xd0e]
	movne r5, #7
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end dwcacsearch_SearchEndCheck

	arm_func_start dwcacsearch_CheckStartStealthSearch
dwcacsearch_CheckStartStealthSearch: ; 0x020C5E50
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xd00
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	beq _020C5EAC
	mov r0, #2
	bl DWCi_AC_MakeSearchList
	cmp r0, #1
	bne _020C5EAC
	bl dwcacsearch_GetNextStealthChannel
	strb r0, [r4, #0xd11]
	add r0, r4, #0xd00
	ldrsb r0, [r0, #0x11]
	cmp r0, #0
	movge r0, #5
	ldmgefd sp!, {r4, pc}
	mov r2, #0
	mov r0, r4
	mov r1, #5
	strb r2, [r4, #0xd15]
	bl dwcacsearch_NextSearchCheck
	ldmfd sp!, {r4, pc}
_020C5EAC:
	ldrb r0, [r4, #0xd0b]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1c
	cmp r0, #1
	movhs r0, #6
	ldmhsfd sp!, {r4, pc}
	mov r0, r4
	bl dwcacsearch_SearchAround2ndLap
	ldmfd sp!, {r4, pc}
	arm_func_end dwcacsearch_CheckStartStealthSearch

	arm_func_start dwcacsearch_GetStartChannel
dwcacsearch_GetStartChannel: ; 0x020C5ED0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r10, r0
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	cmp r10, #0
	mov r7, r0
	add r4, r7, #0xd00
	moveq r8, #0
	moveq r9, #1
	ldrh r0, [r4, #0x1e]
	movne r8, #1
	movne r9, #2
	cmp r8, r0
	bgt _020C5F40
	mov r5, #0
	mov r6, #1
_020C5F10:
	bl WCM_GetAllowedChannel
	tst r0, r9
	movne r0, r6
	moveq r0, r5
	cmp r0, #1
	beq _020C5F40
	ldrh r1, [r4, #0x1e]
	mov r0, r9, lsl #0x12
	add r8, r8, #2
	cmp r8, r1
	mov r9, r0, lsr #0x10
	ble _020C5F10
_020C5F40:
	add r0, r7, #0xd00
	ldrh r0, [r0, #0x1e]
	cmp r8, r0
	ble _020C5F68
	mov r0, #1
	cmp r10, #0
	moveq r0, #0
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C5F68:
	mov r0, r8, lsl #0x18
	mov r0, r0, asr #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end dwcacsearch_GetStartChannel

	arm_func_start dwcacsearch_GetNextAroundChannel
dwcacsearch_GetNextAroundChannel: ; 0x020C5F74
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	add r1, r9, #2
	mov r7, r0
	mov r0, r1, lsl #0x18
	add r4, r7, #0xd00
	ldrh r2, [r4, #0x1e]
	mov r9, r0, asr #0x18
	mov r1, #1
	mov r1, r1, lsl r9
	mov r1, r1, lsl #0x10
	cmp r2, r0, asr #24
	mov r8, r1, lsr #0x10
	blt _020C5FF4
	mov r5, #0
	mov r6, #1
_020C5FBC:
	bl WCM_GetAllowedChannel
	tst r0, r8
	movne r0, r6
	moveq r0, r5
	cmp r0, #1
	beq _020C5FF4
	ldrh r2, [r4, #0x1e]
	add r0, r9, #2
	mov r1, r0, lsl #0x18
	mov r0, r8, lsl #0x12
	cmp r2, r1, asr #24
	mov r8, r0, lsr #0x10
	mov r9, r1, asr #0x18
	bge _020C5FBC
_020C5FF4:
	add r0, r7, #0xd00
	ldrh r0, [r0, #0x1e]
	cmp r9, r0
	mvngt r9, #0
	mov r0, r9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end dwcacsearch_GetNextAroundChannel

	arm_func_start dwcacsearch_GetNextStealthChannel
dwcacsearch_GetNextStealthChannel: ; 0x020C600C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r5, #0x10
	mov r0, r5
	bl DWCi_AC_GetMemPtr
	mov r6, r0
	add r4, r6, #0xd00
	ldrh r9, [r4, #0x16]
	cmp r9, #0
	subeq r0, r5, #0x11
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r0, [r4, #0x1e]
	mov r7, #0
	mov r8, r7
	cmp r0, #0
	ble _020C60B4
	mov r11, r7
	mov r5, #1
_020C6050:
	tst r9, r5, lsl r7
	mov r10, r5, lsl r7
	beq _020C60A0
	ldrb r0, [r6, #0xd15]
	cmp r8, r0
	bne _020C6098
	bl WCM_GetAllowedChannel
	mov r1, r10, lsl #0x10
	tst r0, r1, lsr #16
	movne r0, r5
	moveq r0, r11
	cmp r0, #1
	moveq r0, r7, lsl #0x18
	moveq r0, r0, asr #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r6, #0xd15]
	add r0, r0, #1
	strb r0, [r6, #0xd15]
_020C6098:
	add r0, r8, #1
	and r8, r0, #0xff
_020C60A0:
	ldrh r0, [r4, #0x1e]
	add r1, r7, #1
	and r7, r1, #0xff
	cmp r7, r0
	blt _020C6050
_020C60B4:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end dwcacsearch_GetNextStealthChannel

	arm_func_start DWCi_AC_CheckNintendoShopAP
DWCi_AC_CheckNintendoShopAP: ; 0x020C60BC
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	add r4, sp, #0
	mov r1, r4
	bl dwcacshop_decodeSSID
	ldr r1, _020C60F4 ; =0x020E43F4
	mov r0, r4
	mov r2, #8
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x18
	ldmfd sp!, {r4, pc}
_020C60F4: .word ov15_020E43F4
	arm_func_end DWCi_AC_CheckNintendoShopAP

	arm_func_start DWCi_AC_GetNintendoShopWepKey
DWCi_AC_GetNintendoShopWepKey: ; 0x020C60F8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	add r4, sp, #0
	mov r5, r1
	mov r1, r4
	bl dwcacshop_decodeSSID
	mov r0, r4
	mov r1, r5
	bl dwcacshop_makeShopWepKey
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DWCi_AC_GetNintendoShopWepKey

	arm_func_start DWCi_AC_GetPostalCode
DWCi_AC_GetPostalCode: ; 0x020C6124
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	add r4, sp, #0
	mov r5, r1
	mov r1, r4
	bl dwcacshop_decodeSSID
	ldr r1, _020C6170 ; =0x020E43F4
	mov r0, r4
	mov r2, #8
	bl memcmp
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, pc}
	add r0, sp, #8
	mov r1, r5
	mov r2, #0xa
	bl MI_CpuCopy8
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, pc}
_020C6170: .word ov15_020E43F4
	arm_func_end DWCi_AC_GetPostalCode

	arm_func_start DWCi_AC_CheckNintendoUsbAP
DWCi_AC_CheckNintendoUsbAP: ; 0x020C6174
	stmfd sp!, {r3, lr}
	ldr r1, _020C6194 ; =0x020E4400
	mov r2, #8
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_020C6194: .word ov15_020E4400
	arm_func_end DWCi_AC_CheckNintendoUsbAP

	arm_func_start DWCi_AC_GetNintendoUSBWepKey
DWCi_AC_GetNintendoUSBWepKey: ; 0x020C6198
	ldr r12, _020C61A4 ; =dwcacshop_makeUsbWepKey
	add r0, r0, #0xc
	bx r12
_020C61A4: .word dwcacshop_makeUsbWepKey
	arm_func_end DWCi_AC_GetNintendoUSBWepKey

	arm_func_start dwcacshop_decodeSSID
dwcacshop_decodeSSID: ; 0x020C61A8
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	ldr lr, _020C629C ; =0x020E3D40
	add r12, sp, #0
	mov r4, r1
	mov r3, #0xc
_020C61C0:
	ldrb r1, [lr, #1]
	ldrb r2, [lr], #2
	subs r3, r3, #1
	strb r1, [r12, #1]
	strb r2, [r12], #2
	bne _020C61C0
	mov r1, r4
	mov r2, #0x20
	mov r3, #0x18
	bl dwcacshop_db64
	ldr r0, _020C62A0 ; =dwcacshop_SHMASKkey0
	mov r3, #0
_020C61F0:
	ldr r1, [r0, #8]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0x18
	blt _020C61F0
	mov r6, #0
	add r12, sp, #0
	mov r1, #0xff
_020C621C:
	and r2, r6, #0xff
	ldrb r0, [r12, r2]
	mov lr, r2
	ldrb r5, [r4, r6]
	cmp r0, #0xff
	beq _020C6260
_020C6234:
	add r0, r12, lr
	ldrb lr, [r12, lr]
	ldrb r2, [r12, r2]
	ldrb r3, [r4, lr]
	strb r1, [r0]
	ldrb r0, [r12, lr]
	strb r5, [r4, r2]
	mov r2, lr
	mov r5, r3
	cmp r0, #0xff
	bne _020C6234
_020C6260:
	add r6, r6, #1
	cmp r6, #0x18
	blt _020C621C
	ldr r0, _020C62A0 ; =dwcacshop_SHMASKkey0
	mov r3, #0
_020C6274:
	ldr r1, [r0]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0x18
	blt _020C6274
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, pc}
_020C629C: .word ov15_020E3D40
_020C62A0: .word dwcacshop_SHMASKkey0
	arm_func_end dwcacshop_decodeSSID

	arm_func_start dwcacshop_makeShopWepKey
dwcacshop_makeShopWepKey: ; 0x020C62A4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x6c
	add r4, sp, #0x14
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl MATH_MD5Init
	mov r0, r4
	mov r1, r6
	mov r2, #0x18
	bl MATH_MD5Update
	add r1, sp, #0
	mov r0, r4
	bl MATH_MD5GetHash
	add r0, sp, #3
	mov r1, r5
	mov r2, #0xd
	bl MI_CpuCopy8
	add sp, sp, #0x6c
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end dwcacshop_makeShopWepKey

	arm_func_start dwcacshop_makeUsbWepKey
dwcacshop_makeUsbWepKey: ; 0x020C62F4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	ldr lr, _020C6490 ; =0x92492493
	mov r4, r1
	mov r1, #0
	mov r12, #7
_020C630C:
	smull r2, r3, lr, r1
	add r3, r1, r3
	mov r2, r1, lsr #0x1f
	add r3, r2, r3, asr #2
	smull r2, r3, r12, r3
	sub r3, r1, r2
	add r2, r0, r3
	ldrb r3, [r0, r1]
	ldrb r2, [r2, #0xd]
	eor r2, r3, r2
	strb r2, [r4, r1]
	add r1, r1, #1
	cmp r1, #0xd
	blt _020C630C
	mov r5, #0
_020C6348:
	add r3, r4, r5
	add r1, r0, r5
	ldrb r2, [r3, #3]
	ldrb r1, [r1, #0xd]
	add r5, r5, #1
	cmp r5, #7
	eor r1, r2, r1
	strb r1, [r3, #3]
	blt _020C6348
	ldr r0, _020C6494 ; =dwcacshop_SHMASKkey0
	mov r3, #0
_020C6374:
	ldr r1, [r0, #4]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0xd
	blt _020C6374
	add r5, sp, #0
	mov r0, r4
	mov r1, r5
	mov r2, #0xd
	bl MI_CpuCopy8
	ldr r1, _020C6498 ; =dwcacshop_CONV_BYTE_TABLE
	mov r3, #0
_020C63B0:
	ldrb r2, [r5, r3]
	ldrb r0, [r1, r3]
	add r3, r3, #1
	cmp r3, #0xd
	strb r2, [r4, r0]
	blt _020C63B0
	ldr r0, _020C6494 ; =dwcacshop_SHMASKkey0
	mov r3, #0
_020C63D0:
	ldr r1, [r0, #0xc]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0xd
	blt _020C63D0
	ldr r2, _020C649C ; =dwcacshop_CONV_4BIT_TABLE
	mov r5, #0
_020C63F8:
	ldrb r3, [r4, r5]
	mov r0, r3, asr #4
	and r1, r0, #0xf
	and r0, r3, #0xf
	ldrb r1, [r2, r1]
	ldrb r0, [r2, r0]
	orr r0, r0, r1, lsl #4
	strb r0, [r4, r5]
	add r5, r5, #1
	cmp r5, #0xd
	blt _020C63F8
	mov r1, #0
_020C6428:
	add r0, r4, r1
	ldrb r3, [r4, r1]
	ldrb r2, [r0, #6]
	eor r2, r3, r2
	strb r2, [r4, r1]
	ldrb r3, [r0, #3]
	ldrb r2, [r0, #9]
	eor r2, r3, r2
	strb r2, [r0, #3]
	ldrb r3, [r0, #6]
	and r2, r2, #0xff
	eor r2, r3, r2
	strb r2, [r0, #6]
	ldrb r3, [r0, #9]
	ldrb r2, [r4, r1]
	eor r2, r3, r2
	strb r2, [r0, #9]
	ldrb r0, [r4, r1]
	ldrb r2, [r4, #0xc]
	add r1, r1, #1
	cmp r1, #3
	eor r0, r2, r0
	strb r0, [r4, #0xc]
	blt _020C6428
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_020C6490: .word 0x92492493
_020C6494: .word dwcacshop_SHMASKkey0
_020C6498: .word dwcacshop_CONV_BYTE_TABLE
_020C649C: .word dwcacshop_CONV_4BIT_TABLE
	arm_func_end dwcacshop_makeUsbWepKey

	arm_func_start dwcacshop_codetovalue
dwcacshop_codetovalue: ; 0x020C64A0
	cmp r0, #0x41
	blo _020C64B4
	cmp r0, #0x5a
	subls r0, r0, #0x41
	bxls lr
_020C64B4:
	cmp r0, #0x61
	blo _020C64CC
	cmp r0, #0x7a
	subls r0, r0, #0x61
	addls r0, r0, #0x1a
	bxls lr
_020C64CC:
	cmp r0, #0x30
	blo _020C64E4
	cmp r0, #0x39
	subls r0, r0, #0x30
	addls r0, r0, #0x34
	bxls lr
_020C64E4:
	cmp r0, #0x2b
	moveq r0, #0x3e
	bxeq lr
	cmp r0, #0x2f
	moveq r0, #0x3f
	bxeq lr
	cmp r0, #0x3d
	movne r0, #1
	moveq r0, #0
	rsb r0, r0, #0
	bx lr
	arm_func_end dwcacshop_codetovalue

	arm_func_start dwcacshop_db64
dwcacshop_db64: ; 0x020C6510
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	add r4, r2, r2, lsl #1
	str r0, [sp]
	cmp r3, r4, lsr #2
	mov r0, r4, lsr #2
	andhs r7, r2, #3
	str r1, [sp, #4]
	str r0, [sp, #8]
	subhs r11, r2, r7
	bhs _020C6548
	add sp, sp, #0x14
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C6548:
	cmp r11, #0
	mov r8, #0
	ble _020C65D0
	add r5, sp, #0x10
	mov r4, #6
_020C655C:
	ldr r0, [sp]
	mov r6, #0
	mov r9, r6
	add r10, r0, r8
_020C656C:
	ldrb r0, [r10, r9]
	bl dwcacshop_codetovalue
	rsb r1, r9, #3
	mul r2, r1, r4
	orr r6, r6, r0, lsl r2
	add r9, r9, #1
	cmp r9, #4
	blt _020C656C
	mov r0, r8, asr #1
	add r0, r8, r0, lsr #30
	mov r0, r0, asr #2
	add r1, r0, r0, lsl #1
	ldr r0, [sp, #4]
	mov r2, #0
	str r6, [sp, #0x10]
	add r1, r0, r1
_020C65AC:
	rsb r0, r2, #2
	ldrb r0, [r5, r0]
	strb r0, [r1, r2]
	add r2, r2, #1
	cmp r2, #3
	blt _020C65AC
	add r8, r8, #4
	cmp r8, r11
	blt _020C655C
_020C65D0:
	cmp r7, #0
	beq _020C665C
	mov r5, #0
	mov r6, r5
	str r5, [sp, #0xc]
	ble _020C6620
	ldr r0, [sp]
	mov r9, r5
	add r4, r0, r11
	mov r8, #6
_020C65F8:
	ldrb r0, [r4, r6]
	bl dwcacshop_codetovalue
	rsb r1, r6, #3
	mul r2, r1, r8
	orr r5, r5, r0, lsl r2
	add r6, r6, #1
	cmp r6, r7
	orr r9, r9, r5
	blt _020C65F8
	str r9, [sp, #0xc]
_020C6620:
	cmp r7, #0
	mov r3, #0
	ble _020C665C
	add r1, r11, r11, lsl #1
	mov r0, r1, asr #1
	add r1, r1, r0, lsr #30
	ldr r0, [sp, #4]
	add r2, r0, r1, asr #2
	add r1, sp, #0xc
_020C6644:
	rsb r0, r3, #2
	ldrb r0, [r1, r0]
	strb r0, [r2, r3]
	add r3, r3, #1
	cmp r3, r7
	blt _020C6644
_020C665C:
	ldr r0, [sp, #8]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end dwcacshop_db64

	arm_func_start DWCi_AC_Start
DWCi_AC_Start: ; 0x020C6668
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	bl WCM_GetPhase
	mov r4, r0
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	cmp r4, #1
	bne _020C66D4
	ldrb r1, [r0, #0xd0a]
	mov r0, #0
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	bl DWCi_AC_MakeSearchList
	ldr r1, _020C66EC ; =DWCi_AC_CallBackWCM
	add r0, sp, #0
	bl WCM_StartupAsync
	cmp r0, #1
	beq _020C66C0
	cmp r0, #4
	blt _020C66E0
_020C66C0:
	mov r0, #1
	bl DWCi_AC_SetError
	add sp, sp, #0x10
	mov r0, #0x11
	ldmfd sp!, {r4, pc}
_020C66D4:
	add sp, sp, #0x10
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020C66E0:
	mov r0, #2
	add sp, sp, #0x10
	ldmfd sp!, {r4, pc}
_020C66EC: .word DWCi_AC_CallBackWCM
	arm_func_end DWCi_AC_Start

	arm_func_start DWCi_AC_ConnectTest
DWCi_AC_ConnectTest: ; 0x020C66F0
	stmfd sp!, {r3, r4, r5, lr}
	bl DWCi_AC_GetPhase
	mov r4, r0
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	mov r5, r0
	bl WCM_GetPhase
	cmp r0, #9
	bne _020C6780
	sub r0, r4, #0xa
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _020C67BC
_020C6724: ; jump table
	b _020C673C ; case 0
	b _020C6774 ; case 1
	b _020C6748 ; case 2
	b _020C6754 ; case 3
	b _020C675C ; case 4
	b _020C6768 ; case 5
_020C673C:
	mov r0, r5
	bl dwcactest_ConnectTestStart
_020C6744:
	b _020C6778
_020C6748:
	mov r0, r5
	bl dwcactest_GetIPAddress
	b _020C6744
_020C6754:
	bl dwcactest_ConnectTestCreate
	b _020C6744
_020C675C:
	mov r0, r5
	bl dwcactest_ConnectTestProcess
	b _020C6744
_020C6768:
	mov r0, r5
	bl dwcactest_ConnectTestEnd
	b _020C6778
_020C6774:
	bl dwcactest_ConnectTestRetry
_020C6778:
	mov r4, r0
	b _020C67BC
_020C6780:
	cmp r4, #0xb
	beq _020C679C
	cmp r4, #0xe
	beq _020C67A0
	cmp r4, #0xf
	bne _020C67A8
	b _020C6768
_020C679C:
	b _020C6774
_020C67A0:
	bl DWC_Netcheck_Abort
	bl DWC_Netcheck_Destroy
_020C67A8:
	ldrb r0, [r5, #0xd13]
	mov r1, #2
	mov r4, #0xb
	add r0, r5, r0, lsl #2
	strb r1, [r0, #0x444]
_020C67BC:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DWCi_AC_ConnectTest

	arm_func_start dwcactest_ConnectTestStart
dwcactest_ConnectTestStart: ; 0x020C67C4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #1
	bl DWCi_AC_GetMemPtr
	mov r5, #4
	mov r6, r0
	mov r0, r5
	bl DWCi_AC_GetMemPtr
	mov r4, r0
	mov r0, r6
	mov r1, r7
	mov r2, r4
	bl dwcactest_MakeSOCConfig
	ldr r1, _020C6824 ; =SOCLiYieldWait
	mov r0, r4
	str r5, [r1]
	bl SOC_Startup
	cmp r0, #0
	moveq r0, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #2
	bl DWCi_AC_SetError
	mov r0, #0x11
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C6824: .word SOCLiYieldWait
	arm_func_end dwcactest_ConnectTestStart

	arm_func_start dwcactest_GetIPAddress
dwcactest_GetIPAddress: ; 0x020C6828
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl SOC_GetHostID
	cmp r0, #0
	beq _020C6860
	mov r0, r4
	bl dwcactest_CheckSetDNS
	ldrb r0, [r4, #0xd0c]
	mov r0, r0, lsl #0x1b
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	moveq r0, #0xf
	movne r0, #0xd
	ldmfd sp!, {r4, pc}
_020C6860:
	bl OS_GetTick
	ldr r2, [r4, #0xcb0]
	mov r3, #0
	subs r12, r0, r2
	ldr r0, [r4, #0xcb4]
	ldr r2, _020C68B4 ; =0x01FF6210
	sbc r0, r1, r0
	mov r1, r0, lsl #6
	orr r1, r1, r12, lsr #26
	mov r0, r12, lsl #6
	bl _ll_udiv
	cmp r1, #0
	cmpeq r0, #0xa
	movlo r0, #0xc
	ldmlofd sp!, {r4, pc}
	ldrb r1, [r4, #0xd13]
	mov r2, #1
	mov r0, #0xb
	add r1, r4, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmfd sp!, {r4, pc}
_020C68B4: .word 0x01FF6210
	arm_func_end dwcactest_GetIPAddress

	arm_func_start dwcactest_ConnectTestCreate
dwcactest_ConnectTestCreate: ; 0x020C68B8
	stmfd sp!, {r3, lr}
	mov r0, #8
	bl DWCi_AC_GetMemPtr
	bl DWC_Netcheck_Create
	cmp r0, #0
	moveq r0, #0xe
	ldmeqfd sp!, {r3, pc}
	mov r0, #3
	bl DWCi_AC_SetError
	mov r0, #0x11
	ldmfd sp!, {r3, pc}
	arm_func_end dwcactest_ConnectTestCreate

	arm_func_start dwcactest_ConnectTestProcess
dwcactest_ConnectTestProcess: ; 0x020C68E4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl DWCi_AC_GetMemPtr
	mov r4, r0
	bl DWC_Netcheck_GetError
	movs r5, r0
	beq _020C6968
	ldrb r0, [r6, #0xd0d]
	bl DWCi_ConvConnectAPType
	ldrb r1, [r4, #0x15]
	cmp r1, r0
	bne _020C6920
	bl DWC_Netcheck_GetReturnCode
	str r0, [r4, #0x10]
_020C6920:
	bl DWC_Netcheck_Destroy
	cmp r5, #0xb
	beq _020C6960
	ldrb r1, [r6, #0xd13]
	mov r2, #1
	ldr r0, _020C6970 ; =0x020E6D8C
	add r1, r6, r1, lsl #2
	strb r2, [r1, #0x444]
	ldr r0, [r0]
	cmp r0, #4
	ldrb r0, [r4, #0xb]
	bic r0, r0, #0xf0
	orreq r0, r0, #0x10
	strb r0, [r4, #0xb]
	mov r0, #0xb
	ldmfd sp!, {r4, r5, r6, pc}
_020C6960:
	mov r0, #0xf
	ldmfd sp!, {r4, r5, r6, pc}
_020C6968:
	mov r0, #0xe
	ldmfd sp!, {r4, r5, r6, pc}
_020C6970: .word ov15_020E6D8C
	arm_func_end dwcactest_ConnectTestProcess

	arm_func_start dwcactest_ConnectTestEnd
dwcactest_ConnectTestEnd: ; 0x020C6974
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0xd0d]
	bl DWCi_AC_SetApType
	ldrb r0, [r4, #0xd0d]
	bl DWCi_AC_CopyExSetting
	mov r0, #0x10
	ldmfd sp!, {r4, pc}
	arm_func_end dwcactest_ConnectTestEnd

	arm_func_start dwcactest_ConnectTestRetry
dwcactest_ConnectTestRetry: ; 0x020C6994
	stmfd sp!, {r3, lr}
	bl SOCL_CalmDown
	cmp r0, #0
	movne r0, #0xb
	ldmnefd sp!, {r3, pc}
	bl SOC_Cleanup
	cmp r0, #0
	cmnne r0, #0x27
	moveq r0, #9
	movne r0, #0xb
	ldmfd sp!, {r3, pc}
	arm_func_end dwcactest_ConnectTestRetry

	arm_func_start dwcactest_MakeSOCConfig
dwcactest_MakeSOCConfig: ; 0x020C69C0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r2
	mov r5, r1
	ldr r0, _020C6A84 ; =DWC_AC_SOC_CONFIG
	mov r1, r4
	mov r2, #0x58
	bl MI_CpuCopy8
	ldr r0, [r6]
	str r0, [r4, #4]
	ldr r0, [r6, #4]
	str r0, [r4, #8]
	ldrb r0, [r5, #0xd0d]
	cmp r0, #6
	ldmhsfd sp!, {r4, r5, r6, pc}
	bl DWCi_ConvConnectAPType
	add r5, r5, r0, lsl #8
	ldrb r0, [r5, #0xc0]
	cmp r0, #0
	mov r0, #0
	beq _020C6A54
	str r0, [r4, #0xc]
	add r0, r5, #0xc0
	bl dwcactest_ConvAddress
	str r0, [r4, #0x10]
	ldrb r0, [r5, #0xd0]
	bl dwcactest_ConvNetMask
	str r0, [r4, #0x14]
	add r0, r5, #0xc4
	bl dwcactest_ConvAddress
	str r0, [r4, #0x18]
	add r0, r5, #0xc8
	bl dwcactest_ConvAddress
	str r0, [r4, #0x1c]
	add r0, r5, #0xcc
	bl dwcactest_ConvAddress
	b _020C6A6C
_020C6A54:
	mov r1, #1
	str r1, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
_020C6A6C:
	str r0, [r4, #0x20]
	mov r1, #0x240
	mov r0, #0
	str r1, [r4, #0x2c]
	str r0, [r4, #0x30]
	ldmfd sp!, {r4, r5, r6, pc}
_020C6A84: .word DWC_AC_SOC_CONFIG
	arm_func_end dwcactest_MakeSOCConfig

	arm_func_start dwcactest_ConvAddress
dwcactest_ConvAddress: ; 0x020C6A88
	ldrb r3, [r0]
	ldrb r2, [r0, #1]
	ldrb r1, [r0, #2]
	mov r3, r3, lsl #0x18
	orr r3, r3, #0
	orr r2, r3, r2, lsl #16
	ldrb r0, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r3, r1, r0
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	mov r3, r3, lsl #0x18
	and r1, r1, #0xff
	and r0, r0, #0xff00
	and r2, r2, #0xff0000
	orr r0, r1, r0
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	bx lr
	arm_func_end dwcactest_ConvAddress

	arm_func_start dwcactest_ConvNetMask
dwcactest_ConvNetMask: ; 0x020C6ADC
	rsb r1, r0, #0x20
	cmp r1, #0
	mvn r3, #0
	mov r0, #0
	ble _020C6B00
_020C6AF0:
	add r0, r0, #1
	cmp r0, r1
	mov r3, r3, lsl #1
	blt _020C6AF0
_020C6B00:
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	mov r3, r3, lsl #0x18
	and r1, r1, #0xff
	and r0, r0, #0xff00
	and r2, r2, #0xff0000
	orr r0, r1, r0
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	bx lr
	arm_func_end dwcactest_ConvNetMask

	arm_func_start dwcactest_CheckSetDNS
dwcactest_CheckSetDNS: ; 0x020C6B30
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldrb r0, [r4, #0xd0d]
	cmp r0, #6
	addhs sp, sp, #8
	ldmhsfd sp!, {r4, pc}
	bl DWCi_ConvConnectAPType
	add r4, r4, r0, lsl #8
	ldrb r0, [r4, #0xc0]
	ldrb r2, [r4, #0xc8]
	ldrb r1, [r4, #0xc9]
	cmp r0, #0
	ldrb r3, [r4, #0xca]
	add r1, r2, r1
	ldrb r2, [r4, #0xcb]
	add r1, r3, r1
	addne sp, sp, #8
	add r0, r2, r1
	ldmnefd sp!, {r4, pc}
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, pc}
	add r0, r4, #0xc8
	bl dwcactest_ConvAddress
	str r0, [sp, #4]
	add r0, r4, #0xcc
	bl dwcactest_ConvAddress
	str r0, [sp]
	add r0, sp, #4
	add r1, sp, #0
	bl SOC_SetResolver
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
	arm_func_end dwcactest_CheckSetDNS

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

	arm_func_start DWCi_Auth_StartThread
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

	arm_func_start DWCi_Auth_Start
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

	arm_func_start DWCi_Auth_Thread
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

	arm_func_start DWCi_Auth_FillResult
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
	ldr r5, _020C775C ; =msl_errno
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
_020C775C: .word msl_errno
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

	arm_func_start DWCi_Auth_Prepare_FirstPost
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

	arm_func_start DWCi_Auth_SetError
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

	arm_func_start DWCi_Auth_InitInterface
DWCi_Auth_InitInterface: ; 0x020C7978
	stmfd sp!, {r3, lr}
	cmp r0, #0
	beq _020C7998
	cmp r0, #1
	beq _020C79AC
	cmp r0, #2
	beq _020C79A4
	b _020C79B4
_020C7998:
	ldr r0, _020C79C4 ; =0x020E44E8
_020C799C:
	bl DWC_Auth_SetCustomNas
	b _020C79BC
_020C79A4:
	ldr r0, _020C79C8 ; =0x020E4510
	b _020C799C
_020C79AC:
	ldr r0, _020C79CC ; =0x020E4534
	b _020C799C
_020C79B4:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_020C79BC:
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020C79C4: .word ov15_020E44E8
_020C79C8: .word ov15_020E4510
_020C79CC: .word ov15_020E4534
	arm_func_end DWCi_Auth_InitInterface

	arm_func_start DWC_Auth_GetCalInfoFromNVRAM
DWC_Auth_GetCalInfoFromNVRAM: ; 0x020C79D0
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	add r4, sp, #0
	mov r5, r0
	mov r0, r4
	bl DWCi_BM_GetWiFiInfo
	mov r0, r5
	mov r1, r4
	bl DWC_Auth_GetCalInfoFromWiFiInfo
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
	arm_func_end DWC_Auth_GetCalInfoFromNVRAM

	arm_func_start DWC_Auth_GetCalInfoFromWiFiInfo
DWC_Auth_GetCalInfoFromWiFiInfo: ; 0x020C79FC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x8c
	mov r2, #0
	mov r6, r1
	mov r1, r2
	mov r2, #0x94
	mov r5, r0
	bl MI_CpuFill8
	ldmia r6, {r3, r4}
	cmp r4, #0
	cmpeq r3, #0
	mov r1, #0xe
	beq _020C7A34
	b _020C7A3C
_020C7A34:
	ldr r3, [r6, #8]
	ldr r4, [r6, #0xc]
_020C7A3C:
	ldr r2, _020C7C7C ; =0x020E4554
	mov r0, r5
	str r4, [sp]
	bl OS_SNPrintf
	ldrh r3, [r6, #0x10]
	ldr r2, _020C7C80 ; =0x020E455C
	add r0, r5, #0xe
	mov r1, #7
	bl OS_SNPrintf
	ldr r0, _020C7C84 ; =0x02FFFE0C
	ldrb r0, [r0]
	cmp r0, #0
	bne _020C7A74
	bl OS_Terminate
_020C7A74:
	ldr r4, _020C7C84 ; =0x02FFFE0C
	add r1, r5, #0x15
	mov r0, r4
	mov r2, #4
	bl MI_CpuCopy8
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _020C7A98
	bl OS_Terminate
_020C7A98:
	ldr r0, _020C7C88 ; =0x02FFFE10
	add r1, r5, #0x1a
	mov r2, #2
	bl MI_CpuCopy8
	add r7, sp, #0x16
	mov r1, #0x30
	mov r0, r7
	strb r1, [r5, #0x1d]
	bl OS_GetMacAddress
	ldr r4, _020C7C8C ; =0x020E4564
	mov r8, #0
	add r6, r5, #0x1f
_020C7AC8:
	ldrb r2, [r7, r8]
	mov r1, r4
	add r0, r6, r8, lsl #1
	bl OS_SPrintf
	add r8, r8, #1
	cmp r8, #6
	blt _020C7AC8
	add r0, sp, #0x38
	bl OS_GetOwnerInfo
	ldrb r0, [sp, #0x38]
	ldr r4, _020C7C8C ; =0x020E4564
	mov r1, #3
	cmp r0, #8
	movhs r0, #1
	strhsb r0, [sp, #0x38]
	ldrb r3, [sp, #0x38]
	mov r2, r4
	add r0, r5, #0x2c
	bl OS_SNPrintf
	add r0, sp, #0x3c
	add r1, r5, #0x7e
	mov r2, #0x14
	bl MI_CpuCopy8
	ldrb r1, [sp, #0x3b]
	ldr r2, _020C7C90 ; =0x020E456C
	add r0, r5, #0x2f
	str r1, [sp]
	ldrb r3, [sp, #0x3a]
	mov r1, #5
	bl OS_SNPrintf
	add r0, sp, #0x28
	add r1, sp, #0x1c
	bl RTC_GetDateTime
	cmp r0, #0
	addne sp, sp, #0x8c
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [sp, #0x2c]
	ldr r2, _020C7C94 ; =0x020E4578
	str r0, [sp]
	ldr r1, [sp, #0x30]
	add r0, r5, #0x34
	str r1, [sp, #4]
	ldr r3, [sp, #0x1c]
	mov r1, #0xd
	str r3, [sp, #8]
	ldr r3, [sp, #0x20]
	str r3, [sp, #0xc]
	ldr r3, [sp, #0x24]
	str r3, [sp, #0x10]
	ldr r3, [sp, #0x28]
	bl OS_SNPrintf
	bl OS_DisableInterrupts
	mov r7, r0
	bl WCM_GetApMacAddress
	mov r8, r0
	mov r1, #6
	bl DC_InvalidateRange
	cmp r8, #0
	bne _020C7BCC
	mov r0, r7
	bl OS_RestoreInterrupts
	add sp, sp, #0x8c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020C7BCC:
	mov r9, #0
	add r6, r5, #0x41
_020C7BD4:
	ldrb r2, [r8, r9]
	mov r1, r4
	add r0, r6, r9, lsl #1
	bl OS_SPrintf
	add r9, r9, #1
	cmp r9, #6
	blt _020C7BD4
	bl DWC_AC_GetApType
	mov r3, r0
	cmp r3, #0xff
	beq _020C7C08
	cmp r3, #0x63
	bls _020C7C0C
_020C7C08:
	mov r3, #0x63
_020C7C0C:
	ldr r2, _020C7C98 ; =0x020E4594
	add r0, r5, #0x6f
	mov r1, #0xe
	bl OS_SNPrintf
	add r0, sp, #0x14
	bl WCM_GetApEssid
	mov r4, #0x20
	mov r6, r0
	mov r1, r4
	bl DC_InvalidateRange
	cmp r6, #0
	bne _020C7C50
	mov r0, r7
	bl OS_RestoreInterrupts
	add sp, sp, #0x8c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020C7C50:
	mov r0, r6
	mov r2, r4
	add r1, r5, #0x4e
	bl MI_CpuCopy8
	add r0, r5, #0x72
	bl DWC_AC_GetApSpotInfo
	mov r0, r7
	bl OS_RestoreInterrupts
	mov r0, #1
	add sp, sp, #0x8c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020C7C7C: .word ov15_020E4554
_020C7C80: .word ov15_020E455C
_020C7C84: .word 0x02FFFE0C
_020C7C88: .word 0x02FFFE10
_020C7C8C: .word ov15_020E4564
_020C7C90: .word ov15_020E456C
_020C7C94: .word ov15_020E4578
_020C7C98: .word ov15_020E4594
	arm_func_end DWC_Auth_GetCalInfoFromWiFiInfo

	arm_func_start DWC_Auth_SetCalInfoToHttp
DWC_Auth_SetCalInfoToHttp: ; 0x020C7C9C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x28
	mov r7, r2
	mov r4, r1
	mov r12, #3
	add r6, sp, #4
	mov r5, r0
	ldr r2, _020C7FA8 ; =0x020E45A4
	mov r0, r6
	mov r1, #0x21
	mov r3, #5
	str r12, [sp]
	bl OS_SNPrintf
	mov r0, r6
	bl strlen
	mov r3, r0
	ldr r1, _020C7FAC ; =0x020E45B0
	mov r2, r6
	mov r0, r5
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	bl strlen
	mov r3, r0
	ldr r1, _020C7FB0 ; =0x020E45B8
	mov r0, r5
	mov r2, r4
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #0xe
	bl strlen
	mov r3, r0
	ldr r1, _020C7FB4 ; =0x020E45C0
	mov r0, r5
	add r2, r4, #0xe
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #0x41
	bl strlen
	mov r3, r0
	ldr r1, _020C7FB8 ; =0x020E45C8
	mov r0, r5
	add r2, r4, #0x41
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #0x6f
	bl strlen
	mov r3, r0
	ldr r1, _020C7FBC ; =0x020E45D0
	mov r0, r5
	add r2, r4, #0x6f
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #0x15
	bl strlen
	mov r3, r0
	ldr r1, _020C7FC0 ; =0x020E45D8
	mov r0, r5
	add r2, r4, #0x15
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #0x1a
	bl strlen
	mov r3, r0
	ldr r1, _020C7FC4 ; =0x020E45E0
	mov r0, r5
	add r2, r4, #0x1a
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #0x1d
	bl strlen
	mov r3, r0
	ldr r1, _020C7FC8 ; =0x020E45E8
	mov r0, r5
	add r2, r4, #0x1d
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #0x1f
	bl strlen
	mov r3, r0
	ldr r1, _020C7FCC ; =0x020E45F0
	mov r0, r5
	add r2, r4, #0x1f
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #0x2c
	bl strlen
	mov r3, r0
	ldr r1, _020C7FD0 ; =0x020E45F8
	mov r0, r5
	add r2, r4, #0x2c
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #0x2f
	bl strlen
	mov r3, r0
	ldr r1, _020C7FD4 ; =0x020E4600
	mov r0, r5
	add r2, r4, #0x2f
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #0x34
	bl strlen
	mov r3, r0
	ldr r1, _020C7FD8 ; =0x020E4608
	mov r0, r5
	add r2, r4, #0x34
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #0x7e
	bl wcslen
	mov r3, r0
	ldr r1, _020C7FDC ; =0x020E4610
	mov r0, r5
	add r2, r4, #0x7e
	mov r3, r3, lsl #1
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, #1
	bne _020C7F44
	add r0, r4, #0x4e
	bl strlen
	mov r3, r0
	ldr r1, _020C7FE0 ; =0x020E4618
	mov r0, r5
	add r2, r4, #0x4e
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_020C7F44:
	add r6, sp, #4
	mov r12, #3
	ldr r2, _020C7FE4 ; =0x020E4620
	mov r0, r6
	mov r1, #0x21
	mov r3, #5
	str r12, [sp]
	bl OS_SNPrintf
	ldr r1, _020C7FE8 ; =0x020E4638
	mov r0, r5
	mov r2, r6
	bl DWC_Http_Add_HeaderItem
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _020C7FEC ; =0x020E4644
	mov r0, r5
	add r2, r4, #0x15
	bl DWC_Http_Add_HeaderItem
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C7FA8: .word ov15_020E45A4
_020C7FAC: .word ov15_020E45B0
_020C7FB0: .word ov15_020E45B8
_020C7FB4: .word ov15_020E45C0
_020C7FB8: .word ov15_020E45C8
_020C7FBC: .word ov15_020E45D0
_020C7FC0: .word ov15_020E45D8
_020C7FC4: .word ov15_020E45E0
_020C7FC8: .word ov15_020E45E8
_020C7FCC: .word ov15_020E45F0
_020C7FD0: .word ov15_020E45F8
_020C7FD4: .word ov15_020E4600
_020C7FD8: .word ov15_020E4608
_020C7FDC: .word ov15_020E4610
_020C7FE0: .word ov15_020E4618
_020C7FE4: .word ov15_020E4620
_020C7FE8: .word ov15_020E4638
_020C7FEC: .word ov15_020E4644
	arm_func_end DWC_Auth_SetCalInfoToHttp

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

	arm_func_start DWCi_Http_Yield
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

	arm_func_start DWCi_Http_InitCpsSocket
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

	arm_func_start DWCi_Http_Resolve
DWCi_Http_Resolve: ; 0x020C8368
	add r0, r0, #0x1000
	ldr r0, [r0, #0x124]
	ldr r12, _020C8378 ; =CPS_Resolve
	bx r12
_020C8378: .word CPS_Resolve
	arm_func_end DWCi_Http_Resolve

	arm_func_start DWCi_Http_CheckHeaderReceived
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

	arm_func_start DWCi_Http_Thread
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

	arm_func_start DWCi_Http_WriteBasicHeader
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

	arm_func_start DWCi_Http_CPSCallback
DWCi_Http_CPSCallback: ; 0x020C8B4C
	tst r0, #0x8000
	bicne r0, r0, #0x8000
	bx lr
	arm_func_end DWCi_Http_CPSCallback

	arm_func_start DWCi_Http_AllocBuffer
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

	arm_func_start DWCi_Http_FreeBuffer
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

	arm_func_start DWCi_Http_ReallocBuffer
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

	arm_func_start DWCi_Http_SetHostinfo
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

	arm_func_start DWCi_Http_AddResult
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

	arm_func_start DWCi_Http_DestroyResult
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

	arm_func_start DWC_Netcheck_Create
DWC_Netcheck_Create: ; 0x020C9304
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r7, _020C93C4 ; =DWChttp
	mov r6, r0
	ldr r0, [r7, #4]
	ldr r5, [r6]
	cmp r0, #0
	movne r0, #4
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r8, _020C93C8 ; =0x000011F4
	mov r4, #0
	mov r0, r4
	mov r1, r8
	blx r5
	str r0, [r7, #4]
	cmp r0, #0
	moveq r0, #4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, r4
	mov r2, r8
	bl MI_CpuFill8
	ldr r0, [r7, #4]
	ldr r1, _020C93CC ; =0xFFFE7961
	add r0, r0, #0x1000
	str r1, [r0, #4]
	ldr r3, [r7, #4]
	ldmia r6, {r0, r1, r2}
	add r3, r3, #0x108
	add r3, r3, #0x1000
	stmia r3, {r0, r1, r2}
	ldr r0, [r7]
	cmp r0, #0
	movne r0, #4
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, _020C93D0 ; =0x00001C50
	mov r0, r4
	blx r5
	str r0, [r7]
	cmp r0, #0
	moveq r0, #4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	str r4, [r7, #0x14]
	ldr r0, [r7, #4]
	add r0, r0, #0x1dc
	add r0, r0, #0x1000
	bl OS_InitMutex
	bl DWCi_Netcheck_StartThread
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C93C4: .word DWChttp
_020C93C8: .word 0x000011F4
_020C93CC: .word 0xFFFE7961
_020C93D0: .word 0x00001C50
	arm_func_end DWC_Netcheck_Create

	arm_func_start DWC_Netcheck_Destroy
DWC_Netcheck_Destroy: ; 0x020C93D4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _020C94A0 ; =DWChttp
	ldmia r5, {r0, r1}
	add r1, r1, #0x1000
	cmp r0, #0
	ldr r4, [r1, #0x10c]
	beq _020C940C
	bl DWC_Http_Destroy
	mov r6, #0
	ldr r1, [r5]
	mov r0, r6
	mov r2, r6
	blx r4
	str r6, [r5]
_020C940C:
	bl DWC_Auth_Destroy
	ldr r5, _020C94A0 ; =DWChttp
	ldr r0, [r5, #4]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r0, r0, #0x1000
	ldr r1, [r0, #0x114]
	cmp r1, #0
	beq _020C944C
	mov r6, #0
	mov r0, r6
	mov r2, r6
	blx r4
	ldr r0, [r5, #4]
	add r0, r0, #0x1000
	str r6, [r0, #0x114]
_020C944C:
	ldr r5, _020C94A0 ; =DWChttp
	ldr r0, [r5, #4]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x118]
	cmp r1, #0
	beq _020C9480
	mov r6, #0
	mov r0, r6
	mov r2, r6
	blx r4
	ldr r0, [r5, #4]
	add r0, r0, #0x1000
	str r6, [r0, #0x118]
_020C9480:
	ldr r5, _020C94A0 ; =DWChttp
	mov r6, #0
	ldr r1, [r5, #4]
	mov r0, r6
	mov r2, r6
	blx r4
	str r6, [r5, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020C94A0: .word DWChttp
	arm_func_end DWC_Netcheck_Destroy

	arm_func_start DWC_Netcheck_Abort
DWC_Netcheck_Abort: ; 0x020C94A4
	stmfd sp!, {r4, lr}
	ldr r0, _020C9520 ; =DWChttp
	ldr r1, [r0, #4]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r0]
	cmp r0, #0
	beq _020C94C8
	bl DWC_Http_Abort
_020C94C8:
	bl DWC_Auth_Abort
	ldr r4, _020C9520 ; =DWChttp
	ldr r1, [r4, #4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x188]
	cmp r0, #0
	beq _020C9508
	add r0, r1, #0x11c
	add r0, r0, #0x1000
	bl OS_IsThreadTerminated
	cmp r0, #0
	bne _020C9508
	ldr r0, [r4, #4]
	add r0, r0, #0x11c
	add r0, r0, #0x1000
	bl OS_JoinThread
_020C9508:
	ldr r0, _020C9520 ; =DWChttp
	mvn r1, #6
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	str r1, [r0, #4]
	ldmfd sp!, {r4, pc}
_020C9520: .word DWChttp
	arm_func_end DWC_Netcheck_Abort

	arm_func_start DWC_Netcheck_GetError
DWC_Netcheck_GetError: ; 0x020C9524
	stmfd sp!, {r4, lr}
	ldr r4, _020C955C ; =DWChttp
	ldr r0, [r4, #4]
	add r0, r0, #0x1dc
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r1, [r4, #4]
	add r0, r1, #0x1dc
	add r1, r1, #0x1000
	add r0, r0, #0x1000
	ldr r4, [r1]
	bl OS_UnlockMutex
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020C955C: .word DWChttp
	arm_func_end DWC_Netcheck_GetError

	arm_func_start DWC_Netcheck_GetReturnCode
DWC_Netcheck_GetReturnCode: ; 0x020C9560
	ldr r0, _020C9574 ; =DWChttp
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #4]
	bx lr
_020C9574: .word DWChttp
	arm_func_end DWC_Netcheck_GetReturnCode

	arm_func_start DWCi_Netcheck_StartThread
DWCi_Netcheck_StartThread: ; 0x020C9578
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r0, _020C95F4 ; =DWChttp
	ldr r1, [r0, #4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x188]
	cmp r0, #0
	beq _020C95B0
	add r0, r1, #0x11c
	add r0, r0, #0x1000
	bl OS_IsThreadTerminated
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, pc}
_020C95B0:
	ldr r4, _020C95F4 ; =DWChttp
	mov r0, #0x1000
	ldr r2, [r4, #4]
	mov r3, #0x10
	str r0, [sp]
	add r0, r2, #0x11c
	ldr r1, _020C95F8 ; =DWCi_Netcheck_Thread
	str r3, [sp, #4]
	add r0, r0, #0x1000
	add r3, r2, #0x1000
	bl OS_CreateThread
	ldr r0, [r4, #4]
	add r0, r0, #0x11c
	add r0, r0, #0x1000
	bl OS_WakeupThreadDirect
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020C95F4: .word DWChttp
_020C95F8: .word DWCi_Netcheck_Thread
	arm_func_end DWCi_Netcheck_StartThread

	arm_func_start DWCi_Netcheck_Thread
DWCi_Netcheck_Thread: ; 0x020C95FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x290
	ldr r4, _020CA20C ; =DWChttp
	mov r7, #0
	ldr r0, [r4, #4]
	mov r8, r7
	add r0, r0, #0x1000
	ldr r5, [r0, #0x108]
	ldr r6, [r0, #0x10c]
	mvn r0, #2
	str r0, [sp, #0x14]
	sub r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	mov r9, r7
	sub r0, r0, #2
	str r0, [sp, #0x1c]
	ldr r0, _020CA210 ; =0x00009C40
	mov r0, r0, lsr #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x10]
_020C9658:
	ldr r0, _020CA214 ; =_ZZ23DWC_SimpleNetcheckAsynciE6bFirst_0
	ldr r1, _020CA218 ; =DWCnetcheckhttpparam
	ldr r0, [r0, #4]
	str r0, [r4, #0x30]
	mov r0, #1
	str r0, [r4, #0x34]
	mov r0, #0x1000
	str r0, [r4, #0x38]
	str r5, [r4, #0x3c]
	ldr r0, [sp, #0xc]
	str r6, [r4, #0x40]
	str r0, [r4, #0x48]
	ldr r0, [r4, #4]
	add r2, r0, #0x1000
	ldr r0, [sp, #0x10]
	str r0, [r2, #4]
	ldr r0, [r4]
	bl DWC_Http_Create
	cmp r0, #0
	beq _020C96BC
_020C96A8:
	ldr r0, _020CA20C ; =DWChttp
	ldr r0, [r0]
	bl DWC_Http_Destroy
	mov r0, #1
	b _020C9A54
_020C96BC:
	ldr r0, [r4]
	bl DWC_Http_FinishHeader
	cmp r0, #0
	beq _020C96D0
	b _020C96A8
_020C96D0:
	ldr r0, _020CA21C ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	sub r1, r0, #1
	ldr r0, [r4]
	bl DWC_Http_StartThread
	ldr r1, [r4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbe0]
	cmp r0, #0
	beq _020C9720
	add r0, r1, #0x374
	add r0, r0, #0x1800
	bl OS_IsThreadTerminated
	cmp r0, #0
	bne _020C9720
	ldr r0, [r4]
	add r0, r0, #0x374
	add r0, r0, #0x1800
	bl OS_JoinThread
_020C9720:
	ldr r0, [r4]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _020C9740
	cmp r1, #8
	beq _020C9764
	b _020C9754
_020C9740:
	ldr r0, _020CA20C ; =DWChttp
	mvn r1, #0
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_020C9754:
	ldr r0, _020CA20C ; =DWChttp
	ldr r0, [r0]
	bl DWC_Http_Destroy
	b _020C99E0
_020C9764:
	mov r1, #0
	bl DWC_Http_ParseResult
	cmp r0, #1
	beq _020C9784
_020C9774:
	ldr r0, _020CA20C ; =DWChttp
	ldr r0, [r0]
_020C977C:
	bl DWC_Http_Destroy
	b _020C97A8
_020C9784:
	ldr r0, [r4]
	ldr r1, _020CA220 ; =0x020E47C4
	bl DWC_Http_GetResult
	bl atoi
	mov r10, r0
	ldr r0, _020CA224 ; =msl_errno
	ldr r0, [r0]
	cmp r0, #0x22
	bne _020C97B0
_020C97A8:
	mov r0, #2
	b _020C9A54
_020C97B0:
	cmp r10, #0xc8
	beq _020C97CC
	ldr r0, _020CA228 ; =0x0000012E
	cmp r10, r0
	beq _020C97E0
	ldr r0, _020CA20C ; =DWChttp
	b _020C9A7C
_020C97CC:
	ldr r0, [r4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x12c]
	str r0, [r4, #0xc]
	b _020C9A8C
_020C97E0:
	mov r0, #1
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x118]
	cmp r1, #0
	beq _020C99F4
	ldr r10, _020CA20C ; =DWChttp
	mvn r1, #5
	str r1, [r0, #4]
	ldr r0, [r10]
	bl DWC_Http_Destroy
	ldr r0, _020CA22C ; =DWCauthhttpparam
	mov r1, #0
	ldr r0, [r0]
	mov r3, #0x200
	str r0, [r10, #0x30]
	str r1, [r10, #0x34]
	str r3, [r10, #0x38]
	str r5, [r10, #0x3c]
	ldr r2, _020CA230 ; =0x00004E20
	str r6, [r10, #0x40]
	ldr r1, _020CA234 ; =0x020E47D0
	str r2, [r10, #0x48]
	bl strcmp
	cmp r0, #0
	movne r0, #1
	strne r0, [r10, #0x44]
	ldr r0, [r10]
	ldr r1, _020CA218 ; =DWCnetcheckhttpparam
	mov r5, #1
	bl DWC_Http_Create
	cmp r0, #0
	beq _020C9878
_020C9868:
	ldr r0, [r10]
	bl DWC_Http_Destroy
	mov r0, r5
_020C9874:
	b _020C9A54
_020C9878:
	add r4, sp, #0x38
	mov r0, r4
	bl DWC_Auth_GetCalInfoFromNVRAM
	cmp r0, #0
	beq _020C98A4
	ldr r0, [r10]
	mov r1, r4
	mov r2, r5
	bl DWC_Auth_SetCalInfoToHttp
	cmp r0, #0
	bne _020C98B4
_020C98A4:
	ldr r0, [r10]
	bl DWC_Http_Destroy
	mov r0, #8
	b _020C9874
_020C98B4:
	ldr r0, [r10]
	ldr r1, _020CA238 ; =0x020E47F0
	ldr r2, _020CA23C ; =0x020E47F8
	mov r3, #7
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	bne _020C9900
	ldr r0, [r10, #4]
	add r0, r0, #0x1000
	ldr r4, [r0, #0x118]
	mov r0, r4
	bl strlen
	mov r3, r0
	ldr r0, [r10]
	ldr r1, _020CA240 ; =0x020E4800
	mov r2, r4
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	beq _020C9914
_020C9900:
	ldr r0, _020CA20C ; =DWChttp
	ldr r0, [r0]
	bl DWC_Http_Destroy
	mov r0, #8
	b _020C9A54
_020C9914:
	ldr r0, [r10, #4]
	mov r4, #0
	add r0, r0, #0x1000
	ldr r1, [r0, #0x118]
	mov r0, r4
	mov r2, r4
	blx r6
	ldr r0, [r10, #4]
	add r0, r0, #0x1000
	str r4, [r0, #0x118]
	ldr r0, [r10]
	bl DWC_Http_FinishHeader
	cmp r0, #0
	beq _020C9950
	b _020C9868
_020C9950:
	ldr r0, _020CA21C ; =OSi_ThreadInfo
	mvn r5, #0
	ldr r0, [r0, #4]
	ldr r4, _020CA20C ; =DWChttp
	bl OS_GetThreadPriority
	mov r1, r0
	ldr r0, [r10]
	sub r1, r1, #1
	bl DWC_Http_StartThread
	ldr r1, [r10]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbe0]
	cmp r0, #0
	beq _020C99AC
	add r0, r1, #0x374
	add r0, r0, #0x1800
	bl OS_IsThreadTerminated
	cmp r0, #0
	bne _020C99AC
	ldr r0, [r10]
	add r0, r0, #0x374
	add r0, r0, #0x1800
	bl OS_JoinThread
_020C99AC:
	ldr r0, [r4]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _020C99CC
	cmp r1, #8
	beq _020C99E8
	b _020C99D8
_020C99CC:
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	str r5, [r0, #4]
_020C99D8:
	ldr r0, [r4]
	bl DWC_Http_Destroy
_020C99E0:
	mov r0, #3
	b _020C9A54
_020C99E8:
	bl DWC_Http_Destroy
	mov r0, #7
	b _020C9874
_020C99F4:
	ldr r0, [r4]
	add r1, r0, #0x1000
	ldr r11, [r1, #0xa44]
	cmp r11, #0
	bne _020C9A0C
	b _020C977C
_020C9A0C:
	mov r0, r11
	bl strlen
	add r1, r0, #1
	mov r0, #0
	blx r5
	ldr r1, [r4, #4]
	add r1, r1, #0x1000
	str r0, [r1, #0x114]
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x114]
	str r0, [sp, #4]
	cmp r0, #0
	bne _020C9A5C
_020C9A44:
	ldr r0, _020CA20C ; =DWChttp
	ldr r0, [r0]
	bl DWC_Http_Destroy
	mov r0, #4
_020C9A54:
	bl DWCi_Netcheck_SetError
	b _020CA1B8
_020C9A5C:
	mov r0, r11
	bl strlen
	mov r2, r0
	ldr r0, [sp, #4]
	mov r1, r11
	add r2, r2, #1
	bl strncpy
	b _020C9A8C
_020C9A7C:
	ldr r0, [r0]
	bl DWC_Http_Destroy
	mov r0, #0xa
	b _020C9874
_020C9A8C:
	ldr r0, [r4]
	bl DWC_Http_Destroy
	add r0, sp, #0x24
	bl DWCi_BM_GetWiFiInfo
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x24]
	cmp r1, #0
	cmpeq r0, #0
	bne _020C9BA4
	ldr r1, [r4, #4]
	ldr r0, _020CA244 ; =DWCnetcheckauthparam
	add r2, r1, #0x1000
	ldr r1, [sp, #0x14]
	str r1, [r2, #4]
	mov r2, #0
	mov r1, r0
	strh r2, [r1]
	strb r2, [r1, #0x34]
	ldr r1, [r4, #4]
	add r2, r1, #0x1000
	ldr r3, [r2, #0x108]
	mov r1, r0
	str r3, [r1, #0x40]
	ldr r2, [r2, #0x10c]
	str r2, [r1, #0x44]
	ldr r1, [r4]
	bl DWC_Auth_Create
	cmp r0, #0
	beq _020C9B08
	mov r0, #5
	b _020C9874
_020C9B08:
	bl DWC_Auth_Join
	bl DWC_Auth_GetError
	cmp r0, #0x15
	beq _020C9BA0
	ldr r4, _020CA20C ; =DWChttp
	mvn r10, #0
	mov r5, #0
	bl DWC_Auth_GetError
	cmp r0, #9
	ldreq r0, [r4, #4]
	addeq r0, r0, #0x1000
	streq r10, [r0, #4]
	beq _020C9B94
	add r0, sp, #0xcc
	bl DWC_Auth_GetResult
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _020C9B84
	ldr r1, [sp, #0xcc]
	ldr r0, _020CA248 ; =0xFFFFA4FA
	cmp r1, r0
	beq _020C9B6C
	bl DWC_Auth_GetError
	cmp r0, #0xb
	bne _020C9B84
_020C9B6C:
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	str r5, [r0, #4]
	bl DWC_Auth_Destroy
	mov r0, #0xb
	b _020C9874
_020C9B84:
	ldr r0, [r4, #4]
	ldr r1, [sp, #0xcc]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_020C9B94:
	bl DWC_Auth_Destroy
_020C9B98:
	mov r0, #6
	b _020C9A54
_020C9BA0:
	bl DWC_Auth_Destroy
_020C9BA4:
	cmp r10, #0xc8
	bne _020C9BC8
	ldr r0, _020CA20C ; =DWChttp
	mov r2, #0
	ldr r1, [r0, #4]
	mov r0, #0xb
	add r1, r1, #0x1000
	str r2, [r1, #4]
	b _020C9874
_020C9BC8:
	ldr r0, [r4, #4]
	ldr r1, _020CA234 ; =0x020E47D0
	add r2, r0, #0x1000
	ldr r0, [sp, #0x18]
	str r0, [r2, #4]
	ldr r0, _020CA22C ; =DWCauthhttpparam
	mov r2, #0
	ldr r0, [r0]
	str r0, [r4, #0x30]
	str r2, [r4, #0x34]
	mov r2, #0x1000
	str r2, [r4, #0x38]
	str r5, [r4, #0x3c]
	ldr r2, _020CA210 ; =0x00009C40
	str r6, [r4, #0x40]
	str r2, [r4, #0x48]
	bl strcmp
	cmp r0, #0
	movne r0, #1
	strne r0, [r4, #0x44]
	ldr r0, [r4]
	ldr r1, _020CA218 ; =DWCnetcheckhttpparam
	bl DWC_Http_Create
	cmp r0, #0
	beq _020C9C30
	b _020C96A8
_020C9C30:
	add r0, sp, #0x38
	bl DWC_Auth_GetCalInfoFromNVRAM
	cmp r0, #0
	beq _020C9C58
	ldr r0, [r4]
	add r1, sp, #0x38
	mov r2, #1
	bl DWC_Auth_SetCalInfoToHttp
	cmp r0, #0
	bne _020C9C5C
_020C9C58:
	b _020C9900
_020C9C5C:
	ldr r0, [r4]
	ldr r1, _020CA238 ; =0x020E47F0
	ldr r2, _020CA24C ; =0x020E4810
	mov r3, #5
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	bne _020C9CA8
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r10, [r0, #0x114]
	mov r0, r10
	bl strlen
	mov r3, r0
	ldr r0, [r4]
	ldr r1, _020CA250 ; =0x020E4818
	mov r2, r10
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	beq _020C9CAC
_020C9CA8:
	b _020C9900
_020C9CAC:
	ldr r1, [r4, #4]
	mov r0, #0
	add r1, r1, #0x1000
	ldr r1, [r1, #0x114]
	mov r2, r0
	blx r6
	ldr r0, [r4, #4]
	add r1, r0, #0x1000
	mov r0, #0
	str r0, [r1, #0x114]
	ldr r0, [r4]
	bl DWC_Http_FinishHeader
	cmp r0, #0
	beq _020C9CE8
	b _020C96A8
_020C9CE8:
	ldr r0, _020CA21C ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	sub r1, r0, #1
	ldr r0, [r4]
	bl DWC_Http_StartThread
	ldr r1, [r4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbe0]
	cmp r0, #0
	beq _020C9D38
	add r0, r1, #0x374
	add r0, r0, #0x1800
	bl OS_IsThreadTerminated
	cmp r0, #0
	bne _020C9D38
	ldr r0, [r4]
	add r0, r0, #0x374
	add r0, r0, #0x1800
	bl OS_JoinThread
_020C9D38:
	ldr r0, [r4]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _020C9D90
	cmp r1, #3
	beq _020C9D60
	cmp r1, #8
	beq _020C9DA8
	b _020C9DA4
_020C9D60:
	mov r4, #0
	bl DWC_Http_Destroy
	ldr r0, _020CA20C ; =DWChttp
	ldr r1, [r0, #0x10]
	cmp r1, #1
	bne _020C9D8C
	ldr r0, [r0, #4]
	add r1, r0, #0x1000
	mov r0, #0xb
	str r4, [r1, #4]
	b _020C9874
_020C9D8C:
	b _020C99E0
_020C9D90:
	ldr r0, _020CA20C ; =DWChttp
	mvn r1, #0
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_020C9DA4:
	b _020C9754
_020C9DA8:
	mov r1, #0
	bl DWC_Http_ParseResult
	cmp r0, #1
	beq _020C9DBC
	b _020C9774
_020C9DBC:
	ldr r0, [r4]
	ldr r1, _020CA220 ; =0x020E47C4
	bl DWC_Http_GetResult
	bl atoi
	mov r10, r0
	ldr r0, _020CA224 ; =msl_errno
	ldr r0, [r0]
	cmp r0, #0x22
	bne _020C9DE4
	b _020C9774
_020C9DE4:
	cmp r10, #0xc8
	beq _020C9E28
	ldr r4, _020CA20C ; =DWChttp
	ldr r0, [r4]
	bl DWC_Http_Destroy
	ldr r0, [r4, #0x10]
	cmp r0, #1
	ldreq r0, _020CA228 ; =0x0000012E
	cmpeq r10, r0
	bne _020C9E24
	ldr r1, [r4, #4]
	mov r0, #0xb
_020C9E14:
	add r2, r1, #0x1000
	mov r1, #0
	str r1, [r2, #4]
	b _020C9A54
_020C9E24:
	b _020C97A8
_020C9E28:
	ldr r0, [r4]
	ldr r1, _020CA254 ; =0x020E4820
	add r2, sp, #0x20
	mov r3, #4
	bl DWC_Http_GetBase64DecodedResult
	cmp r0, #0
	bgt _020C9E58
_020C9E44:
	ldr r0, _020CA20C ; =DWChttp
	ldr r0, [r0]
	bl DWC_Http_Destroy
	mov r0, #9
	b _020C9A54
_020C9E58:
	add r0, sp, #0x20
	bl atoi
	ldr r1, _020CA224 ; =msl_errno
	ldr r1, [r1]
	cmp r1, #0x22
	bne _020C9E74
	b _020C9E44
_020C9E74:
	ldr r1, [r4, #0x10]
	cmp r1, #1
	cmpeq r0, #0x72
	bne _020C9E94
	ldr r1, _020CA20C ; =DWChttp
	mov r0, #0xb
	ldr r1, [r1, #4]
	b _020C9E14
_020C9E94:
	cmp r0, #0x64
	blt _020C9EAC
	ldr r0, _020CA20C ; =DWChttp
	ldr r0, [r0]
	bl DWC_Http_Destroy
	b _020C9B98
_020C9EAC:
	mov r2, #0
	ldr r0, [r4]
	ldr r1, _020CA258 ; =0x020E482C
	mov r3, r2
	bl DWC_Http_GetBase64DecodedResult
	str r0, [sp, #8]
	cmp r0, #0
	bgt _020C9ED0
	b _020C9E44
_020C9ED0:
	mov r2, #0
	ldr r0, [r4]
	ldr r1, _020CA25C ; =0x020E4830
	mov r3, r2
	bl DWC_Http_GetBase64DecodedResult
	mov r11, r0
	cmp r11, #0
	bgt _020C9EF4
	b _020C9E44
_020C9EF4:
	mov r2, #0
	ldr r0, [r4]
	ldr r1, _020CA260 ; =0x020E4838
	mov r3, r2
	bl DWC_Http_GetBase64DecodedResult
	ldr r1, [sp, #8]
	mov r10, r0
	mov r0, #0
	add r1, r1, #1
	blx r5
	movs r7, r0
	bne _020C9F28
	b _020C9A44
_020C9F28:
	mov r0, #0
	add r1, r11, #1
	blx r5
	movs r8, r0
	bne _020C9F40
	b _020C9A44
_020C9F40:
	cmp r10, #0
	ble _020C9F60
	mov r0, #0
	add r1, r10, #1
	blx r5
	movs r9, r0
	bne _020C9F60
	b _020C9A44
_020C9F60:
	ldr r0, [sp, #8]
	ldr r1, _020CA258 ; =0x020E482C
	add r3, r0, #1
	ldr r0, [r4]
	mov r2, r7
	bl DWC_Http_GetBase64DecodedResult
	cmp r0, #0
	bge _020C9F84
	b _020C9E44
_020C9F84:
	mov r1, #0
	strb r1, [r7, r0]
	ldr r0, [r4]
	ldr r1, _020CA25C ; =0x020E4830
	add r3, r11, #1
	mov r2, r8
	bl DWC_Http_GetBase64DecodedResult
	cmp r0, #0
	bge _020C9FAC
	b _020C9E44
_020C9FAC:
	mov r1, #0
	strb r1, [r8, r0]
	cmp r10, #0
	mov r11, r1
	ble _020CA018
	ldr r0, [r4]
	ldr r1, _020CA260 ; =0x020E4838
	add r3, r10, #1
	mov r2, r9
	bl DWC_Http_GetBase64DecodedResult
	cmp r0, #0
	bge _020C9FE0
	b _020C9E44
_020C9FE0:
	mov r1, r11
	strb r1, [r9, r0]
	mov r0, r9
	bl atoi
	ldr r1, _020CA224 ; =msl_errno
	ldr r1, [r1]
	cmp r1, #0x22
	bne _020CA004
	b _020C9E44
_020CA004:
	mov r1, #0x3e8
	mul r11, r0, r1
	ldr r0, _020CA264 ; =0x0002BF20
	cmp r11, r0
	movgt r11, r0
_020CA018:
	ldr r0, [r4]
	bl DWC_Http_Destroy
	ldr r0, [r4, #4]
	ldr r1, _020CA218 ; =DWCnetcheckhttpparam
	add r2, r0, #0x1000
	ldr r0, [sp, #0x1c]
	str r0, [r2, #4]
	str r7, [r4, #0x30]
	mov r0, #0
	str r0, [r4, #0x34]
	mov r0, #0x1000
	str r0, [r4, #0x38]
	str r5, [r4, #0x3c]
	ldr r0, _020CA268 ; =0x0001D4C0
	str r6, [r4, #0x40]
	str r0, [r4, #0x48]
	ldr r0, [r4]
	bl DWC_Http_Create
	cmp r0, #0
	beq _020CA06C
	b _020C96A8
_020CA06C:
	ldr r0, [r4]
	mov r1, r8
	bl DWC_Http_Add_Body
	cmp r0, #0
	beq _020CA084
	b _020C9900
_020CA084:
	ldr r0, [r4]
	bl DWC_Http_FinishHeader
	cmp r0, #0
	beq _020CA098
	b _020C96A8
_020CA098:
	ldr r0, _020CA21C ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	sub r1, r0, #1
	ldr r0, [r4]
	bl DWC_Http_StartThread
	ldr r1, [r4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbe0]
	cmp r0, #0
	beq _020CA0E8
	add r0, r1, #0x374
	add r0, r0, #0x1800
	bl OS_IsThreadTerminated
	cmp r0, #0
	bne _020CA0E8
	ldr r0, [r4]
	add r0, r0, #0x374
	add r0, r0, #0x1800
	bl OS_JoinThread
_020CA0E8:
	ldr r0, [r4]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _020CA108
	cmp r1, #8
	beq _020CA120
	b _020CA11C
_020CA108:
	ldr r0, _020CA20C ; =DWChttp
	mvn r1, #0
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_020CA11C:
	b _020C9754
_020CA120:
	mov r1, #1
	bl DWC_Http_ParseResult
	cmp r0, #1
	beq _020CA134
	b _020C9774
_020CA134:
	ldr r0, [r4]
	add r1, r0, #0x1000
	ldr r10, [r1, #0xa44]
	cmp r10, #0
	bne _020CA14C
	b _020C977C
_020CA14C:
	mov r0, r10
	bl strlen
	add r1, r0, #1
	mov r0, #0
	blx r5
	ldr r1, [r4, #4]
	add r1, r1, #0x1000
	str r0, [r1, #0x118]
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x118]
	str r0, [sp]
	cmp r0, #0
	bne _020CA188
	b _020C9A44
_020CA188:
	mov r0, r10
	bl strlen
	mov r2, r0
	ldr r0, [sp]
	mov r1, r10
	add r2, r2, #1
	bl strncpy
	ldr r0, [r4]
	bl DWC_Http_Destroy
	mov r0, r11
	bl OS_Sleep
	b _020C9658
_020CA1B8:
	cmp r7, #0
	beq _020CA1D0
	mov r0, #0
	mov r1, r7
	mov r2, r0
	blx r6
_020CA1D0:
	cmp r8, #0
	beq _020CA1E8
	mov r0, #0
	mov r1, r8
	mov r2, r0
	blx r6
_020CA1E8:
	cmp r9, #0
	addeq sp, sp, #0x290
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #0
	mov r1, r9
	mov r2, r0
	blx r6
	add sp, sp, #0x290
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA20C: .word DWChttp
_020CA210: .word 0x00009C40
_020CA214: .word _ZZ23DWC_SimpleNetcheckAsynciE6bFirst_0
_020CA218: .word DWCnetcheckhttpparam
_020CA21C: .word OSi_ThreadInfo
_020CA220: .word ov15_020E47C4
_020CA224: .word msl_errno
_020CA228: .word 0x0000012E
_020CA22C: .word DWCauthhttpparam
_020CA230: .word 0x00004E20
_020CA234: .word ov15_020E47D0
_020CA238: .word ov15_020E47F0
_020CA23C: .word ov15_020E47F8
_020CA240: .word ov15_020E4800
_020CA244: .word DWCnetcheckauthparam
_020CA248: .word 0xFFFFA4FA
_020CA24C: .word ov15_020E4810
_020CA250: .word ov15_020E4818
_020CA254: .word ov15_020E4820
_020CA258: .word ov15_020E482C
_020CA25C: .word ov15_020E4830
_020CA260: .word ov15_020E4838
_020CA264: .word 0x0002BF20
_020CA268: .word 0x0001D4C0
	arm_func_end DWCi_Netcheck_Thread

	arm_func_start DWCi_Netcheck_SetError
DWCi_Netcheck_SetError: ; 0x020CA26C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020CA2A8 ; =DWChttp
	mov r5, r0
	ldr r0, [r4, #4]
	add r0, r0, #0x1dc
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	str r5, [r0]
	ldr r0, [r4, #4]
	add r0, r0, #0x1dc
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	ldmfd sp!, {r3, r4, r5, pc}
_020CA2A8: .word DWChttp
	arm_func_end DWCi_Netcheck_SetError

	arm_func_start DWC_Svl_Init
DWC_Svl_Init: ; 0x020CA2AC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _020CA334 ; =dwcauth_intwork
	mov r8, r0
	ldr r0, [r4]
	mov r7, r1
	cmp r0, #0
	beq _020CA2DC
	ldr r1, _020CA338 ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CA2DC:
	ldr r5, _020CA33C ; =0x00001C5C
	mov r6, #0
	mov r0, r6
	mov r1, r5
	blx r8
	str r0, [r4]
	cmp r0, #0
	bne _020CA310
	ldr r1, _020CA338 ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CA310:
	mov r1, r6
	mov r2, r5
	bl MI_CpuFill8
	ldr r1, [r4]
	mov r0, #1
	str r8, [r1]
	ldr r1, [r4]
	str r7, [r1, #4]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CA334: .word dwcauth_intwork
_020CA338: .word 0xFFFFA1DC
_020CA33C: .word 0x00001C5C
	arm_func_end DWC_Svl_Init

	arm_func_start DWC_Svl_Cleanup
DWC_Svl_Cleanup: ; 0x020CA340
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020CA37C ; =dwcauth_intwork
	ldr r0, [r4]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r0, #8
	bl DWC_Http_Destroy
	mov r5, #0
	ldr r1, [r4]
	mov r0, r5
	ldr r3, [r1, #4]
	mov r2, r5
	blx r3
	str r5, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020CA37C: .word dwcauth_intwork
	arm_func_end DWC_Svl_Cleanup

	arm_func_start DWC_Svl_GetTokenAsync
DWC_Svl_GetTokenAsync: ; 0x020CA380
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0xb0
	ldr r4, _020CA59C ; =dwcauth_intwork
	mov r7, r0
	ldr r2, [r4]
	mov r0, r1
	add r2, r2, #0x1000
	str r1, [r2, #0xc58]
	mov r1, #0
	mov r2, #0x174
	mov r5, r1
	bl MI_CpuFill8
	ldr r1, [r4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbe8]
	cmp r0, #0
	beq _020CA3DC
	add r0, r1, #0x37c
	add r0, r0, #0x1800
	bl OS_IsThreadTerminated
	cmp r0, #0
	bne _020CA3DC
	bl OS_Terminate
_020CA3DC:
	ldr r0, _020CA5A0 ; =DWCauthhttpparam
	mov r1, #0x1000
	ldr r0, [r0]
	ldr r6, [r4]
	str r1, [sp, #8]
	str r0, [sp]
	str r5, [sp, #4]
	ldr r2, [r6]
	ldr r1, _020CA5A4 ; =0x020E4840
	str r2, [sp, #0xc]
	ldr r2, [r6, #4]
	str r2, [sp, #0x10]
	bl strcmp
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #0x14]
	ldr r2, _020CA5A8 ; =0x00004E20
	add r1, sp, #0
	add r0, r6, #8
	streq r5, [sp, #0x14]
	str r2, [sp, #0x18]
	bl DWC_Http_Create
	cmp r0, #0
	beq _020CA454
	ldr r1, _020CA5AC ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	add sp, sp, #0xb0
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CA454:
	add r6, sp, #0x1c
	mov r0, r6
	bl DWC_Auth_GetCalInfoFromNVRAM
	cmp r0, #0
	beq _020CA484
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	add r0, r0, #8
	bl DWC_Auth_SetCalInfoToHttp
	cmp r0, #0
	bne _020CA4A8
_020CA484:
	ldr r0, [r4]
	add r0, r0, #8
	bl DWC_Http_Destroy
	ldr r1, _020CA5AC ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	add sp, sp, #0xb0
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CA4A8:
	ldr r0, [r4]
	ldr r1, _020CA5B0 ; =0x020E4860
	ldr r2, _020CA5B4 ; =0x020E4868
	add r0, r0, #8
	mov r3, #6
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	bne _020CA4E8
	ldr r0, [r4]
	ldr r1, _020CA5B8 ; =0x020E4870
	mov r2, r7
	add r0, r0, #8
	mov r3, #4
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	beq _020CA50C
_020CA4E8:
	ldr r0, [r4]
	add r0, r0, #8
	bl DWC_Http_Destroy
	ldr r1, _020CA5AC ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	add sp, sp, #0xb0
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CA50C:
	ldr r0, [r4]
	add r0, r0, #8
	bl DWC_Http_FinishHeader
	cmp r0, #0
	beq _020CA544
	ldr r0, [r4]
	add r0, r0, #8
	bl DWC_Http_Destroy
	ldr r1, _020CA5AC ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	add sp, sp, #0xb0
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CA544:
	ldr r0, _020CA5BC ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	ldr r2, [r4]
	sub r1, r0, #1
	add r0, r2, #8
	bl DWC_Http_StartThread
	ldr r1, [r4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbe8]
	cmp r0, #0
	addne sp, sp, #0xb0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r1, #8
	bl DWC_Http_Destroy
	ldr r1, _020CA5AC ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	mov r0, r5
	add sp, sp, #0xb0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CA59C: .word dwcauth_intwork
_020CA5A0: .word DWCauthhttpparam
_020CA5A4: .word ov15_020E4840
_020CA5A8: .word 0x00004E20
_020CA5AC: .word 0xFFFFA1DC
_020CA5B0: .word ov15_020E4860
_020CA5B4: .word ov15_020E4868
_020CA5B8: .word ov15_020E4870
_020CA5BC: .word OSi_ThreadInfo
	arm_func_end DWC_Svl_GetTokenAsync

	arm_func_start DWC_Svl_Process
DWC_Svl_Process: ; 0x020CA5C0
	stmfd sp!, {r4, lr}
	ldr r4, _020CA67C ; =dwcauth_intwork
	ldr r1, [r4]
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbe8]
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	add r0, r1, #0x37c
	add r0, r0, #0x1800
	bl OS_IsThreadTerminated
	cmp r0, #1
	bne _020CA674
	ldr r1, [r4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x28]
	cmp r0, #7
	beq _020CA648
	cmp r0, #8
	bne _020CA658
	bl DWCi_Svl_ParseHttp
	cmp r0, #0
	ldr r0, [r4]
	add r0, r0, #8
	bne _020CA63C
	bl DWC_Http_Destroy
	mov r0, #4
	ldmfd sp!, {r4, pc}
_020CA63C:
	bl DWC_Http_Destroy
	mov r0, #3
	ldmfd sp!, {r4, pc}
_020CA648:
	add r0, r1, #8
	bl DWC_Http_Destroy
	mov r0, #5
	ldmfd sp!, {r4, pc}
_020CA658:
	add r0, r1, #8
	bl DWC_Http_Destroy
	ldr r1, _020CA680 ; =0xFFFFA1DB
	mov r0, #0x10
	bl DWCi_SetError
	mov r0, #4
	ldmfd sp!, {r4, pc}
_020CA674:
	mov r0, #2
	ldmfd sp!, {r4, pc}
_020CA67C: .word dwcauth_intwork
_020CA680: .word 0xFFFFA1DB
	arm_func_end DWC_Svl_Process

	arm_func_start DWCi_Svl_ParseHttp
DWCi_Svl_ParseHttp: ; 0x020CA684
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r0, _020CA8A0 ; =dwcauth_intwork
	mov r4, #0
	ldr r5, [r0]
	mov r1, r4
	add r0, r5, #8
	bl DWC_Http_ParseResult
	cmp r0, #0
	bne _020CA6C4
	ldr r1, _020CA8A4 ; =0xFFFF9DF3
	mov r0, #0xf
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CA6C4:
	ldr r1, _020CA8A8 ; =0x020E4874
	add r0, r5, #8
	bl DWC_Http_GetResult
	cmp r0, #0
	beq _020CA6DC
	bl DWC_Auth_SetNasTimeDiff
_020CA6DC:
	ldr r1, _020CA8AC ; =0x020E487C
	add r0, r5, #8
	bl DWC_Http_GetResult
	cmp r0, #0
	bne _020CA708
	ldr r1, _020CA8A4 ; =0xFFFF9DF3
	mov r0, #0xf
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CA708:
	bl atoi
	ldr r6, _020CA8B0 ; =msl_errno
	mov r2, r0
	ldr r0, [r6]
	cmp r0, #0x22
	bne _020CA738
	ldr r1, _020CA8A4 ; =0xFFFF9DF3
	mov r0, #0xf
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CA738:
	cmp r2, #0xc8
	beq _020CA75C
	ldr r1, _020CA8B4 ; =0xFFFF9E58
	mov r0, #0xf
	sub r1, r1, r2
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CA75C:
	add r4, sp, #0
	ldr r1, _020CA8B8 ; =0x020E4888
	mov r2, r4
	add r0, r5, #8
	mov r3, #4
	bl DWC_Http_GetBase64DecodedResult
	cmp r0, #0
	bgt _020CA794
	ldr r1, _020CA8A4 ; =0xFFFF9DF3
	mov r0, #0xf
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CA794:
	mov r0, r4
	bl atoi
	ldr r1, [r6]
	mov r2, r0
	cmp r1, #0x22
	bne _020CA7C4
	ldr r1, _020CA8A4 ; =0xFFFF9DF3
	mov r0, #0xf
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CA7C4:
	cmp r2, #0x64
	blt _020CA7E8
	ldr r1, _020CA8BC ; =0xFFFFA240
	mov r0, #0xf
	sub r1, r1, r2
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CA7E8:
	ldr r6, _020CA8A0 ; =dwcauth_intwork
	ldr r1, _020CA8C0 ; =0x020E4894
	ldr r2, [r6]
	add r0, r5, #8
	add r2, r2, #0x1000
	ldr r2, [r2, #0xc58]
	mov r3, #0x40
	add r2, r2, #4
	bl DWC_Http_GetBase64DecodedResult
	cmp r0, #0
	blt _020CA85C
	ldr r0, [r6]
	ldr r1, _020CA8C4 ; =0x020E489C
	add r0, r0, #0x1000
	ldr r2, [r0, #0xc58]
	add r0, r5, #8
	add r2, r2, #0x45
	mov r3, #0x12c
	bl DWC_Http_GetBase64DecodedResult
	cmp r0, #0
	blt _020CA85C
	mov r6, #1
	ldr r1, _020CA8C8 ; =0x020E48AC
	mov r2, r4
	mov r3, r6
	add r0, r5, #8
	bl DWC_Http_GetBase64DecodedResult
	cmp r0, #0
	bge _020CA874
_020CA85C:
	ldr r1, _020CA8A4 ; =0xFFFF9DF3
	mov r0, #0xf
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CA874:
	ldr r1, _020CA8A0 ; =dwcauth_intwork
	ldrsb r0, [sp]
	ldr r1, [r1]
	add r1, r1, #0x1000
	ldr r1, [r1, #0xc58]
	cmp r0, #0x59
	movne r6, #0
	mov r0, #1
	str r6, [r1]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CA8A0: .word dwcauth_intwork
_020CA8A4: .word 0xFFFF9DF3
_020CA8A8: .word ov15_020E4874
_020CA8AC: .word ov15_020E487C
_020CA8B0: .word msl_errno
_020CA8B4: .word 0xFFFF9E58
_020CA8B8: .word ov15_020E4888
_020CA8BC: .word 0xFFFFA240
_020CA8C0: .word ov15_020E4894
_020CA8C4: .word ov15_020E489C
_020CA8C8: .word ov15_020E48AC
	arm_func_end DWCi_Svl_ParseHttp

	arm_func_start DWCi_BM_GetApInfo
DWCi_BM_GetApInfo: ; 0x020CA8CC
	ldr r12, _020CA8DC ; =dwcbm_ReadSlotInfo
	mov r1, #0
	mov r2, #3
	bx r12
_020CA8DC: .word dwcbm_ReadSlotInfo
	arm_func_end DWCi_BM_GetApInfo

	arm_func_start DWCi_BM_GetWiFiInfo
DWCi_BM_GetWiFiInfo: ; 0x020CA8E0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, #6
	ldr r0, _020CA990 ; =dwcbm_Wifi
	mov r1, r5
	mov r2, r4
	bl MI_CpuCopy8
	ldr r6, _020CA994 ; =0x000007FF
	ldr r1, [r5, #4]
	ldr r2, [r5]
	sub r0, r6, #0x800
	and r12, r2, r0
	and lr, r1, r6
	ldr r0, _020CA998 ; =0x020E9011
	stmia r5, {r12, lr}
	mov r2, r4
	add r1, r5, #8
	bl MI_CpuCopy8
	ldr r0, [r5, #8]
	ldr r2, [r5, #0xc]
	mov r3, r0, lsr #3
	and r1, r6, r2, lsr #3
	str r1, [r5, #0xc]
	orr r3, r3, r2, lsl #29
	sub r0, r6, #0x800
	and r2, r3, r0
	mov r4, #2
	str r2, [r5, #8]
	ldr r0, _020CA99C ; =0x020E9016
	mov r2, r4
	add r1, r5, #0x10
	bl MI_CpuCopy8
	mov r2, r4
	ldrh r4, [r5, #0x10]
	sub r3, r6, #0x400
	ldr r0, _020CA9A0 ; =0x020E9018
	mov r4, r4, asr #6
	strh r4, [r5, #0x10]
	ldrh r4, [r5, #0x10]
	add r1, r5, #0x12
	and r3, r4, r3
	strh r3, [r5, #0x10]
	bl MI_CpuCopy8
	ldmfd sp!, {r4, r5, r6, pc}
_020CA990: .word dwcbm_Wifi
_020CA994: .word 0x000007FF
_020CA998: .word ov15_020E9011
_020CA99C: .word ov15_020E9016
_020CA9A0: .word ov15_020E9018
	arm_func_end DWCi_BM_GetWiFiInfo

	arm_func_start dwcbm_ReadSlotInfo
dwcbm_ReadSlotInfo: ; 0x020CA9A4
	stmfd sp!, {r3, lr}
	ldr r3, _020CA9C8 ; =dwcbm_nv_result
	mov r12, r0
	ldr r0, [r3, #8]
	add r0, r0, r1, lsl #8
	mov r1, r2, lsl #8
	mov r2, r12
	bl dwcbm_readNvram
	ldmfd sp!, {r3, pc}
_020CA9C8: .word dwcbm_nv_result
	arm_func_end dwcbm_ReadSlotInfo

	arm_func_start dwcbm_WriteSlotInfo
dwcbm_WriteSlotInfo: ; 0x020CA9CC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, _020CAA08 ; =dwcbm_nv_result
	mov r5, r1
	ldr r1, [r3, #8]
	mov r6, r0
	mov r4, r2
	mov r2, r6
	add r0, r1, r5, lsl #8
	mov r1, #0x100
	bl dwcbm_writeNvram
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl dwcbm_VerifySlotInfo
	ldmfd sp!, {r4, r5, r6, pc}
_020CAA08: .word dwcbm_nv_result
	arm_func_end dwcbm_WriteSlotInfo

	arm_func_start DWCi_BM_SetWiFiInfo
DWCi_BM_SetWiFiInfo: ; 0x020CAA0C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r1
	bl DWCi_BACKUPlConvWifiInfo
	ldr r1, _020CAAB8 ; =0x0000A001
	add r0, r9, #0x200
	bl MATHi_CRC16InitTableRev
	ldr r6, _020CAABC ; =dwcbm_Wifi
	mov r8, #0
	mov r5, #0xe
	mov r4, #0xfe
	mov r7, #1
_020CAA38:
	mov r0, r9
	mov r1, r8
	mov r2, r7
	bl dwcbm_ReadSlotInfo
	cmp r0, #0
	bne _020CAA5C
	bl OS_Terminate
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CAA5C:
	mov r0, r6
	mov r2, r5
	add r1, r9, #0xf0
	bl MI_CpuCopy8
	mov r1, r9
	mov r2, r4
	add r0, r9, #0x200
	bl MATH_CalcCRC16
	strh r0, [r9, #0xfe]
_020CAA80:
	mov r0, r9
	mov r1, r8
	add r2, r9, #0x100
	bl dwcbm_WriteSlotInfo
	cmp r0, #0
	beq _020CAA80
	add r8, r8, #1
	cmp r8, #2
	blt _020CAA38
	bl dwcbm_writeDisable
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CAAB8: .word 0x0000A001
_020CAABC: .word dwcbm_Wifi
	arm_func_end DWCi_BM_SetWiFiInfo

	arm_func_start DWCi_BACKUPlInit
DWCi_BACKUPlInit: ; 0x020CAAC0
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x20
	mov r1, r0
	mov r2, r4
	bl dwcbm_readNvram
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrh r2, [r4]
	ldr r1, _020CAB00 ; =dwcbm_nv_result
	mov r0, #1
	mov r2, r2, lsl #3
	sub r2, r2, #0x400
	str r2, [r1, #8]
	ldmfd sp!, {r4, pc}
_020CAB00: .word dwcbm_nv_result
	arm_func_end DWCi_BACKUPlInit

	arm_func_start DWCi_BACKUPlRead
DWCi_BACKUPlRead: ; 0x020CAB04
	ldr r12, _020CAB14 ; =dwcbm_ReadSlotInfo
	mov r1, #0
	mov r2, #4
	bx r12
_020CAB14: .word dwcbm_ReadSlotInfo
	arm_func_end DWCi_BACKUPlRead

	arm_func_start DWCi_BACKUPlWritePage
DWCi_BACKUPlWritePage: ; 0x020CAB18
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r4, #0
_020CAB2C:
	ldr r0, [r7, r4, lsl #2]
	cmp r0, #0
	beq _020CAB54
	add r5, r8, r4, lsl #8
_020CAB3C:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl dwcbm_WriteSlotInfo
	cmp r0, #0
	beq _020CAB3C
_020CAB54:
	add r4, r4, #1
	cmp r4, #4
	blt _020CAB2C
	bl dwcbm_writeDisable
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end DWCi_BACKUPlWritePage

	arm_func_start DWCi_BACKUPlWriteAll
DWCi_BACKUPlWriteAll: ; 0x020CAB74
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r5, #0
	mov r4, #0xfe
_020CAB84:
	mov r2, r4
	add r0, r7, #0x500
	add r1, r7, r5, lsl #8
	bl MATH_CalcCRC16
	add r1, r7, r5, lsl #8
	strh r0, [r1, #0xfe]
	mov r6, r1
_020CABA0:
	mov r0, r6
	mov r1, r5
	add r2, r7, #0x400
	bl dwcbm_WriteSlotInfo
	cmp r0, #0
	beq _020CABA0
	add r5, r5, #1
	cmp r5, #4
	blt _020CAB84
	bl dwcbm_writeDisable
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end DWCi_BACKUPlWriteAll

	arm_func_start DWCi_BACKUPlSetWiFi
DWCi_BACKUPlSetWiFi: ; 0x020CABD8
	ldr r1, _020CABE8 ; =dwcbm_Wifi
	ldr r12, _020CABEC ; =MI_CpuCopy8
	mov r2, #0xe
	bx r12
_020CABE8: .word dwcbm_Wifi
_020CABEC: .word MI_CpuCopy8
	arm_func_end DWCi_BACKUPlSetWiFi

	arm_func_start DWCi_BACKUPlConvMaskCidr
DWCi_BACKUPlConvMaskCidr: ; 0x020CABF0
	stmfd sp!, {r4, lr}
	mov r12, #0
	mov r3, r12
	mov r2, r12
_020CAC00:
	ldrb r4, [r0, r12]
	mov lr, r2
_020CAC08:
	mov r1, r4, asr lr
	tst r1, #1
	add lr, lr, #1
	addne r3, r3, #1
	cmp lr, #8
	blt _020CAC08
	add r12, r12, #1
	cmp r12, #4
	blt _020CAC00
	and r0, r3, #0xff
	ldmfd sp!, {r4, pc}
	arm_func_end DWCi_BACKUPlConvMaskCidr

	arm_func_start DWCi_BACKUPlConvMaskAddr
DWCi_BACKUPlConvMaskAddr: ; 0x020CAC34
	mvn r2, #0
	eor r3, r2, r2, lsr r0
	mov r2, #0
_020CAC40:
	mov r0, r2, lsl #3
	rsb r0, r0, #0x18
	mov r0, r3, lsr r0
	strb r0, [r1, r2]
	add r2, r2, #1
	cmp r2, #4
	blt _020CAC40
	bx lr
	arm_func_end DWCi_BACKUPlConvMaskAddr

	arm_func_start DWC_BACKUPlCheckSsid
DWC_BACKUPlCheckSsid: ; 0x020CAC60
	mov r2, #0
_020CAC64:
	ldrb r1, [r0, r2]
	cmp r1, #0
	movne r0, #1
	bxne lr
	add r2, r2, #1
	cmp r2, #0x20
	blt _020CAC64
	mov r0, #0
	bx lr
	arm_func_end DWC_BACKUPlCheckSsid

	arm_func_start DWC_BACKUPlCheckIp
DWC_BACKUPlCheckIp: ; 0x020CAC88
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	mov r5, r1
	bl DWC_BACKUPlCheckAddress
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #4
	add r1, sp, #4
	mov r0, r6
	mov r2, r4
	bl MI_CpuCopy8
	add r1, sp, #0
	mov r0, r5
	mov r2, r4
	bl MI_CpuCopy8
	ldr r0, [sp]
	ldr r1, [sp, #4]
	mvn r0, r0
	tst r1, r0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DWC_BACKUPlCheckIp

	arm_func_start DWC_BACKUPlCheckAddress
DWC_BACKUPlCheckAddress: ; 0x020CACF0
	ldrb r0, [r0]
	cmp r0, #0x7f
	moveq r0, #0
	bxeq lr
	cmp r0, #1
	movlo r0, #0
	bxlo lr
	cmp r0, #0xdf
	movls r0, #1
	movhi r0, #0
	bx lr
	arm_func_end DWC_BACKUPlCheckAddress

	arm_func_start NVRAMm_ExecuteCommand
NVRAMm_ExecuteCommand: ; 0x020CAD1C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x44
	ldr r11, _020CB124 ; =dwcbm_Work
	mov r9, r0
	mov r7, r11, lsl #8
	mov r4, r7
	mov r4, r4, lsr #0x10
	orr r4, r4, #0x10000
	str r4, [sp, #0x34]
	and r4, r7, #0xff00
	orr r4, r4, #0x20000
	str r4, [sp, #0x38]
	ldr r5, _020CB128 ; =0x01020000
	mov r6, r3, lsr #0x10
	mov r4, r3, lsl #0x10
	add r3, r5, #0x30000
	orr r3, r3, r4, lsr #16
	str r3, [sp, #0x18]
	mov r3, r4, lsr #0x10
	orr r3, r3, #0x1040000
	ldr r0, _020CB12C ; =0x02002200
	str r3, [sp, #0x2c]
	orr r3, r0, r11, lsr #24
	str r3, [sp, #0x30]
	ldr r3, [sp, #0x38]
	mov r8, #0
	orr r3, r3, #0x1000000
	str r3, [sp, #0x38]
	mov r3, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	orr r5, r1, #0x10000
	add r1, r0, #0x300
	and r3, r3, #0xff
	add r0, r0, #0x100
	orr r0, r3, r0
	str r0, [sp, #8]
	orr r0, r2, #0x20000
	str r0, [sp, #0x24]
	orr r0, r6, #0x30000
	str r0, [sp, #0x28]
	orr r0, r6, #0x40000
	str r0, [sp, #0x14]
	ldr r0, _020CB130 ; =0x03002100
	mov r4, #4
	sub r0, r0, #0x100
	str r0, [sp, #0x1c]
	mov r0, r2, lsr #0x10
	orr r0, r0, #0x20000
	str r0, [sp, #0xc]
	mov r0, r2, lsl #0x10
	mov r0, r0, lsr #0x10
	orr r1, r3, r1
	orr r0, r0, #0x30000
	str r1, [sp, #0x20]
	mov r6, r4
	str r0, [sp, #0x10]
	mov r7, r8
_020CAE04:
	cmp r8, #0
	bne _020CAFF4
	ldr r0, _020CB134 ; =dwcbm_nv_result
	cmp r9, #7
	str r7, [r0, #4]
	addls pc, pc, r9, lsl #2
	b _020CAE04
_020CAE20: ; jump table
	b _020CAE04 ; case 0
	b _020CAE40 ; case 1
	b _020CAED8 ; case 2
	b _020CAEE4 ; case 3
	b _020CAF80 ; case 4
	b _020CAF80 ; case 5
	b _020CAFC4 ; case 6
	b _020CAFD4 ; case 7
_020CAE40:
	ldr r1, [sp, #8]
	mov r0, r6
	mov r2, r7
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r8, r7
	blt _020CAE04
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r8, r7
	blt _020CAE04
	ldr r1, [sp, #0xc]
	mov r0, r6
	mov r2, r7
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r8, r7
	blt _020CAE04
	ldr r1, [sp, #0x10]
	mov r0, r6
	mov r2, r7
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r8, r7
	blt _020CAE04
	ldr r1, [sp, #0x14]
	mov r0, r6
	mov r2, r7
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r8, r7
	blt _020CAE04
	mov r0, r6
	ldr r1, [sp, #0x18]
	b _020CAFDC
_020CAED8:
	mov r0, #4
	ldr r1, [sp, #0x1c]
	b _020CAFDC
_020CAEE4:
	ldr r1, [sp, #0x20]
	mov r0, r4
	mov r2, r7
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r8, r7
	blt _020CAF70
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r8, r7
	blt _020CAF70
	ldr r1, [sp, #0x24]
	mov r0, r4
	mov r2, r7
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r8, r7
	blt _020CAF70
	ldr r1, [sp, #0x28]
	mov r0, r4
	mov r2, r7
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r8, r7
	blt _020CAF70
	ldr r1, [sp, #0x2c]
	mov r0, r4
	mov r2, r7
	bl PXI_SendWordByFifo
	mov r8, r7
	cmp r0, #0
	movge r8, #1
_020CAF70:
	bl OS_GetTick
	str r0, [sp]
	str r1, [sp, #0x40]
	b _020CAE04
_020CAF80:
	ldr r1, [sp, #0x30]
	mov r0, #4
	mov r2, r7
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r8, r7
	blt _020CAE04
	ldr r1, [sp, #0x34]
	mov r0, #4
	mov r2, r7
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r8, r7
	blt _020CAE04
	mov r0, #4
	ldr r1, [sp, #0x38]
	b _020CAFDC
_020CAFC4:
	ldr r1, _020CB130 ; =0x03002100
	mov r0, #4
	add r1, r1, #0xc00
	b _020CAFDC
_020CAFD4:
	ldr r1, _020CB130 ; =0x03002100
	mov r0, #4
_020CAFDC:
	mov r2, r7
	bl PXI_SendWordByFifo
	mov r8, r7
	cmp r0, #0
	movge r8, #1
	b _020CAE04
_020CAFF4:
	ldr r0, _020CB134 ; =dwcbm_nv_result
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _020CAE04
	ldr r0, _020CB134 ; =dwcbm_nv_result
	mov r8, #0
	ldrh r0, [r0]
	cmp r0, #0
	bne _020CB118
	cmp r9, #7
	addls pc, pc, r9, lsl #2
	b _020CAE04
_020CB024: ; jump table
	b _020CAE04 ; case 0
	b _020CB044 ; case 1
	b _020CB050 ; case 2
	b _020CB058 ; case 3
	b _020CB060 ; case 4
	b _020CB060 ; case 5
	b _020CB100 ; case 6
	b _020CB10C ; case 7
_020CB044:
	add sp, sp, #0x44
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CB050:
	mov r9, #4
	b _020CAE04
_020CB058:
	mov r9, #5
	b _020CAE04
_020CB060:
	mov r0, r11
	mov r1, #1
	bl DC_InvalidateRange
	cmp r9, #4
	ldrb r0, [r11]
	bne _020CB090
	tst r0, #2
	movne r9, #3
	bne _020CAE04
	add sp, sp, #0x44
	mov r0, r8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CB090:
	tst r0, #1
	addeq sp, sp, #0x44
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	tst r0, #0x20
	bne _020CB0EC
	bl OS_GetTick
	ldr r2, [sp]
	mov r12, r8
	subs lr, r0, r2
	ldr r0, [sp, #0x40]
	ldr r2, _020CB138 ; =0x000082EA
	sbc r10, r1, r0
	mov r0, #0x40
	umull r0, r1, lr, r0
	mla r1, lr, r12, r1
	mov r12, #0x40
	mla r1, r10, r12, r1
	mov r3, r8
	bl _ll_udiv
	cmp r1, #0
	cmpeq r0, #0xfa0
	bls _020CB0F4
_020CB0EC:
	mov r9, #6
	b _020CAE04
_020CB0F4:
	mov r0, #0x4000
	blx SVC_WaitByLoop
	b _020CAE04
_020CB100:
	add sp, sp, #0x44
	mov r0, r8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CB10C:
	add sp, sp, #0x44
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CB118:
	mov r0, r8
	add sp, sp, #0x44
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CB124: .word dwcbm_Work
_020CB128: .word 0x01020000
_020CB12C: .word 0x02002200
_020CB130: .word 0x03002100
_020CB134: .word dwcbm_nv_result
_020CB138: .word 0x000082EA
	arm_func_end NVRAMm_ExecuteCommand

	arm_func_start dwcbm_readNvram
dwcbm_readNvram: ; 0x020CB13C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r2
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl DC_InvalidateRange
	mov r8, #4
	mov r7, #1
_020CB15C:
	mov r0, r8
	mov r1, r7
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _020CB15C
	ldr r1, _020CB1C8 ; =Callback_NVRAM
	mov r0, r8
	bl PXI_SetFifoRecvCallback
	mov r0, r5, lsl #0x10
	mov r8, r0, lsr #0x10
	mov r7, #0x40000
	mov r9, #1
_020CB18C:
	mov r0, r9
	mov r1, r6
	mov r2, r8
	mov r3, r4
	bl NVRAMm_ExecuteCommand
	cmp r0, #1
	beq _020CB1B4
	mov r0, r7
	blx SVC_WaitByLoop
	b _020CB18C
_020CB1B4:
	mov r0, r4
	mov r1, r5
	bl DC_InvalidateRange
	mov r0, r9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CB1C8: .word Callback_NVRAM
	arm_func_end dwcbm_readNvram

	arm_func_start dwcbm_writeNvram
dwcbm_writeNvram: ; 0x020CB1CC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, #4
	mov r4, #1
_020CB1E4:
	mov r0, r5
	mov r1, r4
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _020CB1E4
	ldr r1, _020CB244 ; =Callback_NVRAM
	mov r0, r5
	bl PXI_SetFifoRecvCallback
	mov r0, r6
	mov r1, r7
	bl DC_StoreRange
	mov r4, #0x40000
	mov r5, #2
_020CB218:
	mov r0, r5
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl NVRAMm_ExecuteCommand
	cmp r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	blx SVC_WaitByLoop
	b _020CB218
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CB244: .word Callback_NVRAM
	arm_func_end dwcbm_writeNvram

	arm_func_start dwcbm_VerifySlotInfo
dwcbm_VerifySlotInfo: ; 0x020CB248
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	mov r4, #1
	mov r6, r0
	mov r0, r5
	mov r2, r4
	bl dwcbm_ReadSlotInfo
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, #0x100
	bl memcmp
	cmp r0, #0
	movne r4, #0
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end dwcbm_VerifySlotInfo

	arm_func_start dwcbm_writeDisable
dwcbm_writeDisable: ; 0x020CB290
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #4
	mov r4, #1
_020CB29C:
	mov r0, r5
	mov r1, r4
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _020CB29C
	ldr r1, _020CB2F8 ; =Callback_NVRAM
	mov r0, r5
	bl PXI_SetFifoRecvCallback
	mov r4, #0x40000
	mov r6, #7
	mov r5, #0
_020CB2C8:
	mov r0, r6
	mov r1, r5
	mov r2, r5
	mov r3, r5
	bl NVRAMm_ExecuteCommand
	cmp r0, #1
	beq _020CB2F0
	mov r0, r4
	blx SVC_WaitByLoop
	b _020CB2C8
_020CB2F0:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020CB2F8: .word Callback_NVRAM
	arm_func_end dwcbm_writeDisable

	arm_func_start Callback_NVRAM
Callback_NVRAM: ; 0x020CB2FC
	ldr r0, _020CB328 ; =dwcbm_nv_result
	and r1, r1, #0xff
	strh r1, [r0]
	mov r1, #1
	str r1, [r0, #4]
	cmp r2, #0
	movne r1, #0xff
	strneh r1, [r0]
	ldr r0, _020CB328 ; =dwcbm_nv_result
	ldrh r0, [r0]
	bx lr
_020CB328: .word dwcbm_nv_result
	arm_func_end Callback_NVRAM

	arm_func_start DWCi_BACKUPlConvWifiInfo
DWCi_BACKUPlConvWifiInfo: ; 0x020CB32C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r0
	ldr r2, [r5, #8]
	ldr r4, _020CB3DC ; =dwcbm_Wifi
	ldr r3, [r5, #0xc]
	str r2, [sp]
	mov r1, r4
	mov r2, #5
	str r3, [sp, #4]
	bl MI_CpuCopy8
	ldr r2, [sp]
	ldr r3, [sp, #4]
	mov r12, r2, lsr #5
	mov lr, r3, lsr #5
	orr r12, r12, r3, lsl #27
	ldr r1, [r5, #4]
	mov r0, #7
	and r1, r0, r1, lsr #8
	and r0, r2, #0x1f
	orr r3, r1, r0, lsl #3
	ldr r6, _020CB3E0 ; =dwcbm_nv_result
	ldr r1, _020CB3E4 ; =0x020E9012
	add r0, sp, #0
	mov r2, #4
	strb r3, [r6, #0x11]
	str r12, [sp]
	str lr, [sp, #4]
	bl MI_CpuCopy8
	ldr r2, [sp, #4]
	ldrh r0, [r5, #0x10]
	and r3, r2, #0x3f
	ldr r1, _020CB3E8 ; =0x020E9018
	mov r2, r0, lsl #0x1e
	orr r2, r3, r2, lsr #24
	strb r2, [r6, #0x16]
	mov r3, r0, asr #2
	add r0, r5, #0x12
	mov r2, #2
	strb r3, [r6, #0x17]
	bl MI_CpuCopy8
	mov r0, r4
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_020CB3DC: .word dwcbm_Wifi
_020CB3E0: .word dwcbm_nv_result
_020CB3E4: .word ov15_020E9012
_020CB3E8: .word ov15_020E9018
	arm_func_end DWCi_BACKUPlConvWifiInfo

	arm_func_start DWCi_BACKUPlGetWifi
DWCi_BACKUPlGetWifi: ; 0x020CB3EC
	ldr r0, _020CB3F4 ; =dwcbm_Wifi
	bx lr
_020CB3F4: .word dwcbm_Wifi
	arm_func_end DWCi_BACKUPlGetWifi

	arm_func_start DWC_BM_Init
DWC_BM_Init: ; 0x020CB3F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	mov r6, #0
	mov r8, r0
	mov r1, r6
	mov r2, #0x700
	bl MI_CpuFill8
	mov r0, r8
	bl DWCi_BACKUPlInit
	cmp r0, #0
	addeq sp, sp, #0x10
	ldreq r0, _020CB6E8 ; =0xFFFFD8EF
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, _020CB6EC ; =0x0000A001
	add r0, r8, #0x500
	bl MATHi_CRC16InitTableRev
	mov r0, r8
	bl DWCi_BACKUPlRead
	cmp r0, #0
	addeq sp, sp, #0x10
	ldreq r0, _020CB6E8 ; =0xFFFFD8EF
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r5, sp, #0
	mov r1, r6
	mov r0, r5
	mov r2, #0x10
	bl MI_CpuFill8
	mov r9, #1
	mov r4, #0xfe
_020CB46C:
	add r7, r8, r6, lsl #8
	mov r1, r7
	mov r2, r4
	add r0, r8, #0x500
	bl MATH_CalcCRC16
	mov r1, r7
	ldrh r1, [r1, #0xfe]
	cmp r0, r1
	bne _020CB4A0
	mov r0, r7
	bl dwcbm_checkAp
	cmp r0, #0
	strne r9, [r5, r6, lsl #2]
_020CB4A0:
	add r6, r6, #1
	cmp r6, #3
	blt _020CB46C
	add r0, r8, #0x500
	add r1, r8, #0x300
	mov r2, #0xfe
	bl MATH_CalcCRC16
	add r1, r8, #0x300
	ldrh r1, [r1, #0xfe]
	cmp r0, r1
	moveq r0, #1
	ldr r1, [sp]
	streq r0, [sp, #0xc]
	cmp r1, #0
	ldrne r0, [sp, #4]
	cmpne r0, #0
	ldrne r0, [sp, #8]
	cmpne r0, #0
	ldrne r0, [sp, #0xc]
	cmpne r0, #0
	beq _020CB508
	add r0, r8, #0xf0
	bl DWCi_BACKUPlSetWiFi
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CB508:
	cmp r1, #0
	ldreq r0, [sp, #4]
	cmpeq r0, #0
	ldreq r0, [sp, #8]
	cmpeq r0, #0
	ldreq r0, [sp, #0xc]
	cmpeq r0, #0
	bne _020CB54C
	mov r0, r8
	bl dwcbm_init
	mov r0, r8
	bl DWCi_BACKUPlWriteAll
	cmp r0, #0
	movne r0, #0
	add sp, sp, #0x10
	ldreq r0, _020CB6F0 ; =0xFFFFD8F0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CB54C:
	cmp r1, #0
	beq _020CB560
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _020CB59C
_020CB560:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _020CB578
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _020CB59C
_020CB578:
	mov r0, r8
	bl dwcbm_init
	mov r0, r8
	bl DWCi_BACKUPlWriteAll
	cmp r0, #0
	movne r0, #0
	add sp, sp, #0x10
	ldreq r0, _020CB6F0 ; =0xFFFFD8F0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CB59C:
	cmp r1, #0
	ldreq r0, [sp, #4]
	cmpeq r0, #0
	bne _020CB5D0
	mov r0, r8
	bl dwcbm_init
	mov r0, r8
	bl DWCi_BACKUPlWriteAll
	cmp r0, #0
	ldrne r0, _020CB6F4 ; =0xFFFFD8ED
	add sp, sp, #0x10
	ldreq r0, _020CB6F0 ; =0xFFFFD8F0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CB5D0:
	cmp r1, #0
	bne _020CB600
	mov r0, r8
	mov r1, #0
	bl dwcbm_initPage
	add r0, r8, #0x1f0
	add r1, r8, #0xf0
	mov r2, #0xe
	bl MI_CpuCopy8
	ldrb r0, [r8, #0x1ef]
	strb r0, [r8, #0xef]
	b _020CB630
_020CB600:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _020CB630
	mov r0, r8
	mov r1, #1
	bl dwcbm_initPage
	add r0, r8, #0xf0
	add r1, r8, #0x1f0
	mov r2, #0xe
	bl MI_CpuCopy8
	ldrb r0, [r8, #0xef]
	strb r0, [r8, #0x1ef]
_020CB630:
	add r0, r8, #0xf0
	bl DWCi_BACKUPlSetWiFi
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _020CB650
	mov r0, r8
	mov r1, #2
	bl dwcbm_initPage
_020CB650:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _020CB66C
	add r1, r8, #0x300
	mov r0, #0
	mov r2, #0x100
	bl MIi_CpuClear16
_020CB66C:
	mov r4, #0
	mov r5, r4
	mov r2, #1
	add r3, sp, #0
_020CB67C:
	ldr r0, [r3, r5, lsl #2]
	cmp r0, #0
	bne _020CB6B0
	ldrb r0, [r8, #0xef]
	tst r0, r2, lsl r5
	beq _020CB6B0
	mvn r0, r2, lsl r5
	ldrb r1, [r8, #0xef]
	and r0, r0, #0xff
	mov r4, r2
	and r0, r1, r0
	strb r0, [r8, #0xef]
	strb r0, [r8, #0x1ef]
_020CB6B0:
	add r5, r5, #1
	cmp r5, #3
	blt _020CB67C
	mov r0, r8
	bl DWCi_BACKUPlWriteAll
	cmp r0, #0
	addeq sp, sp, #0x10
	ldreq r0, _020CB6F0 ; =0xFFFFD8F0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _020CB6F8 ; =0xFFFFD8EE
	cmp r4, #0
	moveq r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CB6E8: .word 0xFFFFD8EF
_020CB6EC: .word 0x0000A001
_020CB6F0: .word 0xFFFFD8F0
_020CB6F4: .word 0xFFFFD8ED
_020CB6F8: .word 0xFFFFD8EE
	arm_func_end DWC_BM_Init

	arm_func_start dwcbm_checkAp
dwcbm_checkAp: ; 0x020CB6FC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0xe7]
	cmp r0, #0xff
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r0, #2
	movhi r0, #0
	ldmhifd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x40
	bl DWC_BACKUPlCheckSsid
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, _020CB7D8 ; =DWCi_SETTING_NONE
	add r0, r5, #0xc0
	mov r2, #4
	bl memcmp
	cmp r0, #0
	beq _020CB794
	add r0, r5, #0xc4
	bl DWC_BACKUPlCheckAddress
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0xd0]
	cmp r0, #0x20
	movhi r0, #0
	ldmhifd sp!, {r3, r4, r5, pc}
	add r4, sp, #0
	mov r1, r4
	bl DWCi_BACKUPlConvMaskAddr
	mov r1, r4
	add r0, r5, #0xc0
	bl DWC_BACKUPlCheckIp
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_020CB794:
	ldr r1, _020CB7D8 ; =DWCi_SETTING_NONE
	add r0, r5, #0xc8
	mov r2, #4
	bl memcmp
	cmp r0, #0
	beq _020CB7D0
	add r0, r5, #0xc8
	bl DWC_BACKUPlCheckAddress
	cmp r0, #0
	bne _020CB7D0
	add r0, r5, #0xcc
	bl DWC_BACKUPlCheckAddress
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_020CB7D0:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020CB7D8: .word DWCi_SETTING_NONE
	arm_func_end dwcbm_checkAp

	arm_func_start dwcbm_init
dwcbm_init: ; 0x020CB7DC
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r4, r0
	mov r5, #0
	mov r0, r5
	mov r1, r4
	mov r2, #0x400
	bl MIi_CpuClear16
	mov r1, #0xff
_020CB800:
	add r0, r4, r5, lsl #8
	add r5, r5, #1
	strb r1, [r0, #0xe7]
	cmp r5, #3
	blt _020CB800
	add r5, sp, #0
	mov r0, r5
	bl DWCi_AUTH_GetNewWiFiInfo
	mov r0, r5
	bl DWCi_BACKUPlConvWifiInfo
	mov r6, r0
	mov r7, #0
	mov r5, #0xe
_020CB834:
	add r1, r4, r7, lsl #8
	mov r0, r6
	mov r2, r5
	add r1, r1, #0xf0
	bl MI_CpuCopy8
	add r7, r7, #1
	cmp r7, #2
	blt _020CB834
	mov r0, #0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end dwcbm_init

	arm_func_start dwcbm_initPage
dwcbm_initPage: ; 0x020CB860
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r1, r5, r4, lsl #8
	mov r0, #0
	mov r2, #0x100
	bl MIi_CpuClear16
	add r0, r5, r4, lsl #8
	mov r1, #0xff
	strb r1, [r0, #0xe7]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end dwcbm_initPage

	arm_func_start DWCi_Util_WiFiId_scrambleUid
DWCi_Util_WiFiId_scrambleUid: ; 0x020CB88C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr r4, _020CBA04 ; =0x0000FFFF
	mov lr, #0
	and r12, lr, #0
	add r5, r4, #0xff0000
	and r2, r2, #1
	mov r6, r12, lsl #2
	and r3, r3, #3
	and r5, r1, r5
	orr r1, r3, r2, lsl #2
	orr r6, r6, r2, lsr #30
	mov r7, r12, lsl #3
	and r2, r0, r4
	orr r0, r1, r5, lsl #3
	orr r4, r0, r2, lsl #27
	mov r3, r12, lsl #0x1b
	str r4, [sp, #8]
	orr r7, r7, r5, lsr #29
	orr r0, r12, r6
	orr r3, r3, r2, lsr #5
	orr r0, r7, r0
	orr r5, r3, r0
	str r5, [sp, #0xc]
	mov r4, lr
	add r1, sp, #8
_020CB8F4:
	ldrb r0, [r1, lr]
	eor r0, r0, #0xd6
	strb r0, [r1, lr]
	add lr, lr, #1
	cmp lr, #6
	blt _020CB8F4
	ldr r3, _020CBA08 ; =DWCi_util_wifiid_ttable
	mov r6, #0
	add r0, sp, #8
_020CB918:
	ldrb r5, [r0, r6]
	mov r1, r5, asr #4
	and r2, r1, #0xf
	and r1, r5, #0xf
	ldrb r2, [r3, r2]
	ldrb r1, [r3, r1]
	orr r1, r1, r2, lsl #4
	strb r1, [r0, r6]
	add r6, r6, #1
	cmp r6, #5
	blt _020CB918
	add r5, sp, #0
	mov r2, #8
	mov r1, r5
	bl MI_CpuCopy8
	ldr r2, _020CBA0C ; =DWCi_util_wifiid_exctable
	mov r6, #0
	add r0, sp, #8
_020CB960:
	ldrb r3, [r5, r6]
	ldrb r1, [r2, r6]
	add r6, r6, #1
	cmp r6, #5
	strb r3, [r0, r1]
	blt _020CB960
	ldrb r1, [sp, #0xd]
	mov r0, #0
	ldr r2, [sp, #8]
	and r1, r1, #7
	strb r0, [sp, #0xf]
	strb r0, [sp, #0xe]
	strb r1, [sp, #0xd]
	ldr r1, [sp, #0xc]
	mov r12, r2, lsl #1
	mov r1, r1, lsl #1
	orr r1, r1, r2, lsr #31
	str r1, [sp, #0xc]
	ldrb r1, [sp, #0xd]
	str r12, [sp, #8]
	ldrb r2, [sp, #8]
	mov r1, r1, asr #3
	and r1, r1, #1
	orr r1, r2, r1
	strb r1, [sp, #8]
	add r2, sp, #8
_020CB9C8:
	ldrb r1, [r2, r0]
	eor r1, r1, #0x67
	strb r1, [r2, r0]
	add r0, r0, #1
	cmp r0, #6
	blt _020CB9C8
	ldrb r0, [sp, #0xd]
	strb r4, [sp, #0xf]
	strb r4, [sp, #0xe]
	and r0, r0, #7
	strb r0, [sp, #0xd]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CBA04: .word 0x0000FFFF
_020CBA08: .word DWCi_util_wifiid_ttable
_020CBA0C: .word DWCi_util_wifiid_exctable
	arm_func_end DWCi_Util_WiFiId_scrambleUid

	arm_func_start DWCi_AUTH_GetNewWiFiInfo
DWCi_AUTH_GetNewWiFiInfo: ; 0x020CBA10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x24
	mov r5, r0
	mov r8, #0
	bl DWCi_BM_GetWiFiInfo
	bl RTC_Init
	add r6, sp, #0x14
	mov r0, r6
	bl RTC_GetDate
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, r8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r4, sp, #8
	mov r0, r4
	bl RTC_GetTime
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, r8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r6
	mov r1, r4
	bl RTC_ConvertDateTimeToSecond
	mov r9, r0
	mov r0, r8
	subs r2, r9, r0
	sbcs r2, r1, r0
	addlt sp, sp, #0x24
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	bl OS_IsTickAvailable
	cmp r0, #0
	beq _020CBA98
	ldr r0, _020CBBC8 ; =OS_GetTick
	adds r9, r9, r0
_020CBA98:
	add r0, sp, #0
	bl OS_GetMacAddress
	ldrb r0, [sp, #1]
	ldr r6, _020CBBCC ; =0x5D588B65
	ldr r7, _020CBBD0 ; =0x00269EC3
	ldrb r1, [sp]
	mov r0, r0, lsl #8
	mla r4, r9, r6, r7
	orr r1, r0, r1, lsl #16
	ldrb r2, [sp, #2]
	ldrb r10, [sp, #4]
	ldr r0, _020CBBD4 ; =0x000009BF
	orr r1, r2, r1
	cmp r1, r0
	movne r1, #1
	mov r2, r4, lsr #0x10
	mov r0, #0x3e8
	mul r3, r2, r0
	ldrb r12, [sp, #3]
	ldrb r0, [sp, #5]
	mov r9, r10, lsl #8
	orr r10, r9, r12, lsl #16
	moveq r1, #0
	ldrh r2, [r5, #0x12]
	mov r3, r3, lsr #0x10
	strh r3, [r5, #0x10]
	str r8, [r5]
	str r8, [r5, #4]
	cmp r2, #0
	and r9, r1, #0xff
	orr r10, r0, r10
	bne _020CBB74
	cmp r8, r8
	str r8, [r5, #8]
	str r8, [r5, #0xc]
	cmpeq r8, r8
	bne _020CBBBC
_020CBB2C:
	mul r0, r4, r6
	adds r4, r0, r7
	bne _020CBB44
_020CBB38:
	mul r0, r4, r6
	adds r4, r0, r7
	beq _020CBB38
_020CBB44:
	strh r4, [r5, #0x12]
	ldrh r0, [r5, #0x12]
	mov r1, r10
	mov r2, r9
	mov r3, r8
	bl DWCi_Util_WiFiId_scrambleUid
	cmp r1, #0
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	cmpeq r0, #0
	beq _020CBB2C
	b _020CBBBC
_020CBB74:
	cmp r8, r8
	str r8, [r5, #8]
	str r8, [r5, #0xc]
	cmpeq r8, r8
	bne _020CBBBC
_020CBB88:
	ldrh r0, [r5, #0x12]
	mov r1, r10
	mov r2, r9
	add r0, r0, #1
	strh r0, [r5, #0x12]
	ldrh r0, [r5, #0x12]
	mov r3, r8
	bl DWCi_Util_WiFiId_scrambleUid
	cmp r1, #0
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	cmpeq r0, #0
	beq _020CBB88
_020CBBBC:
	mov r0, #1
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020CBBC8: .word OS_GetTick
_020CBBCC: .word 0x5D588B65
_020CBBD0: .word 0x00269EC3
_020CBBD4: .word 0x000009BF
	arm_func_end DWCi_AUTH_GetNewWiFiInfo

	arm_func_start DWCi_AUTH_MakeWiFiID
DWCi_AUTH_MakeWiFiID: ; 0x020CBBD8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	add r4, sp, #0
	mov r5, r0
	mov r0, r4
	bl DWCi_AUTH_GetNewWiFiInfo
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, pc}
	mov r0, r4
	mov r1, r5
	bl DWCi_BM_SetWiFiInfo
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
	arm_func_end DWCi_AUTH_MakeWiFiID

	arm_func_start DWCi_AUTH_UpDateWiFiID
DWCi_AUTH_UpDateWiFiID: ; 0x020CBC20
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	add r0, sp, #0
	mov r4, r1
	bl DWCi_BM_GetWiFiInfo
	add r12, r5, #8
	ldmia r12, {r2, r3}
	stmia r5, {r2, r3}
	add r1, sp, #8
	ldmia r1, {r2, r3}
	mov r0, r5
	mov r1, r4
	stmia r12, {r2, r3}
	bl DWCi_BM_SetWiFiInfo
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
	arm_func_end DWCi_AUTH_UpDateWiFiID

	arm_func_start DWCi_AUTH_RemakeWiFiID
DWCi_AUTH_RemakeWiFiID: ; 0x020CBC70
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x24
	add r1, sp, #0
	mov r7, #0
	mov r5, r0
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	strb r7, [r1, #3]
	strb r7, [r1, #4]
	strb r7, [r1, #5]
	bl DWCi_BM_GetWiFiInfo
	bl RTC_Init
	add r6, sp, #0x14
	mov r0, r6
	bl RTC_GetDate
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, r7
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r4, sp, #8
	mov r0, r4
	bl RTC_GetTime
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, r7
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r6
	mov r1, r4
	bl RTC_ConvertDateTimeToSecond
	mov r8, r0
	subs r0, r8, r7
	sbcs r0, r1, r7
	addlt sp, sp, #0x24
	movlt r0, r7
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	bl OS_IsTickAvailable
	cmp r0, #0
	beq _020CBD14
	ldr r0, _020CBDF4 ; =OS_GetTick
	adds r8, r8, r0
_020CBD14:
	add r0, sp, #0
	bl OS_GetMacAddress
	ldrb r0, [sp, #1]
	ldr r6, _020CBDF8 ; =0x5D588B65
	ldr r7, _020CBDFC ; =0x00269EC3
	ldrb r1, [sp]
	mov r0, r0, lsl #8
	mla r4, r8, r6, r7
	orr r1, r0, r1, lsl #16
	ldrb r2, [sp, #2]
	ldrb r9, [sp, #4]
	ldr r0, _020CBE00 ; =0x000009BF
	orr r1, r2, r1
	cmp r1, r0
	movne r1, #1
	mov r2, r4, lsr #0x10
	mov r0, #0x3e8
	mul r3, r2, r0
	ldrb r10, [sp, #3]
	mov r8, r9, lsl #8
	moveq r1, #0
	mov r2, #0
	ldrb r0, [sp, #5]
	orr r8, r8, r10, lsl #16
	mov r3, r3, lsr #0x10
	cmp r2, #0
	strh r3, [r5, #0x10]
	str r2, [r5, #8]
	str r2, [r5, #0xc]
	cmpeq r2, #0
	and r9, r1, #0xff
	orr r10, r0, r8
	bne _020CBDE8
	mov r8, r2
_020CBD9C:
	b _020CBDA0
_020CBDA0:
	mla r4, r6, r4, r7
	cmp r4,#0x0
	ldrneh r2, [r5, #0x12]
	movne r0, r4, lsl #0x10
	movne r1, r0, lsr #0x10
	cmpne r2, r0, lsr #0x10
	beq _020CBDA0
	strh r1, [r5, #0x12]
	ldrh r0, [r5, #0x12]
	mov r1, r10
	mov r2, r9
	mov r3, r8
	bl DWCi_Util_WiFiId_scrambleUid
	cmp r1, #0x0
	str r0, [r5, #0x8]
	str r1, [r5, #0xc]
	cmpeq r0, #0x0
	beq _020CBD9C
_020CBDE8:
	mov r0, #1
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020CBDF4: .word OS_GetTick
_020CBDF8: .word 0x5D588B65
_020CBDFC: .word 0x00269EC3
_020CBE00: .word 0x000009BF
	arm_func_end DWCi_AUTH_RemakeWiFiID

	arm_func_start DWC_Auth_GetId
DWC_Auth_GetId: ; 0x020CBE04
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	add r5, sp, #0
	mov r4, r0
	mov r0, r5
	bl DWCi_BM_GetWiFiInfo
	ldmia r5, {r2, r3}
	stmia r4, {r2, r3}
	add r1, sp, #8
	add r0, r4, #8
	ldmia r1, {r2, r3}
	stmia r0, {r2, r3}
	ldr r0, [sp, #4]
	ldr r2, [sp]
	cmp r0, #0
	mov r0, #0
	cmpeq r2, #0
	movne r0, #1
	str r0, [r4, #0x10]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
	arm_func_end DWC_Auth_GetId

	arm_func_start DWC_Auth_CheckWiFiIDNeedCreate
DWC_Auth_CheckWiFiIDNeedCreate: ; 0x020CBE58
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	add r0, sp, #0
	bl DWCi_BM_GetWiFiInfo
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #8]
	cmp r0, #0
	cmpeq r2, #0
	mov r0, #0
	bne _020CBE9C
	ldr r1, [sp, #4]
	ldr r2, [sp]
	cmp r1, r0
	cmpeq r2, r0
	addeq sp, sp, #0x14
	moveq r0, #1
	ldmeqia sp!, {pc}
_020CBE9C:
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {pc}
	arm_func_end DWC_Auth_CheckWiFiIDNeedCreate

	arm_func_start DWC_Base64Encode
DWC_Base64Encode: ; 0x020CBEA8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r4, _020CC01C ; =0xAAAAAAAB
	mov r6, #3
	umull r4, r5, r1, r4
	mov r5, r5, lsr #1
	umull r4, r5, r6, r5
	subs r5, r1, r4
	movne r5, #4
	str r2, [sp]
	mov r10, r0
	ldr r4, _020CC01C ; =0xAAAAAAAB
	ldr r0, [sp]
	moveq r5, #0
	cmp r0, #0
	umull r0, r2, r1, r4
	mov r2, r2, lsr #1
	addeq sp, sp, #8
	add r0, r5, r2, lsl #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r3, r0
	addlo sp, sp, #8
	mvnlo r0, #0
	ldmlofd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r7, r10, r1
	ldr r8, [sp]
	cmp r10, r7
	beq _020CC00C
	ldr r5, _020CC020 ; =DWCi_base64_table
	add r11, sp, #4
_020CBF20:
	sub r9, r7, r10
	mov r0, r9, lsl #3
	umull r1, r2, r0, r4
	mov r2, r2, lsr #2
	mov r1, #6
	umull r2, r3, r1, r2
	subs r2, r0, r2
	umull r1, r2, r0, r4
	movne r3, #1
	moveq r3, #0
	add r6, r3, r2, lsr #2
	cmp r9, #3
	movge r9, #3
	mov r0, r11
	mov r1, #0
	mov r2, #3
	bl MI_CpuFill8
	mov r0, r10
	mov r1, r11
	mov r2, r9
	bl MI_CpuCopy8
	ldrb r0, [sp, #4]
	ldr r1, [r5]
	cmp r6, #2
	mov r0, r0, asr #2
	ldrsb r0, [r1, r0]
	strb r0, [r8]
	movlo r0, #0x2a
	blo _020CBFB0
	ldrb r2, [sp, #4]
	ldrb r1, [sp, #5]
	ldr r0, [r5]
	mov r2, r2, lsl #4
	and r2, r2, #0x3f
	orr r1, r2, r1, asr #4
	ldrsb r0, [r0, r1]
_020CBFB0:
	strb r0, [r8, #1]
	cmp r6, #3
	movlo r0, #0x2a
	blo _020CBFDC
	ldrb r2, [sp, #5]
	ldrb r1, [sp, #6]
	ldr r0, [r5]
	mov r2, r2, lsl #2
	and r2, r2, #0x3f
	orr r1, r2, r1, asr #6
	ldrsb r0, [r0, r1]
_020CBFDC:
	strb r0, [r8, #2]
	cmp r6, #4
	ldrhsb r0, [sp, #6]
	ldrhs r1, [r5]
	add r10, r10, r9
	andhs r0, r0, #0x3f
	ldrhssb r0, [r1, r0]
	movlo r0, #0x2a
	strb r0, [r8, #3]
	cmp r10, r7
	add r8, r8, #4
	bne _020CBF20
_020CC00C:
	ldr r0, [sp]
	sub r0, r8, r0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CC01C: .word 0xAAAAAAAB
_020CC020: .word DWCi_base64_table
	arm_func_end DWC_Base64Encode

	arm_func_start DWC_Base64Decode
DWC_Base64Decode: ; 0x020CC024
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	tst r1, #3
	mvnne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0
	mov r6, r5
	cmp r1, #0
	ble _020CC05C
_020CC044:
	ldrsb r4, [r0, r6]
	add r6, r6, #1
	cmp r4, #0x2a
	addne r5, r5, #6
	cmp r6, r1
	blt _020CC044
_020CC05C:
	mov r12, r5, asr #2
	add r12, r5, r12, lsr #29
	mov r12, r12, asr #3
	cmp r2, #0
	moveq r0, r12
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r3, r12
	mvnlo r0, #0
	ldmlofd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r2
_020CC090:
	mov r7, #0
	mov r3, r7
	add r6, sp, #0
	mov r4, #0x3f
	mov r5, #0x3e
_020CC0A4:
	ldrsb lr, [r0, r7]
	cmp lr, #0x41
	blt _020CC0C0
	cmp lr, #0x5a
	suble lr, lr, #0x41
	strleb lr, [r6, r7]
	ble _020CC108
_020CC0C0:
	cmp lr, #0x61
	blt _020CC0D8
	cmp lr, #0x7a
	suble lr, lr, #0x47
	strleb lr, [r6, r7]
	ble _020CC108
_020CC0D8:
	cmp lr, #0x30
	blt _020CC0F0
	cmp lr, #0x39
	addle lr, lr, #4
	strleb lr, [r6, r7]
	ble _020CC108
_020CC0F0:
	cmp lr, #0x2e
	streqb r5, [r6, r7]
	beq _020CC108
	cmp lr, #0x2d
	streqb r4, [r6, r7]
	strneb r3, [r6, r7]
_020CC108:
	add r7, r7, #1
	cmp r7, #4
	blt _020CC0A4
	ldrsb r5, [sp, #1]
	ldrsb r4, [sp]
	add r3, r1, #1
	mov lr, r5, asr #4
	orr r4, lr, r4, lsl #2
	sub r6, r3, r2
	strb r4, [r1]
	cmp r6, r12
	add r0, r0, #4
	bge _020CC178
	ldrsb lr, [sp, #2]
	add r3, r1, #2
	sub r6, r3, r2
	mov r3, lr, asr #2
	orr r3, r3, r5, lsl #4
	strb r3, [r1, #1]
	cmp r6, r12
	bge _020CC178
	ldrsb r3, [sp, #3]
	orr r3, r3, lr, lsl #6
	strb r3, [r1, #2]
	add r1, r1, #3
	sub r6, r1, r2
	cmp r6, r12
	blt _020CC090
_020CC178:
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end DWC_Base64Decode

	arm_func_start DWC_GetLastError
DWC_GetLastError: ; 0x020CC180
	cmp r0, #0
	ldrne r1, _020CC19C ; =stDwcLastError
	ldrne r1, [r1, #4]
	strne r1, [r0]
	ldr r0, _020CC19C ; =stDwcLastError
	ldr r0, [r0]
	bx lr
_020CC19C: .word stDwcLastError
	arm_func_end DWC_GetLastError

	arm_func_start DWC_GetLastErrorEx
DWC_GetLastErrorEx: ; 0x020CC1A0
	cmp r0, #0
	ldrne r2, _020CC278 ; =stDwcLastError
	ldrne r2, [r2, #4]
	strne r2, [r0]
	cmp r1, #0
	beq _020CC26C
	ldr r0, _020CC278 ; =stDwcLastError
	ldr r0, [r0]
	cmp r0, #0x15
	addls pc, pc, r0, lsl #2
	b _020CC264
_020CC1CC: ; jump table
	b _020CC264 ; case 0
	b _020CC244 ; case 1
	b _020CC224 ; case 2
	b _020CC224 ; case 3
	b _020CC224 ; case 4
	b _020CC224 ; case 5
	b _020CC228 ; case 6
	b _020CC234 ; case 7
	b _020CC224 ; case 8
	b _020CC244 ; case 9
	b _020CC23C ; case 10
	b _020CC23C ; case 11
	b _020CC23C ; case 12
	b _020CC24C ; case 13
	b _020CC254 ; case 14
	b _020CC25C ; case 15
	b _020CC254 ; case 16
	b _020CC25C ; case 17
	b _020CC254 ; case 18
	b _020CC25C ; case 19
	b _020CC23C ; case 20
	b _020CC230 ; case 21
_020CC224:
	b _020CC254
_020CC228:
	mov r0, #3
	b _020CC268
_020CC230:
	b _020CC25C
_020CC234:
	mov r0, #4
	b _020CC268
_020CC23C:
	mov r0, #1
	b _020CC268
_020CC244:
	mov r0, #7
	b _020CC268
_020CC24C:
	mov r0, #5
	b _020CC268
_020CC254:
	mov r0, #6
	b _020CC268
_020CC25C:
	mov r0, #2
	b _020CC268
_020CC264:
	mov r0, #0
_020CC268:
	str r0, [r1]
_020CC26C:
	ldr r0, _020CC278 ; =stDwcLastError
	ldr r0, [r0]
	bx lr
_020CC278: .word stDwcLastError
	arm_func_end DWC_GetLastErrorEx

	arm_func_start DWC_ClearError
DWC_ClearError: ; 0x020CC27C
	ldr r0, _020CC298 ; =stDwcLastError
	ldr r1, [r0]
	cmp r1, #9
	movne r1, #0
	strne r1, [r0]
	strne r1, [r0, #4]
	bx lr
_020CC298: .word stDwcLastError
	arm_func_end DWC_ClearError

	arm_func_start DWCi_IsError
DWCi_IsError: ; 0x020CC29C
	ldr r0, _020CC2B4 ; =stDwcLastError
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_020CC2B4: .word stDwcLastError
	arm_func_end DWCi_IsError

	arm_func_start DWCi_SetError
DWCi_SetError: ; 0x020CC2B8
	ldr r2, _020CC2CC ; =stDwcLastError
	ldr r3, [r2]
	cmp r3, #9
	stmneia r2, {r0, r1}
	bx lr
_020CC2CC: .word stDwcLastError
	arm_func_end DWCi_SetError

	arm_func_start DWC_InitForProduction
DWC_InitForProduction: ; 0x020CC2D0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, _020CC308 ; =_version_NINTENDO_DWC
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl OSi_ReferSymbol
	mov r1, r7
	mov r2, r6
	mov r3, r5
	mov r0, #1
	str r4, [sp]
	bl DWCi_Init
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CC308: .word _version_NINTENDO_DWC
	arm_func_end DWC_InitForProduction

	arm_func_start DWCi_Init
DWCi_Init: ; 0x020CC30C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r1, [sp, #0x20]
	mov r10, r0
	mov r0, r3
	mov r9, r2
	mov r7, #0
	bl DWCi_SetMemFunc
	bl OS_InitTick
	bl OS_InitAlarm
	bl RTC_Init
	mov r0, #2
	mov r1, #0x700
	bl DWC_Alloc
	movs r8, r0
	moveq r0, #4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	bl DWC_BM_Init
	mov r5, r0
	bl DWC_Auth_CheckWiFiIDNeedCreate
	cmp r0, #0
	beq _020CC36C
	mov r0, r8
	bl DWCi_AUTH_MakeWiFiID
	mov r7, #1
_020CC36C:
	mov r6, #2
	mov r4, #0
	mov r0, r6
	mov r1, r8
	mov r2, r4
	bl DWC_Free
	cmp r5, #0
	bge _020CC398
	cmp r7, #0
	moveq r6, #3
	b _020CC3A4
_020CC398:
	mov r6, #1
	cmp r7, #0
	moveq r6, r4
_020CC3A4:
	mov r0, r10
	bl DWCi_Auth_InitInterface
	ldr r1, _020CC3C4 ; =dwci_gamecode
	mov r0, #1
	str r9, [r1]
	bl DWCi_Np_SetInitFlag
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CC3C4: .word dwci_gamecode
	arm_func_end DWCi_Init

	arm_func_start DWCi_Np_SetInitFlag
DWCi_Np_SetInitFlag: ; 0x020CC3C8
	ldr r1, _020CC3D4 ; =dwci_gamecode
	str r0, [r1, #4]
	bx lr
_020CC3D4: .word dwci_gamecode
	arm_func_end DWCi_Np_SetInitFlag

	arm_func_start DWCi_GetAllocateHeader
DWCi_GetAllocateHeader: ; 0x020CC3D8
	sub r0, r0, #0x20
	bx lr
	arm_func_end DWCi_GetAllocateHeader

	arm_func_start DWCi_SetAllocateHeader
DWCi_SetAllocateHeader: ; 0x020CC3E0
	ldr r2, _020CC3F0 ; =0x4457434D
	str r1, [r0, #4]
	str r2, [r0], #0x20
	bx lr
_020CC3F0: .word 0x4457434D
	arm_func_end DWCi_SetAllocateHeader

	arm_func_start DWCi_SetMemFunc
DWCi_SetMemFunc: ; 0x020CC3F4
	ldr r2, _020CC404 ; =dwcmemfunc_s_free
	str r0, [r2, #4]
	str r1, [r2]
	bx lr
_020CC404: .word dwcmemfunc_s_free
	arm_func_end DWCi_SetMemFunc

	arm_func_start DWC_Alloc
DWC_Alloc: ; 0x020CC408
	ldr r12, _020CC414 ; =DWC_AllocEx
	mov r2, #0x20
	bx r12
_020CC414: .word DWC_AllocEx
	arm_func_end DWC_Alloc

	arm_func_start DWC_AllocEx
DWC_AllocEx: ; 0x020CC418
	stmfd sp!, {r4, lr}
	ldr r3, _020CC448 ; =dwcmemfunc_s_free
	mov r4, r1
	ldr r3, [r3, #4]
	add r1, r4, #0x20
	blx r3
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r1, r4
	bl DWCi_SetAllocateHeader
	ldmfd sp!, {r4, pc}
_020CC448: .word dwcmemfunc_s_free
	arm_func_end DWC_AllocEx

	arm_func_start DWC_Free
DWC_Free: ; 0x020CC44C
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r1
	bl DWCi_GetAllocateHeader
	mov r1, r0
	ldr r0, _020CC484 ; =dwcmemfunc_s_free
	ldr r2, [r1, #4]
	ldr r3, [r0]
	mov r0, r4
	add r2, r2, #0x20
	blx r3
	ldmfd sp!, {r4, pc}
_020CC484: .word dwcmemfunc_s_free
	arm_func_end DWC_Free

	arm_func_start DWC_SVLGetTokenAsync
DWC_SVLGetTokenAsync: ; 0x020CC488
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	add r0, sp, #0
	mov r4, r1
	bl DWC_Auth_GetId
	ldr r0, [sp, #0x10]
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, pc}
	ldr r0, _020CC514 ; =DWC_Alloc
	ldr r1, _020CC518 ; =DWC_Free
	bl DWC_Svl_Init
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, pc}
	mov r0, r5
	bl strlen
	cmp r0, #0
	bne _020CC4E8
	ldr r0, _020CC51C ; =0x020E5640
	b _020CC4EC
_020CC4E8:
	mov r0, r5
_020CC4EC:
	mov r1, r4
	bl DWC_Svl_GetTokenAsync
	cmp r0, #0
	addne sp, sp, #0x14
	movne r0, #1
	ldmnefd sp!, {r4, r5, pc}
	bl DWC_Svl_Cleanup
	mov r0, #0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
_020CC514: .word DWC_Alloc
_020CC518: .word DWC_Free
_020CC51C: .word ov15_020E5640
	arm_func_end DWC_SVLGetTokenAsync

	arm_func_start DWC_SVLProcess
DWC_SVLProcess: ; 0x020CC520
	stmfd sp!, {r4, lr}
	bl DWC_Svl_Process
	mov r4, r0
	sub r0, r4, #3
	cmp r0, #2
	bhi _020CC53C
	bl DWC_Svl_Cleanup
_020CC53C:
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end DWC_SVLProcess

	arm_func_start DWC_NASLoginAsync
DWC_NASLoginAsync: ; 0x020CC544
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020CC5EC ; =dwcnasfunc_nalcnt
	ldr r0, [r0]
	cmp r0, #0
	beq _020CC55C
	bl OS_Terminate
_020CC55C:
	ldr r5, _020CC5F0 ; =0x00001E5C
	mov r0, #4
	mov r1, r5
	bl DWC_Alloc
	ldr r4, _020CC5EC ; =dwcnasfunc_nalcnt
	cmp r0, #0
	str r0, [r4]
	bne _020CC590
	ldr r1, _020CC5F4 ; =0xFFFFB17C
	mov r0, #9
	bl DWCi_SetError
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020CC590:
	mov r2, r5
	mov r1, #0
	bl MI_CpuFill8
	ldr r1, [r4]
	ldr r0, _020CC5F8 ; =0x020E5648
	add r1, r1, #0x84
	add r1, r1, #0x1c00
	mov r2, #9
	bl MI_CpuCopy8
	ldr r0, [r4]
	ldr r1, _020CC5FC ; =DWC_Alloc
	add r0, r0, #0x1000
	str r1, [r0, #0xc90]
	ldr r0, [r4]
	ldr r1, _020CC600 ; =DWC_Free
	add r0, r0, #0x1000
	str r1, [r0, #0xc94]
	ldr r1, [r4]
	add r0, r1, #0xc50
	add r0, r0, #0x1000
	bl DWC_Auth_Create
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020CC5EC: .word dwcnasfunc_nalcnt
_020CC5F0: .word 0x00001E5C
_020CC5F4: .word 0xFFFFB17C
_020CC5F8: .word ov15_020E5648
_020CC5FC: .word DWC_Alloc
_020CC600: .word DWC_Free
	arm_func_end DWC_NASLoginAsync

	arm_func_start DWC_NASLoginProcess
DWC_NASLoginProcess: ; 0x020CC604
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c4
	ldr r4, _020CC724 ; =dwcnasfunc_nalcnt
	ldr r0, [r4]
	cmp r0, #0
	addeq sp, sp, #0x1c4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	bl DWC_Auth_GetError
	cmp r0, #0
	beq _020CC644
	cmp r0, #0x14
	beq _020CC6BC
	cmp r0, #0x15
	beq _020CC650
	b _020CC6E4
_020CC644:
	add sp, sp, #0x1c4
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CC650:
	add r6, sp, #0
	mov r5, #0
	mov r0, r6
	mov r1, r5
	mov r2, #0x1c4
	bl MI_CpuFill8
	mov r0, r6
	bl DWC_Auth_GetResult
	bl DWC_Auth_Destroy
	ldr r1, [sp]
	ldr r0, _020CC728 ; =0x00004E22
	cmp r1, r0
	ldr r1, [r4]
	bne _020CC6A0
	add r0, r1, #0xc50
	add r0, r0, #0x1000
	bl DWC_Auth_Create
	add sp, sp, #0x1c4
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CC6A0:
	ldr r2, _020CC72C ; =0x00001E5C
	mov r0, #4
	bl DWC_Free
	add sp, sp, #0x1c4
	str r5, [r4]
	mov r0, #3
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CC6BC:
	bl DWC_Auth_Destroy
	ldr r1, [r4]
	ldr r2, _020CC72C ; =0x00001E5C
	mov r0, #4
	bl DWC_Free
	mov r0, #0
	str r0, [r4]
	add sp, sp, #0x1c4
	mov r0, #5
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CC6E4:
	add r0, sp, #0
	bl DWC_Auth_GetResult
	bl DWC_Auth_Destroy
	mov r5, #4
	ldr r1, [r4]
	ldr r2, _020CC72C ; =0x00001E5C
	mov r0, r5
	bl DWC_Free
	mov r2, #0
	ldr r1, [sp]
	mov r0, #2
	str r2, [r4]
	bl DWCi_SetError
	mov r0, r5
	add sp, sp, #0x1c4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CC724: .word dwcnasfunc_nalcnt
_020CC728: .word 0x00004E22
_020CC72C: .word 0x00001E5C
	arm_func_end DWC_NASLoginProcess

	arm_func_start DWC_NASLoginAbort
DWC_NASLoginAbort: ; 0x020CC730
	ldr r12, _020CC738 ; =DWC_Auth_Abort
	bx r12
_020CC738: .word DWC_Auth_Abort
	arm_func_end DWC_NASLoginAbort

	arm_func_start DWC_Auth_SetNasTimeDiff
DWC_Auth_SetNasTimeDiff: ; 0x020CC73C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x3c
	mov r4, r0
	bl strlen
	mov r5, r0
	ldr r0, _020CC930 ; =0x020E56AC
	bl strlen
	cmp r5, r0
	ldreqsb r0, [r4, #7]
	cmpeq r0, #0x20
	ldreqsb r0, [r4, #0xb]
	cmpeq r0, #0x20
	ldreqsb r0, [r4, #0x10]
	cmpeq r0, #0x20
	ldreqsb r0, [r4, #0x13]
	cmpeq r0, #0x3a
	ldreqsb r0, [r4, #0x16]
	cmpeq r0, #0x3a
	ldreqsb r0, [r4, #0x19]
	cmpeq r0, #0x20
	bne _020CC924
	add r6, sp, #0x2c
	add r5, sp, #0x20
	mov r0, r6
	mov r1, r5
	bl RTC_GetDateTime
	cmp r0, #0
	bne _020CC924
	mov r0, r6
	mov r1, r5
	bl RTC_ConvertDateTimeToSecond
	mov r5, r0
	mov r6, r1
	mvn r0, #0
	cmp r6, r0
	cmpeq r5, r0
	beq _020CC924
	add r0, sp, #0
	mov r1, r4
	bl strcpy
	mov r4, #0
	ldr r7, _020CC934 ; =msl_errno
	add r0, sp, #0xc
	str r4, [r7]
	strb r4, [sp, #7]
	strb r4, [sp, #0xb]
	strb r4, [sp, #0x10]
	strb r4, [sp, #0x13]
	strb r4, [sp, #0x16]
	strb r4, [sp, #0x19]
	bl atoi
	ldr r1, [r7]
	str r0, [sp, #0x2c]
	cmp r1, #0x22
	beq _020CC924
	sub r1, r0, #0x7d0
	mov r0, #0xd
	ldr r8, _020CC938 ; =dwcnastime_monthname
	str r1, [sp, #0x2c]
	str r0, [sp, #0x30]
	add r7, sp, #8
_020CC830:
	ldr r0, [r8, r4, lsl #2]
	mov r1, r7
	bl strcmp
	cmp r0, #0
	addeq r0, r4, #1
	streq r0, [sp, #0x30]
	beq _020CC858
	add r4, r4, #1
	cmp r4, #0xc
	blt _020CC830
_020CC858:
	ldr r0, [sp, #0x30]
	cmp r0, #0xc
	bhi _020CC924
	ldr r7, _020CC934 ; =msl_errno
	mov r4, #0
	add r0, sp, #5
	str r4, [r7]
	bl atoi
	ldr r1, [r7]
	str r0, [sp, #0x34]
	cmp r1, #0x22
	beq _020CC924
	add r0, sp, #0x11
	str r4, [r7]
	bl atoi
	ldr r1, [r7]
	str r0, [sp, #0x20]
	cmp r1, #0x22
	beq _020CC924
	add r0, sp, #0x14
	str r4, [r7]
	bl atoi
	ldr r1, [r7]
	str r0, [sp, #0x24]
	cmp r1, #0x22
	beq _020CC924
	add r0, sp, #0x17
	str r4, [r7]
	bl atoi
	ldr r1, [r7]
	str r0, [sp, #0x28]
	cmp r1, #0x22
	beq _020CC924
	add r0, sp, #0x2c
	add r1, sp, #0x20
	bl RTC_ConvertDateTimeToSecond
	sub r3, r4, #1
	mov r2, r3
	cmp r1, r3
	cmpeq r0, r2
	beq _020CC924
	ldr r2, _020CC93C ; =DWCnastimediffvalid
	subs r0, r5, r0
	str r0, [r2, #0xc]
	sbc r0, r6, r1
	str r0, [r2, #0x10]
	stmib r2, {r5, r6}
	mov r0, #1
	str r0, [r2]
	add sp, sp, #0x3c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020CC924:
	mov r0, #0
	add sp, sp, #0x3c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020CC930: .word ov15_020E56AC
_020CC934: .word msl_errno
_020CC938: .word dwcnastime_monthname
_020CC93C: .word DWCnastimediffvalid
	arm_func_end DWC_Auth_SetNasTimeDiff

	arm_func_start DWCi_NdAlloc
DWCi_NdAlloc: ; 0x020CC940
	ldr r12, _020CC954 ; =DWC_AllocEx
	mov r2, r1
	mov r1, r0
	mov r0, #0xa
	bx r12
_020CC954: .word DWC_AllocEx
	arm_func_end DWCi_NdAlloc

	arm_func_start DWCi_NdFree
DWCi_NdFree: ; 0x020CC958
	ldr r12, _020CC96C ; =DWC_Free
	mov r1, r0
	mov r0, #0xa
	mov r2, #0
	bx r12
_020CC96C: .word DWC_Free
	arm_func_end DWCi_NdFree

	arm_func_start DWCi_NdCleanupCallback
DWCi_NdCleanupCallback: ; 0x020CC970
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020CC9C0 ; =dwcnd_s_userCallback
	ldr r0, [r4, #0x18]
	add r0, r0, #0x1b8
	add r0, r0, #0x800
	bl OS_JoinThread
	ldr r0, [r4, #0x18]
	bl DWCi_NdFree
	ldr r5, _020CC9C4 ; =dwcnd_s_dwcnd_mutexState
	mov r1, #0
	mov r0, r5
	str r1, [r4, #0x18]
	bl OS_LockMutex
	mov r1, #3
	mov r0, r5
	str r1, [r4, #0x14]
	mov r1, #4
	str r1, [r4, #0x10]
	bl OS_UnlockMutex
	ldmfd sp!, {r3, r4, r5, pc}
_020CC9C0: .word dwcnd_s_userCallback
_020CC9C4: .word dwcnd_s_dwcnd_mutexState
	arm_func_end DWCi_NdCleanupCallback

	arm_func_start DWCi_SVLTokenWaitThread
DWCi_SVLTokenWaitThread: ; 0x020CC9C8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x2a0
	mov r4, #0x64
_020CC9D4:
	bl DWC_SVLProcess
	cmp r0, #3
	beq _020CC9F4
	cmp r0, #4
	beq _020CCAFC
	cmp r0, #5
	beq _020CCB28
	b _020CCB40
_020CC9F4:
	ldr r4, _020CCB54 ; =dwcnd_s_userCallback
	ldr r7, [r4, #0x18]
	add r0, r7, #0x48
	bl strlen
	mov r5, r0
	ldr r0, _020CCB58 ; =0x020E56CC
	bl strlen
	add r0, r5, r0
	cmp r0, #0xff
	bls _020CCA34
	mov r1, #8
	sub r2, r1, #9
	mov r0, #0
	bl dwcnd_NdCallback
	add sp, sp, #0x2a0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CCA34:
	add r6, sp, #0x1a0
	ldr r2, _020CCB5C ; =0x020E56E0
	mov r0, r6
	add r3, r7, #0x48
	mov r1, #0x100
	bl OS_SNPrintf
	ldr r7, [r4, #0x18]
	add r0, r7, #0x89
	bl strlen
	add r5, sp, #0x10
	mov r1, r0
	mov r2, r5
	add r0, r7, #0x89
	mov r3, #0x190
	bl DWC_Base64Encode
	cmp r0, #0
	bge _020CCA90
	mov r1, #8
	sub r2, r1, #9
	mov r0, #0
	bl dwcnd_NdCallback
	add sp, sp, #0x2a0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CCA90:
	ldr r0, [r4, #0x18]
	ldr r12, _020CCB60 ; =dwcnd_NdCallback
	str r0, [sp]
	add r0, r0, #0x20
	str r0, [sp, #4]
	ldr r0, _020CCB64 ; =DWCi_NdAlloc
	ldr r1, _020CCB68 ; =DWCi_NdFree
	mov r2, r6
	mov r3, r5
	str r12, [sp, #8]
	bl DWCi_NdStartup
	cmp r0, #0
	mov r0, #0
	bne _020CCADC
	mov r1, #8
	sub r2, r1, #9
	bl dwcnd_NdCallback
	add sp, sp, #0x2a0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CCADC:
	ldr r3, [r4, #0x18]
	mov r4, #1
	mov r1, r0
	sub r2, r0, #1
	str r4, [r3, #0x40]
	bl dwcnd_NdCallback
	add sp, sp, #0x2a0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CCAFC:
	add r0, sp, #0xc
	bl DWC_GetLastError
	ldr r1, [sp, #0xc]
	mov r0, #0xd
	bl DWCi_SetError
	mov r1, #3
	sub r2, r1, #4
	mov r0, #0
	bl dwcnd_NdCallback
	add sp, sp, #0x2a0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CCB28:
	mov r1, #6
	sub r2, r1, #7
	mov r0, #0
	bl dwcnd_NdCallback
	add sp, sp, #0x2a0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CCB40:
	mov r0, r4
	bl OS_Sleep
	b _020CC9D4
	add sp, sp, #0x2a0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CCB54: .word dwcnd_s_userCallback
_020CCB58: .word ov15_020E56CC
_020CCB5C: .word ov15_020E56E0
_020CCB60: .word dwcnd_NdCallback
_020CCB64: .word DWCi_NdAlloc
_020CCB68: .word DWCi_NdFree
	arm_func_end DWCi_SVLTokenWaitThread

	arm_func_start dwcnd_NdCallback
dwcnd_NdCallback: ; 0x020CCB6C
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r1
	mov r6, r0
	mov r4, r2
	beq _020CCB8C
	mov r0, r5
	mov r1, r4
	bl DWCi_NdSetError
_020CCB8C:
	ldr r0, _020CCBC4 ; =dwcnd_s_dwcnd_mutexState
	bl OS_LockMutex
	ldr r0, _020CCBC8 ; =dwcnd_s_userCallback
	mov r1, #3
	str r1, [r0, #0x14]
	str r6, [r0, #0x10]
	str r5, [r0, #0xc]
	cmp r5, #0
	str r4, [r0, #8]
	movne r1, #4
	strne r1, [r0, #0x14]
	ldr r0, _020CCBC4 ; =dwcnd_s_dwcnd_mutexState
	bl OS_UnlockMutex
	ldmfd sp!, {r4, r5, r6, pc}
_020CCBC4: .word dwcnd_s_dwcnd_mutexState
_020CCBC8: .word dwcnd_s_userCallback
	arm_func_end dwcnd_NdCallback

	arm_func_start DWC_NdInitAsync
DWC_NdInitAsync: ; 0x020CCBCC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl DWCi_IsError
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r4, _020CCD48 ; =dwcnd_s_dwcnd_mutexState
	mov r0, r4
	bl OS_InitMutex
	mov r0, r4
	bl OS_LockMutex
	ldr r8, _020CCD4C ; =dwcnd_s_userCallback
	ldr r0, [r8, #0x14]
	cmp r0, #0
	beq _020CCC3C
	mov r5, #0
	mov r1, r5
	mov r0, #2
	bl DWCi_NdSetError
	mov r0, r4
	bl OS_UnlockMutex
	add sp, sp, #8
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CCC3C:
	mov r1, #2
	mov r0, r4
	str r1, [r8, #0x14]
	bl OS_UnlockMutex
	mov r4, #0
	str r4, [r8, #0x10]
	str r4, [r8, #0xc]
	str r4, [r8, #8]
	ldr r9, _020CCD50 ; =0x00000A78
	str r7, [r8]
	mov r0, r9
	str r4, [r8, #4]
	mov r1, #0x20
	bl DWCi_NdAlloc
	str r0, [r8, #0x18]
	cmp r0, #0
	mov r1, r4
	bne _020CCC98
	mov r0, #1
	bl DWCi_NdSetError
	add sp, sp, #8
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CCC98:
	mov r2, r9
	bl MI_CpuFill8
	ldr r0, [r8, #0x18]
	mov r7, #0x1f
	str r4, [r0, #0x40]
	ldr r0, [r8, #0x18]
	mov r1, r6
	mov r2, r7
	bl strncpy
	ldr r0, [r8, #0x18]
	mov r1, r5
	mov r2, r7
	add r0, r0, #0x20
	bl strncpy
	ldr r1, [r8, #0x18]
	ldr r0, _020CCD54 ; =0x020E56F4
	add r1, r1, #0x44
	bl DWC_SVLGetTokenAsync
	cmp r0, #0
	bne _020CCD00
	ldr r0, [r8, #0x18]
	bl DWCi_NdFree
	add sp, sp, #8
	mov r0, r4
	str r4, [r8, #0x18]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CCD00:
	ldr r1, [r8, #0x18]
	mov r0, #0x800
	add r3, r1, #0x1b8
	str r0, [sp]
	mov r0, #0x10
	ldr r1, _020CCD58 ; =DWCi_SVLTokenWaitThread
	mov r2, r4
	str r0, [sp, #4]
	add r0, r3, #0x800
	add r3, r3, #0x800
	bl OS_CreateThread
	ldr r0, [r8, #0x18]
	add r0, r0, #0x1b8
	add r0, r0, #0x800
	bl OS_WakeupThreadDirect
	mov r0, #1
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CCD48: .word dwcnd_s_dwcnd_mutexState
_020CCD4C: .word dwcnd_s_userCallback
_020CCD50: .word 0x00000A78
_020CCD54: .word ov15_020E56F4
_020CCD58: .word DWCi_SVLTokenWaitThread
	arm_func_end DWC_NdInitAsync

	arm_func_start DWC_NdProcess
DWC_NdProcess: ; 0x020CCD5C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020CCE1C ; =dwcnd_s_dwcnd_mutexState
	mov r4, #0
	mov r5, r4
	bl OS_LockMutex
	ldr r0, _020CCE20 ; =dwcnd_s_userCallback
	ldr r2, [r0, #0x10]
	cmp r2, #0
	ldreq r1, [r0, #0x14]
	cmpeq r1, #4
	bne _020CCD9C
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r4, #1
	streq r4, [r0, #4]
	b _020CCDB4
_020CCD9C:
	ldr r0, _020CCE20 ; =dwcnd_s_userCallback
	ldr r1, [r0, #0x14]
	sub r1, r1, #3
	cmp r1, #1
	movls r4, #1
	strls r4, [r0, #0x14]
_020CCDB4:
	cmp r2, #4
	ldreq r0, _020CCE20 ; =dwcnd_s_userCallback
	moveq r1, #0
	streq r1, [r0, #0x14]
	streq r1, [r0, #0x10]
	ldr r0, _020CCE1C ; =dwcnd_s_dwcnd_mutexState
	moveq r5, #1
	bl OS_UnlockMutex
	ldr r2, _020CCE20 ; =dwcnd_s_userCallback
	ldr r3, [r2]
	cmp r3, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	beq _020CCE00
	mov r1, #0
	sub r2, r1, #1
	mov r0, #4
	blx r3
	ldmfd sp!, {r3, r4, r5, pc}
_020CCE00:
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0xc]
	ldr r2, [r2, #8]
	blx r3
	ldmfd sp!, {r3, r4, r5, pc}
_020CCE1C: .word dwcnd_s_dwcnd_mutexState
_020CCE20: .word dwcnd_s_userCallback
	arm_func_end DWC_NdProcess

	arm_func_start DWC_NdCleanupAsync
DWC_NdCleanupAsync: ; 0x020CCE24
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020CCE9C ; =dwcnd_s_userCallback
	ldr r0, [r4, #0x14]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r5, _020CCEA0 ; =dwcnd_s_dwcnd_mutexState
	mov r0, r5
	bl OS_LockMutex
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _020CCE64
	mov r0, r5
	bl OS_UnlockMutex
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020CCE64:
	mov r1, #2
	mov r0, r5
	str r1, [r4, #0x14]
	bl OS_UnlockMutex
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0x40]
	cmp r0, #0
	bne _020CCE8C
	bl DWCi_NdCleanupCallback
	b _020CCE94
_020CCE8C:
	ldr r0, _020CCEA4 ; =DWCi_NdCleanupCallback
	bl DWCi_NdCleanupAsync
_020CCE94:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020CCE9C: .word dwcnd_s_userCallback
_020CCEA0: .word dwcnd_s_dwcnd_mutexState
_020CCEA4: .word DWCi_NdCleanupCallback
	arm_func_end DWC_NdCleanupAsync

	arm_func_start DWC_NdSetAttr
DWC_NdSetAttr: ; 0x020CCEA8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl DWCi_IsError
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl DWCi_NdSetAttr
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DWC_NdSetAttr

	arm_func_start DWC_NdGetFileListNumAsync
DWC_NdGetFileListNumAsync: ; 0x020CCEDC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl DWCi_IsError
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r5, _020CCF74 ; =dwcnd_s_dwcnd_mutexState
	mov r0, r5
	bl OS_LockMutex
	ldr r4, _020CCF78 ; =dwcnd_s_userCallback
	ldr r0, [r4, #0x14]
	cmp r0, #1
	beq _020CCF30
	mov r4, #0
	mov r1, r4
	mov r0, #2
	bl DWCi_NdSetError
	mov r0, r5
	bl OS_UnlockMutex
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_020CCF30:
	mov r1, #2
	mov r0, r5
	str r1, [r4, #0x14]
	bl OS_UnlockMutex
	mov r0, r6
	bl DWCi_NdGetFileListNumAsync
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl OS_LockMutex
	mov r1, #1
	mov r0, r5
	str r1, [r4, #0x14]
	bl OS_UnlockMutex
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020CCF74: .word dwcnd_s_dwcnd_mutexState
_020CCF78: .word dwcnd_s_userCallback
	arm_func_end DWC_NdGetFileListNumAsync

	arm_func_start DWC_NdGetFileListAsync
DWC_NdGetFileListAsync: ; 0x020CCF7C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl DWCi_IsError
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r5, _020CD038 ; =dwcnd_s_dwcnd_mutexState
	mov r0, r5
	bl OS_LockMutex
	ldr r9, _020CD03C ; =dwcnd_s_userCallback
	mov r4, #0
	ldr r0, [r9, #0x14]
	cmp r0, #1
	beq _020CCFD8
	mov r1, r4
	mov r0, #2
	bl DWCi_NdSetError
	mov r0, r5
	bl OS_UnlockMutex
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CCFD8:
	mov r1, #2
	mov r0, r5
	str r1, [r9, #0x14]
	bl OS_UnlockMutex
	mov r0, #0xb0
	mul r2, r6, r0
	mov r0, r8
	mov r1, r4
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl DWCi_NdGetFileListAsync
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r5
	bl OS_LockMutex
	mov r1, #1
	mov r0, r5
	str r1, [r9, #0x14]
	bl OS_UnlockMutex
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CD038: .word dwcnd_s_dwcnd_mutexState
_020CD03C: .word dwcnd_s_userCallback
	arm_func_end DWC_NdGetFileListAsync

	arm_func_start DWC_NdGetFileAsync
DWC_NdGetFileAsync: ; 0x020CD040
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl DWCi_IsError
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r4, _020CD0F0 ; =dwcnd_s_dwcnd_mutexState
	mov r0, r4
	bl OS_LockMutex
	ldr r8, _020CD0F4 ; =dwcnd_s_userCallback
	ldr r0, [r8, #0x14]
	cmp r0, #1
	beq _020CD09C
	mov r5, #0
	mov r1, r5
	mov r0, #2
	bl DWCi_NdSetError
	mov r0, r4
	bl OS_UnlockMutex
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CD09C:
	mov r1, #2
	mov r0, r4
	str r1, [r8, #0x14]
	bl OS_UnlockMutex
	mov r9, #0
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r9
	bl DWCi_NdGetFileAsync
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r4
	bl OS_LockMutex
	mov r1, #1
	mov r0, r4
	str r1, [r8, #0x14]
	bl OS_UnlockMutex
	mov r0, r9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CD0F0: .word dwcnd_s_dwcnd_mutexState
_020CD0F4: .word dwcnd_s_userCallback
	arm_func_end DWC_NdGetFileAsync

	arm_func_start DWC_NdCancelAsync
DWC_NdCancelAsync: ; 0x020CD0F8
	stmfd sp!, {r4, lr}
	bl DWCi_IsError
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r4, _020CD150 ; =dwcnd_s_dwcnd_mutexState
	mov r0, r4
	bl OS_LockMutex
	ldr r0, _020CD154 ; =dwcnd_s_userCallback
	ldr r0, [r0, #0x14]
	cmp r0, #2
	mov r0, r4
	beq _020CD138
	bl OS_UnlockMutex
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020CD138:
	bl OS_UnlockMutex
	bl DWCi_NdCancelAsync
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
_020CD150: .word dwcnd_s_dwcnd_mutexState
_020CD154: .word dwcnd_s_userCallback
	arm_func_end DWC_NdCancelAsync

	arm_func_start DWC_NdGetProgress
DWC_NdGetProgress: ; 0x020CD158
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl DWCi_IsError
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r4, _020CD1B4 ; =dwcnd_s_dwcnd_mutexState
	mov r0, r4
	bl OS_LockMutex
	ldr r0, _020CD1B8 ; =dwcnd_s_userCallback
	ldr r0, [r0, #0x14]
	cmp r0, #2
	mov r0, r4
	beq _020CD1A0
	bl OS_UnlockMutex
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020CD1A0:
	bl OS_UnlockMutex
	mov r0, r6
	mov r1, r5
	bl DWCi_NdGetProgress
	ldmfd sp!, {r4, r5, r6, pc}
_020CD1B4: .word dwcnd_s_dwcnd_mutexState
_020CD1B8: .word dwcnd_s_userCallback
	arm_func_end DWC_NdGetProgress

	arm_func_start DWCi_Ndi_freeAttr
DWCi_Ndi_freeAttr: ; 0x020CD1BC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	ldr r6, _020CD1F8 ; =DWCi_Ndi_dlattr
	ldr r4, _020CD1FC ; =DWCi_Ndi_dlcallback
	mov r5, r7
_020CD1D0:
	ldr r0, [r6, r7, lsl #2]
	cmp r0, #0
	beq _020CD1E8
	ldr r1, [r4, #0x14]
	blx r1
	str r5, [r6, r7, lsl #2]
_020CD1E8:
	add r7, r7, #1
	cmp r7, #3
	blt _020CD1D0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CD1F8: .word DWCi_Ndi_dlattr
_020CD1FC: .word DWCi_Ndi_dlcallback
	arm_func_end DWCi_Ndi_freeAttr

	arm_func_start dwcind_setAttr
dwcind_setAttr: ; 0x020CD200
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	ldrsb r1, [r6]
	mov r7, r0
	cmp r1, #0
	beq _020CD2C4
	mov r0, r6
	bl DWCi_Ndi_strlen
	cmp r0, #0xa
	ble _020CD240
	mov r4, #0
	mov r1, r4
	mov r0, #5
	bl DWCi_NdSetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CD240:
	mov r0, r6
	bl DWCi_Ndi_strlen
	mov r5, r0
	cmp r5, #0xa
	ble _020CD26C
	mov r4, #0
	mov r1, r4
	mov r0, #5
	bl DWCi_NdSetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CD26C:
	bl DWCi_Ndi_getEncodeLenBASE64
	ldr r1, _020CD2CC ; =DWCi_Ndi_dlcallback
	add r0, r0, #1
	ldr r2, [r1, #4]
	mov r1, #4
	blx r2
	ldr r4, _020CD2D0 ; =DWCi_Ndi_dlattr
	cmp r0, #0
	str r0, [r4, r7, lsl #2]
	bne _020CD2AC
	mov r4, #0
	mov r1, r4
	mov r0, #1
	bl DWCi_NdSetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CD2AC:
	mov r1, r6
	mov r2, r5
	bl DWCi_Ndi_encodeBASE64
	ldr r1, [r4, r7, lsl #2]
	mov r2, #0
	strb r2, [r1, r0]
_020CD2C4:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CD2CC: .word DWCi_Ndi_dlcallback
_020CD2D0: .word DWCi_Ndi_dlattr
	arm_func_end dwcind_setAttr

	arm_func_start DWCi_NdSetAttr
DWCi_NdSetAttr: ; 0x020CD2D4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	mov r5, r2
	bl DWCi_Ndi_lockGlobal
	bl DWCi_Ndi_freeAttr
	mov r1, r4
	mov r0, #0
	bl dwcind_setAttr
	cmp r0, #0
	beq _020CD338
	mov r4, #1
	mov r0, r4
	mov r1, r6
	bl dwcind_setAttr
	cmp r0, #0
	beq _020CD338
	mov r1, r5
	mov r0, #2
	bl dwcind_setAttr
	cmp r0, #0
	beq _020CD338
	bl DWCi_Ndi_unlockGlobal
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_020CD338:
	bl DWCi_Ndi_freeAttr
	bl DWCi_Ndi_unlockGlobal
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DWCi_NdSetAttr

	arm_func_start dwcind_getNchar
dwcind_getNchar: ; 0x020CD348
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov lr, r4
	cmp r2, #0
	ble _020CD384
	mov r3, r4
_020CD360:
	ldrsb r12, [r1]
	add lr, lr, #1
	cmp r12, #0
	strneb r12, [r0], #1
	addne r4, r4, #1
	addne r1, r1, #1
	streqb r3, [r0], #1
	cmp lr, r2
	blt _020CD360
_020CD384:
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end dwcind_getNchar

	arm_func_start dwcind_decodeChar
dwcind_decodeChar: ; 0x020CD38C
	cmp r0, #0x41
	blo _020CD3A0
	cmp r0, #0x5a
	subls r0, r0, #0x41
	bxls lr
_020CD3A0:
	cmp r0, #0x61
	blo _020CD3B4
	cmp r0, #0x7a
	subls r0, r0, #0x47
	bxls lr
_020CD3B4:
	cmp r0, #0x30
	blo _020CD3C8
	cmp r0, #0x39
	addls r0, r0, #4
	bxls lr
_020CD3C8:
	cmp r0, #0x2e
	moveq r0, #0x3e
	bxeq lr
	cmp r0, #0x2d
	moveq r0, #0x3f
	mvnne r0, #0
	bx lr
	arm_func_end dwcind_decodeChar

	arm_func_start DWCi_Ndi_getDecodeLenBASE64
DWCi_Ndi_getDecodeLenBASE64: ; 0x020CD3E4
	mov r0, r0, asr #2
	add r0, r0, r0, lsl #1
	bx lr
	arm_func_end DWCi_Ndi_getDecodeLenBASE64

	arm_func_start DWCi_Ndi_getEncodeLenBASE64
DWCi_Ndi_getEncodeLenBASE64: ; 0x020CD3F0
	ldr r1, _020CD408 ; =0x55555556
	add r2, r0, #2
	smull r0, r3, r1, r2
	add r3, r3, r2, lsr #31
	mov r0, r3, lsl #2
	bx lr
_020CD408: .word 0x55555556
	arm_func_end DWCi_Ndi_getEncodeLenBASE64

	arm_func_start DWCi_Ndi_encodeBASE64
DWCi_Ndi_encodeBASE64: ; 0x020CD40C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r7, r2
	mov r8, r1
	mov r9, r0
	cmp r7, #3
	movgt r2, #3
	mov r1, r8
	add r0, sp, #0
	mov r6, #0
	bl dwcind_getNchar
	cmp r0, #0
	ble _020CD4F0
	mov r5, #0
	ldr r10, _020CD500 ; =dwcind_szBASE64
	mov r4, r5
	mov r11, #0x2a
_020CD44C:
	cmp r7, #3
	strltb r5, [sp, #2]
	cmp r7, #2
	strltb r4, [sp, #1]
	ldrb r1, [sp, #2]
	ldrb r2, [sp]
	ldrb r3, [sp, #1]
	mov lr, r1, asr #6
	mov r12, r2, asr #2
	orr lr, lr, r3, lsl #2
	mov r3, r3, asr #4
	and r12, r12, #0xff
	orr r2, r3, r2, lsl #4
	ldrsb r12, [r10, r12]
	and r2, r2, #0x3f
	ldrsb r2, [r10, r2]
	strb r12, [r9]
	and r12, lr, #0x3f
	cmp r0, #1
	strb r2, [r9, #1]
	ldrgtsb r2, [r10, r12]
	and r1, r1, #0x3f
	add r8, r8, r0
	movle r2, r11
	cmp r0, #2
	ldrgtsb r1, [r10, r1]
	strb r2, [r9, #2]
	add r6, r6, #4
	movle r1, #0x2a
	strb r1, [r9, #3]
	add r9, r9, #4
	subs r7, r7, r0
	beq _020CD4F0
	mov r2, #3
	cmp r7, #3
	movle r2, r7
	add r0, sp, #0
	mov r1, r8
	bl dwcind_getNchar
	cmp r0, #0
	bgt _020CD44C
_020CD4F0:
	mov r1, #0
	mov r0, r6
	strb r1, [r9]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CD500: .word dwcind_szBASE64
	arm_func_end DWCi_Ndi_encodeBASE64

	arm_func_start DWCi_Ndi_decodeBASE64
DWCi_Ndi_decodeBASE64: ; 0x020CD504
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	mov r9, r0
	mov r7, r2
	add r0, sp, #3
	mov r6, #0
	mov r2, #4
	mov r8, r1
	bl dwcind_getNchar
	mov r5, r0
	mov r4, r6
	b _020CD61C
_020CD534:
	ldrb r0, [sp, #3]
	mov r1, #0
	strb r1, [sp]
	strb r1, [sp, #1]
	strb r1, [sp, #2]
	bl dwcind_decodeChar
	movs r4, r0
	bmi _020CD5C8
	ldrb r0, [sp, #4]
	mov r1, r4, lsl #2
	strb r1, [sp]
	bl dwcind_decodeChar
	movs r4, r0
	bmi _020CD5C8
	ldrsb r2, [sp]
	ldrb r0, [sp, #5]
	mov r1, r4, lsl #0x14
	orr r2, r2, r1, asr #24
	mov r1, r4, lsl #4
	strb r2, [sp]
	strb r1, [sp, #1]
	bl dwcind_decodeChar
	movs r4, r0
	bmi _020CD5C8
	ldrsb r2, [sp, #1]
	mov r1, r4, lsl #0x16
	ldrb r0, [sp, #6]
	orr r2, r2, r1, asr #24
	mov r1, r4, lsl #6
	strb r1, [sp, #2]
	strb r2, [sp, #1]
	bl dwcind_decodeChar
	movs r4, r0
	ldrplsb r1, [sp, #2]
	movpl r0, r4, lsl #0x18
	orrpl r0, r1, r0, asr #24
	strplb r0, [sp, #2]
_020CD5C8:
	sub r2, r5, #1
	cmp r2, #0
	mov r3, #0
	ble _020CD5F0
	add r1, sp, #0
_020CD5DC:
	ldrsb r0, [r1, r3]
	add r3, r3, #1
	cmp r3, r2
	strb r0, [r9], #1
	blt _020CD5DC
_020CD5F0:
	sub r0, r5, #1
	sub r7, r7, #4
	cmp r7, #0
	add r8, r8, r5
	add r6, r6, r0
	ble _020CD62C
	add r0, sp, #3
	mov r1, r8
	mov r2, #4
	bl dwcind_getNchar
	mov r5, r0
_020CD61C:
	cmp r5, #0
	ble _020CD62C
	cmp r4, #0
	bge _020CD534
_020CD62C:
	mov r1, #0
	mov r0, r6
	strb r1, [r9]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end DWCi_Ndi_decodeBASE64

	arm_func_start dwcind_strAlloc
dwcind_strAlloc: ; 0x020CD640
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl DWCi_Ndi_strlen
	ldr r1, _020CD688 ; =DWCi_Ndi_dlcallback
	mov r4, r0
	ldr r2, [r1, #4]
	add r0, r4, #1
	mov r1, #4
	blx r2
	movs r5, r0
	beq _020CD680
	mov r1, r6
	mov r2, r4
	bl DWCi_Ndi_memcpy
	mov r0, #0
	strb r0, [r5, r4]
_020CD680:
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020CD688: .word DWCi_Ndi_dlcallback
	arm_func_end dwcind_strAlloc

	arm_func_start DWCi_NdStartup
DWCi_NdStartup: ; 0x020CD68C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r6, _020CD80C ; =DWCi_Ndi_dlcallback
	mov r5, r0
	mov r4, r1
	str r5, [r6, #4]
	ldr r0, [sp, #0x28]
	str r4, [r6, #0x14]
	str r0, [r6]
	mov r9, #0
	str r9, [r6, #0x3c]
	str r9, [r6, #0x40]
	str r9, [r6, #0x44]
	str r9, [r6, #0xc]
	str r9, [r6, #0x10]
	str r9, [r6, #0x18]
	ldr r0, _020CD810 ; =DWCi_Ndi_macaddr
	mov r8, r2
	mov r7, r3
	str r9, [r6, #0x1c]
	bl DWCi_Ndi_getMacAddress
	ldr r0, _020CD814 ; =DWCi_Ndi_userAgent
	bl DWCi_Ndi_getUserAgent
	mov r0, r8
	bl dwcind_strAlloc
	str r0, [r6, #0x1c]
	cmp r0, #0
	beq _020CD7C4
	mov r0, r7
	bl dwcind_strAlloc
	str r0, [r6, #0x18]
	cmp r0, #0
	beq _020CD7C4
	ldr r8, _020CD818 ; =DWCi_Ndi_dwcgamecd
	ldr r1, [sp, #0x20]
	mov r0, r8
	mov r2, #4
	bl DWCi_Ndi_encodeBASE64
	ldr r7, _020CD81C ; =DWCi_Ndi_password
	strb r9, [r8, r0]
	ldr r1, [sp, #0x24]
	mov r0, r7
	mov r2, #0x10
	bl DWCi_Ndi_encodeBASE64
	strb r9, [r7, r0]
	bl DWCi_Ndi_initHttpCallback
	cmp r0, #0
	beq _020CD790
	bl DWCi_Ndi_initLockGlobal
	cmp r0, #0
	beq _020CD790
	mov r7, #0x11
	mov r0, r5
	mov r1, r4
	mov r2, r7
	bl NHTTP_Startup
	sub r1, r7, #0x12
	cmp r0, r1
	beq _020CD78C
	ldr r0, _020CD820 ; =DWCi_Ndi_strApinfo
	bl DWCi_Ndi_getApInfo
	str r0, [r6, #0xc]
	mov r0, #1
	str r0, [r6, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CD78C:
	bl DWCi_Ndi_exitLockGlobal
_020CD790:
	ldr r4, _020CD80C ; =DWCi_Ndi_dlcallback
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x14]
	blx r1
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	blx r1
	mov r4, #0
	mov r1, r4
	mov r0, #8
	bl DWCi_NdSetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CD7C4:
	ldr r1, _020CD80C ; =DWCi_Ndi_dlcallback
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _020CD7DC
	ldr r1, [r1, #0x14]
	blx r1
_020CD7DC:
	ldr r1, _020CD80C ; =DWCi_Ndi_dlcallback
	ldr r0, [r1, #0x1c]
	cmp r0, #0
	beq _020CD7F4
	ldr r1, [r1, #0x14]
	blx r1
_020CD7F4:
	mov r4, #0
	mov r1, r4
	mov r0, #1
	bl DWCi_NdSetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CD80C: .word DWCi_Ndi_dlcallback
_020CD810: .word DWCi_Ndi_macaddr
_020CD814: .word DWCi_Ndi_userAgent
_020CD818: .word DWCi_Ndi_dwcgamecd
_020CD81C: .word DWCi_Ndi_password
_020CD820: .word DWCi_Ndi_strApinfo
	arm_func_end DWCi_NdStartup

	arm_func_start dwcind_nhttpCleanupCallback
dwcind_nhttpCleanupCallback: ; 0x020CD824
	stmfd sp!, {r4, lr}
	bl DWCi_Ndi_freeAttr
	bl DWCi_Ndi_exitLockGlobal
	bl DWCi_Ndi_exitHttpCallback
	ldr r4, _020CD85C ; =DWCi_Ndi_dlcallback
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x14]
	blx r1
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	blx r1
	ldr r0, [r4, #0x24]
	blx r0
	ldmfd sp!, {r4, pc}
_020CD85C: .word DWCi_Ndi_dlcallback
	arm_func_end dwcind_nhttpCleanupCallback

	arm_func_start DWCi_NdCleanupAsync
DWCi_NdCleanupAsync: ; 0x020CD860
	stmfd sp!, {r3, lr}
	ldr r1, _020CD888 ; =DWCi_Ndi_dlcallback
	mov r2, #0
	str r2, [r1, #8]
	str r0, [r1, #0x24]
	ldr r0, [r1, #0x10]
	bl DWCi_NdCleanupConnectionHandle
	ldr r0, _020CD88C ; =dwcind_nhttpCleanupCallback
	bl NHTTP_CleanupAsync
	ldmfd sp!, {r3, pc}
_020CD888: .word DWCi_Ndi_dlcallback
_020CD88C: .word dwcind_nhttpCleanupCallback
	arm_func_end DWCi_NdCleanupAsync

	arm_func_start DWCi_NdCleanupConnectionHandle
DWCi_NdCleanupConnectionHandle: ; 0x020CD890
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, lr}
	mov r4, #1
	bl DWCi_Ndi_lockGlobal
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _020CD8CC
	ldr r0, [sp, #8]
	bl NHTTP_GetConnectionStatus
	ldr r0, [sp, #8]
	bl NHTTP_DeleteConnection
	cmp r0, #0
	moveq r0, #0
	movne r4, #0
	streq r0, [sp, #8]
_020CD8CC:
	bl DWCi_Ndi_unlockGlobal
	mov r0, r4
	ldmfd sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end DWCi_NdCleanupConnectionHandle

	arm_func_start DWCi_NdSetError
DWCi_NdSetError: ; 0x020CD8E0
	stmfd sp!, {r3, lr}
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020CD988
_020CD8F0: ; jump table
	ldmfd sp!, {r3, pc} ; case 0
	b _020CD914 ; case 1
	b _020CD978 ; case 2
	b _020CD924 ; case 3
	b _020CD934 ; case 4
	b _020CD958 ; case 5
	ldmfd sp!, {r3, pc} ; case 6
	b _020CD944 ; case 7
	b _020CD968 ; case 8
_020CD914:
	ldr r1, _020CD998 ; =0xFFFF86E7
	mov r0, #9
	bl DWCi_SetError
	ldmfd sp!, {r3, pc}
_020CD924:
	ldr r1, _020CD99C ; =0xFFFF86D4
	mov r0, #0xe
	bl DWCi_SetError
	ldmfd sp!, {r3, pc}
_020CD934:
	ldr r1, _020CD9A0 ; =0xFFFF86C0
	mov r0, #0xd
	bl DWCi_SetError
	ldmfd sp!, {r3, pc}
_020CD944:
	ldr r2, _020CD9A4 ; =0xFFFF86E8
	mov r0, #0xd
	sub r1, r2, r1
	bl DWCi_SetError
	ldmfd sp!, {r3, pc}
_020CD958:
	ldr r1, _020CD9A0 ; =0xFFFF86C0
	mov r0, #0xd
	bl DWCi_SetError
	ldmfd sp!, {r3, pc}
_020CD968:
	ldr r1, _020CD9A8 ; =0xFFFF86DF
	mov r0, #9
	bl DWCi_SetError
	ldmfd sp!, {r3, pc}
_020CD978:
	ldr r1, _020CD9AC ; =0xFFFF86DE
	mov r0, #0xd
	bl DWCi_SetError
	ldmfd sp!, {r3, pc}
_020CD988:
	ldr r1, _020CD9A8 ; =0xFFFF86DF
	mov r0, #9
	bl DWCi_SetError
	ldmfd sp!, {r3, pc}
_020CD998: .word 0xFFFF86E7
_020CD99C: .word 0xFFFF86D4
_020CD9A0: .word 0xFFFF86C0
_020CD9A4: .word 0xFFFF86E8
_020CD9A8: .word 0xFFFF86DF
_020CD9AC: .word 0xFFFF86DE
	arm_func_end DWCi_NdSetError

	arm_func_start DWCi_NdCancelAsync
DWCi_NdCancelAsync: ; 0x020CD9B0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r4, _020CDA44 ; =DWCi_Ndi_dlcallback
	ldr r0, [r4, #8]
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r5, #0
	add r0, sp, #4
	add r1, sp, #0
	str r5, [sp, #4]
	str r5, [sp]
	bl DWC_NdGetProgress
	ldr r1, [sp, #4]
	ldr r0, [sp]
	cmp r1, r0
	addeq sp, sp, #8
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl DWCi_Ndi_prepareHttpCallback
	cmp r0, #0
	bne _020CDA34
	bl DWCi_Ndi_lockGlobal
	ldr r4, [r4, #0x10]
	bl DWCi_Ndi_unlockGlobal
	mov r0, r4
	bl NHTTP_CancelConnection
	cmp r0, #0
	moveq r5, #1
	add sp, sp, #8
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020CDA34:
	bl DWCi_Ndi_unprepareHttpCallback
	mov r0, r5
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020CDA44: .word DWCi_Ndi_dlcallback
	arm_func_end DWCi_NdCancelAsync

	arm_func_start DWCi_Ndi_getApInfo
DWCi_Ndi_getApInfo: ; 0x020CDA48
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	ldr r5, _020CDB34 ; =0x020E3DFC
	add r3, sp, #0
	mov r4, r0
	mov r2, #6
_020CDA60:
	ldrb r0, [r5, #1]
	ldrb r1, [r5], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020CDA60
	ldrb r1, [r5]
	ldr r5, _020CDB38 ; =_ZZ18DWCi_Ndi_getApInfoPcE2ap
	mov r0, r5
	strb r1, [r3]
	bl DWC_GetApInfo
	cmp r0, #0
	beq _020CDB28
	ldr r1, [r5]
	cmp r1, #0
	blt _020CDAB0
	cmp r1, #0xa
	addlt r0, r1, #0x30
	strltb r0, [sp, #1]
	blt _020CDAC8
_020CDAB0:
	cmp r1, #0xa
	blt _020CDAC8
	cmp r1, #0x64
	bge _020CDAC8
	add r0, sp, #0
	bl DWCi_Ndi_intToStr
_020CDAC8:
	ldr r0, _020CDB38 ; =_ZZ18DWCi_Ndi_getApInfoPcE2ap
	ldr r0, [r0]
	cmp r0, #4
	beq _020CDAE0
	cmp r0, #8
	bne _020CDB0C
_020CDAE0:
	ldr r0, _020CDB38 ; =_ZZ18DWCi_Ndi_getApInfoPcE2ap
	ldr r0, [r0, #4]
	cmp r0, #0
	blt _020CDAFC
	cmp r0, #0xa
	addlt r0, r0, #0x30
	strltb r0, [sp, #3]
_020CDAFC:
	ldr r1, _020CDB3C ; =0x020E91A0
	add r0, sp, #4
	mov r2, #9
	bl DWCi_Ndi_memcpy
_020CDB0C:
	add r1, sp, #0
	mov r0, r4
	mov r2, #0xd
	bl DWCi_Ndi_encodeBASE64
	add sp, sp, #0x10
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020CDB28:
	mov r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_020CDB34: .word ov15_020E3DFC
_020CDB38: .word _ZZ18DWCi_Ndi_getApInfoPcE2ap
_020CDB3C: .word ov15_020E91A0
	arm_func_end DWCi_Ndi_getApInfo

	arm_func_start DWCi_Ndi_getDSdesc
DWCi_Ndi_getDSdesc: ; 0x020CDB40
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x24
	add r4, sp, #0x10
	mov r8, r0
	mov r7, r1
	mov r0, r4
	mov r1, #0x14
	bl DWCi_Ndi_memclr
	mov r0, r4
	bl DWCi_BM_GetWiFiInfo
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x10]
	cmp r2, #0
	cmpeq r1, #0
	mov r6, #0
	addeq sp, sp, #0x24
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r5, sp, #0
	mov r4, #0xd
	mov r0, r5
	mov r3, r4
	bl DWCi_Ndi_intToStrFigure
	cmp r0, #0
	addlt sp, sp, #0x24
	movlt r0, r6
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl DWCi_Ndi_encodeBASE64
	ldr r1, _020CDBD8 ; =0x02FFFE0C
	mov r0, r8
	mov r2, #4
	bl DWCi_Ndi_encodeBASE64
	mov r0, #1
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020CDBD8: .word 0x02FFFE0C
	arm_func_end DWCi_Ndi_getDSdesc

	arm_func_start DWCi_Ndi_getUserAgent
DWCi_Ndi_getUserAgent: ; 0x020CDBDC
	stmfd sp!, {r3, lr}
	ldr r2, _020CDBFC ; =0x020E57E8
	mov r12, #3
	mov r1, #0x21
	mov r3, #5
	str r12, [sp]
	bl OS_SNPrintf
	ldmfd sp!, {r3, pc}
_020CDBFC: .word ov15_020E57E8
	arm_func_end DWCi_Ndi_getUserAgent

	arm_func_start dwcind_req_callback
dwcind_req_callback: ; 0x020CDC00
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r8, r0
	mov r10, r1
	mov r4, r2
	mov r11, #0
	mvn r7, #0
	bl NHTTP_GetUserParam
	str r0, [sp, #4]
	ldmia r0, {r5, r6}
	ldr r0, [r0, #8]
	cmp r10, #2
	str r0, [sp]
	beq _020CDE44
	cmp r10, #3
	beq _020CDE70
	cmp r10, #4
	bne _020CDE70
	mov r0, r8
	bl NHTTP_GetConnectionError
	cmp r0, #8
	moveq r9, #6
	beq _020CDE0C
	ldr r1, _020CDE7C ; =0x020E5800
	add r2, sp, #0x10
	mov r0, r8
	bl NHTTP_GetHeaderField
	cmp r0, #3
	movne r9, #3
	bne _020CDE0C
	mov r4, #3
	ldr r0, [sp, #0x10]
	mov r1, r4
	bl DWCi_Ndi_strToInt
	ldr r1, _020CDE80 ; =0x0000012E
	cmp r0, r1
	bne _020CDDA0
	add r1, sp, #0xc
	add r2, sp, #0x14
	mov r0, r8
	mov r10, r11
	bl NHTTP_GetBodyBuffer
	movs r8, r0
	movmi r9, r4
	bmi _020CDE0C
	mov r9, r10
	cmp r8, #0
	ble _020CDD90
	ldr r4, _020CDE84 ; =0x020E5810
	mov r11, #8
_020CDCC8:
	mov r2, r9
	ldr r3, [sp, #0xc]
	b _020CDCD8
_020CDCD4:
	add r9, r9, #1
_020CDCD8:
	ldrsb r0, [r3, r9]
	cmp r0, #0x3d
	beq _020CDCEC
	cmp r9, r8
	blt _020CDCD4
_020CDCEC:
	sub r0, r9, r2
	cmp r0, #8
	add r9, r9, #1
	bne _020CDD18
	add r0, r3, r2
	mov r1, r4
	mov r2, r11
	bl DWCi_Ndi_strncmp
	mov r10, #1
	cmp r0, #0
	movne r10, #0
_020CDD18:
	mov r1, r9
	ldr r0, [sp, #0xc]
	b _020CDD28
_020CDD24:
	add r9, r9, #1
_020CDD28:
	ldrsb r2, [r0, r9]
	cmp r2, #0x26
	cmpne r2, #0xd
	cmpne r2, #0
	beq _020CDD44
	cmp r9, r8
	blt _020CDD24
_020CDD44:
	cmp r10, #0
	sub r2, r9, r1
	add r9, r9, #1
	beq _020CDD88
	cmp r2, #4
	mov r4, #0
	bne _020CDD90
	add r7, sp, #8
	add r1, r0, r1
	mov r0, r7
	bl DWCi_Ndi_decodeBASE64
	mov r1, r0
	mov r0, r7
	strb r4, [r7, r1]
	bl DWCi_Ndi_strToInt
	mov r7, r0
	b _020CDD90
_020CDD88:
	cmp r9, r8
	blt _020CDCC8
_020CDD90:
	cmp r7, #0
	movlt r9, #3
	movge r9, #7
	b _020CDE0C
_020CDDA0:
	cmp r0, #0
	ble _020CDDB0
	cmp r0, #0xc8
	beq _020CDDB8
_020CDDB0:
	mov r9, #3
	b _020CDE0C
_020CDDB8:
	cmp r5, #1
	beq _020CDDD4
	cmp r5, #2
	beq _020CDDE4
	cmp r5, #3
	beq _020CDDF4
	b _020CDE0C
_020CDDD4:
	ldr r1, [sp, #4]
	mov r0, r8
	bl DWCi_Ndi_response_count
	b _020CDE00
_020CDDE4:
	ldr r1, [sp, #4]
	mov r0, r8
	bl DWCi_Ndi_response_list
	b _020CDE00
_020CDDF4:
	ldr r1, [sp, #4]
	mov r0, r8
	bl DWCi_Ndi_response_contents
_020CDE00:
	cmp r0, #0
	movne r4, r11
	mov r9, r4
_020CDE0C:
	ldr r0, [sp, #4]
	bl dwcind_freeHttpParam
	bl DWCi_Ndi_unprepareHttpCallback
	cmp r6, #0
	beq _020CDE30
	mov r0, r5
	mov r1, r9
	mov r2, r7
	blx r6
_020CDE30:
	ldr r0, [sp]
	cmp r0, #0
	beq _020CDE70
	bl DWCi_Ndi_kickThread
	b _020CDE70
_020CDE44:
	mov r8, #4
	mov r0, r8
	mov r1, r7
	str r11, [r4, #8]
	bl DWCi_NdSetError
	cmp r6, #0
	beq _020CDE70
	mov r0, r5
	mov r1, r8
	mov r2, r7
	blx r6
_020CDE70:
	mov r0, #0
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CDE7C: .word ov15_020E5800
_020CDE80: .word 0x0000012E
_020CDE84: .word ov15_020E5810
	arm_func_end dwcind_req_callback

	arm_func_start dwcind_freeHttpParam
dwcind_freeHttpParam: ; 0x020CDE88
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _020CDF2C ; =DWCi_Ndi_dlcallback
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4]
	cmp r0, #1
	beq _020CDF1C
	cmp r0, #2
	beq _020CDEB8
	cmp r0, #3
	beq _020CDF08
	b _020CDF1C
_020CDEB8:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _020CDED4
	ldr r1, [r5, #0x14]
	blx r1
	mov r0, #0
	str r0, [r4, #0x1c]
_020CDED4:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _020CDEF0
	ldr r1, [r5, #0x14]
	blx r1
	mov r0, #0
	str r0, [r4, #0x18]
_020CDEF0:
	ldr r0, [r4, #0x14]
	ldr r1, [r5, #0x14]
	blx r1
	mov r0, #0
	str r0, [r4, #0x14]
	b _020CDF1C
_020CDF08:
	ldr r0, [r4, #0xc]
	ldr r1, [r5, #0x14]
	blx r1
	mov r0, #0
	str r0, [r4, #0xc]
_020CDF1C:
	ldr r1, [r5, #0x14]
	mov r0, r4
	blx r1
	ldmfd sp!, {r3, r4, r5, pc}
_020CDF2C: .word DWCi_Ndi_dlcallback
	arm_func_end dwcind_freeHttpParam

	arm_func_start dwcind_freeHttp
dwcind_freeHttp: ; 0x020CDF30
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	bl DWCi_NdCleanupConnectionHandle
	bl DWCi_Ndi_unprepareHttpCallback
	mov r0, r4
	bl dwcind_freeHttpParam
	ldmfd sp!, {r4, pc}
	arm_func_end dwcind_freeHttp

	arm_func_start dwcind_setupHttp
dwcind_setupHttp: ; 0x020CDF50
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x108
	mov r10, r0
	mov r9, r1
	ldr r0, _020CE3B8 ; =DWCi_Ndi_rhGamecd
	ldr r1, _020CE3BC ; =DWCi_Ndi_userid
	mov r11, r2
	mov r7, r3
	ldr r8, [sp, #0x134]
	ldr r4, _020CE3C0 ; =DWCi_Ndi_dlcallback
	bl DWCi_Ndi_getDSdesc
	cmp r0, #0
	bne _020CDFA0
	mov r4, #0
	mov r1, r4
	mov r0, #8
	bl DWCi_NdSetError
	add sp, sp, #0x108
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CDFA0:
	ldr r2, [r4, #4]
	mov r0, #0x20
	mov r1, #4
	blx r2
	movs r6, r0
	bne _020CDFD4
	mov r4, #0
	mov r1, r4
	mov r0, #1
	bl DWCi_NdSetError
	add sp, sp, #0x108
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CDFD4:
	ldr r0, [r4]
	str r0, [r6, #4]
	mov r0, #0
	str r0, [r6, #8]
	bl DWCi_Ndi_prepareHttpCallback
	cmp r0, #0
	bne _020CE010
	mov r0, r6
	bl dwcind_freeHttpParam
	mov r1, #0
	mov r0, #2
	bl DWCi_NdSetError
	add sp, sp, #0x108
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE010:
	ldr r0, [r4, #0x10]
	bl DWCi_NdCleanupConnectionHandle
	cmp r0, #0
	addeq sp, sp, #0x108
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020CE3C4 ; =dwcind_req_callback
	mov r5, #1
	stmia sp, {r0, r6}
	ldr r0, [r4, #0x1c]
	ldr r3, [sp, #0x130]
	mov r1, r5
	mov r2, r7
	bl NHTTP_CreateConnection
	movs r7, r0
	bne _020CE074
	bl DWCi_Ndi_unprepareHttpCallback
	mov r0, r6
	bl dwcind_freeHttpParam
	mov r1, #0
	mov r0, #3
	bl DWCi_NdSetError
	add sp, sp, #0x108
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE074:
	ldr r1, _020CE3C8 ; =dwcind_ca_array
	str r6, [r10]
	mov r2, r5
	str r7, [r9]
	bl NHTTP_SetRootCA
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	mov r0, r7
	mov r1, #0
	bl NHTTP_SetVerifyOption
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	ldr r1, _020CE3CC ; =0x020E581C
	ldr r2, _020CE3D0 ; =DWCi_Ndi_userAgent
	mov r0, r7
	bl NHTTP_AddHeaderField
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	ldr r1, _020CE3D4 ; =0x020E5828
	ldr r2, _020CE3D8 ; =DWCi_Ndi_dwcgamecd
	mov r0, r7
	bl NHTTP_AddPostDataAscii
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	ldr r1, _020CE3DC ; =0x020E5830
	ldr r2, _020CE3B8 ; =DWCi_Ndi_rhGamecd
	mov r0, r7
	bl NHTTP_AddPostDataAscii
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	ldr r1, _020CE3E0 ; =0x020E583C
	ldr r2, _020CE3E4 ; =DWCi_Ndi_password
	mov r0, r7
	bl NHTTP_AddPostDataAscii
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	ldr r2, [r4, #0x18]
	ldr r1, _020CE3E8 ; =0x020E5844
	mov r0, r7
	bl NHTTP_AddPostDataAscii
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	ldr r1, _020CE3EC ; =0x020E584C
	ldr r2, _020CE3BC ; =DWCi_Ndi_userid
	mov r0, r7
	mov r9, r4
	bl NHTTP_AddPostDataAscii
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	ldr r1, _020CE3F0 ; =0x020E5854
	ldr r2, _020CE3F4 ; =DWCi_Ndi_macaddr
	mov r0, r7
	bl NHTTP_AddPostDataAscii
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	ldr r1, _020CE3F8 ; =0x020E585C
	mov r0, r7
	mov r2, r11
	bl NHTTP_AddPostDataAscii
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	ldr r2, [r4, #0x3c]
	mov r4, #0
	cmp r2, #0
	beq _020CE1B8
	ldr r1, _020CE3FC ; =0x020E5864
	mov r0, r7
	bl NHTTP_AddPostDataAscii
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
_020CE1B8:
	ldr r2, [r9, #0x40]
	cmp r2, #0
	beq _020CE1D8
	ldr r1, _020CE400 ; =0x020E586C
	mov r0, r7
	bl NHTTP_AddPostDataAscii
	cmn r0, #1
	beq _020CE390
_020CE1D8:
	ldr r2, [r9, #0x44]
	cmp r2, #0
	beq _020CE1F8
	ldr r1, _020CE404 ; =0x020E5874
	mov r0, r7
	bl NHTTP_AddPostDataAscii
	cmn r0, #1
	beq _020CE390
_020CE1F8:
	ldr r0, [r9, #0xc]
	cmp r0, #0
	beq _020CE21C
	ldr r1, _020CE408 ; =0x020E587C
	ldr r2, _020CE40C ; =DWCi_Ndi_strApinfo
	mov r0, r7
	bl NHTTP_AddPostDataAscii
	cmn r0, #1
	beq _020CE390
_020CE21C:
	cmp r8, #0
	beq _020CE29C
	mov r0, r8
	bl DWCi_Ndi_strlen
	mov r5, r0
	cmp r5, #0x40
	ble _020CE25C
	mov r1, r4
	mov r0, #5
	bl DWCi_NdSetError
	mov r0, r6
	mov r1, r7
	bl dwcind_freeHttp
	add sp, sp, #0x108
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE25C:
	ldr r10, _020CE410 ; =DWCi_Ndi_optionaldata
	mov r4, #0x59
	mov r0, r10
	mov r1, r4
	bl DWCi_Ndi_memclr
	mov r0, r10
	mov r1, r8
	mov r2, r5
	bl DWCi_Ndi_encodeBASE64
	ldr r1, _020CE414 ; =0x020E5884
	mov r2, r10
	mov r0, r7
	bl NHTTP_AddPostDataAscii
	sub r1, r4, #0x5a
	cmp r0, r1
	beq _020CE390
_020CE29C:
	add r5, sp, #8
	mov r4, #0x80
	ldr r1, _020CE3D8 ; =DWCi_Ndi_dwcgamecd
	mov r0, r5
	mov r2, r4
	bl DWCi_Ndi_decodeBASE64
	ldr r1, _020CE3B8 ; =DWCi_Ndi_rhGamecd
	mov r0, r5
	mov r2, r4
	bl DWCi_Ndi_decodeBASE64
	ldr r1, _020CE3E4 ; =DWCi_Ndi_password
	mov r0, r5
	mov r2, r4
	bl DWCi_Ndi_decodeBASE64
	ldr r1, [r9, #0x18]
	mov r0, r5
	mov r2, r4
	bl DWCi_Ndi_decodeBASE64
	ldr r1, _020CE3BC ; =DWCi_Ndi_userid
	mov r0, r5
	mov r2, r4
	bl DWCi_Ndi_decodeBASE64
	ldr r1, _020CE3F4 ; =DWCi_Ndi_macaddr
	mov r0, r5
	mov r2, r4
	bl DWCi_Ndi_decodeBASE64
	mov r1, r11
	mov r0, r5
	mov r2, r4
	bl DWCi_Ndi_decodeBASE64
	ldr r1, _020CE40C ; =DWCi_Ndi_strApinfo
	mov r0, r5
	mov r2, r4
	bl DWCi_Ndi_decodeBASE64
	ldr r1, [r9, #0x3c]
	cmp r1, #0
	beq _020CE33C
	mov r0, r5
	mov r2, r4
	bl DWCi_Ndi_decodeBASE64
_020CE33C:
	ldr r1, [r9, #0x40]
	cmp r1, #0
	beq _020CE354
	add r0, sp, #8
	mov r2, #0x80
	bl DWCi_Ndi_decodeBASE64
_020CE354:
	ldr r1, [r9, #0x44]
	cmp r1, #0
	beq _020CE36C
	add r0, sp, #8
	mov r2, #0x80
	bl DWCi_Ndi_decodeBASE64
_020CE36C:
	cmp r8, #0
	beq _020CE384
	ldr r1, _020CE410 ; =DWCi_Ndi_optionaldata
	add r0, sp, #8
	mov r2, #0x80
	bl DWCi_Ndi_decodeBASE64
_020CE384:
	add sp, sp, #0x108
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE390:
	mov r0, r6
	mov r1, r7
	bl dwcind_freeHttp
	mov r4, #0
	mov r1, r4
	mov r0, #1
	bl DWCi_NdSetError
	mov r0, r4
	add sp, sp, #0x108
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE3B8: .word DWCi_Ndi_rhGamecd
_020CE3BC: .word DWCi_Ndi_userid
_020CE3C0: .word DWCi_Ndi_dlcallback
_020CE3C4: .word dwcind_req_callback
_020CE3C8: .word dwcind_ca_array
_020CE3CC: .word ov15_020E581C
_020CE3D0: .word DWCi_Ndi_userAgent
_020CE3D4: .word ov15_020E5828
_020CE3D8: .word DWCi_Ndi_dwcgamecd
_020CE3DC: .word ov15_020E5830
_020CE3E0: .word ov15_020E583C
_020CE3E4: .word DWCi_Ndi_password
_020CE3E8: .word ov15_020E5844
_020CE3EC: .word ov15_020E584C
_020CE3F0: .word ov15_020E5854
_020CE3F4: .word DWCi_Ndi_macaddr
_020CE3F8: .word ov15_020E585C
_020CE3FC: .word ov15_020E5864
_020CE400: .word ov15_020E586C
_020CE404: .word ov15_020E5874
_020CE408: .word ov15_020E587C
_020CE40C: .word DWCi_Ndi_strApinfo
_020CE410: .word DWCi_Ndi_optionaldata
_020CE414: .word ov15_020E5884
	arm_func_end dwcind_setupHttp

	arm_func_start dwcind_runHttp
dwcind_runHttp: ; 0x020CE418
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl DWCi_Ndi_lockGlobal
	mov r0, r4
	bl NHTTP_StartConnection
	cmp r0, #0
	beq _020CE450
	mov r4, #0
	mov r1, r4
	mov r0, #3
	bl DWCi_NdSetError
	bl DWCi_Ndi_unlockGlobal
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020CE450:
	ldr r0, _020CE464 ; =DWCi_Ndi_dlcallback
	str r4, [r0, #0x10]
	bl DWCi_Ndi_unlockGlobal
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020CE464: .word DWCi_Ndi_dlcallback
	arm_func_end dwcind_runHttp

	arm_func_start DWCi_NdGetFileListNumAsync
DWCi_NdGetFileListNumAsync: ; 0x020CE468
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r4, #0x80
	mov r6, r0
	str r4, [sp]
	mov r4, #0
	ldr r2, _020CE4DC ; =DWCiNd_action_count
	ldr r3, _020CE4E0 ; =dwcind_listnumRecvbuf
	add r0, sp, #0xc
	add r1, sp, #8
	str r4, [sp, #4]
	bl dwcind_setupHttp
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [sp, #0xc]
	mov r5, #1
	str r5, [r0]
	ldr r0, [sp, #0xc]
	str r6, [r0, #0xc]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl dwcind_runHttp
	cmp r0, #0
	moveq r5, r4
	mov r0, r5
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_020CE4DC: .word DWCiNd_action_count
_020CE4E0: .word dwcind_listnumRecvbuf
	arm_func_end DWCi_NdGetFileListNumAsync

	arm_func_start DWCi_NdGetFileListAsync
DWCi_NdGetFileListAsync: ; 0x020CE4E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r10, r2
	ldr r4, _020CE770 ; =DWCi_Ndi_dlcallback
	mov r6, r10, lsl #8
	cmp r6, #0x80
	movlt r6, #0x80
	mov r11, r0
	mov r9, #4
	mov r5, r1
	ldr r2, [r4, #4]
	mov r0, r6
	mov r1, r9
	blx r2
	movs r7, r0
	bne _020CE540
	mov r4, #0
	mov r1, r4
	mov r0, #1
	bl DWCi_NdSetError
	add sp, sp, #0x20
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE540:
	mov r1, r5
	add r0, sp, #0x14
	bl DWCi_Ndi_intToStr
	mov r5, r0
	bl DWCi_Ndi_getEncodeLenBASE64
	ldr r2, [r4, #4]
	mov r1, r9
	add r0, r0, #1
	blx r2
	movs r8, r0
	bne _020CE594
	ldr r1, [r4, #0x14]
	mov r0, r7
	blx r1
	mov r4, #0
	mov r1, r4
	mov r0, #1
	bl DWCi_NdSetError
	add sp, sp, #0x20
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE594:
	add r1, sp, #0x14
	mov r2, r5
	bl DWCi_Ndi_encodeBASE64
	mov r5, #0
	strb r5, [r8, r0]
	add r0, sp, #0x14
	mov r1, r10
	bl DWCi_Ndi_intToStr
	str r0, [sp, #8]
	bl DWCi_Ndi_getEncodeLenBASE64
	ldr r2, [r4, #4]
	mov r1, r9
	add r0, r0, #1
	blx r2
	movs r9, r0
	bne _020CE604
	ldr r1, [r4, #0x14]
	mov r0, r8
	blx r1
	ldr r1, [r4, #0x14]
	mov r0, r7
	blx r1
	mov r1, r5
	mov r0, #1
	bl DWCi_NdSetError
	add sp, sp, #0x20
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE604:
	ldr r2, [sp, #8]
	add r1, sp, #0x14
	bl DWCi_Ndi_encodeBASE64
	strb r5, [r9, r0]
	str r6, [sp]
	ldr r2, _020CE774 ; =DWCiNd_action_list
	add r0, sp, #0x10
	add r1, sp, #0xc
	mov r3, r7
	str r5, [sp, #4]
	bl dwcind_setupHttp
	cmp r0, #0
	bne _020CE668
	ldr r1, [r4, #0x14]
	mov r0, r9
	blx r1
	ldr r1, [r4, #0x14]
	mov r0, r8
	blx r1
	ldr r1, [r4, #0x14]
	mov r0, r7
	blx r1
	add sp, sp, #0x20
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE668:
	ldr r0, [sp, #0xc]
	ldr r1, _020CE778 ; =0x020E5894
	mov r2, r8
	bl NHTTP_AddPostDataAscii
	sub r1, r5, #1
	cmp r0, r1
	beq _020CE720
	ldr r0, [sp, #0xc]
	ldr r1, _020CE77C ; =0x020E589C
	mov r2, r9
	bl NHTTP_AddPostDataAscii
	sub r1, r5, #1
	cmp r0, r1
	beq _020CE720
	ldr r0, [sp, #0x10]
	mov r1, #2
	str r1, [r0]
	ldr r0, [sp, #0x10]
	str r11, [r0, #0xc]
	ldr r0, [sp, #0x10]
	str r8, [r0, #0x18]
	ldr r0, [sp, #0x10]
	str r9, [r0, #0x1c]
	ldr r0, [sp, #0x10]
	str r10, [r0, #0x10]
	ldr r0, [sp, #0x10]
	str r7, [r0, #0x14]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	bl dwcind_runHttp
	cmp r0, #0
	addne sp, sp, #0x20
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r4, #0x14]
	mov r0, r9
	blx r1
	ldr r1, [r4, #0x14]
	mov r0, r8
	blx r1
	ldr r1, [r4, #0x14]
	mov r0, r7
	blx r1
	add sp, sp, #0x20
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE720:
	ldr r4, _020CE770 ; =DWCi_Ndi_dlcallback
	mov r0, r9
	ldr r1, [r4, #0x14]
	blx r1
	ldr r1, [r4, #0x14]
	mov r0, r8
	blx r1
	ldr r1, [r4, #0x14]
	mov r0, r7
	blx r1
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	bl dwcind_freeHttp
	mov r4, #0
	mov r1, r4
	mov r0, #1
	bl DWCi_NdSetError
	mov r0, r4
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE770: .word DWCi_Ndi_dlcallback
_020CE774: .word DWCiNd_action_list
_020CE778: .word ov15_020E5894
_020CE77C: .word ov15_020E589C
	arm_func_end DWCi_NdGetFileListAsync

	arm_func_start DWCi_NdGetFileAsync
DWCi_NdGetFileAsync: ; 0x020CE780
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	ldr r4, [r10, #0xac]
	mov r9, r1
	mov r8, r3
	cmp r2, r4
	mov r4, #0
	bhs _020CE7BC
	mov r1, r4
	mov r0, #5
	bl DWCi_NdSetError
	add sp, sp, #0x10
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE7BC:
	bl DWCi_Ndi_strlen
	mov r5, r0
	cmp r5, #0x20
	ble _020CE7E4
	mov r1, r4
	mov r0, #5
	bl DWCi_NdSetError
	add sp, sp, #0x10
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE7E4:
	cmp r5, #0
	movle r7, r4
	ble _020CE7F8
	bl DWCi_Ndi_getEncodeLenBASE64
	mov r7, r0
_020CE7F8:
	ldr r11, _020CE930 ; =DWCi_Ndi_dlcallback
	add r0, r7, #1
	ldr r2, [r11, #4]
	mov r1, #4
	blx r2
	movs r6, r0
	bne _020CE830
	mov r4, #0
	mov r1, r4
	mov r0, #1
	bl DWCi_NdSetError
	add sp, sp, #0x10
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE830:
	ldr r1, [r10, #0xac]
	ldr r2, _020CE934 ; =DWCiNd_action_contents
	str r1, [sp]
	add r0, sp, #0xc
	add r1, sp, #8
	mov r3, r9
	str r8, [sp, #4]
	bl dwcind_setupHttp
	cmp r0, #0
	bne _020CE870
	ldr r1, [r11, #0x14]
	mov r0, r6
	blx r1
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE870:
	cmp r7, #0
	ble _020CE8A8
	mov r0, r6
	mov r1, r10
	mov r2, r5
	bl DWCi_Ndi_encodeBASE64
	strb r4, [r6, r0]
	ldr r0, [sp, #8]
	ldr r1, _020CE938 ; =0x020E58A0
	mov r2, r6
	bl NHTTP_AddPostDataAscii
	sub r1, r4, #1
	cmp r0, r1
	beq _020CE900
_020CE8A8:
	ldr r0, [sp, #0xc]
	mov r1, #3
	str r1, [r0]
	ldr r0, [sp, #0xc]
	str r6, [r0, #0xc]
	ldr r1, [r10, #0xac]
	ldr r0, [sp, #0xc]
	str r1, [r0, #0x10]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl dwcind_runHttp
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020CE930 ; =DWCi_Ndi_dlcallback
	mov r0, r6
	ldr r1, [r1, #0x14]
	blx r1
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE900:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl dwcind_freeHttp
	ldr r1, [r11, #0x14]
	mov r0, r6
	blx r1
	mov r1, r4
	mov r0, #1
	bl DWCi_NdSetError
	mov r0, r4
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE930: .word DWCi_Ndi_dlcallback
_020CE934: .word DWCiNd_action_contents
_020CE938: .word ov15_020E58A0
	arm_func_end DWCi_NdGetFileAsync

	arm_func_start DWCi_NdGetProgress
DWCi_NdGetProgress: ; 0x020CE93C
	stmfd sp!, {r3, lr}
	ldr r3, _020CE978 ; =DWCi_Ndi_dlcallback
	mov r12, r0
	ldr r0, [r3, #8]
	mov r2, r1
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, [r3, #0x10]
	mov r1, r12
	bl NHTTP_GetConnectionProgress
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_020CE978: .word DWCi_Ndi_dlcallback
	arm_func_end DWCi_NdGetProgress

	arm_func_start DWCi_Ndi_response_count
DWCi_Ndi_response_count: ; 0x020CE97C
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r1
	add r1, sp, #4
	add r2, sp, #0
	bl NHTTP_GetBodyBuffer
	movs r1, r0
	bmi _020CE9C8
	ldr r0, [sp, #4]
	bl DWCi_Ndi_strToInt
	ldr r1, [r4, #0xc]
	add sp, sp, #8
	str r0, [r1]
	ldr r0, [r4, #0xc]
	ldr r0, [r0]
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	ldmfd sp!, {r4, pc}
_020CE9C8:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
	arm_func_end DWCi_Ndi_response_count

	arm_func_start DWCi_Ndi_response_contents
DWCi_Ndi_response_contents: ; 0x020CE9D4
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r1
	add r1, sp, #4
	add r2, sp, #0
	bl NHTTP_GetBodyBuffer
	ldr r1, [r4, #0x10]
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
	arm_func_end DWCi_Ndi_response_contents

	arm_func_start DWCi_Ndi_response_list
DWCi_Ndi_response_list: ; 0x020CEA04
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x80
	ldr r2, [r1, #0x10]
	str r1, [sp]
	mov r1, #0xb0
	mul r1, r2, r1
	mov r4, r0
	ldr r0, [sp]
	mov r2, #0
	ldr r0, [r0, #0xc]
	str r2, [sp, #4]
	bl DWCi_Ndi_memclr
	ldr r1, _020CEC80 ; =0x020E58AC
	add r2, sp, #0xc
	mov r0, r4
	bl NHTTP_GetHeaderField
	cmp r0, #0
	ble _020CEA6C
	ldr r1, [sp, #0xc]
	ldrsb r0, [r1]
	cmp r0, #0x30
	ldreqsb r0, [r1, #1]
	cmpeq r0, #0
	addeq sp, sp, #0x80
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CEA6C:
	add r1, sp, #0x14
	add r2, sp, #0x10
	mov r0, r4
	bl NHTTP_GetBodyBuffer
	mov r4, r0
	cmp r4, #0
	ldrgt r0, [sp]
	movgt r5, #0
	ldrgt r0, [r0, #0x10]
	strgt r5, [sp, #8]
	cmpgt r0, #0
	ble _020CEC74
_020CEA9C:
	cmp r5, r4
	movge r0, #1
	strge r0, [sp, #4]
	bge _020CEC74
	ldr r0, [sp]
	mov r6, #0
	ldr r2, [r0, #0xc]
	ldr r0, [sp, #8]
	mov r1, #0xb0
	mla r8, r0, r1, r2
	mov r7, r5
	mov r1, r6
	str r6, [sp, #4]
	bge _020CEC58
	add r10, sp, #0x18
	mov r11, r6
_020CEADC:
	ldr r3, [sp, #0x14]
	ldrsb r0, [r3, r5]
	cmp r0, #0xd
	moveq r1, #1
	beq _020CEC4C
	cmp r1, #0
	beq _020CEB48
	cmp r0, #0xa
	bne _020CEC48
	cmp r6, #5
	bne _020CEB2C
	sub r0, r5, #1
	sub r1, r0, r7
	cmp r1, #8
	bgt _020CEC74
	add r0, r3, r7
	bl DWCi_Ndi_strToInt
	cmp r0, #0
	blt _020CEC74
	str r0, [r8, #0xac]
_020CEB2C:
	cmp r6, #5
	movge r0, #1
	strge r0, [sp, #4]
	movlt r0, #0
	add r5, r5, #1
	strlt r0, [sp, #4]
	b _020CEC58
_020CEB48:
	cmp r0, #9
	bne _020CEC48
	cmp r6, #5
	addls pc, pc, r6, lsl #2
	b _020CEC40
_020CEB5C: ; jump table
	b _020CEB74 ; case 0
	b _020CEB90 ; case 1
	b _020CEBD8 ; case 2
	b _020CEBF0 ; case 3
	b _020CEC08 ; case 4
	b _020CEC20 ; case 5
_020CEB74:
	sub r2, r5, r7
	cmp r2, #0x20
	bhi _020CEC74
	add r1, r3, r7
	mov r0, r8
_020CEB88:
	bl DWCi_Ndi_memcpy
	b _020CEC40
_020CEB90:
	sub r9, r5, r7
	mov r0, r9
	bl DWCi_Ndi_getDecodeLenBASE64
	cmp r0, #0x66
	bhi _020CEC74
	ldr r1, [sp, #0x14]
	mov r2, r9
	mov r0, r10
	add r1, r1, r7
	bl DWCi_Ndi_decodeBASE64
	mov r2, r0
	cmp r2, #0x66
	movhi r2, #0x66
	mov r1, r10
	add r0, r8, #0x22
	bl DWCi_Ndi_memcpy
	strh r11, [r8, #0x86]
	b _020CEC40
_020CEBD8:
	sub r2, r5, r7
	cmp r2, #0xa
	bhi _020CEC74
	add r1, r3, r7
	add r0, r8, #0x88
	b _020CEB88
_020CEBF0:
	sub r2, r5, r7
	cmp r2, #0xa
	bhi _020CEC74
	add r1, r3, r7
	add r0, r8, #0x93
	b _020CEB88
_020CEC08:
	sub r2, r5, r7
	cmp r2, #0xa
	bhi _020CEC74
	add r1, r3, r7
	add r0, r8, #0x9e
	b _020CEB88
_020CEC20:
	sub r1, r5, r7
	cmp r1, #8
	bgt _020CEC74
	add r0, r3, r7
	bl DWCi_Ndi_strToInt
	cmp r0, #0
	blt _020CEC74
	str r0, [r8, #0xac]
_020CEC40:
	add r6, r6, #1
	add r7, r5, #1
_020CEC48:
	mov r1, #0
_020CEC4C:
	add r5, r5, #1
	cmp r5, r4
	blt _020CEADC
_020CEC58:
	ldr r0, [sp]
	ldr r1, [r0, #0x10]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r1
	blt _020CEA9C
_020CEC74:
	ldr r0, [sp, #4]
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CEC80: .word ov15_020E58AC
	arm_func_end DWCi_Ndi_response_list

	arm_func_start DWCi_Ndi_initLockGlobal
DWCi_Ndi_initLockGlobal: ; 0x020CEC84
	stmfd sp!, {r3, lr}
	ldr r0, _020CEC98 ; =0x020E9140
	bl OS_InitMutex
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020CEC98: .word ov15_020E9140
	arm_func_end DWCi_Ndi_initLockGlobal

	arm_func_start DWCi_Ndi_exitLockGlobal
DWCi_Ndi_exitLockGlobal: ; 0x020CEC9C
	bx lr
	arm_func_end DWCi_Ndi_exitLockGlobal

	arm_func_start DWCi_Ndi_lockGlobal
DWCi_Ndi_lockGlobal: ; 0x020CECA0
	ldr r0, _020CECAC ; =0x020E9140
	ldr r12, _020CECB0 ; =OS_LockMutex
	bx r12
_020CECAC: .word ov15_020E9140
_020CECB0: .word OS_LockMutex
	arm_func_end DWCi_Ndi_lockGlobal

	arm_func_start DWCi_Ndi_unlockGlobal
DWCi_Ndi_unlockGlobal: ; 0x020CECB4
	ldr r0, _020CECC0 ; =0x020E9140
	ldr r12, _020CECC4 ; =OS_UnlockMutex
	bx r12
_020CECC0: .word ov15_020E9140
_020CECC4: .word OS_UnlockMutex
	arm_func_end DWCi_Ndi_unlockGlobal

	arm_func_start DWCi_Ndi_initHttpCallback
DWCi_Ndi_initHttpCallback: ; 0x020CECC8
	stmfd sp!, {r3, lr}
	ldr r0, _020CECE8 ; =0x020E9128
	bl OS_InitMutex
	ldr r0, _020CECEC ; =DWCi_Ndi_dlcallback
	mov r1, #0
	str r1, [r0, #0x20]
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020CECE8: .word ov15_020E9128
_020CECEC: .word DWCi_Ndi_dlcallback
	arm_func_end DWCi_Ndi_initHttpCallback

	arm_func_start DWCi_Ndi_exitHttpCallback
DWCi_Ndi_exitHttpCallback: ; 0x020CECF0
	bx lr
	arm_func_end DWCi_Ndi_exitHttpCallback

	arm_func_start DWCi_Ndi_prepareHttpCallback
DWCi_Ndi_prepareHttpCallback: ; 0x020CECF4
	stmfd sp!, {r4, lr}
	ldr r0, _020CED34 ; =0x020E9128
	bl OS_LockMutex
	ldr r0, _020CED38 ; =DWCi_Ndi_dlcallback
	mov r4, #1
	ldr r0, [r0, #0x20]
	cmp r0, #0
	movne r4, #0
	cmp r4, #0
	ldrne r0, _020CED38 ; =DWCi_Ndi_dlcallback
	movne r1, #1
	strne r1, [r0, #0x20]
	ldr r0, _020CED34 ; =0x020E9128
	bl OS_UnlockMutex
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020CED34: .word ov15_020E9128
_020CED38: .word DWCi_Ndi_dlcallback
	arm_func_end DWCi_Ndi_prepareHttpCallback

	arm_func_start DWCi_Ndi_unprepareHttpCallback
DWCi_Ndi_unprepareHttpCallback: ; 0x020CED3C
	stmfd sp!, {r4, lr}
	ldr r4, _020CED64 ; =0x020E9128
	mov r0, r4
	bl OS_LockMutex
	ldr r1, _020CED68 ; =DWCi_Ndi_dlcallback
	mov r2, #0
	mov r0, r4
	str r2, [r1, #0x20]
	bl OS_UnlockMutex
	ldmfd sp!, {r4, pc}
_020CED64: .word ov15_020E9128
_020CED68: .word DWCi_Ndi_dlcallback
	arm_func_end DWCi_Ndi_unprepareHttpCallback

	arm_func_start DWCi_Ndi_kickThread
DWCi_Ndi_kickThread: ; 0x020CED6C
	mov r1, #0
	ldr r12, _020CED7C ; =OS_SendMessage
	mov r2, r1
	bx r12
_020CED7C: .word OS_SendMessage
	arm_func_end DWCi_Ndi_kickThread

	arm_func_start DWCi_Ndi_getMacAddress
DWCi_Ndi_getMacAddress: ; 0x020CED80
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	add r6, sp, #0
	mov r8, r0
	mov r0, r6
	bl OS_GetMacAddress
	mov r7, #0
	add r5, sp, #6
	mov r4, #2
_020CEDA4:
	ldrb r1, [r6, r7]
	mov r2, r4
	add r0, r5, r7, lsl #1
	bl DWCi_Ndi_hexToStrFigure
	add r7, r7, #1
	cmp r7, #6
	blt _020CEDA4
	mov r0, r8
	mov r1, r5
	mov r2, #0xc
	bl DWCi_Ndi_encodeBASE64
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end DWCi_Ndi_getMacAddress

	arm_func_start DWCi_Ndi_strlen
DWCi_Ndi_strlen: ; 0x020CEDD8
	ldr r12, _020CEDE0 ; =strlen
	bx r12
_020CEDE0: .word strlen
	arm_func_end DWCi_Ndi_strlen

	arm_func_start DWCi_Ndi_strncmp
DWCi_Ndi_strncmp: ; 0x020CEDE4
	ldr r12, _020CEDEC ; =strncmp
	bx r12
_020CEDEC: .word strncmp
	arm_func_end DWCi_Ndi_strncmp

	arm_func_start DWCi_Ndi_memclr
DWCi_Ndi_memclr: ; 0x020CEDF0
	ldr r12, _020CEE00 ; =MI_CpuFill8
	mov r2, r1
	mov r1, #0
	bx r12
_020CEE00: .word MI_CpuFill8
	arm_func_end DWCi_Ndi_memclr

	arm_func_start DWCi_Ndi_memcpy
DWCi_Ndi_memcpy: ; 0x020CEE04
	mov r3, r0
	mov r0, r1
	ldr r12, _020CEE18 ; =MI_CpuCopy8
	mov r1, r3
	bx r12
_020CEE18: .word MI_CpuCopy8
	arm_func_end DWCi_Ndi_memcpy

	arm_func_start DWCi_Ndi_strToInt
DWCi_Ndi_strToInt: ; 0x020CEE1C
	ldr r12, _020CEE24 ; =NHTTPi_strToInt
	bx r12
_020CEE24: .word NHTTPi_strToInt
	arm_func_end DWCi_Ndi_strToInt

	arm_func_start DWCi_Ndi_intToStr
DWCi_Ndi_intToStr: ; 0x020CEE28
	ldr r12, _020CEE30 ; =NHTTPi_intToStr
	bx r12
_020CEE30: .word NHTTPi_intToStr
	arm_func_end DWCi_Ndi_intToStr

	arm_func_start DWCi_Ndi_intToStrFigure
DWCi_Ndi_intToStrFigure: ; 0x020CEE34
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r8, r2
	ldr r4, _020CEEFC ; =0x01634578
	ldr r2, _020CEF00 ; =0x5D8A0000
	mov r9, r1
	cmp r8, r4
	mov r10, r0
	mov r11, r3
	mov r5, #0
	cmpeq r9, r2
	subhs r0, r5, #1
	ldmhsfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, r5
	mov r0, r5
_020CEE6C:
	ldr r1, _020CEF04 ; =0x020E3E50
	add r1, r1, r4, lsl #3
	ldr r6, [r1, #4]
	ldr r1, _020CEF04 ; =0x020E3E50
	cmp r8, r6
	ldr r7, [r1, r4, lsl #3]
	cmpeq r9, r7
	blo _020CEEC0
	mov r0, r9
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl _ll_udiv
	umull r3, r2, r0, r7
	mla r2, r0, r6, r2
	add r0, r0, #0x30
	subs r9, r9, r3
	strb r0, [r10, r5]
	sbc r8, r8, r2
	mov r0, #1
	b _020CEEDC
_020CEEC0:
	cmp r0, #0
	bne _020CEED4
	rsb r1, r4, #0x11
	cmp r1, r11
	bgt _020CEEE0
_020CEED4:
	mov r1, #0x30
	strb r1, [r10, r5]
_020CEEDC:
	add r5, r5, #1
_020CEEE0:
	add r4, r4, #1
	cmp r4, #0x10
	blt _020CEE6C
	adds r0, r9, #0x30
	strb r0, [r10, r5]
	add r0, r5, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CEEFC: .word 0x01634578
_020CEF00: .word 0x5D8A0000
_020CEF04: .word ov15_020E3E50
	arm_func_end DWCi_Ndi_intToStrFigure

	arm_func_start DWCi_Ndi_hexToStrFigure
DWCi_Ndi_hexToStrFigure: ; 0x020CEF08
	stmfd sp!, {r3, lr}
	mov lr, #0
	cmp r2, #8
	subgt r0, lr, #1
	ldmgtfd sp!, {r3, pc}
	cmp r2, #1
	mov r12, #1
	blt _020CEF58
_020CEF28:
	sub r3, r2, r12
	mov r3, r3, lsl #2
	mov r3, r1, lsr r3
	and r3, r3, #0xf
	cmp r3, #0xa
	addlo r3, r3, #0x30
	addhs r3, r3, #0x57
	add r12, r12, #1
	strb r3, [r0, lr]
	add lr, lr, #1
	cmp r12, r2
	ble _020CEF28
_020CEF58:
	mov r0, lr
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_Ndi_hexToStrFigure

	arm_func_start NHTTPi_InitMutex
NHTTPi_InitMutex: ; 0x020CEF60
	ldr r12, _020CEF68 ; =OS_InitMutex
	bx r12
_020CEF68: .word OS_InitMutex
	arm_func_end NHTTPi_InitMutex

	arm_func_start NHTTPi_LockMutex
NHTTPi_LockMutex: ; 0x020CEF6C
	ldr r12, _020CEF74 ; =OS_LockMutex
	bx r12
_020CEF74: .word OS_LockMutex
	arm_func_end NHTTPi_LockMutex

	arm_func_start NHTTPi_createCommThread
NHTTPi_createCommThread: ; 0x020CEF78
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl NHTTPi_IsCreateCommThreadMessageQueue
	cmp r0, #0
	bne _020CEFB0
	mov r0, r6
	add r1, r6, #0x20
	mov r2, #3
	bl OS_InitMessageQueue
	mov r0, r6
	bl NHTTPi_IsCreateCommThreadMessageQueueOn
_020CEFB0:
	mov r0, #0x2000
	str r0, [sp]
	ldr r1, _020CEFE4 ; =NHTTPi_CommThreadProc
	add r0, r6, #0x2c
	add r3, r4, #0x2000
	mov r2, #0
	str r5, [sp, #4]
	bl OS_CreateThread
	add r0, r6, #0x2c
	bl OS_WakeupThreadDirect
	mov r0, #1
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_020CEFE4: .word NHTTPi_CommThreadProc
	arm_func_end NHTTPi_createCommThread

	arm_func_start NHTTPi_destroyCommThread
NHTTPi_destroyCommThread: ; 0x020CEFE8
	stmfd sp!, {r4, lr}
	mov r2, #1
	mov r4, r0
	str r2, [r1, #0x18]
	bl NHTTPi_kickCommThread
	add r0, r4, #0x2c
	bl OS_JoinThread
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTPi_destroyCommThread

	arm_func_start NHTTPi_idleCommThread
NHTTPi_idleCommThread: ; 0x020CF008
	stmfd sp!, {r3, lr}
	add r1, sp, #0
	mov r2, #1
	bl OS_ReceiveMessage
	ldmfd sp!, {r3, pc}
	arm_func_end NHTTPi_idleCommThread

	arm_func_start NHTTPi_kickCommThread
NHTTPi_kickCommThread: ; 0x020CF01C
	mov r1, #0
	ldr r12, _020CF02C ; =OS_SendMessage
	mov r2, r1
	bx r12
_020CF02C: .word OS_SendMessage
	arm_func_end NHTTPi_kickCommThread

	arm_func_start NHTTPi_CheckCurrentThread
NHTTPi_CheckCurrentThread: ; 0x020CF030
	stmfd sp!, {r3, lr}
	ldr r2, _020CF070 ; =OSi_ThreadInfo
	add r0, r0, #0x2c
	ldr r2, [r2, #4]
	cmp r2, #0
	ldmeqfd sp!, {r3, pc}
	cmp r1, #0
	bne _020CF058
	cmp r2, r0
	bne _020CF068
_020CF058:
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	cmp r2, r0
	ldmnefd sp!, {r3, pc}
_020CF068:
	bl OS_Terminate
	ldmfd sp!, {r3, pc}
_020CF070: .word OSi_ThreadInfo
	arm_func_end NHTTPi_CheckCurrentThread

	arm_func_start NHTTPi_CommThreadProc
NHTTPi_CommThreadProc: ; 0x020CF074
	ldr r12, _020CF07C ; =NHTTPi_CommThreadProcMain
	bx r12
_020CF07C: .word NHTTPi_CommThreadProcMain
	arm_func_end NHTTPi_CommThreadProc

	arm_func_start NHTTPi_CpsAuthCallback
NHTTPi_CpsAuthCallback: ; 0x020CF080
	tst r0, #0x8000
	bicne r0, r0, #0x8000
	bx lr
	arm_func_end NHTTPi_CpsAuthCallback

	arm_func_start NHTTPi_CpsAuthCallbackForDebug
NHTTPi_CpsAuthCallbackForDebug: ; 0x020CF08C
	mov r0, #0
	bx lr
	arm_func_end NHTTPi_CpsAuthCallbackForDebug

	arm_func_start NHTTPi_SetSSLseed
NHTTPi_SetSSLseed: ; 0x020CF094
	stmfd sp!, {r4, lr}
	ldr r4, _020CF0B4 ; =ssl_seed
	mov r0, r4
	bl OS_GetLowEntropyData
	mov r0, r4
	mov r1, #0x20
	bl CPS_SslAddRandomSeed
	ldmfd sp!, {r4, pc}
_020CF0B4: .word ssl_seed
	arm_func_end NHTTPi_SetSSLseed

	arm_func_start NHTTPi_checkKeepAlive
NHTTPi_checkKeepAlive: ; 0x020CF0B8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	sub r1, r5, #1
	cmp r0, r1
	subeq r5, r5, #1
	beq _020CF0F0
	mov r4, #4
	add r1, sp, #0
	mov r3, r4
	mov r2, #1
	bl SOC_Recv
	sub r1, r4, #0xa
	cmp r0, r1
	subne r5, r4, #5
_020CF0F0:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_checkKeepAlive

	arm_func_start NHTTPi_SocOpen
NHTTPi_SocOpen: ; 0x020CF0F8
	ldr r12, _020CF10C ; =SOC_Socket
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bx r12
_020CF10C: .word SOC_Socket
	arm_func_end NHTTPi_SocOpen

	arm_func_start NHTTPi_SocClose
NHTTPi_SocClose: ; 0x020CF110
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r10, r2
	mov r0, r10
	mov r4, r1
	bl SOC_Close
	movs r8, r0
	beq _020CF134
	cmn r8, #0x1a
	bne _020CF174
_020CF134:
	mov r9, #0
	mov r7, #0x1f4
	ldr r5, _020CF19C ; =0x00002710
	mvn r6, #0x19
	b _020CF158
_020CF148:
	mov r0, r7
	bl OS_Sleep
	bl SOCLi_TrashSocket
	add r9, r9, #0x1f4
_020CF158:
	mov r0, r10
	bl SOC_Close
	mov r8, r0
	cmp r8, r6
	bne _020CF174
	cmp r9, r5
	ble _020CF148
_020CF174:
	cmn r8, #0x1a
	cmpne r4, #0
	ldrne r0, [r4, #0xac]
	cmpne r0, #0
	beq _020CF194
	bl NHTTPi_free
	mov r0, #0
	str r0, [r4, #0xac]
_020CF194:
	mov r0, r8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CF19C: .word 0x00002710
	arm_func_end NHTTPi_SocClose

	arm_func_start NHTTPi_SocConnect
NHTTPi_SocConnect: ; 0x020CF1A0
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r4, [sp, #0x1c]
	ldr r12, [sp, #0x18]
	mov r4, r4, lsl #0x10
	mov r4, r4, lsr #0x10
	mov lr, r4, asr #8
	mov r4, r4, lsl #8
	mov r6, #8
	mov r5, #2
	and lr, lr, #0xff
	and r4, r4, #0xff00
	orr lr, lr, r4
	mov r4, r2
	strb r6, [sp]
	strb r5, [sp, #1]
	strh lr, [sp, #2]
	str r12, [sp, #4]
	ldr r12, [r4, #8]
	mov r5, r3
	cmp r12, #0
	beq _020CF214
	ldr r12, [r4, #0xc]
	cmp r12, #0
	bne _020CF214
	bl NHTTPi_SocSSLConnect
	cmp r0, #0
	addlt sp, sp, #8
	ldmltfd sp!, {r4, r5, r6, pc}
_020CF214:
	add r1, sp, #0
	mov r0, r5
	bl SOC_Connect
	cmp r0, #0
	bge _020CF240
	ldr r0, [r4]
	add sp, sp, #8
	cmp r0, #0
	ldrne r0, _020CF24C ; =0xFFFFFC16
	mvneq r0, #0x3e8
	ldmfd sp!, {r4, r5, r6, pc}
_020CF240:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_020CF24C: .word 0xFFFFFC16
	arm_func_end NHTTPi_SocConnect

	arm_func_start NHTTPi_SocSSLConnect
NHTTPi_SocSSLConnect: ; 0x020CF250
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r2
	ldr r4, [r7, #0xac]
	mov r5, r3
	cmp r4, #0
	bne _020CF288
	mov r6, #0x830
	mov r0, r6
	mov r1, #4
	bl NHTTPi_alloc
	mov r4, r0
	mov r1, r6
	str r4, [r7, #0xac]
	bl NHTTPi_memclr
_020CF288:
	ldr r0, [r7, #0xc0]
	mov r1, r4
	str r0, [r4, #0x814]
	ldr r0, [r7, #0xc4]
	str r0, [r4, #0x818]
	ldr r0, [r7, #0x28]
	str r0, [r4, #0x800]
	ldr r0, [r7, #0xd8]
	cmp r0, #0
	ldrne r0, _020CF2D8 ; =NHTTPi_CpsAuthCallbackForDebug
	ldreq r0, _020CF2DC ; =NHTTPi_CpsAuthCallback
	str r0, [r4, #0x810]
	mov r0, r5
	bl SOCL_EnableSsl
	cmp r0, #0
	mvnlt r0, #0x3e8
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	bl NHTTPi_SetSSLseed
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CF2D8: .word NHTTPi_CpsAuthCallbackForDebug
_020CF2DC: .word NHTTPi_CpsAuthCallback
	arm_func_end NHTTPi_SocSSLConnect

	arm_func_start NHTTPi_SocRecv_sub
NHTTPi_SocRecv_sub: ; 0x020CF2E0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	mov r7, r3
	mov r8, r2
	cmp r7, #0
	add r4, r9, #0x40
	mov r5, #0
	ble _020CF3A0
	add r0, r9, #0x8000
	ldr r0, [r0, #0x44]
	cmp r0, #0
	bne _020CF338
	ldr r3, [sp, #0x20]
	mov r0, r1
	mov r1, r4
	mov r2, #0x8000
	bl SOC_Recv
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r1, r9, #0x8000
	str r0, [r1, #0x44]
	str r5, [r1, #0x40]
_020CF338:
	add r0, r9, #0x8000
	ldr r6, [r0, #0x44]
	cmp r6, #0
	beq _020CF3A0
	add r0, r9, #0x8000
	ldr r1, [r0, #0x40]
	cmp r7, r6
	movls r6, r7
	mov r0, r8
	mov r2, r6
	add r1, r4, r1
	bl NHTTPi_memcpy
	add r0, r9, #0x8000
	ldr r1, [r0, #0x44]
	subs r1, r1, r6
	str r1, [r0, #0x44]
	ldrne r1, [r0, #0x40]
	addne r1, r1, r6
	bne _020CF398
	mov r0, r4
	mov r1, #0x8000
	bl NHTTPi_memclr
	add r0, r9, #0x8000
	mov r1, #0
_020CF398:
	str r1, [r0, #0x40]
	mov r5, r6
_020CF3A0:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end NHTTPi_SocRecv_sub

	arm_func_start NHTTPi_SocRecv
NHTTPi_SocRecv: ; 0x020CF3A8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl NHTTPi_Request2Connection
	cmp r0, #0
	beq _020CF3E4
	ldr r12, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	mov r1, r5
	mov r2, r4
	str r12, [sp]
	bl NHTTPi_SocRecv_sub
	b _020CF3F0
_020CF3E4:
	add sp, sp, #4
	mvn r0, #0x3e8
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CF3F0:
	cmp r0, #0
	addge sp, sp, #4
	ldmgefd sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r6]
	cmp r1, #0
	addne sp, sp, #4
	ldrne r0, _020CF424 ; =0xFFFFFC16
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	cmn r0, #0x38
	moveq r0, #0
	mvnne r0, #0x3e8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CF424: .word 0xFFFFFC16
	arm_func_end NHTTPi_SocRecv

	arm_func_start NHTTPi_SocSend_sub
NHTTPi_SocSend_sub: ; 0x020CF428
	ldr r12, _020CF430 ; =SOC_Send
	bx r12
_020CF430: .word SOC_Send
	arm_func_end NHTTPi_SocSend_sub

	arm_func_start NHTTPi_SocSend
NHTTPi_SocSend: ; 0x020CF434
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	mov r1, r2
	mov r2, r3
	ldr r3, [sp, #8]
	bl NHTTPi_SocSend_sub
	cmp r0, #0
	ldmgefd sp!, {r4, pc}
	ldr r1, [r4]
	cmp r1, #0
	ldrne r0, _020CF478 ; =0xFFFFFC16
	ldmnefd sp!, {r4, pc}
	cmn r0, #0x38
	moveq r0, #0
	mvnne r0, #0x3e8
	ldmfd sp!, {r4, pc}
_020CF478: .word 0xFFFFFC16
	arm_func_end NHTTPi_SocSend

	arm_func_start NHTTPi_SocCancel
NHTTPi_SocCancel: ; 0x020CF47C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r2
	mov r5, r0
	bl NHTTPi_lockReqList
	cmp r4, #0
	blt _020CF4A0
	mov r0, r4
	mov r1, #2
	bl SOC_Shutdown
_020CF4A0:
	mov r0, r5
	bl NHTTPi_unlockReqList
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_SocCancel

	arm_func_start NHTTPi_resolveHostname
NHTTPi_resolveHostname: ; 0x020CF4AC
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r1
	mov r2, #0
	add r1, sp, #0
	mov r0, r4
	str r2, [sp, #4]
	bl SOC_InetAtoN
	cmp r0, #0
	ldrne r0, [sp]
	strne r0, [sp, #4]
	bne _020CF508
	mov r0, r4
	bl SOC_GetHostByName
	cmp r0, #0
	ldrnesh r1, [r0, #0xa]
	cmpne r1, #0
	ble _020CF508
	ldr r1, [r0, #0xc]
	add r0, sp, #4
	ldr r1, [r1]
	mov r2, #4
	bl NHTTPi_memcpy
_020CF508:
	ldr r0, [sp, #4]
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTPi_resolveHostname

	arm_func_start NHTTPi_memcpy
NHTTPi_memcpy: ; 0x020CF514
	mov r3, r0
	mov r0, r1
	ldr r12, _020CF528 ; =MI_CpuCopy8
	mov r1, r3
	bx r12
_020CF528: .word MI_CpuCopy8
	arm_func_end NHTTPi_memcpy

	arm_func_start NHTTPi_strlen
NHTTPi_strlen: ; 0x020CF52C
	ldr r12, _020CF534 ; =STD_GetStringLength
	bx r12
_020CF534: .word STD_GetStringLength
	arm_func_end NHTTPi_strlen

	arm_func_start NHTTPi_strnlen
NHTTPi_strnlen: ; 0x020CF538
	ldr r12, _020CF540 ; =STD_GetStringNLength
	bx r12
_020CF540: .word STD_GetStringNLength
	arm_func_end NHTTPi_strnlen

	arm_func_start NHTTPi_strcmp
NHTTPi_strcmp: ; 0x020CF544
	ldr r12, _020CF54C ; =STD_CompareString
	bx r12
_020CF54C: .word STD_CompareString
	arm_func_end NHTTPi_strcmp

	arm_func_start NHTTPi_memclr
NHTTPi_memclr: ; 0x020CF550
	ldr r12, _020CF560 ; =MI_CpuFill8
	mov r2, r1
	mov r1, #0
	bx r12
_020CF560: .word MI_CpuFill8
	arm_func_end NHTTPi_memclr

	arm_func_start NHTTPi_strnicmp
NHTTPi_strnicmp: ; 0x020CF564
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	cmp r2, #0
	mov r4, #0
	ble _020CF600
	mov r5, #1
	mov lr, r5
	mov r12, r5
	mov r3, r5
_020CF584:
	ldrsb r9, [r0], #1
	ldrsb r8, [r1], #1
	cmp r9, #0
	beq _020CF59C
	cmp r8, #0
	bne _020CF5AC
_020CF59C:
	cmp r9, #0
	cmpeq r8, #0
	moveq r2, #0
	beq _020CF600
_020CF5AC:
	mov r6, r5
	cmp r8, #0x41
	movlt r6, r4
	mov r7, lr
	cmp r8, #0x5a
	movgt r7, r4
	tst r6, r7
	addne r8, r8, #0x20
	mov r6, r12
	cmp r9, #0x41
	movlt r6, r4
	mov r7, r3
	cmp r9, #0x5a
	movgt r7, r4
	tst r6, r7
	addne r9, r9, #0x20
	cmp r9, r8
	bne _020CF600
	sub r2, r2, #1
	cmp r2, #0
	bgt _020CF584
_020CF600:
	mov r0, r2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end NHTTPi_strnicmp

	arm_func_start NHTTPi_getUrlEncodedSize
NHTTPi_getUrlEncodedSize: ; 0x020CF608
	ldrsb r2, [r0], #1
	mov r1, #0
	cmp r2, #0
	beq _020CF668
_020CF618:
	cmp r2, #0x30
	blt _020CF628
	cmp r2, #0x39
	ble _020CF650
_020CF628:
	cmp r2, #0x41
	blt _020CF638
	cmp r2, #0x5a
	ble _020CF650
_020CF638:
	cmp r2, #0x61
	blt _020CF648
	cmp r2, #0x7a
	ble _020CF650
_020CF648:
	cmp r2, #0x20
	bne _020CF658
_020CF650:
	add r1, r1, #1
	b _020CF65C
_020CF658:
	add r1, r1, #3
_020CF65C:
	ldrsb r2, [r0], #1
	cmp r2, #0
	bne _020CF618
_020CF668:
	mov r0, r1
	bx lr
	arm_func_end NHTTPi_getUrlEncodedSize

	arm_func_start NHTTPi_getUrlEncodedSize2
NHTTPi_getUrlEncodedSize2: ; 0x020CF670
	mov r2, #0
	cmp r1, #0
	mov r3, r2
	ldrsb r12, [r0], #1
	cmpgt r1, #0
	ble _020CF6DC
_020CF688:
	cmp r12, #0x30
	blt _020CF698
	cmp r12, #0x39
	ble _020CF6C0
_020CF698:
	cmp r12, #0x41
	blt _020CF6A8
	cmp r12, #0x5a
	ble _020CF6C0
_020CF6A8:
	cmp r12, #0x61
	blt _020CF6B8
	cmp r12, #0x7a
	ble _020CF6C0
_020CF6B8:
	cmp r12, #0x20
	bne _020CF6C8
_020CF6C0:
	add r3, r3, #1
	b _020CF6CC
_020CF6C8:
	add r3, r3, #3
_020CF6CC:
	add r2, r2, #1
	cmp r2, r1
	ldrsb r12, [r0], #1
	blt _020CF688
_020CF6DC:
	mov r0, r3
	bx lr
	arm_func_end NHTTPi_getUrlEncodedSize2

	arm_func_start NHTTPi_encodeUrlChar
NHTTPi_encodeUrlChar: ; 0x020CF6E4
	cmp r1, #0x20
	moveq r1, #0x2b
	streqb r1, [r0]
	moveq r0, #1
	bxeq lr
	cmp r1, #0x30
	blt _020CF708
	cmp r1, #0x39
	ble _020CF728
_020CF708:
	cmp r1, #0x41
	blt _020CF718
	cmp r1, #0x5a
	ble _020CF728
_020CF718:
	cmp r1, #0x61
	blt _020CF734
	cmp r1, #0x7a
	bgt _020CF734
_020CF728:
	strb r1, [r0]
	mov r0, #1
	bx lr
_020CF734:
	mov r2, r1, asr #4
	and r3, r2, #0xf
	mov r2, #0x25
	strb r2, [r0]
	cmp r3, #0xa
	addlt r2, r3, #0x30
	addge r2, r3, #0x37
	and r1, r1, #0xf
	cmp r1, #0xa
	addlt r1, r1, #0x30
	addge r1, r1, #0x37
	strb r2, [r0, #1]
	strb r1, [r0, #2]
	mov r0, #3
	bx lr
	arm_func_end NHTTPi_encodeUrlChar

	arm_func_start NHTTPi_strToHex
NHTTPi_strToHex: ; 0x020CF770
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	cmp r1, #8
	mvngt r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bne _020CF794
	ldrsb r2, [r0]
	cmp r2, #0x37
	mvngt r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CF794:
	mov r8, #0
	mov r9, r8
	mov r7, r8
	cmp r1, #0
	ble _020CF854
	mov r6, #1
	mov r5, r8
	mov lr, r8
	mov r4, r6
	mov r3, r6
	mov r12, r6
_020CF7C0:
	ldrsb r11, [r0, r7]
	mov r2, r6
	mov r10, r4
	cmp r11, #0x41
	movlt r2, r5
	cmp r11, #0x5a
	movgt r10, lr
	tst r2, r10
	addne r11, r11, #0x20
	mov r2, r11, lsl #0x18
	mov r2, r2, asr #0x18
	cmp r2, #0x30
	blt _020CF808
	cmp r2, #0x39
	addle r2, r2, r8, lsl #4
	movle r9, r12
	suble r8, r2, #0x30
	ble _020CF848
_020CF808:
	cmp r2, #0x61
	blt _020CF824
	cmp r2, #0x66
	addle r2, r2, r8, lsl #4
	movle r9, r3
	suble r8, r2, #0x57
	ble _020CF848
_020CF824:
	cmp r9, #0
	beq _020CF838
	cmp r2, #0x20
	cmpne r2, #0
	beq _020CF854
_020CF838:
	cmp r9, #0
	cmpeq r2, #0x20
	mvnne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CF848:
	add r7, r7, #1
	cmp r7, r1
	blt _020CF7C0
_020CF854:
	mov r0, r8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end NHTTPi_strToHex

	arm_func_start NHTTPi_strToInt
NHTTPi_strToInt: ; 0x020CF85C
	stmfd sp!, {r3, r4, r5, lr}
	cmp r1, #0xa
	mvngt r0, #0
	ldmgtfd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r3, r4
	mov lr, r4
	cmp r1, #0
	ble _020CF8F0
	mov r12, #1
	mov r2, #0xa
_020CF888:
	cmp r3, #0
	ldrsb r5, [r0, lr]
	beq _020CF8A0
	cmp r5, #0x20
	cmpne r5, #0
	beq _020CF8F0
_020CF8A0:
	cmp r3, #0
	bne _020CF8B0
	cmp r5, #0x20
	beq _020CF8E4
_020CF8B0:
	cmp r5, #0x30
	blt _020CF8C0
	cmp r5, #0x39
	ble _020CF8C8
_020CF8C0:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020CF8C8:
	mla r3, r4, r2, r5
	mov r5, r4
	sub r4, r3, #0x30
	cmp r5, r4
	mov r3, r12
	mvngt r0, #0
	ldmgtfd sp!, {r3, r4, r5, pc}
_020CF8E4:
	add lr, lr, #1
	cmp lr, r1
	blt _020CF888
_020CF8F0:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_strToInt

	arm_func_start NHTTPi_intToStr
NHTTPi_intToStr: ; 0x020CF8F8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	ldr r6, _020CF9A0 ; =0x020E3ED0
	add r4, sp, #0
	mov r10, r0
	mov r9, r1
	ldmia r6!, {r0, r1, r2, r3}
	mov r5, r4
	stmia r4!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, [r6]
	mov r7, #0
	str r0, [r4]
	mov r2, r7
	mov r6, r7
	mov r4, #0x30
	mov r11, #1
_020CF940:
	ldr r8, [r5, r6, lsl #2]
	cmp r9, r8
	blo _020CF974
	mov r0, r9
	mov r1, r8
	bl _u32_div_f
	mul r1, r0, r8
	add r0, r0, #0x30
	strb r0, [r10, r7]
	mov r2, r11
	sub r9, r9, r1
	add r7, r7, #1
	b _020CF980
_020CF974:
	cmp r2, #0
	strneb r4, [r10, r7]
	addne r7, r7, #1
_020CF980:
	add r6, r6, #1
	cmp r6, #9
	blt _020CF940
	add r0, r9, #0x30
	strb r0, [r10, r7]
	add r0, r7, #1
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CF9A0: .word ov15_020E3ED0
	arm_func_end NHTTPi_intToStr

	arm_func_start NHTTPi_compareToken
NHTTPi_compareToken: ; 0x020CF9A4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, #1
	mov lr, #0
	mov r12, r4
	mov r3, r4
	mov r2, r4
	b _020CF9D8
_020CF9C0:
	cmp r5, #0
	cmpne r5, #0x20
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r0, #1
	add r1, r1, #1
_020CF9D8:
	ldrsb r7, [r1]
	mov r5, r4
	mov r6, r12
	cmp r7, #0x41
	movlt r5, lr
	cmp r7, #0x5a
	movgt r6, lr
	tst r5, r6
	ldrsb r5, [r0]
	addne r7, r7, #0x20
	mov r6, r3
	cmp r5, #0x41
	movlt r6, lr
	mov r8, r2
	cmp r5, #0x5a
	movgt r8, lr
	tst r6, r8
	addne r6, r5, #0x20
	moveq r6, r5
	cmp r6, r7
	beq _020CF9C0
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NHTTPi_compareToken

	arm_func_start NHTTPi_strtonum
NHTTPi_strtonum: ; 0x020CFA34
	stmfd sp!, {r3, lr}
	mov r12, #0
	cmp r1, #0
	mov lr, r12
	sub r1, r1, #1
	beq _020CFA94
	mov r2, #0xa
_020CFA50:
	ldrsb r3, [r0]
	cmp r3, #0x20
	beq _020CFA84
	cmp r3, #0x30
	blt _020CFA84
	cmp r3, #0x39
	bgt _020CFA84
	mla r3, lr, r2, r3
	add r12, r12, #1
	cmp r12, #9
	sub lr, r3, #0x30
	mvngt r0, #0
	ldmgtfd sp!, {r3, pc}
_020CFA84:
	cmp r1, #0
	add r0, r0, #1
	sub r1, r1, #1
	bne _020CFA50
_020CFA94:
	cmp r12, #0
	mvneq lr, #0
	mov r0, lr
	ldmfd sp!, {r3, pc}
	arm_func_end NHTTPi_strtonum

	arm_func_start NHTTPi_memfind
NHTTPi_memfind: ; 0x020CFAA4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	cmp r1, r3
	mvnlt r0, #0
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
	sub r1, r1, r3
	add r8, r1, #1
	cmp r8, #0
	mov r4, #0
	ble _020CFB20
	ldrsb r7, [r2]
	mov lr, #1
_020CFAD0:
	ldrsb r1, [r0, r4]
	cmp r7, r1
	bne _020CFB14
	mov r5, lr
	cmp r3, #1
	add r6, r0, r4
	ble _020CFB08
_020CFAEC:
	ldrsb r12, [r6, r5]
	ldrsb r1, [r2, r5]
	cmp r12, r1
	bne _020CFB08
	add r5, r5, #1
	cmp r5, r3
	blt _020CFAEC
_020CFB08:
	cmp r5, r3
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_020CFB14:
	add r4, r4, #1
	cmp r4, r8
	blt _020CFAD0
_020CFB20:
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NHTTPi_memfind

	arm_func_start NHTTPi_InitBgnEndInfo
NHTTPi_InitBgnEndInfo: ; 0x020CFB28
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	sub r2, r4, #1
	mov r1, r4
	str r4, [r5]
	str r4, [r5, #4]
	str r4, [r5, #8]
	str r2, [r5, #0xc]
	bl NHTTPi_SetSSLError
	mov r0, r5
	mov r1, r4
	bl NHTTPi_SetError
	str r4, [r5, #0x18]
	str r4, [r5, #0x1c]
	str r4, [r5, #0x20]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_InitBgnEndInfo

	arm_func_start NHTTPi_alloc
NHTTPi_alloc: ; 0x020CFB6C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl NHTTPi_GetSystemInfoP
	ldr r2, [r0]
	cmp r2, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	blx r2
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_alloc

	arm_func_start NHTTPi_free
NHTTPi_free: ; 0x020CFB9C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl NHTTPi_GetSystemInfoP
	ldr r1, [r0, #4]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	blx r1
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTPi_free

	arm_func_start NHTTPi_SetError
NHTTPi_SetError: ; 0x020CFBC0
	str r1, [r0, #0x14]
	bx lr
	arm_func_end NHTTPi_SetError

	arm_func_start NHTTPi_SetSSLError
NHTTPi_SetSSLError: ; 0x020CFBC8
	str r1, [r0, #0x10]
	bx lr
	arm_func_end NHTTPi_SetSSLError

	arm_func_start NHTTPi_GetSSLError
NHTTPi_GetSSLError: ; 0x020CFBD0
	ldr r0, [r0, #0x10]
	bx lr
	arm_func_end NHTTPi_GetSSLError

	arm_func_start NHTTPi_Startup
NHTTPi_Startup: ; 0x020CFBD8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r1
	mov r8, r2
	mov r7, r3
	bl NHTTPi_GetBgnEndInfoP
	mov r6, r0
	mov r0, r10
	bl NHTTPi_GetListInfoP
	mov r5, r0
	mov r0, r10
	bl NHTTPi_GetReqInfoP
	mov r4, r0
	mov r0, r10
	bl NHTTPi_GetMutexInfoP
	mov r11, r0
	mov r0, r10
	bl NHTTPi_GetThreadInfoP
	str r9, [r6]
	str r8, [r6, #4]
	mov r8, r0
	mov r0, r5
	mov r5, #0
	str r5, [r6, #0x14]
	str r5, [r6, #0x10]
	str r5, [r6, #0x18]
	str r5, [r6, #0x24]
	bl NHTTPi_InitListInfo
	mov r0, r4
	bl NHTTPi_InitRequestInfo
	mov r0, r11
	bl NHTTPi_initLockReqList
	bl NHTTPi_InitConnectionList
	sub r0, r5, #1
	str r0, [r6, #0xc]
	mov r0, #0x2000
	mov r1, #8
	bl NHTTPi_alloc
	str r0, [r6, #0x1c]
	movs r2, r0
	bne _020CFC94
	mov r0, r6
	mov r1, #1
	bl NHTTPi_SetError
	bl NHTTPi_exitLockReqList
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CFC94:
	mov r0, r8
	mov r1, r7
	bl NHTTPi_createCommThread
	cmp r0, #0
	movne r0, #1
	strne r0, [r6, #8]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r6
	mov r1, #9
	bl NHTTPi_SetError
	ldr r0, [r6, #0x1c]
	bl NHTTPi_free
	str r5, [r6, #0x1c]
	bl NHTTPi_exitLockReqList
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end NHTTPi_Startup

	arm_func_start NHTTPi_CleanupAsync
NHTTPi_CleanupAsync: ; 0x020CFCD4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	bl NHTTPi_GetBgnEndInfoP
	mov r5, r0
	mov r0, r7
	bl NHTTPi_GetThreadInfoP
	mov r1, #1
	mov r4, r0
	bl NHTTPi_CheckCurrentThread
	mov r0, r7
	bl NHTTPi_cancelAllRequests
	mov r0, r4
	mov r1, r5
	bl NHTTPi_destroyCommThread
	ldr r0, [r5, #0x1c]
	bl NHTTPi_free
	mov r4, #0
	str r4, [r5, #0x1c]
	bl NHTTPi_exitLockReqList
	str r4, [r5, #8]
	cmp r6, #0
	beq _020CFD34
	blx r6
_020CFD34:
	bl NHTTPi_GetConnectionListLength
	ldr r2, [r5, #0xc]
	cmp r2, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, #0
	mov r0, r4
	mov r1, r4
	bl NHTTPi_SocClose
	sub r0, r4, #1
	str r0, [r5, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end NHTTPi_CleanupAsync

	arm_func_start addHdrList
addHdrList: ; 0x020CFD60
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	ldr r10, [r9]
	mov r8, r1
	mov r7, r2
	mov r6, r3
	cmp r10, #0
	mov r4, #0
	beq _020CFDDC
	ldr r1, [r10, #8]
	mov r0, r7
	mov r5, r10
	bl NHTTPi_compareToken
	cmp r0, #0
	beq _020CFDD8
	ldr r5, [r10, #4]
	ldr r0, [r9]
	cmp r5, r0
	beq _020CFDDC
_020CFDAC:
	ldr r1, [r5, #8]
	mov r0, r7
	bl NHTTPi_compareToken
	cmp r0, #0
	moveq r4, #1
	beq _020CFDDC
	ldr r5, [r5, #4]
	ldr r0, [r9]
	cmp r5, r0
	bne _020CFDAC
	b _020CFDDC
_020CFDD8:
	mov r4, #1
_020CFDDC:
	cmp r4, #0
	strne r6, [r5, #0xc]
	bne _020CFE60
	mov r0, #0x18
	mov r1, #4
	bl NHTTPi_alloc
	cmp r0, #0
	bne _020CFE10
	mov r0, r8
	mov r1, #1
	bl NHTTPi_SetError
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CFE10:
	str r7, [r0, #8]
	str r6, [r0, #0xc]
	mov r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	ldr r1, [r9]
	cmp r1, #0
	streq r0, [r0, #4]
	streq r0, [r0]
	streq r0, [r9]
	beq _020CFE60
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r9]
	str r1, [r0, #4]
	ldr r1, [r9]
	ldr r1, [r1]
	str r0, [r1, #4]
	ldr r1, [r9]
	str r0, [r1]
_020CFE60:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end addHdrList

	arm_func_start incAscii
incAscii: ; 0x020CFE68
	add r0, r0, #1
	and r0, r0, #0xff
	cmp r0, #0x7b
	moveq r0, #0x30
	beq _020CFE90
	cmp r0, #0x5b
	moveq r0, #0x61
	beq _020CFE90
	cmp r0, #0x3a
	moveq r0, #0x41
_020CFE90:
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bx lr
	arm_func_end incAscii

	arm_func_start checkTagPost
checkTagPost: ; 0x020CFE9C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r1
	mov r8, r2
	mov r0, r9
	mov r1, r8
	add r2, r10, #0x3a
	mov r3, #0x12
	bl NHTTPi_memfind
	cmp r0, #0
	movlt r0, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r11, #0x13
	mov r4, #0x12
_020CFED4:
	ldr r0, _020CFF34 ; =0x020E3EF4
	add r6, r10, r11
	ldrsb r5, [r6, #0x38]
	ldrsb r7, [r0, r11]
_020CFEE4:
	and r0, r5, #0xff
	bl incAscii
	mov r5, r0
	strb r5, [r6, #0x38]
	cmp r5, r7
	beq _020CFF20
	mov r0, r9
	mov r1, r8
	mov r3, r4
	add r2, r10, #0x3a
	bl NHTTPi_memfind
	cmp r0, #0
	bge _020CFEE4
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CFF20:
	sub r11, r11, #1
	cmp r11, #2
	bge _020CFED4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CFF34: .word ov15_020E3EF4
	arm_func_end checkTagPost

	arm_func_start NHTTPi_getHdrFromList
NHTTPi_getHdrFromList: ; 0x020CFF38
	ldr r3, [r0]
	cmp r3, #0
	beq _020CFF74
	ldr r2, [r3]
	cmp r3, r2
	moveq r1, #0
	streq r1, [r0]
	beq _020CFF74
	ldr r1, [r3, #4]
	str r1, [r2, #4]
	ldr r2, [r3]
	ldr r1, [r3, #4]
	str r2, [r1]
	ldr r1, [r3, #4]
	str r1, [r0]
_020CFF74:
	mov r0, r3
	bx lr
	arm_func_end NHTTPi_getHdrFromList

	arm_func_start NHTTPi_AddRequestHeaderField
NHTTPi_AddRequestHeaderField: ; 0x020CFF7C
	stmfd sp!, {r3, lr}
	ldr r12, [r0, #4]
	cmp r12, #0
	movne r0, #0
	ldmnefd sp!, {r3, pc}
	add r0, r0, #0x30
	bl addHdrList
	ldmfd sp!, {r3, pc}
	arm_func_end NHTTPi_AddRequestHeaderField

	arm_func_start NHTTPi_AddRequestPostDataAscii
NHTTPi_AddRequestPostDataAscii: ; 0x020CFF9C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	ldr r0, [r9, #4]
	mov r4, #0
	cmp r0, #0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	mov r5, r4
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r9, #0x10]
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r6, #0
	beq _020CFFEC
	mov r0, r6
	bl NHTTPi_strlen
	mov r5, r0
_020CFFEC:
	mov r0, r9
	mov r1, r6
	mov r2, r5
	bl checkTagPost
	cmp r0, #0
	beq _020D0028
	mov r1, r8
	mov r2, r7
	mov r3, r6
	add r0, r9, #0x34
	bl addHdrList
	movs r4, r0
	ldrne r0, [r9, #0x34]
	ldrne r0, [r0]
	strne r5, [r0, #0x10]
_020D0028:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end NHTTPi_AddRequestPostDataAscii

	arm_func_start NHTTPi_InitListInfo
NHTTPi_InitListInfo: ; 0x020D0030
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	bx lr
	arm_func_end NHTTPi_InitListInfo

	arm_func_start NHTTPi_setReqQueue
NHTTPi_setReqQueue: ; 0x020D0040
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r0, #0x14
	mov r1, #4
	mvn r4, #0
	bl NHTTPi_alloc
	cmp r0, #0
	beq _020D00D0
	ldr r1, [r6]
	cmp r1, #0
	streq r0, [r0]
	streq r0, [r0, #4]
	streq r0, [r6]
	beq _020D00A0
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6]
	str r1, [r0, #4]
	ldr r1, [r6]
	ldr r1, [r1]
	str r0, [r1, #4]
	ldr r1, [r6]
	str r0, [r1]
_020D00A0:
	ldr r4, [r6, #4]
	ldr r2, [r6, #4]
	mvn r1, #0
	add r2, r2, #1
	str r2, [r6, #4]
	str r4, [r0, #8]
	str r5, [r0, #0xc]
	str r1, [r0, #0x10]
	ldr r0, [r6, #4]
	cmp r0, #0
	movlt r0, #0
	strlt r0, [r6, #4]
_020D00D0:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTPi_setReqQueue

	arm_func_start NHTTPi_findReqQueue
NHTTPi_findReqQueue: ; 0x020D00D8
	ldr r3, [r0]
	mov r0, #0
	cmp r3, #0
	bxeq lr
	ldr r2, [r3, #8]
	cmp r2, r1
	moveq r0, r3
	bxeq lr
	ldr r12, [r3, #4]
	cmp r12, r3
	bxeq lr
_020D0104:
	ldr r2, [r12, #8]
	cmp r2, r1
	moveq r0, r12
	bxeq lr
	ldr r12, [r12, #4]
	cmp r12, r3
	bne _020D0104
	bx lr
	arm_func_end NHTTPi_findReqQueue

	arm_func_start NHTTPi_freeReqQueue
NHTTPi_freeReqQueue: ; 0x020D0124
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	mov r1, r2
	mov r6, r0
	mov r7, #0
	bl NHTTPi_findReqQueue
	movs r4, r0
	beq _020D01CC
	ldr r1, [r6]
	ldr r0, [r1]
	cmp r1, r0
	beq _020D017C
	ldmia r4, {r0, r1}
	str r1, [r0, #4]
	ldr r1, [r4]
	ldr r0, [r4, #4]
	str r1, [r0]
	ldr r0, [r6]
	cmp r0, r4
	ldreq r0, [r4, #4]
	streq r0, [r6]
	b _020D0180
_020D017C:
	str r7, [r6]
_020D0180:
	ldr r1, [r4, #0xc]
	mov r0, r5
	bl NHTTPi_Request2Connection
	mov r6, r0
	ldr r1, [r4, #0xc]
	mov r0, r5
	bl NHTTPi_destroyRequestObject
	mov r0, r4
	bl NHTTPi_free
	cmp r6, #0
	beq _020D01C8
	mov r2, #8
	mov r0, r5
	mov r1, r6
	str r2, [r6, #4]
	bl NHTTPi_CompleteCallback
	mov r0, r6
	bl NHTTPi_DeleteConnection
_020D01C8:
	mov r7, #1
_020D01CC:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end NHTTPi_freeReqQueue

	arm_func_start NHTTPi_allFreeReqQueue
NHTTPi_allFreeReqQueue: ; 0x020D01D4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5]
	mov r4, r1
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_020D01EC:
	ldr r2, [r0, #8]
	mov r0, r5
	mov r1, r4
	bl NHTTPi_freeReqQueue
	ldr r0, [r5]
	cmp r0, #0
	bne _020D01EC
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_allFreeReqQueue

	arm_func_start NHTTPi_getReqFromReqQueue
NHTTPi_getReqFromReqQueue: ; 0x020D020C
	ldr r12, _020D0214 ; =NHTTPi_getHdrFromList
	bx r12
_020D0214: .word NHTTPi_getHdrFromList
	arm_func_end NHTTPi_getReqFromReqQueue

	arm_func_start setupGetcharFromHdrRecvBuf
setupGetcharFromHdrRecvBuf: ; 0x020D0218
	stmfd sp!, {r3, lr}
	cmp r1, #0x400
	movlt r0, #0
	strlt r0, [r2]
	strlt r1, [r3]
	ldmltfd sp!, {r3, pc}
	sub r12, r1, #0x400
	movs r12, r12, asr #9
	sub lr, r12, #1
	ldr r12, [r0, #0x34]
	beq _020D0254
_020D0244:
	cmp lr, #0
	sub lr, lr, #1
	ldr r12, [r12]
	bne _020D0244
_020D0254:
	ldr r0, _020D026C ; =0x000001FF
	sub r1, r1, #0x400
	str r12, [r2]
	and r0, r1, r0
	str r0, [r3]
	ldmfd sp!, {r3, pc}
_020D026C: .word 0x000001FF
	arm_func_end setupGetcharFromHdrRecvBuf

	arm_func_start getcharFromHdrRecvBuf
getcharFromHdrRecvBuf: ; 0x020D0270
	ldr r3, [r1]
	cmp r3, #0
	bne _020D02AC
	ldr r3, [r2]
	cmp r3, #0x400
	addlt r1, r3, #1
	addlt r0, r0, r3
	strlt r1, [r2]
	ldrltsb r0, [r0, #0x38]
	bxlt lr
	mov r3, #0
	ldr r0, [r0, #0x34]
	str r3, [r2]
	str r0, [r1]
	b _020D02C8
_020D02AC:
	ldr r0, [r2]
	cmp r0, #0x200
	moveq r0, #0
	streq r0, [r2]
	ldreq r0, [r1]
	ldreq r0, [r0]
	streq r0, [r1]
_020D02C8:
	ldr r3, [r2]
	add r0, r3, #1
	str r0, [r2]
	ldr r0, [r1]
	add r0, r0, r3
	ldrsb r0, [r0, #4]
	bx lr
	arm_func_end getcharFromHdrRecvBuf

	arm_func_start NHTTPi_findNextLineHdrRecvBuf
NHTTPi_findNextLineHdrRecvBuf: ; 0x020D02E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	movs r8, r3
	mov r11, r0
	mvnne r0, #0
	mov r10, r1
	mov r9, r2
	strne r0, [r8]
	ldr r7, [sp, #0x30]
	cmp r10, r9
	bge _020D03F4
	mov r0, r11
	mov r1, r10
	add r2, sp, #4
	add r3, sp, #0
	mvn r6, #0
	mov r5, #0
	bl setupGetcharFromHdrRecvBuf
	cmp r10, r9
	bge _020D03F4
	sub r4, r9, #1
_020D0338:
	mov r0, r11
	add r1, sp, #4
	add r2, sp, #0
	bl getcharFromHdrRecvBuf
	cmp r0, #0x3a
	bne _020D0360
	cmp r8, #0
	ldrne r1, [r8]
	cmpne r1, #0
	strlt r10, [r8]
_020D0360:
	cmp r5, #0
	beq _020D0398
	cmp r0, #0xa
	bne _020D038C
	sub r0, r9, #1
	mov r6, #0
	cmp r10, r0
	addne r6, r10, #1
	cmp r7, #0
	movne r0, #2
	strne r0, [r7]
_020D038C:
	add sp, sp, #8
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D0398:
	cmp r0, #0xd
	bne _020D03BC
	mov r6, #0
	cmp r10, r4
	addne r6, r10, #1
	mov r5, #1
	cmp r7, #0
	movne r1, r5
	strne r1, [r7]
_020D03BC:
	cmp r0, #0xa
	bne _020D03E8
	sub r0, r9, #1
	cmp r10, r0
	moveq r0, #0
	addne r0, r10, #1
	cmp r7, #0
	movne r1, #1
	add sp, sp, #8
	strne r1, [r7]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D03E8:
	add r10, r10, #1
	cmp r10, r9
	blt _020D0338
_020D03F4:
	mvn r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end NHTTPi_findNextLineHdrRecvBuf

	arm_func_start NHTTPi_skipSpaceHdrRecvBuf
NHTTPi_skipSpaceHdrRecvBuf: ; 0x020D0400
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r7, r1
	mov r6, r2
	mov r8, r0
	cmp r7, r6
	bge _020D0464
	add r5, sp, #4
	add r4, sp, #0
	mov r2, r5
	mov r3, r4
	bl setupGetcharFromHdrRecvBuf
	cmp r7, r6
	bge _020D0464
_020D0438:
	mov r0, r8
	mov r1, r5
	mov r2, r4
	bl getcharFromHdrRecvBuf
	cmp r0, #0x20
	addne sp, sp, #8
	movne r0, r7
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	add r7, r7, #1
	cmp r7, r6
	blt _020D0438
_020D0464:
	mvn r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NHTTPi_skipSpaceHdrRecvBuf

	arm_func_start NHTTPi_compareTokenN_HdrRecvBuf
NHTTPi_compareTokenN_HdrRecvBuf: ; 0x020D0470
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r9, r1
	mov r4, r2
	mov r10, r0
	mov r8, r3
	cmp r9, r4
	ldr r7, [sp, #0x30]
	bge _020D0548
	add r2, sp, #4
	add r3, sp, #0
	bl setupGetcharFromHdrRecvBuf
	mov r0, r10
	add r1, sp, #4
	add r2, sp, #0
	bl getcharFromHdrRecvBuf
	mov r5, #1
	sub r6, r4, #1
	mov r4, #0
	mov r11, r5
	b _020D04F8
_020D04C4:
	cmp r1, #0
	cmpne r1, #0x20
	cmpne r1, r7
	cmpne r9, r6
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	add r1, sp, #4
	add r2, sp, #0
	bl getcharFromHdrRecvBuf
	add r9, r9, #1
	add r8, r8, #1
_020D04F8:
	ldrsb r1, [r8]
	mov r2, r5
	mov r3, r11
	cmp r1, #0x41
	movlt r2, r4
	cmp r1, #0x5a
	movgt r3, #0
	tst r2, r3
	moveq r2, r1
	addne r2, r1, #0x20
	mov r3, #1
	cmp r0, #0x41
	movlt r3, #0
	mov r12, #1
	cmp r0, #0x5a
	movgt r12, #0
	tst r3, r12
	addne r0, r0, #0x20
	cmp r0, r2
	beq _020D04C4
_020D0548:
	mvn r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end NHTTPi_compareTokenN_HdrRecvBuf

	arm_func_start NHTTPi_loadFromHdrRecvBuf
NHTTPi_loadFromHdrRecvBuf: ; 0x020D0554
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	mov r7, r2
	mov r6, r3
	ldr r0, [r4]
	add r2, r7, r6
	mov r8, r1
	cmp r2, r0
	bgt _020D0634
	cmp r6, #0
	beq _020D062C
	cmp r7, #0x400
	bge _020D05B4
	rsb r5, r7, #0x400
	cmp r6, r5
	movle r5, r6
	add r1, r4, #0x38
	mov r0, r8
	mov r2, r5
	add r1, r1, r7
	bl NHTTPi_memcpy
	add r7, r7, r5
	sub r6, r6, r5
	add r8, r8, r5
_020D05B4:
	cmp r6, #0
	beq _020D062C
	sub r2, r7, #0x400
	ldr r0, _020D063C ; =0x000001FF
	movs r1, r2, asr #9
	and r7, r2, r0
	sub r0, r1, #1
	ldr r4, [r4, #0x34]
	beq _020D05E8
_020D05D8:
	cmp r0, #0
	sub r0, r0, #1
	ldr r4, [r4]
	bne _020D05D8
_020D05E8:
	cmp r6, #0
	beq _020D062C
	ldr r9, _020D063C ; =0x000001FF
_020D05F4:
	rsb r5, r7, #0x200
	cmp r6, r5
	movle r5, r6
	add r1, r4, #4
	mov r0, r8
	mov r2, r5
	add r1, r1, r7
	bl NHTTPi_memcpy
	add r0, r7, r5
	and r7, r0, r9
	subs r6, r6, r5
	add r8, r8, r5
	ldr r4, [r4]
	bne _020D05F4
_020D062C:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020D0634:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020D063C: .word 0x000001FF
	arm_func_end NHTTPi_loadFromHdrRecvBuf

	arm_func_start NHTTPi_isRecvBufFull
NHTTPi_isRecvBufFull: ; 0x020D0640
	ldr r0, [r0, #0x1c]
	cmp r0, r1
	movls r0, #1
	movhi r0, #0
	bx lr
	arm_func_end NHTTPi_isRecvBufFull

	arm_func_start NHTTPi_RecvBuf
NHTTPi_RecvBuf: ; 0x020D0654
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, [r1, #0x2c]
	ldr r12, [sp, #0x10]
	ldr lr, [r4, #0x1c]
	sub lr, lr, r3
	str lr, [sp]
	str r12, [sp, #4]
	ldr r12, [r4, #0x28]
	add r3, r12, r3
	bl NHTTPi_SocRecv
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTPi_RecvBuf

	arm_func_start NHTTPi_RecvBufN
NHTTPi_RecvBufN: ; 0x020D0688
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r7, r1
	ldr r4, [r7, #0x2c]
	mov r5, r3
	mov r8, r0
	mov r0, r4
	mov r1, r5
	mov r6, r2
	bl NHTTPi_isRecvBufFull
	cmp r0, #0
	addne sp, sp, #8
	ldrne r0, _020D0700 ; =0xFFFFFC15
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r4, #0x1c]
	ldr r0, [sp, #0x20]
	sub r1, r1, r5
	cmp r0, r1
	movle r1, r0
	str r1, [sp]
	ldr r0, [sp, #0x24]
	mov r1, r7
	str r0, [sp, #4]
	ldr r3, [r4, #0x28]
	mov r0, r8
	mov r2, r6
	add r3, r3, r5
	bl NHTTPi_SocRecv
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D0700: .word 0xFFFFFC15
	arm_func_end NHTTPi_RecvBufN

	arm_func_start NHTTPi_InitRequestInfo
NHTTPi_InitRequestInfo: ; 0x020D0704
	mov r1, #0
	str r1, [r0]
	bx lr
	arm_func_end NHTTPi_InitRequestInfo

	arm_func_start NHTTPi_CreateRequest
NHTTPi_CreateRequest: ; 0x020D0710
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x208
	mov r8, r1
	movs r1, r2
	cmpne r1, #1
	str r2, [sp, #4]
	str r0, [sp]
	mov r6, r3
	mov r4, #4
	mov r7, #0
	cmpne r1, #2
	beq _020D0748
	mov r1, #0xb
_020D0744:
	b _020D0768
_020D0748:
	mov r5, #0x258
	mov r0, r5
	mov r1, r4
	bl NHTTPi_alloc
	movs r7, r0
	bne _020D0770
_020D0760:
	ldr r0, [sp]
	mov r1, #1
_020D0768:
	bl NHTTPi_SetError
	b _020D0B9C
_020D0770:
	mov r1, r5
	bl NHTTPi_memclr
	rsb r9, r4, #0x440
	mov r0, r9
	mov r1, r4
	bl NHTTPi_alloc
	str r0, [r7, #0x2c]
	cmp r0, #0
	bne _020D0798
	b _020D0760
_020D0798:
	mov r1, r9
	bl NHTTPi_memclr
	ldr r0, [r7, #0x2c]
	ldr r2, [sp, #0x230]
	str r6, [r0, #0x28]
	ldr r0, [r7, #0x2c]
	ldr r1, [sp, #0x238]
	str r2, [r0, #0x1c]
	ldr r0, [r7, #0x2c]
	ldr r3, [sp, #0x23c]
	str r1, [r0, #0x2c]
	ldr r2, [r7, #0x2c]
	mov r0, r8
	sub r1, r5, #0x59
	str r3, [r2, #0x30]
	bl NHTTPi_strnlen
	mov r5, r0
	cmp r5, #7
	bgt _020D07E8
	b _020D084C
_020D07E8:
	add r6, sp, #8
	mov r1, #0x200
	mov r0, r6
	bl NHTTPi_memclr
	mov r0, r6
	mov r1, r8
	mov r2, r5
	bl NHTTPi_memcpy
	mov r8, #7
	mov r0, #0x50
	str r0, [r7, #0x20]
	ldr r1, _020D0BE8 ; =0x020E58BC
	mov r0, r6
	mov r2, r8
	bl NHTTPi_strnicmp
	cmp r0, #0
	beq _020D0864
	mov r8, #8
	ldr r1, _020D0BEC ; =0x020E58C4
	mov r0, r6
	mov r2, r8
	mov r6, #1
	bl NHTTPi_strnicmp
	cmp r0, #0
	beq _020D0858
_020D084C:
	ldr r0, [sp]
	mov r1, r4
	b _020D0744
_020D0858:
	str r6, [r7, #8]
	rsb r0, r6, #0x1bc
	str r0, [r7, #0x20]
_020D0864:
	add r0, sp, #8
	sub r4, r5, r8
	cmp r4, #0
	add r6, r0, r8
	bgt _020D0884
_020D0878:
	ldr r0, [sp]
	mov r1, #4
	b _020D0768
_020D0884:
	mov r5, #0
	mov r9, r5
	mov r10, r5
	mov r11, #2
	b _020D08F0
_020D0898:
	cmp r10, #2
	subeq r10, r10, #1
	beq _020D08EC
	cmp r10, #1
	bne _020D08E0
	sub r0, r5, #1
	mov r1, r11
	add r0, r6, r0
	bl NHTTPi_strToHex
	mov r0, r0, lsl #0x18
	movs r0, r0, asr #0x18
	sub r10, r10, #1
	bpl _020D08D0
	b _020D0878
_020D08D0:
	cmp r0, #0x2f
	bne _020D08EC
	sub r9, r9, #1
	b _020D0904
_020D08E0:
	cmp r0, #0x25
	moveq r10, #2
	addeq r9, r9, #1
_020D08EC:
	add r5, r5, #1
_020D08F0:
	cmp r5, r4
	bge _020D0904
	ldrsb r0, [r6, r5]
	cmp r0, #0x2f
	bne _020D0898
_020D0904:
	cmp r10, #0
	mov r1, #4
	beq _020D0918
	ldr r0, [sp]
	b _020D0744
_020D0918:
	add r0, r8, r4
	sub r5, r0, r9, lsl #1
	add r0, r5, #1
	bl NHTTPi_alloc
	str r0, [r7, #0x24]
	cmp r0, #0
	bne _020D0938
	b _020D0760
_020D0938:
	add r1, r5, #1
	bl NHTTPi_memclr
	ldr r0, [r7, #0x24]
	add r1, sp, #8
	mov r2, r8
	bl NHTTPi_memcpy
	mov r9, #0
	mov r5, r9
	mov r10, r9
	mov r11, r9
	cmp r4, #0
	ble _020D09E8
_020D0968:
	cmp r10, #2
	subeq r10, r10, #1
	beq _020D09DC
	cmp r10, #1
	bne _020D09B4
	sub r0, r9, #1
	add r0, r6, r0
	mov r1, #2
	bl NHTTPi_strToHex
	mov r0, r0, lsl #0x18
	mov r1, r0, asr #0x18
	ldr r0, [r7, #0x24]
	cmp r1, #0x2f
	add r0, r8, r0
	add r0, r5, r0
	sub r10, r10, #1
	strb r1, [r0, #-1]
	moveq r11, #1
	b _020D09DC
_020D09B4:
	ldrsb r1, [r6, r9]
	cmp r1, #0x2f
	moveq r11, #1
	cmp r11, #0
	cmpeq r1, #0x25
	ldrne r0, [r7, #0x24]
	moveq r10, #2
	addne r0, r8, r0
	strneb r1, [r5, r0]
	add r5, r5, #1
_020D09DC:
	add r9, r9, #1
	cmp r9, r4
	blt _020D0968
_020D09E8:
	ldr r2, [r7, #0x24]
	mov r0, #0
	add r1, r8, r5
	strb r0, [r2, r1]
	ldr r1, [r7, #0x24]
	cmp r5, #0
	add r2, r1, r8
	mov r4, r0
	ble _020D0A30
_020D0A0C:
	ldrsb r1, [r2, r0]
	cmp r1, #0x2f
	cmpne r1, #0x3a
	addeq r1, r0, r8
	streq r1, [r7, #0x14]
	beq _020D0A30
	add r0, r0, #1
	cmp r0, r5
	blt _020D0A0C
_020D0A30:
	cmp r0, r5
	addeq r0, r0, r8
	streq r0, [r7, #0x14]
	streq r0, [r7, #0x18]
	beq _020D0ADC
	ldrsb r1, [r2, r0]
	cmp r1, #0x2f
	ldreq r0, [r7, #0x14]
	streq r0, [r7, #0x18]
	beq _020D0ADC
	cmp r1, #0x3a
	bne _020D0ADC
	cmp r0, r5
	bge _020D0A88
_020D0A68:
	ldrsb r1, [r2, r0]
	cmp r1, #0x2f
	addeq r1, r0, r8
	streq r1, [r7, #0x18]
	beq _020D0A88
	add r0, r0, #1
	cmp r0, r5
	blt _020D0A68
_020D0A88:
	cmp r0, r5
	addeq r0, r0, r8
	streq r0, [r7, #0x18]
	beq _020D0ADC
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x24]
	add r2, r1, #1
	ldr r1, [r7, #0x18]
	add r0, r0, r2
	sub r1, r1, r2
	bl NHTTPi_strtonum
	cmp r0, #0
	ldrlt r0, [r7, #0x20]
	blt _020D0AD0
	ldr r1, _020D0BF0 ; =0x0000FFFF
	cmp r0, r1
	ble _020D0AD0
	b _020D0878
_020D0AD0:
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r7, #0x20]
_020D0ADC:
	ldr r0, [r7, #8]
	mov r2, #8
	cmp r0, #0
	ldr r0, [r7, #0x14]
	moveq r2, #7
	sub r5, r0, r2
	mov r1, #4
	add r0, r5, #1
	bl NHTTPi_alloc
	str r0, [r7, #0x28]
	cmp r0, #0
	bne _020D0B10
	b _020D0760
_020D0B10:
	add r1, r5, #1
	bl NHTTPi_memclr
	ldr r0, [r7, #8]
	mov r3, #8
	cmp r0, #0
	ldr r1, [r7, #0x24]
	moveq r3, #7
	ldr r0, [r7, #0x28]
	mov r2, r5
	add r1, r1, r3
	bl NHTTPi_memcpy
	ldr r1, _020D0BF4 ; =0x020E3EF4
	add r0, r7, #0x38
	mov r2, #0x14
	bl NHTTPi_memcpy
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x234]
	str r0, [r7, #0x1c]
	str r4, [r7, #0xac]
	str r4, [r7, #0xb0]
	str r4, [r7, #0xb4]
	str r4, [r7, #0xb8]
	str r4, [r7, #0xbc]
	str r4, [r7, #0xc0]
	str r4, [r7, #0xc4]
	str r4, [r7, #0xcc]
	str r4, [r7, #0xd0]
	str r4, [r7, #0xd8]
	ldr r1, [r7, #0x2c]
	add sp, sp, #0x208
	str r2, [r1, #0x438]
	str r4, [r7, #0xc]
	mov r0, r7
	str r4, [r7, #0x248]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D0B9C:
	cmp r7, #0
	beq _020D0BDC
	ldr r0, [r7, #0x24]
	cmp r0, #0
	beq _020D0BB4
	bl NHTTPi_free
_020D0BB4:
	ldr r0, [r7, #0x28]
	cmp r0, #0
	beq _020D0BC4
	bl NHTTPi_free
_020D0BC4:
	ldr r0, [r7, #0x2c]
	cmp r0, #0
	beq _020D0BD4
	bl NHTTPi_free
_020D0BD4:
	mov r0, r7
	bl NHTTPi_free
_020D0BDC:
	mov r0, #0
	add sp, sp, #0x208
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D0BE8: .word ov15_020E58BC
_020D0BEC: .word ov15_020E58C4
_020D0BF0: .word 0x0000FFFF
_020D0BF4: .word ov15_020E3EF4
	arm_func_end NHTTPi_CreateRequest

	arm_func_start NHTTPi_DestroyRequest
NHTTPi_DestroyRequest: ; 0x020D0BF8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	bl NHTTPi_GetMutexInfoP
	mov r1, r5
	mov r4, r0
	bl NHTTPi_Request2Connection
	cmp r0, #0
	movne r1, #0
	strne r1, [r0, #0x14]
	ldr r0, [r5, #0x2c]
	bl NHTTPi_free
	mov r0, r4
	mov r1, r5
	bl NHTTPi_destroyRequestObject
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_DestroyRequest

	arm_func_start deleteStrList
deleteStrList: ; 0x020D0C34
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #0
_020D0C44:
	ldr r0, [r6]
	cmp r6, r0
	beq _020D0C60
	ldr r5, [r0]
	bl NHTTPi_free
	str r5, [r6]
	b _020D0C6C
_020D0C60:
	mov r0, r6
	bl NHTTPi_free
	mov r6, r4
_020D0C6C:
	cmp r6, #0
	bne _020D0C44
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end deleteStrList

	arm_func_start NHTTPi_destroyRequestObject
NHTTPi_destroyRequestObject: ; 0x020D0C78
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl NHTTPi_Request2Connection
	cmp r0, #0
	movne r1, #0
	strne r1, [r0, #0x10]
	ldr r0, [r4, #0x30]
	bl deleteStrList
	ldr r0, [r4, #0x34]
	bl deleteStrList
	ldr r0, [r4, #0x24]
	bl NHTTPi_free
	ldr r0, [r4, #0x28]
	bl NHTTPi_free
	mov r0, r4
	bl NHTTPi_free
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTPi_destroyRequestObject

	arm_func_start NHTTPi_SendRequestAsync
NHTTPi_SendRequestAsync: ; 0x020D0CC0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r8, r1
	bl NHTTPi_GetBgnEndInfoP
	mov r5, r0
	mov r0, r7
	bl NHTTPi_GetThreadInfoP
	mov r4, r0
	mov r0, r7
	bl NHTTPi_GetMutexInfoP
	ldr r1, [r8, #4]
	mov r6, r0
	cmp r1, #0
	beq _020D0D10
	mov r4, #0xb
	mov r0, r5
	mov r1, r4
	bl NHTTPi_SetError
	sub r0, r4, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D0D10:
	bl NHTTPi_lockReqList
	mov r0, r7
	bl NHTTPi_GetListInfoP
	mov r1, r8
	bl NHTTPi_setReqQueue
	movs r7, r0
	mov r1, #1
	bmi _020D0D40
	mov r0, r4
	str r1, [r8, #4]
	bl NHTTPi_kickCommThread
	b _020D0D48
_020D0D40:
	mov r0, r5
	bl NHTTPi_SetError
_020D0D48:
	mov r0, r6
	bl NHTTPi_unlockReqList
	mov r0, r7
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NHTTPi_SendRequestAsync

	arm_func_start NHTTPi_CancelRequestAsync
NHTTPi_CancelRequestAsync: ; 0x020D0D58
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r4, #0
	bl NHTTPi_GetReqInfoP
	mov r5, r0
	mov r0, r8
	bl NHTTPi_GetMutexInfoP
	ldr r6, [r5]
	mov r5, r0
	bl NHTTPi_lockReqList
	cmp r6, #0
	beq _020D0DC0
	ldr r0, [r6, #8]
	cmp r0, r7
	ldreq r0, [r6, #0xc]
	ldreq r0, [r0]
	cmpeq r0, #0
	bne _020D0DC0
	ldr r0, [r6, #0xc]
	mov r4, #1
	str r4, [r0]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #0x10]
	mov r0, r5
	bl NHTTPi_SocCancel
_020D0DC0:
	cmp r4, #0
	bne _020D0DE0
	mov r0, r8
	bl NHTTPi_GetListInfoP
	mov r1, r5
	mov r2, r7
	bl NHTTPi_freeReqQueue
	mov r4, r0
_020D0DE0:
	mov r0, r5
	bl NHTTPi_unlockReqList
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NHTTPi_CancelRequestAsync

	arm_func_start NHTTPi_cancelAllRequests
NHTTPi_cancelAllRequests: ; 0x020D0DF0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl NHTTPi_GetReqInfoP
	mov r4, r0
	mov r0, r6
	bl NHTTPi_GetListInfoP
	mov r5, r0
	mov r0, r6
	bl NHTTPi_GetMutexInfoP
	ldr r6, [r4]
	mov r4, r0
	bl NHTTPi_lockReqList
	cmp r6, #0
	beq _020D0E54
	ldr r0, [r6, #0xc]
	ldr r0, [r0]
	cmp r0, #0
	bne _020D0E54
	ldr r0, [r6, #0xc]
	mov r1, #1
	str r1, [r0]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #0x10]
	mov r0, r4
	bl NHTTPi_SocCancel
_020D0E54:
	mov r0, r5
	mov r1, r4
	bl NHTTPi_allFreeReqQueue
	mov r0, r4
	bl NHTTPi_unlockReqList
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTPi_cancelAllRequests

	arm_func_start NHTTPi_DestroyResponse
NHTTPi_DestroyResponse: ; 0x020D0E6C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _020D0E9C
_020D0E84:
	ldr r4, [r0]
	bl NHTTPi_free
	mov r0, r4
	str r4, [r5, #0x34]
	cmp r4, #0
	bne _020D0E84
_020D0E9C:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _020D0EAC
	bl NHTTPi_free
_020D0EAC:
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _020D0EBC
	bl NHTTPi_free
_020D0EBC:
	ldr r3, [r5, #0x30]
	cmp r3, #0
	beq _020D0EE4
	ldr r0, [r5, #0x28]
	ldr r2, [r5, #0x438]
	ldr r1, _020D0F08 ; =NHTTPi_free
	blx r3
	mov r0, #0
	str r0, [r5, #0x28]
	str r0, [r5, #0x1c]
_020D0EE4:
	mov r0, r6
	mov r1, r5
	bl NHTTPi_Response2Connection
	cmp r0, #0
	movne r1, #0
	strne r1, [r0, #0x14]
	mov r0, r5
	bl NHTTPi_free
	ldmfd sp!, {r4, r5, r6, pc}
_020D0F08: .word NHTTPi_free
	arm_func_end NHTTPi_DestroyResponse

	arm_func_start NHTTPi_getHeaderValue
NHTTPi_getHeaderValue: ; 0x020D0F0C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	mov r3, #0
	mov r11, r2
	mov r9, r1
	add r5, sp, #8
	str r3, [sp, #4]
	add r6, sp, #4
	ldr r2, [r10]
	mov r3, r5
	mov r1, #0xc
	str r6, [sp]
	bl NHTTPi_findNextLineHdrRecvBuf
	mov r7, r0
	cmp r7, #0
	ble _020D1028
	mov r4, #0
_020D0F54:
	ldr r2, [r10]
	mov r0, r10
	mov r1, r7
	mov r3, r5
	str r6, [sp]
	bl NHTTPi_findNextLineHdrRecvBuf
	ldr r2, [sp, #8]
	mov r8, r0
	cmp r2, #0
	ble _020D101C
	mov r0, r10
	mov r1, r7
	mov r3, r9
	str r4, [sp]
	bl NHTTPi_compareTokenN_HdrRecvBuf
	cmp r0, #0
	bne _020D101C
	ldr r1, [sp, #8]
	ldr r0, [r10]
	add r1, r1, #1
	cmp r1, r0
	bge _020D1010
	ldr r2, [r10]
	mov r0, r10
	mov r3, r4
	str r6, [sp]
	bl NHTTPi_findNextLineHdrRecvBuf
	cmp r0, #0
	ldrle r4, [r10]
	ble _020D0FE4
	ldr r1, [sp, #4]
	cmp r0, r1
	addlt sp, sp, #0xc
	mvnlt r0, #0
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	sub r4, r0, r1
_020D0FE4:
	ldr r1, [sp, #8]
	mov r0, r10
	mov r2, r4
	add r1, r1, #1
	bl NHTTPi_skipSpaceHdrRecvBuf
	cmp r0, #0
	movlt r0, r4
	str r0, [r11]
	add sp, sp, #0xc
	sub r0, r4, r0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D1010:
	add sp, sp, #0xc
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D101C:
	mov r7, r8
	cmp r8, #0
	bgt _020D0F54
_020D1028:
	mvn r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end NHTTPi_getHeaderValue

	arm_func_start NHTTP_GetResponseHeaderField
NHTTP_GetResponseHeaderField: ; 0x020D1034
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5, #0x14]
	mov r6, r1
	cmp r0, #0
	mov r4, r2
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _020D106C
	bl NHTTPi_free
	mov r0, #0
	str r0, [r5, #0x24]
_020D106C:
	add r2, sp, #0
	mov r0, r5
	mov r1, r6
	bl NHTTPi_getHeaderValue
	movs r7, r0
	bmi _020D10D0
	mov r6, #4
	mov r1, r6
	add r0, r7, #1
	bl NHTTPi_alloc
	str r0, [r5, #0x24]
	cmp r0, #0
	subeq r0, r6, #5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	strb r1, [r0, r7]
	ldr r1, [r5, #0x24]
	ldr r2, [sp]
	mov r0, r5
	mov r3, r7
	bl NHTTPi_loadFromHdrRecvBuf
	ldr r1, [r5, #0x24]
	mov r0, r7
	str r1, [r4]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D10D0:
	ldr r0, _020D113C ; =0x020E58D0
	mov r1, r6
	bl NHTTPi_strcmp
	cmp r0, #0
	bne _020D1134
	mov r6, #4
	mov r0, r6
	mov r1, r6
	bl NHTTPi_alloc
	str r0, [r5, #0x24]
	cmp r0, #0
	subeq r0, r6, #5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	strb r1, [r0, #3]
	mov r6, #3
	ldr r1, [r5, #0x24]
	mov r0, r5
	mov r3, r6
	mov r2, #9
	bl NHTTPi_loadFromHdrRecvBuf
	ldr r1, [r5, #0x24]
	mov r0, r6
	str r1, [r4]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D1134:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D113C: .word ov15_020E58D0
	arm_func_end NHTTP_GetResponseHeaderField

	arm_func_start NHTTPi_InitThreadInfo
NHTTPi_InitThreadInfo: ; 0x020D1140
	ldr r12, _020D1148 ; =NHTTPi_IsCreateCommThreadMessageQueueOff
	bx r12
_020D1148: .word NHTTPi_IsCreateCommThreadMessageQueueOff
	arm_func_end NHTTPi_InitThreadInfo

	arm_func_start NHTTPi_IsCreateCommThreadMessageQueueOn
NHTTPi_IsCreateCommThreadMessageQueueOn: ; 0x020D114C
	mov r1, #1
	str r1, [r0, #0xec]
	bx lr
	arm_func_end NHTTPi_IsCreateCommThreadMessageQueueOn

	arm_func_start NHTTPi_IsCreateCommThreadMessageQueueOff
NHTTPi_IsCreateCommThreadMessageQueueOff: ; 0x020D1158
	mov r1, #0
	str r1, [r0, #0xec]
	bx lr
	arm_func_end NHTTPi_IsCreateCommThreadMessageQueueOff

	arm_func_start NHTTPi_IsCreateCommThreadMessageQueue
NHTTPi_IsCreateCommThreadMessageQueue: ; 0x020D1164
	ldr r0, [r0, #0xec]
	bx lr
	arm_func_end NHTTPi_IsCreateCommThreadMessageQueue

	arm_func_start NHTTPi_CheckHeaderEnd
NHTTPi_CheckHeaderEnd: ; 0x020D116C
	sub r2, r1, #2
	and r2, r2, #3
	ldrsb r2, [r0, r2]
	cmp r2, #0xd
	subeq r3, r1, #1
	andeq r3, r3, #3
	ldreqsb r3, [r0, r3]
	cmpeq r3, #0xd
	moveq r0, #1
	bxeq lr
	cmp r2, #0xa
	subeq r3, r1, #1
	andeq r3, r3, #3
	ldreqsb r3, [r0, r3]
	cmpeq r3, #0xa
	moveq r0, #1
	bxeq lr
	sub r3, r1, #4
	and r3, r3, #3
	ldrsb r3, [r0, r3]
	cmp r3, #0xd
	subeq r3, r1, #3
	andeq r3, r3, #3
	ldreqsb r3, [r0, r3]
	cmpeq r3, #0xa
	cmpeq r2, #0xd
	subeq r1, r1, #1
	andeq r1, r1, #3
	ldreqsb r0, [r0, r1]
	cmpeq r0, #0xa
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end NHTTPi_CheckHeaderEnd

	arm_func_start NHTTPi_SaveBuf
NHTTPi_SaveBuf: ; 0x020D11F0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r4, [sp, #0x34]
	mov r10, r0
	mov r0, r4
	str r4, [sp, #4]
	mov r9, r1
	mov r8, r2
	mov r7, r3
	cmp r0, #0
	ldr r6, [sp, #0x30]
	ble _020D12AC
	mov r11, #0
_020D1224:
	ldr r0, [r10]
	cmp r0, #0
	addne sp, sp, #8
	mvnne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r7]
	mov r1, r6
	rsb r5, r0, #0x4000
	cmp r4, r5
	movle r5, r4
	mov r2, r5
	add r0, r9, r0
	bl NHTTPi_memcpy
	ldr r0, [r7]
	add r6, r6, r5
	add r0, r0, r5
	str r0, [r7]
	cmp r0, #0x4000
	sub r4, r4, r5
	bne _020D12A4
	mov r0, r10
	mov r1, r8
	mov r2, r9
	mov r3, #0x4000
	str r11, [sp]
	bl NHTTPi_SocSend
	cmp r0, #0
	addle sp, sp, #8
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r7]
	sub r0, r1, r0
	str r0, [r7]
_020D12A4:
	cmp r4, #0
	bgt _020D1224
_020D12AC:
	ldr r0, [sp, #4]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end NHTTPi_SaveBuf

	arm_func_start NHTTPi_SkipLineBuf
NHTTPi_SkipLineBuf: ; 0x020D12B8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r7, #0
	mov r10, r0
	mov r9, r1
	mov r8, r2
	mov r6, r7
	strb r7, [sp, #8]
	strb r7, [sp, #9]
	mov r5, #1
	mov r11, r7
	add r4, sp, #8
	b _020D1318
_020D12EC:
	mov r0, r10
	mov r1, r9
	mov r2, r8
	add r3, r4, r3
	stmia sp, {r5, r11}
	bl NHTTPi_SocRecv
	cmp r0, #0
	addle sp, sp, #0xc
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r7, r7, r0
	add r6, r6, #1
_020D1318:
	and r3, r6, #1
	ldrsb r0, [r4, r3]
	cmp r0, #0xd
	subeq r0, r6, #1
	andeq r0, r0, #1
	ldreqsb r0, [r4, r0]
	cmpeq r0, #0xa
	bne _020D12EC
	mov r0, r7
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end NHTTPi_SkipLineBuf

	arm_func_start NHTTPi_GetPostContentlength
NHTTPi_GetPostContentlength: ; 0x020D1344
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r6, [sp, #0x28]
	mov r10, r0
	mov r9, r1
	mov r8, r2
	mov r7, r3
	mov r4, #0
	bl NHTTPi_Request2Connection
	movs r5, r0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r4, [r5, #0x24]
	mov r11, r4
_020D1378:
	ldr r0, [r9]
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r5
	mov r2, r8
	mov r3, r4
	str r11, [r5, #0x28]
	bl NHTTPi_PostSendCallback
	cmp r0, #0
	movlt r0, r11
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x24]
	cmp r1, #0
	beq _020D1404
	cmp r0, #0
	moveq r0, r11
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r6, #0
	add r4, r4, r1
	cmpne r6, #1
	beq _020D13E4
	cmp r6, #2
	beq _020D13F0
	b _020D1378
_020D13E4:
	ldr r0, [r7]
	add r0, r0, r1
	b _020D13FC
_020D13F0:
	bl NHTTPi_getUrlEncodedSize2
	ldr r1, [r7]
	add r0, r1, r0
_020D13FC:
	str r0, [r7]
	b _020D1378
_020D1404:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end NHTTPi_GetPostContentlength

	arm_func_start NHTTPi_SendPostData
NHTTPi_SendPostData: ; 0x020D140C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r11, r2
	ldr r2, [sp, #0x48]
	ldr r9, [sp, #0x40]
	str r2, [sp, #0x48]
	mov r2, #0
	ldr r8, [sp, #0x44]
	str r0, [sp, #8]
	mov r10, r1
	str r3, [sp, #0xc]
	str r2, [sp, #0x14]
	bl NHTTPi_Request2Connection
	str r0, [sp, #0x10]
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #3
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x14]
	add r4, sp, #0x18
	str r1, [r0, #0x24]
_020D1460:
	ldr r0, [r10]
	cmp r0, #0
	addne sp, sp, #0x1c
	movne r0, #3
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x10]
	mov r3, #0
	mov r2, r1
	str r3, [r2, #0x28]
	ldr r0, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x14]
	bl NHTTPi_PostSendCallback
	cmp r0, #0
	addlt sp, sp, #0x1c
	movlt r0, #3
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x10]
	ldr r5, [r0, #0x28]
	ldr r6, [r0, #0x24]
	cmp r5, #0
	beq _020D159C
	cmp r6, #0
	addeq sp, sp, #0x1c
	moveq r0, #3
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x48]
	cmp r0, #0
	ldr r0, [sp, #0x14]
	add r0, r0, r5
	str r0, [sp, #0x14]
	ldrne r0, [sp, #0x48]
	cmpne r0, #1
	beq _020D14F4
	cmp r0, #2
	beq _020D1530
	b _020D1460
_020D14F4:
	str r6, [sp]
	mov r0, r10
	mov r1, r11
	mov r2, r9
	mov r3, r8
	str r5, [sp, #4]
	bl NHTTPi_SaveBuf
	cmp r0, #0
	addlt sp, sp, #0x1c
	movlt r0, #1
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bne _020D1460
	add sp, sp, #0x1c
	mov r0, #2
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D1530:
	cmp r5, #0
	mov r7, #0
	bls _020D1460
_020D153C:
	mov r0, r4
	mov r1, #3
	bl NHTTPi_memclr
	ldrsb r1, [r6, r7]
	mov r0, r4
	bl NHTTPi_encodeUrlChar
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r10
	mov r1, r11
	mov r2, r9
	mov r3, r8
	bl NHTTPi_SaveBuf
	cmp r0, #0
	addlt sp, sp, #0x1c
	movlt r0, #1
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	addeq sp, sp, #0x1c
	moveq r0, #2
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r7, r7, #1
	cmp r7, r5
	blo _020D153C
	b _020D1460
_020D159C:
	mov r0, #0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end NHTTPi_SendPostData

	arm_func_start NHTTPi_BufFull
NHTTPi_BufFull: ; 0x020D15A8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r1, [r5, #4]
	mov r6, r0
	mov r0, r5
	mov r4, #0
	bl NHTTPi_isRecvBufFull
	ldr r1, [r5, #0x1c]
	cmp r1, #0
	ldrne r1, [r5, #0x28]
	cmpne r1, #0
	beq _020D15E0
	cmp r0, #0
	beq _020D1624
_020D15E0:
	mov r0, r6
	mov r1, r5
	bl NHTTPi_Response2Connection
	movs r1, r0
	beq _020D1628
	mov r0, r6
	bl NHTTPi_BufferFullCallback
	ldr r0, [r5, #0x28]
	cmp r0, #0
	ldrne r0, [r5, #0x1c]
	cmpne r0, #0
	beq _020D1628
	ldr r1, [r5, #4]
	mov r0, r5
	bl NHTTPi_isRecvBufFull
	cmp r0, #0
	b _020D1624
_020D1624:
	moveq r4, #1
_020D1628:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTPi_BufFull

	arm_func_start NHTTPi_SendData
NHTTPi_SendData: ; 0x020D1630
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	mov r9, r0
	mov r8, r1
	mov r7, r2
	bl NHTTPi_GetSystemInfoP
	mov r6, r0
	bl NHTTPi_GetBgnEndInfoP
	mov r5, r0
	mov r0, r6
	bl NHTTPi_GetThreadInfoP
	mov r4, r0
	mov r0, r6
	bl NHTTPi_GetReqInfoP
	ldr r0, [r0]
	cmp r7, #0
	ldr r0, [r0, #0xc]
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	str r8, [sp]
	str r7, [sp, #4]
	ldr r2, [r5, #0xc]
	add r1, r4, #0x100
	add r3, r9, #0x324
	bl NHTTPi_SaveBuf
	cmp r0, #0
	addlt sp, sp, #8
	movlt r0, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	moveq r0, #2
	movne r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end NHTTPi_SendData

	arm_func_start NHTTPi_SendProxyAuthorization
NHTTPi_SendProxyAuthorization: ; 0x020D16B8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetReqInfoP
	ldr r0, [r0]
	ldr r4, [r0, #0xc]
	ldr r0, [r4, #0x244]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, _020D172C ; =0x020E58E0
	mov r0, r5
	mov r2, #0x1b
	bl NHTTPi_SendData
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r2, [r4, #0x244]
	mov r0, r5
	add r1, r4, #0x1e8
	bl NHTTPi_SendData
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r1, _020D1730 ; =0x020E58FC
	mov r0, r5
	mov r2, #2
	bl NHTTPi_SendData
	cmp r0, #0
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020D172C: .word ov15_020E58E0
_020D1730: .word ov15_020E58FC
	arm_func_end NHTTPi_SendProxyAuthorization

	arm_func_start NHTTPi_SendBasicAuthorization
NHTTPi_SendBasicAuthorization: ; 0x020D1734
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetReqInfoP
	ldr r0, [r0]
	ldr r4, [r0, #0xc]
	ldr r0, [r4, #0xa8]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, _020D17A8 ; =0x020E5900
	mov r0, r5
	mov r2, #0x15
	bl NHTTPi_SendData
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r2, [r4, #0xa8]
	mov r0, r5
	add r1, r4, #0x4c
	bl NHTTPi_SendData
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r1, _020D17AC ; =0x020E58FC
	mov r0, r5
	mov r2, #2
	bl NHTTPi_SendData
	cmp r0, #0
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020D17A8: .word ov15_020E5900
_020D17AC: .word ov15_020E58FC
	arm_func_end NHTTPi_SendBasicAuthorization

	arm_func_start NHTTPi_SendProxyConnectMethod
NHTTPi_SendProxyConnectMethod: ; 0x020D17B0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	bl NHTTPi_GetSystemInfoP
	mov r4, r0
	bl NHTTPi_GetReqInfoP
	ldr r1, [r0]
	mov r0, r4
	ldr r9, [r1, #0xc]
	bl NHTTPi_GetThreadInfoP
	mov r8, r0
	mov r0, r4
	bl NHTTPi_GetBgnEndInfoP
	add r6, sp, #4
	mov r7, r0
	ldr r1, [r9, #0x20]
	mov r0, r6
	bl NHTTPi_intToStr
	mov r5, r0
	ldr r1, _020D19D4 ; =0x020E5918
	mov r0, r10
	mov r2, #8
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r9, #0x24]
	ldr r2, [r9, #0x14]
	mov r0, r10
	add r1, r1, #8
	sub r2, r2, #8
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _020D19D8 ; =0x020E5924
	mov r11, #1
	mov r0, r10
	mov r1, r4
	mov r2, r11
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r6
	mov r2, r5
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020D19DC ; =0x020E5928
	mov r0, r10
	mov r2, #0xb
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020D19E0 ; =0x020E5934
	mov r0, r10
	mov r2, #6
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r9, #0x24]
	ldr r2, [r9, #0x14]
	mov r0, r10
	add r1, r1, #8
	sub r2, r2, #8
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r4
	mov r2, r11
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r6
	mov r2, r5
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r5, _020D19E4 ; =0x020E58FC
	mov r4, #2
	mov r0, r10
	mov r1, r5
	mov r2, r4
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020D19E8 ; =0x020E593C
	mov r0, r10
	mov r2, #0x25
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl NHTTPi_SendProxyAuthorization
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r5
	mov r2, r4
	bl NHTTPi_SendData
	ldr r3, [r10, #0x324]
	cmp r3, #0
	ble _020D19B4
	mov r0, #0
	str r0, [sp]
	ldr r1, [r7, #0xc]
	mov r0, r9
	add r2, r8, #0x100
	bl NHTTPi_SocSend
	cmp r0, #0
	addlt sp, sp, #0xc
	movlt r0, r11
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	addeq sp, sp, #0xc
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D19B4:
	mov r4, #0
	add r0, r8, #0x100
	mov r1, #0x4000
	str r4, [r10, #0x324]
	bl NHTTPi_memclr
	mov r0, r4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D19D4: .word ov15_020E5918
_020D19D8: .word ov15_020E5924
_020D19DC: .word ov15_020E5928
_020D19E0: .word ov15_020E5934
_020D19E4: .word ov15_020E58FC
_020D19E8: .word ov15_020E593C
	arm_func_end NHTTPi_SendProxyConnectMethod

	arm_func_start NHTTPi_RecvProxyConnectHeader
NHTTPi_RecvProxyConnectHeader: ; 0x020D19EC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x210
	bl NHTTPi_GetSystemInfoP
	mov r6, r0
	bl NHTTPi_GetReqInfoP
	mov r5, r0
	mov r0, r6
	bl NHTTPi_GetThreadInfoP
	str r0, [sp, #0xc]
	mov r0, r6
	bl NHTTPi_GetBgnEndInfoP
	mov r4, r0
	mov r0, r6
	bl NHTTPi_GetMutexInfoP
	ldr r2, [r5]
	mov r1, #0
	ldr r6, [r2, #0xc]
	str r1, [sp, #8]
	ldr r7, [r6, #0x2c]
	mov r5, r0
	mov r8, r1
_020D1A40:
	rsb r0, r8, #0x200
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r9, sp, #0x10
	ldr r2, [r4, #0xc]
	mov r0, r5
	mov r1, r6
	add r3, r9, r8
	bl NHTTPi_SocRecv
	mov r11, r0
	add r0, sp, #0x19
	mov r1, #3
	add r8, r8, r11
	bl NHTTPi_strToInt
	str r0, [r7, #0x18]
	ldr r1, _020D1BCC ; =0x020E5964
	mov r0, r9
	mov r2, #5
	bl NHTTPi_strnicmp
	cmp r0, #0
	ldreqsb r0, [sp, #0x18]
	mov r12, #0
	mov lr, r12
	cmpeq r0, #0x20
	ldreq r0, [r7, #0x18]
	cmpeq r0, #0xc8
	moveq r0, #1
	streq r0, [sp, #8]
	cmp r8, #0
	ble _020D1B50
	mov r9, #1
	add r3, sp, #0x10
	mov r1, r9
	mov r2, r9
_020D1ACC:
	cmp r12, #1
	ble _020D1AF0
	add r10, r3, r12
	ldrsb r0, [r10, #-1]
	cmp r0, #0xd
	ldreqsb r0, [r10]
	cmpeq r0, #0xd
	moveq lr, r2
	beq _020D1B44
_020D1AF0:
	cmp r12, #1
	ble _020D1B14
	add r10, r3, r12
	ldrsb r0, [r10, #-1]
	cmp r0, #0xa
	ldreqsb r0, [r10]
	cmpeq r0, #0xa
	moveq lr, r1
	beq _020D1B44
_020D1B14:
	cmp r12, #3
	ble _020D1B44
	add r0, r3, r12
	ldrsb r10, [r0, #-3]
	cmp r10, #0xd
	ldreqsb r10, [r0, #-2]
	cmpeq r10, #0xa
	ldreqsb r10, [r0, #-1]
	cmpeq r10, #0xd
	ldreqsb r0, [r0]
	cmpeq r0, #0xa
	moveq lr, r9
_020D1B44:
	add r12, r12, #1
	cmp r12, r8
	blt _020D1ACC
_020D1B50:
	cmp lr, #0
	mov r0, #1
	beq _020D1B74
	ldr r0, [sp, #8]
	add sp, sp, #0x210
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D1B74:
	cmp r11, #0
	mov r9, #0
	addlt sp, sp, #0x210
	movlt r0, r9
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r8, #0x200
	blt _020D1A40
	stmia sp, {r0, r9}
	ldr r3, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, r5
	mov r1, r6
	add r3, r3, #0x100
	bl NHTTPi_SocRecv
	cmp r0, #0
	addlt sp, sp, #0x210
	movlt r0, r9
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	beq _020D1A40
	mov r0, r9
	add sp, sp, #0x210
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D1BCC: .word ov15_020E5964
	arm_func_end NHTTPi_RecvProxyConnectHeader

	arm_func_start NHTTPi_SendHeaderList
NHTTPi_SendHeaderList: ; 0x020D1BD0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetReqInfoP
	ldr r0, [r0]
	ldr r7, [r0, #0xc]
	add r0, r7, #0x30
	bl NHTTPi_getHdrFromList
	movs r8, r0
	beq _020D1C8C
	ldr r6, _020D1C94 ; =0x020E596C
	ldr r4, _020D1C98 ; =0x020E58FC
	mov r5, #2
_020D1C04:
	ldr r0, [r8, #8]
	bl NHTTPi_strlen
	mov r2, r0
	ldr r1, [r8, #8]
	mov r0, r9
	bl NHTTPi_SendData
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r9
	mov r1, r6
	mov r2, r5
	bl NHTTPi_SendData
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r8, #0xc]
	bl NHTTPi_strlen
	mov r2, r0
	ldr r1, [r8, #0xc]
	mov r0, r9
	bl NHTTPi_SendData
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r9
	mov r1, r4
	mov r2, r5
	bl NHTTPi_SendData
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r8
	bl NHTTPi_free
	add r0, r7, #0x30
	bl NHTTPi_getHdrFromList
	movs r8, r0
	bne _020D1C04
_020D1C8C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020D1C94: .word ov15_020E596C
_020D1C98: .word ov15_020E58FC
	arm_func_end NHTTPi_SendHeaderList

	arm_func_start NHTTPi_SendProcPostDataRaw
NHTTPi_SendProcPostDataRaw: ; 0x020D1C9C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1c
	mov r8, r0
	bl NHTTPi_GetSystemInfoP
	mov r7, r0
	bl NHTTPi_GetMutexInfoP
	mov r5, r0
	mov r0, r7
	bl NHTTPi_GetReqInfoP
	ldr r1, [r0]
	mov r0, r7
	ldr r6, [r1, #0xc]
	bl NHTTPi_GetThreadInfoP
	mov r4, r0
	mov r0, r7
	bl NHTTPi_GetBgnEndInfoP
	mov r7, r0
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r0, [r6, #0x24c]
	cmp r0, #0
	bne _020D1D1C
	add r3, sp, #0xc
	mov r0, r5
	mov r1, r6
	str r2, [sp]
	bl NHTTPi_GetPostContentlength
	cmp r0, #0
	bne _020D1D24
	add sp, sp, #0x1c
	mov r0, #3
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D1D1C:
	ldr r0, [r6, #0x250]
	str r0, [sp, #0xc]
_020D1D24:
	add r10, sp, #0x10
	ldr r1, [sp, #0xc]
	mov r0, r10
	bl NHTTPi_intToStr
	mov r9, r0
	ldr r1, _020D1E18 ; =0x020E5970
	mov r0, r8
	mov r2, #0x10
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r8
	mov r1, r10
	mov r2, r9
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r10, _020D1E1C ; =0x020E58FC
	mov r9, #2
	mov r0, r8
	mov r1, r10
	mov r2, r9
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r8
	mov r1, r10
	mov r2, r9
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [r6, #0x24c]
	cmp r1, #0
	bne _020D1DF4
	ldr r0, [r7, #0xc]
	add r2, r8, #0x324
	str r0, [sp]
	mov r0, r5
	mov r1, r6
	str r2, [sp, #4]
	mov r3, #0
	add r2, r4, #0x100
	str r3, [sp, #8]
	bl NHTTPi_SendPostData
	cmp r0, #0
	beq _020D1E0C
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D1DF4:
	ldr r2, [r6, #0x250]
	mov r0, r8
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D1E0C:
	mov r0, #0
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D1E18: .word ov15_020E5970
_020D1E1C: .word ov15_020E58FC
	arm_func_end NHTTPi_SendProcPostDataRaw

	arm_func_start NHTTPi_SendProcPostDataBinary
NHTTPi_SendProcPostDataBinary: ; 0x020D1E20
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r10, r0
	bl NHTTPi_GetSystemInfoP
	mov r4, r0
	bl NHTTPi_GetMutexInfoP
	mov r6, r0
	mov r0, r4
	bl NHTTPi_GetReqInfoP
	ldr r1, [r0]
	mov r0, r4
	ldr r7, [r1, #0xc]
	bl NHTTPi_GetThreadInfoP
	mov r11, r0
	mov r0, r4
	bl NHTTPi_GetBgnEndInfoP
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r5, [r7, #0x34]
	mov r8, r0
	cmp r5, #0
	beq _020D1F20
	mov r4, #1
	add r9, sp, #0xc
_020D1E80:
	add r1, r1, #0x16
	str r1, [sp, #0xc]
	ldr r0, [r5, #8]
	bl NHTTPi_strlen
	ldr r1, [sp, #0xc]
	add r0, r0, #0x29
	add r1, r1, r0
	str r1, [sp, #0xc]
	ldr r0, [r5, #0x14]
	cmp r0, #0
	addne r1, r1, #0x4b
	add r1, r1, #2
	str r1, [sp, #0xc]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _020D1EEC
	str r4, [sp]
	ldr r2, [r5, #8]
	mov r0, r6
	mov r1, r7
	mov r3, r9
	bl NHTTPi_GetPostContentlength
	cmp r0, #0
	bne _020D1EF8
	add sp, sp, #0x1c
	mov r0, #3
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D1EEC:
	ldr r0, [r5, #0x10]
	add r1, r1, r0
	str r1, [sp, #0xc]
_020D1EF8:
	ldr r0, [sp, #0xc]
	add r1, r0, #2
	str r1, [sp, #0xc]
	ldr r0, [r7, #0x34]
	ldr r0, [r0]
	cmp r5, r0
	beq _020D1F20
	ldr r5, [r5, #4]
	cmp r5, #0
	bne _020D1E80
_020D1F20:
	add r9, sp, #0x10
	add r1, r1, #0x18
	mov r0, r9
	str r1, [sp, #0xc]
	bl NHTTPi_intToStr
	mov r4, r0
	ldr r1, _020D21B4 ; =0x020E3F33
	mov r0, r10
	mov r2, #0x2c
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	add r1, r7, #0x3a
	mov r2, #0x12
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r5, _020D21B8 ; =0x020E58FC
	mov r0, r10
	mov r1, r5
	mov r2, #2
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020D21BC ; =0x020E5970
	mov r0, r10
	mov r2, #0x10
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r9
	mov r2, r4
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r5
	mov r2, #2
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r5
	mov r2, #2
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r9, [r7, #0x34]
	cmp r9, #0
	beq _020D2178
	add r4, r10, #0x324
_020D2010:
	mov r0, r10
	add r1, r7, #0x38
	mov r2, #0x14
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r5
	mov r2, #2
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020D21C0 ; =0x020E3F0C
	mov r0, r10
	mov r2, #0x26
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r9, #8]
	bl NHTTPi_strlen
	mov r2, r0
	ldr r1, [r9, #8]
	mov r0, r10
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020D21C4 ; =0x020E5984
	mov r0, r10
	mov r2, #3
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r9, #0x14]
	cmp r0, #0
	beq _020D20CC
	ldr r1, _020D21C8 ; =0x020E3F94
	mov r0, r10
	mov r2, #0x4b
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D20CC:
	mov r0, r10
	mov r1, r5
	mov r2, #2
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r9, #0xc]
	cmp r1, #0
	bne _020D2128
	ldr r1, [r8, #0xc]
	mov r0, r6
	stmia sp, {r1, r4}
	mov r1, #1
	str r1, [sp, #8]
	ldr r3, [r9, #8]
	mov r1, r7
	add r2, r11, #0x100
	bl NHTTPi_SendPostData
	cmp r0, #0
	beq _020D2140
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2128:
	ldr r2, [r9, #0x10]
	mov r0, r10
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2140:
	mov r0, r10
	mov r1, r5
	mov r2, #2
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r7, #0x34]
	ldr r0, [r0]
	cmp r9, r0
	beq _020D2178
	ldr r9, [r9, #4]
	cmp r9, #0
	bne _020D2010
_020D2178:
	mov r0, r10
	add r1, r7, #0x38
	mov r2, #0x14
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020D21CC ; =0x020E5988
	mov r0, r10
	mov r2, #4
	bl NHTTPi_SendData
	cmp r0, #0
	moveq r0, #0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D21B4: .word ov15_020E3F33
_020D21B8: .word ov15_020E58FC
_020D21BC: .word ov15_020E5970
_020D21C0: .word ov15_020E3F0C
_020D21C4: .word ov15_020E5984
_020D21C8: .word ov15_020E3F94
_020D21CC: .word ov15_020E5988
	arm_func_end NHTTPi_SendProcPostDataBinary

	arm_func_start NHTTPi_SendProcPostDataAscii
NHTTPi_SendProcPostDataAscii: ; 0x020D21D0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r5, r0
	bl NHTTPi_GetSystemInfoP
	mov r4, r0
	bl NHTTPi_GetMutexInfoP
	mov r7, r0
	mov r0, r4
	bl NHTTPi_GetReqInfoP
	ldr r1, [r0]
	mov r0, r4
	ldr r8, [r1, #0xc]
	bl NHTTPi_GetThreadInfoP
	mov r11, r0
	mov r0, r4
	bl NHTTPi_GetBgnEndInfoP
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r6, [r8, #0x34]
	mov r9, r0
	cmp r6, #0
	beq _020D22B8
	mov r4, #2
	add r10, sp, #0xc
_020D2230:
	ldr r0, [r6, #8]
	bl NHTTPi_getUrlEncodedSize
	ldr r1, [sp, #0xc]
	add r0, r1, r0
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _020D2280
	str r4, [sp]
	ldr r2, [r6, #8]
	mov r0, r7
	mov r1, r8
	mov r3, r10
	bl NHTTPi_GetPostContentlength
	cmp r0, #0
	bne _020D2290
	add sp, sp, #0x1c
	mov r0, #3
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2280:
	bl NHTTPi_getUrlEncodedSize
	ldr r1, [sp, #0xc]
	add r0, r1, r0
	str r0, [sp, #0xc]
_020D2290:
	ldr r0, [r8, #0x34]
	ldr r0, [r0]
	cmp r6, r0
	beq _020D22B8
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r6, [r6, #4]
	cmp r6, #0
	bne _020D2230
_020D22B8:
	add r6, sp, #0x10
	ldr r1, [sp, #0xc]
	mov r0, r6
	bl NHTTPi_intToStr
	mov r4, r0
	ldr r1, _020D24B8 ; =0x020E3F60
	mov r0, r5
	mov r2, #0x31
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020D24BC ; =0x020E5970
	mov r0, r5
	mov r2, #0x10
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r6, _020D24C0 ; =0x020E58FC
	mov r4, #2
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, [r8, #0x34]
	cmp r4, #0
	beq _020D24AC
_020D236C:
	ldr r1, [r4, #8]
	mov r10, #0
	ldrsb r0, [r1]
	cmp r0, #0
	beq _020D23C0
	add r6, sp, #0x10
_020D2384:
	ldrsb r1, [r1, r10]
	mov r0, r6
	bl NHTTPi_encodeUrlChar
	mov r2, r0
	mov r0, r5
	mov r1, r6
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r4, #8]
	add r10, r10, #1
	ldrsb r0, [r1, r10]
	cmp r0, #0
	bne _020D2384
_020D23C0:
	ldr r1, _020D24C4 ; =0x020E5990
	mov r0, r5
	mov r2, #1
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020D2424
	ldr r1, [r9, #0xc]
	add r0, r5, #0x324
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r3, [r4, #8]
	mov r0, r7
	mov r1, r8
	add r2, r11, #0x100
	bl NHTTPi_SendPostData
	cmp r0, #0
	beq _020D2474
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2424:
	ldrsb r0, [r1]
	mov r10, #0
	cmp r0, #0
	beq _020D2474
	add r6, sp, #0x10
_020D2438:
	ldrsb r1, [r1, r10]
	mov r0, r6
	bl NHTTPi_encodeUrlChar
	mov r2, r0
	mov r0, r5
	mov r1, r6
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r4, #0xc]
	add r10, r10, #1
	ldrsb r0, [r1, r10]
	cmp r0, #0
	bne _020D2438
_020D2474:
	ldr r0, [r8, #0x34]
	ldr r0, [r0]
	cmp r4, r0
	beq _020D24AC
	ldr r1, _020D24C8 ; =0x020E5994
	mov r0, r5
	mov r2, #1
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, [r4, #4]
	cmp r4, #0
	bne _020D236C
_020D24AC:
	mov r0, #0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D24B8: .word ov15_020E3F60
_020D24BC: .word ov15_020E5970
_020D24C0: .word ov15_020E58FC
_020D24C4: .word ov15_020E5990
_020D24C8: .word ov15_020E5994
	arm_func_end NHTTPi_SendProcPostDataAscii

	arm_func_start NHTTPi_ThreadInit
NHTTPi_ThreadInit: ; 0x020D24CC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mvn r4, #0
	add r0, r5, #4
	mov r1, #0x100
	str r4, [r5]
	bl NHTTPi_memclr
	add r0, r5, #0x104
	mov r1, #0x200
	bl NHTTPi_memclr
	mov r0, #0
	str r4, [r5, #0x314]
	str r4, [r5, #0x318]
	str r0, [r5, #0x324]
	str r0, [r5, #0x338]
	str r0, [r5, #0x33c]
	str r0, [r5, #0x334]
	str r0, [r5, #0x32c]
	str r0, [r5, #0x330]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_ThreadInit

	arm_func_start NHTTPi_ThreadReqEnd
NHTTPi_ThreadReqEnd: ; 0x020D251C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	bl NHTTPi_GetSystemInfoP
	mov r6, r0
	bl NHTTPi_GetBgnEndInfoP
	mov r4, r0
	mov r0, r6
	bl NHTTPi_GetReqInfoP
	mov r5, r0
	mov r0, r6
	bl NHTTPi_GetMutexInfoP
	ldr r1, [r5]
	mov r6, r0
	ldr r7, [r1, #0xc]
	mov r1, r7
	ldr r8, [r7, #0x2c]
	bl NHTTPi_Request2Connection
	mov r9, r0
	ldr r0, [r7]
	cmp r0, #0
	movne r0, #0
	strne r0, [r10, #0x338]
	movne r1, #8
	ldr r0, [r10, #0x338]
	strne r1, [r10, #0x330]
	cmp r0, #0
	bne _020D25B4
	ldr r2, [r4, #0xc]
	cmp r2, #0
	blt _020D25B4
	mov r0, r6
	mov r1, r7
	bl NHTTPi_SocClose
	cmp r0, #0
	movlt r0, #0xa
	strlt r0, [r10, #0x330]
	mvn r0, #0
	str r0, [r4, #0xc]
_020D25B4:
	ldr r0, [r10, #0x330]
	cmp r0, #0
	moveq r0, #1
	streq r0, [r8, #0x10]
	beq _020D25F0
	mov r11, #0
	str r11, [r8, #0x10]
	ldr r1, [r10, #0x330]
	mov r0, r4
	bl NHTTPi_SetError
	ldr r1, [r8, #0x28]
	add r0, r10, #0x104
	cmp r1, r0
	streq r11, [r8, #0x28]
	streq r11, [r8, #0x1c]
_020D25F0:
	cmp r9, #0
	ldrne r0, [r10, #0x330]
	strne r0, [r9, #4]
	mov r0, r6
	bl NHTTPi_lockReqList
	ldr r0, [r5]
	bl NHTTPi_free
	mov r1, #0
	mov r0, r6
	str r1, [r5]
	bl NHTTPi_unlockReqList
	mov r0, r6
	mov r1, r7
	bl NHTTPi_destroyRequestObject
	cmp r9, #0
	ldrne r0, [r8, #0x10]
	mov r1, r9
	cmpne r0, #0
	movne r0, #5
	strne r0, [r9]
	mov r0, r6
	bl NHTTPi_CompleteCallback
	cmp r9, #0
	beq _020D2658
	mov r0, r9
	bl NHTTPi_NotifyCompletion
_020D2658:
	mov r0, r9
	bl NHTTPi_DeleteConnection
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end NHTTPi_ThreadReqEnd

	arm_func_start NHTTPi_ThreadExecReqQueue
NHTTPi_ThreadExecReqQueue: ; 0x020D2664
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl NHTTPi_GetSystemInfoP
	mov r5, r0
	bl NHTTPi_GetMutexInfoP
	mov r6, r0
	bl NHTTPi_lockReqList
	mov r0, r5
	bl NHTTPi_GetListInfoP
	bl NHTTPi_getReqFromReqQueue
	movs r4, r0
	mvneq r0, #0
	streq r0, [r7]
	beq _020D26B0
	mov r0, r5
	bl NHTTPi_GetReqInfoP
	ldr r1, [r4, #8]
	str r1, [r7]
	str r4, [r0]
_020D26B0:
	mov r0, r6
	bl NHTTPi_unlockReqList
	ldr r0, [r7]
	cmp r0, #0
	movge r0, #1
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	bl NHTTPi_GetThreadInfoP
	bl NHTTPi_idleCommThread
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end NHTTPi_ThreadExecReqQueue

	arm_func_start NHTTPi_ThreadHostAddrProc
NHTTPi_ThreadHostAddrProc: ; 0x020D26DC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetReqInfoP
	ldr r0, [r0]
	ldr r4, [r0, #0xc]
	ldr r0, [r4, #0xc]
	ldr r6, [r4, #0x28]
	cmp r0, #0
	addne r6, r4, #0xe4
	mov r0, r6
	bl NHTTPi_strlen
	cmp r0, #0
	beq _020D2728
	mov r0, r6
	add r1, r5, #4
	bl NHTTPi_strcmp
	cmp r0, #0
	beq _020D2764
_020D2728:
	mov r0, r4
	mov r1, r6
	bl NHTTPi_resolveHostname
	str r0, [r5, #0x314]
	cmp r0, #0
	bne _020D276C
	ldr r0, [r4, #0xc]
	cmp r0, #0
	movne r0, #0xc
	strne r0, [r5, #0x330]
	movne r0, #0
	moveq r0, #4
	streq r0, [r5, #0x330]
	moveq r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020D2764:
	ldr r0, [r5, #0x318]
	str r0, [r5, #0x314]
_020D276C:
	add r0, r5, #4
	mov r1, #0x100
	bl NHTTPi_memclr
	mov r0, r6
	mov r1, #0xff
	bl NHTTPi_strnlen
	mov r2, r0
	mov r1, r6
	add r0, r5, #4
	bl NHTTPi_memcpy
	ldr r0, [r4, #0x20]
	ldr r1, [r5, #0x314]
	str r0, [r5, #0x31c]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldrne r0, [r4, #0x1e4]
	strne r0, [r5, #0x31c]
	ldr r0, [r5, #0x318]
	cmp r1, r0
	ldreq r1, [r5, #0x31c]
	ldreq r0, [r5, #0x320]
	cmpeq r1, r0
	bne _020D27D4
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _020D27DC
_020D27D4:
	mov r0, #0
	str r0, [r5, #0x338]
_020D27DC:
	ldr r1, [r5, #0x314]
	ldr r0, [r5, #0x31c]
	str r1, [r5, #0x318]
	str r0, [r5, #0x320]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTPi_ThreadHostAddrProc

	arm_func_start NHTTPi_ThreadConnectProc
NHTTPi_ThreadConnectProc: ; 0x020D27F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	mov r8, r0
	mov r9, #0
	bl NHTTPi_GetSystemInfoP
	mov r6, r0
	bl NHTTPi_GetBgnEndInfoP
	mov r4, r0
	mov r0, r6
	bl NHTTPi_GetReqInfoP
	mov r5, r0
	ldr r1, [r5]
	mov r0, r6
	ldr r6, [r1, #0xc]
	bl NHTTPi_GetMutexInfoP
	ldr r1, [r8, #0x338]
	mov r7, r0
	cmp r1, #1
	bne _020D2850
	ldr r0, [r4, #0xc]
	bl NHTTPi_checkKeepAlive
	cmn r0, #1
	streq r9, [r8, #0x338]
_020D2850:
	ldr r0, [r8, #0x338]
	cmp r0, #0
	bne _020D2960
	ldr r2, [r4, #0xc]
	cmp r2, #0
	blt _020D2898
	mov r0, r7
	mov r1, r6
	bl NHTTPi_SocClose
	cmp r0, #0
	bge _020D2898
	mvn r0, #0
	str r0, [r4, #0xc]
	mov r0, #0xa
	str r0, [r8, #0x330]
	add sp, sp, #8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020D2898:
	mov r0, r6
	bl NHTTPi_SocOpen
	cmp r0, #0
	str r0, [r4, #0xc]
	movlt r0, #3
	strlt r0, [r8, #0x330]
	addlt sp, sp, #8
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r7
	bl NHTTPi_lockReqList
	ldr r2, [r4, #0xc]
	ldr r1, [r5]
	mov r0, r7
	str r2, [r1, #0x10]
	bl NHTTPi_unlockReqList
	ldr r0, [r6]
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r8, #0x314]
	mov r0, r4
	str r1, [sp]
	ldr r2, [r8, #0x31c]
	mov r1, r7
	str r2, [sp, #4]
	ldr r3, [r4, #0xc]
	mov r2, r6
	bl NHTTPi_SocConnect
	cmp r0, #0
	bge _020D297C
	ldr r0, [r6, #0xc]
	cmp r0, #0
	movne r0, #0xd
	strne r0, [r8, #0x330]
	addne sp, sp, #8
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r4
	bl NHTTPi_GetSSLError
	cmp r0, #0
	movne r0, #0xe
	strne r0, [r8, #0x330]
	movne r0, #0
	moveq r0, #5
	streq r0, [r8, #0x330]
	add sp, sp, #8
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020D2960:
	mov r0, r7
	bl NHTTPi_lockReqList
	ldr r2, [r4, #0xc]
	ldr r1, [r5]
	mov r0, r7
	str r2, [r1, #0x10]
	bl NHTTPi_unlockReqList
_020D297C:
	mov r0, #1
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end NHTTPi_ThreadConnectProc

	arm_func_start NHTTPi_ThreadProxyProc
NHTTPi_ThreadProxyProc: ; 0x020D2988
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	bl NHTTPi_GetSystemInfoP
	mov r7, r0
	bl NHTTPi_GetBgnEndInfoP
	mov r4, r0
	mov r0, r7
	bl NHTTPi_GetReqInfoP
	mov r5, r0
	mov r0, r7
	bl NHTTPi_GetMutexInfoP
	ldr r2, [r5]
	mov r7, #0
	ldr r5, [r2, #0xc]
	mov r1, #0xa
	str r7, [r6, #0x324]
	str r1, [r6, #0x330]
	ldr r1, [r5, #8]
	mov r8, r0
	cmp r1, #0
	ldrne r0, [r5, #0xc]
	cmpne r0, #0
	beq _020D2A8C
	mov r0, r6
	bl NHTTPi_SendProxyConnectMethod
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	bl NHTTPi_RecvProxyConnectHeader
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, [r4, #0xc]
	mov r0, r4
	mov r1, r8
	mov r2, r5
	bl NHTTPi_SocSSLConnect
	cmp r0, #0
	beq _020D2A8C
	sub r1, r7, #0x3ec
	cmp r0, r1
	bne _020D2A4C
	mov r0, r4
	bl NHTTPi_GetSSLError
	cmp r0, #0
	movne r0, #0x10
	strne r0, [r6, #0x330]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D2A4C:
	mvn r1, #0x3ec
	cmp r0, r1
	mov r0, r4
	bne _020D2A74
	bl NHTTPi_GetSSLError
	cmp r0, #0
	movne r0, #0x11
	strne r0, [r6, #0x330]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D2A74:
	bl NHTTPi_GetSSLError
	cmp r0, #0
	movne r0, #0xe
	strne r0, [r6, #0x330]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D2A8C:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NHTTPi_ThreadProxyProc

	arm_func_start NHTTPi_ThreadSendProc
NHTTPi_ThreadSendProc: ; 0x020D2A94
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r5, #0
	bl NHTTPi_GetSystemInfoP
	mov r6, r0
	bl NHTTPi_GetReqInfoP
	ldr r1, [r0]
	mov r0, r6
	ldr r8, [r1, #0xc]
	bl NHTTPi_GetMutexInfoP
	mov r7, r0
	mov r0, r6
	bl NHTTPi_GetBgnEndInfoP
	mov r9, r0
	mov r0, r7
	mov r1, r8
	bl NHTTPi_Request2Connection
	mov r7, r0
	mov r0, r6
	bl NHTTPi_GetThreadInfoP
	mov r6, r0
	ldr r0, [r8, #0x24]
	bl NHTTPi_strlen
	mov r1, #0xa
	mov r10, r0
	cmp r7, #0
	str r1, [r4, #0x330]
	movne r1, #2
	strne r1, [r7]
	str r5, [r4, #0x324]
	ldr r1, [r8, #0x1c]
	mov r0, r5
	cmp r1, #0
	beq _020D2B34
	cmp r1, #1
	beq _020D2B44
	cmp r1, #2
	beq _020D2B4C
	b _020D2B5C
_020D2B34:
	ldr r1, _020D2DF8 ; =0x020E5998
	mov r0, r4
	mov r2, #4
	b _020D2B58
_020D2B44:
	ldr r1, _020D2DFC ; =0x020E59A0
	b _020D2B50
_020D2B4C:
	ldr r1, _020D2E00 ; =0x020E59A8
_020D2B50:
	mov r0, r4
	mov r2, #5
_020D2B58:
	bl NHTTPi_SendData
_020D2B5C:
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r8, #0xc]
	cmp r0, #0
	beq _020D2BA0
	ldr r0, [r8, #8]
	cmp r0, #0
	bne _020D2BA0
	ldr r1, [r8, #0x24]
	mov r0, r4
	mov r2, r10
	bl NHTTPi_SendData
	cmp r0, #0
	beq _020D2BEC
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D2BA0:
	ldr r2, [r8, #0x18]
	cmp r10, r2
	ble _020D2BD0
	ldr r1, [r8, #0x24]
	mov r0, r4
	add r1, r1, r2
	sub r2, r10, r2
	bl NHTTPi_SendData
	cmp r0, #0
	beq _020D2BEC
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D2BD0:
	ldr r1, _020D2E04 ; =0x020E59B0
	mov r0, r4
	mov r2, #1
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D2BEC:
	ldr r1, _020D2E08 ; =0x020E5928
	mov r0, r4
	mov r2, #0xb
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r8, #8]
	ldr r1, _020D2E0C ; =0x020E5934
	cmp r0, #0
	mov r7, #8
	mov r0, r4
	mov r2, #6
	moveq r7, #7
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [r8, #0x24]
	ldr r2, [r8, #0x14]
	mov r0, r4
	add r1, r1, r7
	sub r2, r2, r7
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, _020D2E10 ; =0x020E58FC
	mov r0, r4
	mov r2, #2
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r8, #0xc]
	cmp r0, #0
	beq _020D2CA0
	ldr r0, [r8, #8]
	cmp r0, #0
	bne _020D2CA0
	mov r0, r4
	bl NHTTPi_SendProxyAuthorization
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D2CA0:
	mov r0, r4
	bl NHTTPi_SendBasicAuthorization
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r4
	bl NHTTPi_SendHeaderList
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r8, #0x1c]
	cmp r0, #1
	bne _020D2D78
	ldr r0, [r8, #0x10]
	cmp r0, #0
	beq _020D2CEC
	mov r0, r4
	bl NHTTPi_SendProcPostDataRaw
	b _020D2D5C
_020D2CEC:
	ldr r0, [r8, #0xd4]
	cmp r0, #0
	bne _020D2D38
	ldr r3, [r8, #0x34]
	mov r1, #0
	mov r2, r3
	cmp r3, #0
	beq _020D2D44
_020D2D0C:
	ldr r0, [r2, #0x14]
	cmp r0, #0
	movne r1, #1
	bne _020D2D44
	ldr r0, [r3]
	cmp r2, r0
	beq _020D2D44
	ldr r2, [r2, #4]
	cmp r2, #0
	bne _020D2D0C
	b _020D2D44
_020D2D38:
	mov r1, #1
	cmp r0, #2
	movne r1, #0
_020D2D44:
	cmp r1, #0
	mov r0, r4
	beq _020D2D58
	bl NHTTPi_SendProcPostDataBinary
	b _020D2D5C
_020D2D58:
	bl NHTTPi_SendProcPostDataAscii
_020D2D5C:
	cmp r0, #0
	beq _020D2D94
	cmp r0, #3
	moveq r1, #3
	add sp, sp, #4
	streq r1, [r4, #0x330]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D2D78:
	ldr r1, _020D2E10 ; =0x020E58FC
	mov r0, r4
	mov r2, #2
	bl NHTTPi_SendData
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D2D94:
	ldr r3, [r4, #0x324]
	mov r10, #0
	cmp r3, #0
	ble _020D2DDC
	str r10, [sp]
	ldr r1, [r9, #0xc]
	mov r0, r8
	add r2, r6, #0x100
	bl NHTTPi_SocSend
	mov r7, r0
	add r0, r6, #0x100
	mov r1, #0x4000
	str r10, [r4, #0x324]
	bl NHTTPi_memclr
	cmp r7, #0
	movlt r10, #1
	cmp r7, #0
	moveq r10, #2
_020D2DDC:
	add r0, r6, #0x100
	mov r1, #0x4000
	str r5, [r4, #0x324]
	bl NHTTPi_memclr
	mov r0, r10
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D2DF8: .word ov15_020E5998
_020D2DFC: .word ov15_020E59A0
_020D2E00: .word ov15_020E59A8
_020D2E04: .word ov15_020E59B0
_020D2E08: .word ov15_020E5928
_020D2E0C: .word ov15_020E5934
_020D2E10: .word ov15_020E58FC
	arm_func_end NHTTPi_ThreadSendProc

	arm_func_start NHTTPi_ThreadRecvHeaderProc
NHTTPi_ThreadRecvHeaderProc: ; 0x020D2E14
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	bl NHTTPi_GetSystemInfoP
	mov r7, r0
	bl NHTTPi_GetReqInfoP
	ldr r1, [r0]
	mov r0, r7
	ldr r4, [r1, #0xc]
	ldr r5, [r4, #0x2c]
	bl NHTTPi_GetMutexInfoP
	mov r1, r4
	mov r6, r0
	bl NHTTPi_Request2Connection
	mov r8, r0
	mov r0, r7
	bl NHTTPi_GetBgnEndInfoP
	add r1, sp, #0xc
	mov r11, #0
	mov r7, r0
	cmp r8, #0
	strb r11, [r1]
	strb r11, [r1, #1]
	strb r11, [r1, #2]
	strb r11, [r1, #3]
	movne r0, #3
	strne r0, [r8]
	str r11, [r5]
	add r0, r10, #0x304
	mov r1, #0xe
	bl NHTTPi_memclr
	ldr r8, [r5, #0x34]
	add r0, r5, #0x38
	str r11, [r10, #0x328]
	str r0, [sp, #8]
_020D2EA0:
	ldr r0, [r4]
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r10, #0x328]
	cmp r1, #0x400
	bge _020D2EF4
	ldr r0, [sp, #8]
	add r3, r0, r1
	mov r0, #1
	stmia sp, {r0, r11}
	ldr r2, [r7, #0xc]
	mov r0, r6
	mov r1, r4
	bl NHTTPi_SocRecv
	ldr r2, [r10, #0x328]
	add r1, r5, r2
	ldrsb r3, [r1, #0x38]
	and r2, r2, #3
	b _020D2F78
_020D2EF4:
	ldr r0, _020D2FDC ; =0x000001FF
	ands r9, r1, r0
	bne _020D2F48
	cmp r8, #0
	mov r0, #0x204
	mov r1, #4
	beq _020D2F20
	bl NHTTPi_alloc
	str r0, [r8]
	mov r8, r0
	b _020D2F2C
_020D2F20:
	bl NHTTPi_alloc
	mov r8, r0
	str r8, [r5, #0x34]
_020D2F2C:
	cmp r8, #0
	moveq r0, #1
	streq r0, [r10, #0x330]
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r11, [r8]
_020D2F48:
	mov r0, #1
	stmia sp, {r0, r11}
	add r3, r8, #4
	ldr r2, [r7, #0xc]
	mov r0, r6
	mov r1, r4
	add r3, r3, r9
	bl NHTTPi_SocRecv
	add r1, r8, r9
	ldrsb r3, [r1, #4]
	ldr r1, [r10, #0x328]
	and r2, r1, #3
_020D2F78:
	add r1, sp, #0xc
	strb r3, [r1, r2]
	cmp r0, #0
	movle r0, #0xa
	strle r0, [r10, #0x330]
	addle sp, sp, #0x10
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r10, #0x328]
	add r1, r1, r0
	add r0, sp, #0xc
	str r1, [r10, #0x328]
	bl NHTTPi_CheckHeaderEnd
	cmp r0, #0
	beq _020D2EA0
	ldr r0, [r10, #0x328]
	str r0, [r5]
	ldr r0, [r5]
	cmp r0, #0
	moveq r0, #7
	streq r0, [r10, #0x330]
	moveq r0, #0
	movne r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2FDC: .word 0x000001FF
	arm_func_end NHTTPi_ThreadRecvHeaderProc

	arm_func_start NHTTPi_ThreadParseHeaderProc
NHTTPi_ThreadParseHeaderProc: ; 0x020D2FE0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	mov r8, r0
	mov r9, #7
	bl NHTTPi_GetSystemInfoP
	mov r4, r0
	bl NHTTPi_GetReqInfoP
	ldr r1, [r0]
	mov r0, r4
	ldr r6, [r1, #0xc]
	ldr r7, [r6, #0x2c]
	bl NHTTPi_GetThreadInfoP
	mov r4, #0
	mov r5, r0
	mov r0, r7
	add r1, r8, #0x304
	mov r2, r4
	mov r3, #0xe
	bl NHTTPi_loadFromHdrRecvBuf
	cmp r0, #0
	moveq r1, r9
	addeq sp, sp, #0xc
	moveq r0, r4
	streq r1, [r8, #0x330]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, _020D328C ; =0x020E5964
	add r0, r8, #0x304
	mov r2, #5
	bl NHTTPi_strnicmp
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, r4
	strne r9, [r8, #0x330]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r0, r8, #0x300
	ldrsb r0, [r0, #0xc]
	cmp r0, #0x20
	addne sp, sp, #0xc
	movne r0, r4
	strne r9, [r8, #0x330]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r0, r8, #0xd
	add r0, r0, #0x300
	mov r1, #3
	bl NHTTPi_strToInt
	cmp r0, #0
	str r0, [r7, #0x18]
	addlt sp, sp, #0xc
	movlt r0, r4
	strlt r9, [r8, #0x330]
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	str r4, [sp]
	mov r10, #0xc
	ldr r2, [r7]
	add r3, sp, #8
	mov r0, r7
	mov r1, r10
	bl NHTTPi_findNextLineHdrRecvBuf
	cmp r0, #0
	movlt r1, r9
	addlt sp, sp, #0xc
	movlt r0, r4
	strlt r1, [r8, #0x330]
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, _020D3290 ; =0x020E59B4
	add r2, sp, #4
	mov r0, r7
	mov r9, r4
	bl NHTTPi_getHeaderValue
	movs r3, r0
	addeq sp, sp, #0xc
	str r3, [r8, #0x32c]
	moveq r0, r4
	streq r4, [r8, #0x330]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r3, #0x4000
	mov r1, #7
	addgt sp, sp, #0xc
	movgt r0, r4
	strgt r1, [r8, #0x330]
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r3, #0
	ble _020D3180
	ldr r2, [sp, #4]
	mov r0, r7
	add r1, r5, #0x100
	bl NHTTPi_loadFromHdrRecvBuf
	cmp r0, #0
	moveq r1, #7
	addeq sp, sp, #0xc
	moveq r0, r4
	streq r1, [r8, #0x330]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [r8, #0x32c]
	add r0, r5, #0x100
	mov r5, #7
	bl NHTTPi_strToInt
	cmp r0, #0
	str r0, [r8, #0x32c]
	addlt sp, sp, #0xc
	movlt r0, r4
	strlt r5, [r8, #0x330]
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	b _020D3184
_020D3180:
	sub r0, r10, #0xd
_020D3184:
	str r0, [r7, #0xc]
	ldr r0, [r6, #8]
	mov r4, #7
	cmp r0, #0
	strne r9, [r8, #0x338]
	bne _020D3208
	ldr r1, _020D3294 ; =0x020E59C4
	add r2, sp, #4
	mov r0, r7
	bl NHTTPi_getHeaderValue
	movs r2, r0
	moveq r0, #0
	addeq sp, sp, #0xc
	streq r4, [r8, #0x330]
	streq r0, [r8, #0x338]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r2, #0x4000
	strgt r9, [r8, #0x338]
	bgt _020D3208
	cmp r2, #0
	ble _020D3204
	ldr r1, [sp, #4]
	ldr r3, _020D3298 ; =0x020E59D0
	mov r0, r7
	add r2, r1, r2
	str r9, [sp]
	bl NHTTPi_compareTokenN_HdrRecvBuf
	cmp r0, #0
	moveq r0, #1
	streq r0, [r8, #0x338]
	strne r9, [r8, #0x338]
	b _020D3208
_020D3204:
	str r9, [r8, #0x338]
_020D3208:
	ldr r1, _020D329C ; =0x020E59DC
	add r2, sp, #4
	mov r0, r7
	bl NHTTPi_getHeaderValue
	movs r2, r0
	addeq sp, sp, #0xc
	str r2, [r8, #0x33c]
	streq r4, [r8, #0x330]
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r2, #0x4000
	strgt r9, [r8, #0x33c]
	bgt _020D3278
	cmp r2, #0
	ble _020D3270
	ldr r1, [sp, #4]
	ldr r3, _020D32A0 ; =0x020E59F0
	mov r4, #0x3b
	mov r0, r7
	add r2, r1, r2
	str r4, [sp]
	bl NHTTPi_compareTokenN_HdrRecvBuf
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	b _020D3274
_020D3270:
	mov r0, #0
_020D3274:
	str r0, [r8, #0x33c]
_020D3278:
	str r9, [r8, #0x330]
	mov r0, #1
	str r0, [r7, #0x14]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D328C: .word ov15_020E5964
_020D3290: .word ov15_020E59B4
_020D3294: .word ov15_020E59C4
_020D3298: .word ov15_020E59D0
_020D329C: .word ov15_020E59DC
_020D32A0: .word ov15_020E59F0
	arm_func_end NHTTPi_ThreadParseHeaderProc

	arm_func_start NHTTPi_ThreadRecvBodyProc
NHTTPi_ThreadRecvBodyProc: ; 0x020D32A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	mov r9, #0
	bl NHTTPi_GetSystemInfoP
	mov r8, r0
	bl NHTTPi_GetReqInfoP
	ldr r1, [r0]
	mov r0, r8
	ldr r4, [r1, #0xc]
	ldr r5, [r4, #0x2c]
	bl NHTTPi_GetBgnEndInfoP
	mov r6, r0
	mov r0, r8
	bl NHTTPi_GetMutexInfoP
	mov r1, r4
	mov r7, r0
	bl NHTTPi_Request2Connection
	str r0, [sp, #8]
	mov r0, r8
	bl NHTTPi_GetThreadInfoP
	add r8, r0, #0x100
	ldr r0, [r4, #0x1c]
	cmp r0, #2
	ldrne r0, [r5, #0x18]
	cmpne r0, #0xcc
	cmpne r0, #0x130
	beq _020D3324
	cmp r0, #0x64
	blt _020D3330
	cmp r0, #0xc8
	bge _020D3330
_020D3324:
	add sp, sp, #0x10
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D3330:
	ldr r0, [sp, #8]
	mov r1, #0
	bl NHTTPi_SetVirtualContentLength
	ldr r0, [sp, #8]
	cmp r0, #0
	movne r1, #4
	strne r1, [r0]
	ldr r1, [r10, #0x32c]
	cmp r1, #0
	blt _020D3460
	ldr r0, [sp, #8]
	bl NHTTPi_SetVirtualContentLength
	ldr r0, [r10, #0x32c]
	cmp r0, #0
	ble _020D3420
	add r8, r10, #0x104
	mov r11, #6
_020D3374:
	ldr r0, [r10, #0x330]
	cmp r0, #6
	beq _020D33A0
	mov r0, r7
	mov r1, r5
	bl NHTTPi_BufFull
	cmp r0, #0
	streq r11, [r10, #0x330]
	streq r8, [r5, #0x28]
	moveq r0, #0x200
	streq r0, [r5, #0x1c]
_020D33A0:
	ldr r0, [r10, #0x330]
	ldr r1, [r10, #0x32c]
	cmp r0, #6
	stmia sp, {r1, r9}
	mov r0, r7
	ldr r2, [r6, #0xc]
	bne _020D33C8
	mov r1, r4
	mov r3, r9
	b _020D33D0
_020D33C8:
	ldr r3, [r5, #4]
	mov r1, r4
_020D33D0:
	bl NHTTPi_RecvBufN
	cmp r0, #0
	addlt sp, sp, #0x10
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	beq _020D3420
	ldr r1, [r10, #0x330]
	cmp r1, #6
	beq _020D340C
	ldr r1, [r5, #4]
	add r1, r1, r0
	str r1, [r5, #4]
	ldr r1, [r5, #8]
	add r1, r1, r0
	str r1, [r5, #8]
_020D340C:
	ldr r1, [r10, #0x32c]
	sub r0, r1, r0
	str r0, [r10, #0x32c]
	cmp r0, #0
	bgt _020D3374
_020D3420:
	ldr r0, [r10, #0x330]
	cmp r0, #6
	beq _020D3748
	ldr r0, [r10, #0x32c]
	cmp r0, #0
	beq _020D3458
	ldr r1, [r5, #4]
	mov r0, r5
	bl NHTTPi_isRecvBufFull
	cmp r0, #0
	movne r0, #6
	moveq r0, #0xa
	str r0, [r10, #0x330]
	b _020D3748
_020D3458:
	str r9, [r10, #0x330]
	b _020D3748
_020D3460:
	ldr r0, [r10, #0x33c]
	mov r1, #0xa
	str r1, [r10, #0x330]
	cmp r0, #0
	beq _020D369C
	sub r9, r1, #0xb
_020D3478:
	mov r1, #0
	strb r1, [sp, #0xc]
	strb r1, [sp, #0xd]
	str r1, [r10, #0x328]
	cmp r1, #0x4000
	bge _020D356C
_020D3490:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r3, r8, r1
	ldr r2, [r6, #0xc]
	mov r0, r7
	mov r1, r4
	bl NHTTPi_SocRecv
	cmp r0, #0
	addlt sp, sp, #0x10
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r11, [r10, #0x328]
	add r1, sp, #0xc
	ldrsb r0, [r8, r11]
	and r2, r11, #1
	strb r0, [r1, r2]
	cmp r0, #0x3b
	beq _020D34FC
	cmp r0, #0xa
	subeq r1, r11, #1
	andeq r2, r1, #1
	addeq r1, sp, #0xc
	ldreqsb r1, [r1, r2]
	cmpeq r1, #0xd
	bne _020D3558
_020D34FC:
	cmp r0, #0xa
	subeq r11, r11, #1
	beq _020D3528
	ldr r2, [r6, #0xc]
	mov r0, r7
	mov r1, r4
	bl NHTTPi_SkipLineBuf
	cmp r0, #0
	addle sp, sp, #0x10
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D3528:
	cmp r11, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r8
	mov r1, r11
	bl NHTTPi_strToHex
	movs r9, r0
	bpl _020D356C
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D3558:
	ldr r0, [r10, #0x328]
	add r1, r0, #1
	str r1, [r10, #0x328]
	cmp r1, #0x4000
	blt _020D3490
_020D356C:
	ldr r0, [r10, #0x328]
	mov r11, #0
	cmp r0, #0x4000
	moveq r0, #7
	streq r0, [r10, #0x330]
	addeq sp, sp, #0x10
	moveq r0, r11
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r9, #0
	ble _020D3684
	ldr r0, [sp, #8]
	mov r1, r9
	bl NHTTPi_SetVirtualContentLength
	cmp r9, #0
	ble _020D3478
	add r11, r10, #0x104
_020D35AC:
	ldr r0, [r10, #0x330]
	cmp r0, #6
	beq _020D35DC
	mov r0, r7
	mov r1, r5
	bl NHTTPi_BufFull
	cmp r0, #0
	moveq r0, #6
	streq r0, [r10, #0x330]
	streq r11, [r5, #0x28]
	moveq r0, #0x200
	streq r0, [r5, #0x1c]
_020D35DC:
	ldr r0, [r10, #0x330]
	mov r1, r4
	cmp r0, #6
	str r9, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, r7
	bne _020D3608
	ldr r2, [r6, #0xc]
	mov r3, #0
	b _020D3610
_020D3608:
	ldr r2, [r6, #0xc]
	ldr r3, [r5, #4]
_020D3610:
	bl NHTTPi_RecvBufN
	cmp r0, #0
	addle sp, sp, #0x10
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r5, #4]
	subs r9, r9, r0
	add r1, r1, r0
	str r1, [r5, #4]
	ldr r1, [r5, #8]
	add r0, r1, r0
	str r0, [r5, #8]
	bne _020D3678
	mov r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [r6, #0xc]
	mov r0, r7
	mov r1, r4
	mov r3, r8
	bl NHTTPi_SocRecv
	cmp r0, #0
	addle sp, sp, #0x10
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D3678:
	cmp r9, #0
	bgt _020D35AC
	b _020D3478
_020D3684:
	ldr r2, [r6, #0xc]
	mov r0, r7
	mov r1, r4
	bl NHTTPi_SkipLineBuf
	str r11, [r10, #0x330]
	b _020D3748
_020D369C:
	add r8, r10, #0x104
	mov r11, #6
_020D36A4:
	mov r0, r7
	mov r1, r5
	bl NHTTPi_BufFull
	cmp r0, #0
	streq r11, [r10, #0x330]
	streq r8, [r5, #0x28]
	moveq r0, #0x200
	streq r0, [r5, #0x1c]
	ldr r0, [r10, #0x330]
	cmp r0, #6
	bne _020D36E8
	str r9, [sp]
	ldr r2, [r6, #0xc]
	mov r0, r7
	mov r1, r4
	mov r3, r9
	b _020D3700
_020D36E8:
	mov r0, #0
	str r0, [sp]
	ldr r2, [r6, #0xc]
	ldr r3, [r5, #4]
	mov r0, r7
	mov r1, r4
_020D3700:
	bl NHTTPi_RecvBuf
	cmp r0, #0
	addlt sp, sp, #0x10
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bne _020D372C
	ldr r1, [r10, #0x330]
	mov r0, #0
	cmp r1, #6
	strne r0, [r10, #0x330]
	b _020D3748
_020D372C:
	ldr r1, [r5, #4]
	add r1, r1, r0
	str r1, [r5, #4]
	ldr r1, [r5, #8]
	add r0, r1, r0
	str r0, [r5, #8]
	b _020D36A4
_020D3748:
	mov r0, r7
	mov r1, r5
	bl NHTTPi_Response2Connection
	ldr r2, [r10, #0x330]
	mov r1, r0
	cmp r2, #0
	bne _020D3774
	cmp r1, #0
	beq _020D3774
	mov r0, r7
	bl NHTTPi_ReceivedCallback
_020D3774:
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end NHTTPi_ThreadRecvBodyProc

	arm_func_start NHTTPi_CommThreadProcMain
NHTTPi_CommThreadProcMain: ; 0x020D3780
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x340
	bl NHTTPi_GetSystemInfoP
	mov r4, r0
	bl NHTTPi_GetBgnEndInfoP
	mov r8, r0
	mov r0, r4
	bl NHTTPi_GetReqInfoP
	add r7, sp, #0
	mov r9, r0
	mov r0, r7
	bl NHTTPi_ThreadInit
	ldr r0, [r8, #0x18]
	cmp r0, #0
	addne sp, sp, #0x340
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r4, #1
	mov r6, #0
	mov r5, r4
_020D37CC:
	ldr r0, [sp, #0x334]
	cmp r0, #0
	bne _020D3814
	mov r0, r7
	bl NHTTPi_ThreadExecReqQueue
	cmp r0, #0
	beq _020D38E0
	ldr r0, [r9]
	ldr r0, [r0, #0xc]
	ldr r0, [r0]
	cmp r0, #0
	mov r0, r7
	beq _020D3804
_020D3800:
	b _020D38DC
_020D3804:
	bl NHTTPi_ThreadHostAddrProc
	cmp r0, #0
	bne _020D3814
	b _020D38D8
_020D3814:
	ldr r0, [sp, #0x334]
	cmp r0, #1
	mov r0, r7
	streq r6, [sp, #0x334]
	bl NHTTPi_ThreadConnectProc
	cmp r0, #0
	mov r0, r7
	bne _020D3838
	b _020D3800
_020D3838:
	bl NHTTPi_ThreadProxyProc
	cmp r0, #0
	beq _020D3860
	cmp r0, #1
	beq _020D385C
	cmp r0, #2
	bne _020D3860
	str r5, [sp, #0x334]
	b _020D38E0
_020D385C:
	b _020D38D8
_020D3860:
	mov r0, r7
	bl NHTTPi_ThreadSendProc
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020D3890
_020D3874: ; jump table
	b _020D3890 ; case 0
	b _020D388C ; case 1
	b _020D3884 ; case 2
	b _020D388C ; case 3
_020D3884:
	str r4, [sp, #0x334]
	b _020D38E0
_020D388C:
	b _020D38D8
_020D3890:
	ldr r0, [r9]
	ldr r0, [r0, #0xc]
	ldr r0, [r0]
	cmp r0, #0
	mov r0, r7
	beq _020D38AC
	b _020D3800
_020D38AC:
	bl NHTTPi_ThreadRecvHeaderProc
	cmp r0, #0
	mov r0, r7
	bne _020D38C0
	b _020D3800
_020D38C0:
	bl NHTTPi_ThreadParseHeaderProc
	cmp r0, #0
	mov r0, r7
	bne _020D38D4
	b _020D3800
_020D38D4:
	bl NHTTPi_ThreadRecvBodyProc
_020D38D8:
	mov r0, r7
_020D38DC:
	bl NHTTPi_ThreadReqEnd
_020D38E0:
	ldr r0, [r8, #0x18]
	cmp r0, #0
	beq _020D37CC
	add sp, sp, #0x340
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end NHTTPi_CommThreadProcMain

	arm_func_start NHTTP_Startup
NHTTP_Startup: ; 0x020D38F4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl NHTTPi_GetSystemInfoP
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl NHTTPi_Startup
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	rsb r0, r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTP_Startup

	arm_func_start NHTTP_CleanupAsync
NHTTP_CleanupAsync: ; 0x020D392C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl NHTTPi_GetSystemInfoP
	mov r1, r4
	bl NHTTPi_CleanupAsync
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTP_CleanupAsync

	arm_func_start NHTTP_AddHeaderField
NHTTP_AddHeaderField: ; 0x020D3944
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetMutexInfoP
	mov r1, r6
	bl NHTTPi_GetRequest
	mov r1, r5
	mov r2, r4
	bl NHTTP_AddRequestHeaderField
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTP_AddHeaderField

	arm_func_start NHTTP_AddRequestHeaderField
NHTTP_AddRequestHeaderField: ; 0x020D3974
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetBgnEndInfoP
	mov r1, r0
	cmp r6, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #4]
	cmp r0, #0
	mvnne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r2, r5
	mov r3, r4
	bl NHTTPi_AddRequestHeaderField
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	rsb r0, r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTP_AddRequestHeaderField

	arm_func_start NHTTP_AddPostDataAscii
NHTTP_AddPostDataAscii: ; 0x020D39D0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl NHTTPi_GetSystemInfoP
	mov r5, r0
	bl NHTTPi_GetBgnEndInfoP
	mov r4, r0
	mov r0, r5
	bl NHTTPi_GetMutexInfoP
	mov r1, r8
	bl NHTTPi_GetRequest
	mov r1, r4
	mov r2, r7
	mov r3, r6
	bl NHTTPi_AddRequestPostDataAscii
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	rsb r0, r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NHTTP_AddPostDataAscii

	arm_func_start NHTTP_GetHeaderField
NHTTP_GetHeaderField: ; 0x020D3A24
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetMutexInfoP
	mov r1, r6
	bl NHTTPi_GetResponse
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, r5
	mov r2, r4
	bl NHTTP_GetResponseHeaderField
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTP_GetHeaderField

	arm_func_start NHTTP_SetVerifyOption
NHTTP_SetVerifyOption: ; 0x020D3A60
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetMutexInfoP
	mov r1, r5
	bl NHTTPi_GetRequest
	cmp r0, #0
	mvneq r0, #0
	strne r4, [r0, #0xd0]
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTP_SetVerifyOption

	arm_func_start NHTTP_SetRootCA
NHTTP_SetRootCA: ; 0x020D3A90
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetMutexInfoP
	mov r1, r6
	bl NHTTPi_GetRequest
	mov r1, r5
	mov r2, r4
	bl NHTTP_SetRequestRootCA
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTP_SetRootCA

	arm_func_start NHTTP_SetRequestRootCA
NHTTP_SetRequestRootCA: ; 0x020D3AC0
	cmp r0, #0
	mvneq r0, #0
	bxeq lr
	mov r3, #0
	str r3, [r0, #0xc8]
	str r3, [r0, #0xdc]
	str r1, [r0, #0xc0]
	str r2, [r0, #0xc4]
	mov r0, r3
	bx lr
	arm_func_end NHTTP_SetRequestRootCA

	arm_func_start NHTTPi_GetStaticResource
NHTTPi_GetStaticResource: ; 0x020D3AE8
	stmfd sp!, {r4, lr}
	ldr r0, _020D3B24 ; =l_nhttp_connection_list_p
	ldr r4, _020D3B28 ; =NHTTPiStaticResource
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _020D3B1C
	add r0, r4, #4
	bl NHTTPi_InitMutex
	mov r1, #0
	mov r0, #1
	str r1, [r4, #0x20]
	str r1, [r4, #0x1c]
	str r0, [r4]
_020D3B1C:
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020D3B24: .word l_nhttp_connection_list_p
_020D3B28: .word NHTTPiStaticResource
	arm_func_end NHTTPi_GetStaticResource

	arm_func_start NHTTPi_WaitForCompletion
NHTTPi_WaitForCompletion: ; 0x020D3B2C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl NHTTPi_GetStaticResource
	ldr r1, [r5, #0xc]
	mov r4, r0
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_020D3B48:
	add r0, r4, #0x1c
	bl OS_SleepThread
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _020D3B48
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_WaitForCompletion

	arm_func_start NHTTPi_NotifyCompletion
NHTTPi_NotifyCompletion: ; 0x020D3B60
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl NHTTPi_GetStaticResource
	mov r1, #0
	add r0, r0, #0x1c
	str r1, [r4, #0xc]
	bl OS_WakeupThread
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTPi_NotifyCompletion

	arm_func_start NHTTPi_ControlConnectionList
NHTTPi_ControlConnectionList: ; 0x020D3B80
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r2
	mov r7, r0
	mov r6, r1
	mov r4, #0
	bl NHTTPi_lockReqList
	cmp r5, #3
	bne _020D3BB8
	ldr r0, _020D3C48 ; =l_nhttp_connection_list_p
	mov r4, r6
	ldr r1, [r0]
	str r1, [r6, #0x20]
	str r6, [r0]
	b _020D3C38
_020D3BB8:
	ldr r0, _020D3C48 ; =l_nhttp_connection_list_p
	ldr r1, _020D3C4C ; =l_nhttp_connection_list_p
	ldr r2, [r0]
	cmp r2, #0
	beq _020D3C38
_020D3BCC:
	cmp r5, #4
	addls pc, pc, r5, lsl #2
	b _020D3C1C
_020D3BD8: ; jump table
	b _020D3BEC ; case 0
	b _020D3BF4 ; case 1
	b _020D3BFC ; case 2
	b _020D3C1C ; case 3
	b _020D3C0C ; case 4
_020D3BEC:
	cmp r2, r6
	b _020D3C04
_020D3BF4:
	ldr r0, [r2, #0x10]
	b _020D3C00
_020D3BFC:
	ldr r0, [r2, #0x14]
_020D3C00:
	cmp r0, r6
_020D3C04:
	moveq r4, r2
	b _020D3C1C
_020D3C0C:
	cmp r2, r6
	ldreq r4, [r1]
	ldreq r0, [r4, #0x20]
	streq r0, [r1]
_020D3C1C:
	cmp r4, #0
	bne _020D3C38
	ldr r0, [r1]
	ldr r2, [r0, #0x20]
	add r1, r0, #0x20
	cmp r2, #0
	bne _020D3BCC
_020D3C38:
	mov r0, r7
	bl NHTTPi_unlockReqList
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D3C48: .word l_nhttp_connection_list_p
_020D3C4C: .word l_nhttp_connection_list_p
	arm_func_end NHTTPi_ControlConnectionList

	arm_func_start NHTTPi_CommitConnectionList
NHTTPi_CommitConnectionList: ; 0x020D3C50
	stmfd sp!, {r3, lr}
	mov r2, #3
	bl NHTTPi_ControlConnectionList
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	rsb r0, r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end NHTTPi_CommitConnectionList

	arm_func_start NHTTPi_OmitConnectionList
NHTTPi_OmitConnectionList: ; 0x020D3C70
	stmfd sp!, {r3, lr}
	mov r2, #4
	bl NHTTPi_ControlConnectionList
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	rsb r0, r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end NHTTPi_OmitConnectionList

	arm_func_start NHTTPi_Connection2Response
NHTTPi_Connection2Response: ; 0x020D3C90
	stmfd sp!, {r3, lr}
	bl NHTTPi_GetConnection
	cmp r0, #0
	ldrne r0, [r0, #0x14]
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end NHTTPi_Connection2Response

	arm_func_start NHTTPi_Request2Connection
NHTTPi_Request2Connection: ; 0x020D3CA8
	ldr r12, _020D3CB4 ; =NHTTPi_ControlConnectionList
	mov r2, #1
	bx r12
_020D3CB4: .word NHTTPi_ControlConnectionList
	arm_func_end NHTTPi_Request2Connection

	arm_func_start NHTTPi_Response2Connection
NHTTPi_Response2Connection: ; 0x020D3CB8
	ldr r12, _020D3CC4 ; =NHTTPi_ControlConnectionList
	mov r2, #2
	bx r12
_020D3CC4: .word NHTTPi_ControlConnectionList
	arm_func_end NHTTPi_Response2Connection

	arm_func_start NHTTPi_GetConnection
NHTTPi_GetConnection: ; 0x020D3CC8
	ldr r12, _020D3CD4 ; =NHTTPi_ControlConnectionList
	mov r2, #0
	bx r12
_020D3CD4: .word NHTTPi_ControlConnectionList
	arm_func_end NHTTPi_GetConnection

	arm_func_start NHTTPi_GetRequest
NHTTPi_GetRequest: ; 0x020D3CD8
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl NHTTPi_GetConnection
	cmp r0, #0
	ldrne r4, [r0, #0x10]
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTPi_GetRequest

	arm_func_start NHTTPi_GetResponse
NHTTPi_GetResponse: ; 0x020D3CF4
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl NHTTPi_GetConnection
	cmp r0, #0
	ldrne r4, [r0, #0x14]
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTPi_GetResponse

	arm_func_start NHTTPi_GetConnectionListLength
NHTTPi_GetConnectionListLength: ; 0x020D3D10
	ldr r1, _020D3D38 ; =l_nhttp_connection_list_p
	mov r0, #0
	ldr r1, [r1]
	cmp r1, #0
	bxeq lr
_020D3D24:
	ldr r1, [r1, #0x20]
	add r0, r0, #1
	cmp r1, #0
	bne _020D3D24
	bx lr
_020D3D38: .word l_nhttp_connection_list_p
	arm_func_end NHTTPi_GetConnectionListLength

	arm_func_start NHTTPi_PostSendCallback
NHTTPi_PostSendCallback: ; 0x020D3D3C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r4, r1
	mov r8, r2
	mov r7, r3
	mvn r6, #0
	bl NHTTPi_GetConnection
	cmp r0, #0
	beq _020D3DC0
	mov r0, r5
	mov r1, r4
	bl NHTTPi_Connection2Response
	cmp r0, #0
	ldrne r3, [r4, #0x1c]
	cmpne r3, #0
	beq _020D3DC0
	str r8, [sp]
	ldr r0, [r4, #0x24]
	add r2, sp, #0
	str r0, [sp, #4]
	ldr r1, [r4, #0x28]
	mov r0, r4
	str r1, [sp, #8]
	mov r1, #1
	str r7, [sp, #0xc]
	blx r3
	mov r6, r0
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	mov r0, r5
	mov r1, r4
	bl NHTTPi_SetPostDataBuffer
_020D3DC0:
	mov r0, r6
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NHTTPi_PostSendCallback

	arm_func_start NHTTPi_BufferFullCallback
NHTTPi_BufferFullCallback: ; 0x020D3DCC
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r4, r1
	bl NHTTPi_GetConnection
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl NHTTPi_Connection2Response
	cmp r0, #0
	ldrne r12, [r4, #0x1c]
	cmpne r12, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r0, #0x28]
	add r2, sp, #4
	str r1, [sp, #4]
	ldr r3, [r0, #0x1c]
	mov r1, #2
	str r3, [sp, #8]
	ldr r3, [r0, #4]
	mov r0, r4
	str r3, [sp, #0xc]
	blx r12
	ldr r1, [sp, #0xc]
	mov r0, r5
	str r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	mov r1, r4
	bl NHTTPi_SetBodyBuffer
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_BufferFullCallback

	arm_func_start NHTTPi_ReceivedCallback
NHTTPi_ReceivedCallback: ; 0x020D3E58
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r4, r1
	bl NHTTPi_GetConnection
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl NHTTPi_Connection2Response
	cmp r0, #0
	ldrne r12, [r4, #0x1c]
	cmpne r12, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r0, #0x28]
	add r2, sp, #4
	str r1, [sp, #4]
	ldr r3, [r0, #0x1c]
	mov r1, #3
	str r3, [sp, #8]
	ldr r3, [r0, #4]
	mov r0, r4
	str r3, [sp, #0xc]
	blx r12
	ldr r1, [sp, #0xc]
	mov r0, r5
	str r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	mov r1, r4
	bl NHTTPi_SetBodyBuffer
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_ReceivedCallback

	arm_func_start NHTTPi_CompleteCallback
NHTTPi_CompleteCallback: ; 0x020D3EE4
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl NHTTPi_GetConnection
	cmp r0, #0
	ldrne r3, [r4, #0x1c]
	cmpne r3, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	mov r1, #4
	mov r2, #0
	blx r3
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTPi_CompleteCallback

	arm_func_start NHTTPi_SetPostDataBuffer
NHTTPi_SetPostDataBuffer: ; 0x020D3F14
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r2
	mov r4, r3
	bl NHTTPi_GetConnection
	cmp r0, #0
	mvneq r0, #0
	strne r5, [r0, #0x24]
	strne r4, [r0, #0x28]
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_SetPostDataBuffer

	arm_func_start NHTTPi_SetBodyBuffer
NHTTPi_SetBodyBuffer: ; 0x020D3F3C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r2
	mov r4, r3
	bl NHTTPi_GetConnection
	movs r1, r0
	beq _020D3F84
	mov r0, r6
	bl NHTTPi_Connection2Response
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	str r5, [r0, #0x28]
	ldr r1, [sp, #0x10]
	str r4, [r0, #0x1c]
	str r1, [r0, #4]
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020D3F84:
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTPi_SetBodyBuffer

	arm_func_start NHTTPi_InitSystemInfo
NHTTPi_InitSystemInfo: ; 0x020D3F8C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl NHTTPi_GetBgnEndInfoP
	bl NHTTPi_InitBgnEndInfo
	mov r0, r4
	bl NHTTPi_GetListInfoP
	bl NHTTPi_InitListInfo
	mov r0, r4
	bl NHTTPi_GetReqInfoP
	bl NHTTPi_InitRequestInfo
	mov r0, r4
	bl NHTTPi_GetMutexInfoP
	bl NHTTPi_InitMutexInfo
	mov r0, r4
	bl NHTTPi_GetThreadInfoP
	bl NHTTPi_InitThreadInfo
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTPi_InitSystemInfo

	arm_func_start NHTTPi_GetSystemInfoP
NHTTPi_GetSystemInfoP: ; 0x020D3FD0
	stmfd sp!, {r4, lr}
	ldr r1, _020D3FFC ; =l_nhttp_connection_list_p
	ldr r4, [r1, #4]
	cmp r4, #0
	bne _020D3FF4
	ldr r4, _020D4000 ; =sysInfo
	mov r0, r4
	str r4, [r1, #4]
	bl NHTTPi_InitSystemInfo
_020D3FF4:
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020D3FFC: .word l_nhttp_connection_list_p
_020D4000: .word sysInfo
	arm_func_end NHTTPi_GetSystemInfoP

	arm_func_start NHTTPi_GetBgnEndInfoP
NHTTPi_GetBgnEndInfoP: ; 0x020D4004
	bx lr
	arm_func_end NHTTPi_GetBgnEndInfoP

	arm_func_start NHTTPi_GetListInfoP
NHTTPi_GetListInfoP: ; 0x020D4008
	add r0, r0, #0x28
	bx lr
	arm_func_end NHTTPi_GetListInfoP

	arm_func_start NHTTPi_GetReqInfoP
NHTTPi_GetReqInfoP: ; 0x020D4010
	add r0, r0, #0x30
	bx lr
	arm_func_end NHTTPi_GetReqInfoP

	arm_func_start NHTTPi_GetThreadInfoP
NHTTPi_GetThreadInfoP: ; 0x020D4018
	add r0, r0, #0x50
	bx lr
	arm_func_end NHTTPi_GetThreadInfoP

	arm_func_start NHTTPi_GetMutexInfoP
NHTTPi_GetMutexInfoP: ; 0x020D4020
	add r0, r0, #0x34
	bx lr
	arm_func_end NHTTPi_GetMutexInfoP

	arm_func_start NHTTPi_SetVirtualContentLength
NHTTPi_SetVirtualContentLength: ; 0x020D4028
	cmp r0, #0
	strne r1, [r0, #0x2c]
	bx lr
	arm_func_end NHTTPi_SetVirtualContentLength

	arm_func_start NHTTPi_InitConnectionList
NHTTPi_InitConnectionList: ; 0x020D4034
	stmfd sp!, {r3, lr}
	ldr r0, _020D405C ; =l_nhttp_connection_list_p
	ldr r0, [r0]
	cmp r0, #0
	beq _020D404C
	bl NHTTPi_GetConnectionListLength
_020D404C:
	ldr r0, _020D405C ; =l_nhttp_connection_list_p
	mov r1, #0
	str r1, [r0]
	ldmfd sp!, {r3, pc}
_020D405C: .word l_nhttp_connection_list_p
	arm_func_end NHTTPi_InitConnectionList

	arm_func_start NHTTPi_InitMutexInfo
NHTTPi_InitMutexInfo: ; 0x020D4060
	mov r1, #0
	str r1, [r0, #0x18]
	bx lr
	arm_func_end NHTTPi_InitMutexInfo

	arm_func_start NHTTPi_initLockReqList
NHTTPi_initLockReqList: ; 0x020D406C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x18]
	cmp r1, #0
	ldmnefd sp!, {r4, pc}
	bl NHTTPi_InitMutex
	mov r0, #1
	str r0, [r4, #0x18]
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTPi_initLockReqList

	arm_func_start NHTTPi_exitLockReqList
NHTTPi_exitLockReqList: ; 0x020D4090
	bx lr
	arm_func_end NHTTPi_exitLockReqList

	arm_func_start NHTTPi_lockReqList
NHTTPi_lockReqList: ; 0x020D4094
	ldr r12, _020D409C ; =NHTTPi_LockMutex
	bx r12
_020D409C: .word NHTTPi_LockMutex
	arm_func_end NHTTPi_lockReqList

	arm_func_start NHTTPi_unlockReqList
NHTTPi_unlockReqList: ; 0x020D40A0
	ldr r12, _020D40A8 ; =OS_UnlockMutex
	bx r12
_020D40A8: .word OS_UnlockMutex
	arm_func_end NHTTPi_unlockReqList

	arm_func_start NHTTPi_addRef
NHTTPi_addRef: ; 0x020D40AC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	bl NHTTPi_lockReqList
	add r1, r4, #0x8000
	ldr r2, [r1, #0x48]
	mov r0, r5
	add r2, r2, #1
	str r2, [r1, #0x48]
	bl NHTTPi_unlockReqList
	add r0, r4, #0x8000
	ldr r0, [r0, #0x48]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_addRef

	arm_func_start NHTTPi_decRef
NHTTPi_decRef: ; 0x020D40E0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	bl NHTTPi_lockReqList
	add r1, r4, #0x8000
	ldr r2, [r1, #0x48]
	mov r0, r5
	sub r2, r2, #1
	str r2, [r1, #0x48]
	bl NHTTPi_unlockReqList
	add r0, r4, #0x8000
	ldr r0, [r0, #0x48]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTPi_decRef

	arm_func_start NHTTP_CreateConnection
NHTTP_CreateConnection: ; 0x020D4114
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	mov r9, r1
	mov r8, r2
	mov r7, r3
	bl NHTTPi_GetSystemInfoP
	mov r4, r0
	bl NHTTPi_GetBgnEndInfoP
	mov r6, r0
	mov r0, r4
	bl NHTTPi_GetMutexInfoP
	ldr r11, _020D4248 ; =0x0000804C
	mov r5, r0
	mov r0, r11
	mov r1, #0x20
	bl NHTTPi_alloc
	movs r4, r0
	bne _020D4178
	mov r0, r6
	mov r1, #1
	bl NHTTPi_SetError
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D4178:
	mov r1, r11
	bl NHTTPi_memclr
	ldr r0, [sp, #0x3c]
	str r7, [sp]
	str r0, [sp, #4]
	mov r7, #0
	str r7, [sp, #8]
	mov r0, r6
	mov r1, r10
	mov r2, r9
	mov r3, r8
	str r7, [sp, #0xc]
	bl NHTTPi_CreateRequest
	str r0, [r4, #0x10]
	cmp r0, #0
	bne _020D41CC
	mov r0, r4
	bl NHTTPi_free
	add sp, sp, #0x10
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D41CC:
	ldr r1, [r0, #0x2c]
	ldr r0, [sp, #0x38]
	str r1, [r4, #0x14]
	str r7, [r4]
	str r0, [r4, #0x1c]
	str r7, [r4, #0x24]
	mov r0, r5
	mov r1, r4
	str r7, [r4, #0x28]
	sub r2, r7, #1
	str r2, [r4, #0x18]
	bl NHTTPi_CommitConnectionList
	mov r0, #0xf
	stmib r4, {r0, r7}
	mov r5, #1
	mov r0, r4
	mov r1, r7
	str r5, [r4, #0xc]
	bl NHTTPi_SetVirtualContentLength
	str r7, [r4, #0x30]
	add r2, r4, #0x8000
	str r7, [r2, #0x40]
	add r0, r4, #0x40
	mov r1, #0x8000
	str r7, [r2, #0x44]
	bl NHTTPi_memclr
	add r1, r4, #0x8000
	mov r0, r4
	str r5, [r1, #0x48]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D4248: .word 0x0000804C
	arm_func_end NHTTP_CreateConnection

	arm_func_start NHTTP_DeleteConnection
NHTTP_DeleteConnection: ; 0x020D424C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetMutexInfoP
	mov r1, r4
	bl NHTTPi_GetConnection
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, pc}
	bl NHTTPi_DeleteConnection
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTP_DeleteConnection

	arm_func_start NHTTPi_DeleteConnection
NHTTPi_DeleteConnection: ; 0x020D4278
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl NHTTPi_GetSystemInfoP
	mov r6, r0
	bl NHTTPi_GetMutexInfoP
	mov r4, r0
	mov r0, r6
	bl NHTTPi_GetThreadInfoP
	cmp r5, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r0, r5, #0x8000
	ldr r0, [r0, #0x48]
	cmp r0, #0
	ble _020D42D0
	ldr r1, [r5, #0x18]
	cmp r1, #0
	blt _020D42D0
	mov r0, r6
	bl NHTTPi_CancelRequestAsync
	mvn r0, #0
	str r0, [r5, #0x18]
_020D42D0:
	mov r0, r4
	mov r1, r5
	bl NHTTPi_decRef
	cmp r0, #0
	movgt r0, #0
	ldmgtfd sp!, {r4, r5, r6, pc}
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _020D4308
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _020D4308
	mov r0, r6
	bl NHTTPi_DestroyRequest
_020D4308:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _020D4334
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _020D4328
	mov r0, r5
	bl NHTTP_WaitForConnection
_020D4328:
	ldr r1, [r5, #0x14]
	mov r0, r4
	bl NHTTPi_DestroyResponse
_020D4334:
	mov r0, r4
	mov r1, r5
	bl NHTTPi_OmitConnectionList
	mov r0, r5
	bl NHTTPi_free
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTPi_DeleteConnection

	arm_func_start NHTTP_WaitForConnection
NHTTP_WaitForConnection: ; 0x020D4350
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	bl NHTTPi_GetSystemInfoP
	mov r4, r0
	bl NHTTPi_GetThreadInfoP
	mov r7, r0
	mov r0, r4
	bl NHTTPi_GetMutexInfoP
	mov r1, r8
	bl NHTTPi_GetConnection
	movs r6, r0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	bl NHTTP_GetConnectionStatus
	mov r4, #1
	mov r5, r0
	mov r0, r7
	mov r1, r4
	bl NHTTPi_CheckCurrentThread
	sub r0, r4, #2
	cmp r5, r0
	cmpne r5, #0
	beq _020D43C8
	mov r0, r8
	bl NHTTP_GetConnectionError
	cmp r0, #0xf
	bne _020D43C8
	mov r0, r6
	bl NHTTPi_WaitForCompletion
_020D43C8:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NHTTP_WaitForConnection

	arm_func_start NHTTP_StartConnection
NHTTP_StartConnection: ; 0x020D43D0
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl NHTTPi_GetSystemInfoP
	mov r6, r0
	bl NHTTPi_GetMutexInfoP
	mov r1, r4
	mov r5, r0
	bl NHTTPi_GetConnection
	movs r4, r0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r1, [r4, #0x10]
	cmp r1, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl NHTTPi_SendRequestAsync
	str r0, [r4, #0x18]
	cmp r0, #0
	blt _020D4434
	mov r2, #1
	mov r0, r5
	mov r1, r4
	str r2, [r4]
	bl NHTTPi_addRef
_020D4434:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTP_StartConnection

	arm_func_start NHTTP_CancelConnection
NHTTP_CancelConnection: ; 0x020D443C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl NHTTPi_GetSystemInfoP
	mov r4, r0
	bl NHTTPi_GetMutexInfoP
	mov r1, r5
	bl NHTTPi_GetConnection
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r0, #0x18]
	cmp r1, #0
	mvnlt r0, #0
	ldmltfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl NHTTPi_CancelRequestAsync
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NHTTP_CancelConnection

	arm_func_start NHTTP_GetConnectionStatus
NHTTP_GetConnectionStatus: ; 0x020D4484
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetMutexInfoP
	mov r1, r4
	bl NHTTPi_GetConnection
	cmp r0, #0
	mvneq r0, #0
	ldrne r0, [r0]
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTP_GetConnectionStatus

	arm_func_start NHTTP_GetBodyBuffer
NHTTP_GetBodyBuffer: ; 0x020D44AC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	mov r5, r2
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetMutexInfoP
	mov r1, r4
	mov r4, r0
	bl NHTTPi_GetConnection
	movs r1, r0
	beq _020D4504
	mov r0, r4
	bl NHTTPi_Connection2Response
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r1, [r0, #0x28]
	str r1, [r6]
	ldr r1, [r0, #0x1c]
	str r1, [r5]
	ldr r0, [r0, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020D4504:
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTP_GetBodyBuffer

	arm_func_start NHTTP_GetUserParam
NHTTP_GetUserParam: ; 0x020D450C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetMutexInfoP
	mov r1, r4
	mov r4, r0
	bl NHTTPi_GetConnection
	movs r1, r0
	beq _020D4548
	mov r0, r4
	bl NHTTPi_Connection2Response
	cmp r0, #0
	ldrne r0, [r0, #0x438]
	moveq r0, #0
	ldmfd sp!, {r4, pc}
_020D4548:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTP_GetUserParam

	arm_func_start NHTTP_GetConnectionError
NHTTP_GetConnectionError: ; 0x020D4550
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetMutexInfoP
	mov r1, r4
	bl NHTTPi_GetConnection
	cmp r0, #0
	ldrne r0, [r0, #4]
	mvneq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end NHTTP_GetConnectionError

	arm_func_start NHTTP_GetConnectionProgress
NHTTP_GetConnectionProgress: ; 0x020D4578
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	mov r5, r2
	bl NHTTPi_GetSystemInfoP
	bl NHTTPi_GetMutexInfoP
	mov r1, r4
	mov r4, r0
	bl NHTTPi_GetConnection
	movs r1, r0
	beq _020D45E0
	mov r0, r4
	bl NHTTPi_Connection2Response
	cmp r0, #0
	beq _020D45D8
	ldr r1, [r0, #8]
	str r1, [r6]
	ldr r1, [r0, #0xc]
	cmn r1, #1
	moveq r0, #0
	ldrne r0, [r0, #0xc]
	str r0, [r5]
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020D45D8:
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020D45E0:
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end NHTTP_GetConnectionProgress

	arm_func_start SOCL_Startup
SOCL_Startup: ; 0x020D45E8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _020D4638 ; =_version_NINTENDO_WIFI
	bl OSi_ReferSymbol
	ldr r4, _020D463C ; =SOCLiConfigPtr
	ldr r0, [r4]
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl SOCLi_InitResource
	str r5, [r4]
	bl SOCLi_StartupCPS
	bl SOCLi_StartupSOCL
	movs r5, r0
	bpl _020D4630
	bl SOCLi_CleanupCPS
	mov r0, #0
	str r0, [r4]
_020D4630:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020D4638: .word _version_NINTENDO_WIFI
_020D463C: .word SOCLiConfigPtr
	arm_func_end SOCL_Startup

	arm_func_start SOCLi_StartupSOCL
SOCLi_StartupSOCL: ; 0x020D4640
	stmfd sp!, {r4, lr}
	ldr r0, _020D4674 ; =SOCLiConfigPtr
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	bl SOCLi_StartupCommandPacketQueue
	movs r4, r0
	bmi _020D466C
	ldr r0, _020D4678 ; =SOCLSocketParamUDPSend
	bl SOCL_CreateSocket
	ldr r1, _020D467C ; =SOCLiYieldWait
	str r0, [r1, #0xc]
_020D466C:
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020D4674: .word SOCLiConfigPtr
_020D4678: .word SOCLSocketParamUDPSend
_020D467C: .word SOCLiYieldWait
	arm_func_end SOCLi_StartupSOCL

	arm_func_start SOCLi_StartupCPS
SOCLi_StartupCPS: ; 0x020D4680
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _020D47CC ; =SOCLiConfigPtr
	ldr r5, _020D47D0 ; =SOCLiCPSConfig
	mov r4, #0
	ldr r6, [r7]
	mov r0, r5
	mov r1, r4
	mov r2, #0x30
	bl MI_CpuFill8
	ldr r2, [r6, #0x18]
	ldr r0, _020D47D4 ; =SOCLiYieldWait
	ldr r1, _020D47D8 ; =SOCL_LinkIsOn
	str r2, [r0, #0x14]
	ldr r2, [r6, #0x1c]
	str r2, [r0, #0x18]
	str r1, [r0, #0x20]
	str r4, [r0, #0x24]
	str r4, [r0, #0x28]
	ldr r1, [r0]
	str r1, [r0, #0x3c]
	ldr r0, [r6, #0x24]
	cmp r0, #0
	ldreq r0, [r7, #4]
	str r0, [r5, #0x20]
	ldr r0, [r6, #0x28]
	cmp r0, #0
	bne _020D4700
	ldr r1, _020D47CC ; =SOCLiConfigPtr
	ldr r0, [r5, #0x20]
	ldr r1, [r1]
	ldr r1, [r1, #0x18]
	blx r1
_020D4700:
	str r0, [r5, #0x1c]
	ldr r2, [r6, #0x30]
	ldr r0, _020D47DC ; =0x000005DC
	cmp r2, #0
	moveq r2, #0x240
	cmp r2, r0
	movgt r2, r0
	bgt _020D4728
	cmp r2, #0x240
	movlt r2, #0x240
_020D4728:
	ldr r7, [r6, #0x34]
	ldr r1, _020D47E0 ; =SOCLSocketParamTCP
	sub r4, r2, #0x28
	cmp r7, #0
	moveq r7, #0x10c0
	ldr r0, _020D47E4 ; =CPSMyIp
	mov r3, #0
	strh r7, [r1, #2]
	mov r2, r4, lsl #1
	strh r2, [r1, #4]
	str r4, [r5, #0x24]
	str r3, [r0]
	ldr r0, [r6]
	mov r2, #1
	cmp r0, #0
	ldreq r0, _020D47D4 ; =SOCLiYieldWait
	ldreq r1, _020D47E8 ; =SOCLi_SetMyIP
	streq r3, [r0, #8]
	streq r2, [r5]
	streq r1, [r5, #0xc]
	beq _020D4798
	ldr r1, _020D47EC ; =SOCLi_DhcpTimeout
	ldr r0, _020D47D4 ; =SOCLiYieldWait
	str r3, [r5]
	str r1, [r5, #0xc]
	str r2, [r0, #8]
	ldr r0, [r0, #4]
	str r0, [r5, #0x28]
_020D4798:
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	moveq r0, #0xb
	bl CPS_SetThreadPriority
	ldr r0, _020D47F0 ; =CPSi_RecvCallbackFunc
	bl WCM_SetRecvDCFCallback
	ldr r0, _020D47F4 ; =SOCLi_TrashSocket
	bl CPS_SetScavengerCallback
	ldr r0, _020D47F8 ; =SOCLi_CheckNConfig
	bl CPS_SetCheckNConfigCallback
	mov r0, r5
	bl CPS_Startup
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D47CC: .word SOCLiConfigPtr
_020D47D0: .word SOCLiCPSConfig
_020D47D4: .word SOCLiYieldWait
_020D47D8: .word SOCL_LinkIsOn
_020D47DC: .word 0x000005DC
_020D47E0: .word SOCLSocketParamTCP
_020D47E4: .word CPSMyIp
_020D47E8: .word SOCLi_SetMyIP
_020D47EC: .word SOCLi_DhcpTimeout
_020D47F0: .word CPSi_RecvCallbackFunc
_020D47F4: .word SOCLi_TrashSocket
_020D47F8: .word SOCLi_CheckNConfig
	arm_func_end SOCLi_StartupCPS

	arm_func_start SOCLi_SetMyIP
SOCLi_SetMyIP: ; 0x020D47FC
	ldr r0, _020D4850 ; =SOCLiConfigPtr
	ldr r1, _020D4854 ; =CPSMyIp
	ldr r12, [r0]
	ldr r0, _020D4858 ; =CPSNetMask
	ldr r3, [r12, #4]
	ldr r2, _020D485C ; =CPSGatewayIp
	str r3, [r1]
	ldr r3, [r12, #8]
	ldr r1, _020D4860 ; =CPSDnsIp
	str r3, [r0]
	ldr r3, [r12, #0xc]
	ldr r0, _020D4864 ; =SOCLiYieldWait
	str r3, [r2]
	ldr r2, [r12, #0x10]
	str r2, [r1]
	ldr r2, [r12, #0x14]
	str r2, [r1, #4]
	ldr r1, [r0, #8]
	orr r1, r1, #2
	str r1, [r0, #8]
	bx lr
_020D4850: .word SOCLiConfigPtr
_020D4854: .word CPSMyIp
_020D4858: .word CPSNetMask
_020D485C: .word CPSGatewayIp
_020D4860: .word CPSDnsIp
_020D4864: .word SOCLiYieldWait
	arm_func_end SOCLi_SetMyIP

	arm_func_start SOCLi_DhcpTimeout
SOCLi_DhcpTimeout: ; 0x020D4868
	ldr r0, _020D487C ; =SOCLiYieldWait
	ldr r1, [r0, #8]
	orr r1, r1, #2
	str r1, [r0, #8]
	bx lr
_020D487C: .word SOCLiYieldWait
	arm_func_end SOCLi_DhcpTimeout

	arm_func_start SOCL_LinkIsOn
SOCL_LinkIsOn: ; 0x020D4880
	stmfd sp!, {r3, lr}
	bl WCM_GetApMacAddress
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end SOCL_LinkIsOn

	arm_func_start SOCLi_StartupCommandPacketQueue
SOCLi_StartupCommandPacketQueue: ; 0x020D4898
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r6, #0x2c
	mul r1, r5, r6
	ldr r0, _020D4920 ; =SOCLiConfigPtr
	mov r2, r5, lsl #2
	add r2, r2, #3
	ldr r0, [r0]
	add r1, r1, #3
	bic r4, r2, #3
	bic r2, r1, #3
	ldr r1, [r0, #0x18]
	add r0, r2, r4
	blx r1
	movs r7, r0
	subeq r0, r6, #0x2d
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020D4924 ; =SOCLiCommandPacketQueue
	mov r1, r7
	mov r2, r5
	bl OS_InitMessageQueue
	cmp r5, #0
	add r4, r7, r4
	ble _020D4910
_020D48F8:
	mov r0, r4
	bl SOCLi_FreeCommandPacket
	sub r5, r5, #1
	cmp r5, #0
	add r4, r4, #0x2c
	bgt _020D48F8
_020D4910:
	ldr r1, _020D4928 ; =SOCLiCommandPackets
	mov r0, #0
	str r7, [r1]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D4920: .word SOCLiConfigPtr
_020D4924: .word SOCLiCommandPacketQueue
_020D4928: .word SOCLiCommandPackets
	arm_func_end SOCLi_StartupCommandPacketQueue

	arm_func_start SOCLi_CleanupCommandPacketQueue
SOCLi_CleanupCommandPacketQueue: ; 0x020D492C
	stmfd sp!, {r4, lr}
	ldr r4, _020D4968 ; =SOCLiCommandPackets
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	mvnlt r0, #0
	ldmltfd sp!, {r4, pc}
	ldr r1, _020D496C ; =SOCLiConfigPtr
	ldr r0, [r4]
	ldr r1, [r1]
	ldr r1, [r1, #0x1c]
	blx r1
	mov r0, #0
	str r0, [r4]
	ldmfd sp!, {r4, pc}
_020D4968: .word SOCLiCommandPackets
_020D496C: .word SOCLiConfigPtr
	arm_func_end SOCLi_CleanupCommandPacketQueue

	arm_func_start SOCLi_AllocCommandPacket
SOCLi_AllocCommandPacket: ; 0x020D4970
	stmfd sp!, {r3, lr}
	mov r2, r0
	ldr r0, _020D4994 ; =SOCLiCommandPacketQueue
	add r1, sp, #0
	bl OS_ReceiveMessage
	cmp r0, #0
	ldrne r0, [sp]
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_020D4994: .word SOCLiCommandPacketQueue
	arm_func_end SOCLi_AllocCommandPacket

	arm_func_start SOCLi_CreateCommandPacket
SOCLi_CreateCommandPacket: ; 0x020D4998
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r2
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl SOCLi_AllocCommandPacket
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	str r6, [r0]
	str r5, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
	ldrsb r1, [r5, #0xaf]
	strb r1, [r0, #0xc]
	strb r4, [r0, #0xd]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end SOCLi_CreateCommandPacket

	arm_func_start SOCLi_FreeCommandPacket
SOCLi_FreeCommandPacket: ; 0x020D49D8
	stmfd sp!, {r3, lr}
	movs r1, r0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020D49F4 ; =SOCLiCommandPacketQueue
	mov r2, #0
	bl OS_SendMessage
	ldmfd sp!, {r3, pc}
_020D49F4: .word SOCLiCommandPacketQueue
	arm_func_end SOCLi_FreeCommandPacket

	arm_func_start SOCLi_GetCtrlPipe
SOCLi_GetCtrlPipe: ; 0x020D49F8
	ldr r1, [r0, #0xa0]
	cmp r1, #0
	ldreq r1, [r0, #0xa4]
	mov r0, r1
	bx lr
	arm_func_end SOCLi_GetCtrlPipe

	arm_func_start SOCLi_SendCommandPacket
SOCLi_SendCommandPacket: ; 0x020D4A0C
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r1
	beq _020D4A24
	ldrsb r1, [r5, #0xd]
	tst r1, #1
	beq _020D4A2C
_020D4A24:
	mov r2, #1
	b _020D4A30
_020D4A2C:
	mov r2, #0
_020D4A30:
	mov r1, r5
	bl OS_SendMessage
	movs r4, r0
	bne _020D4A48
	mov r0, r5
	bl SOCLi_FreeCommandPacket
_020D4A48:
	mov r0, #0
	cmp r4, #0
	mvneq r0, #0x29
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end SOCLi_SendCommandPacket

	arm_func_start SOCLi_SendCommandPacketToCtrlPipe
SOCLi_SendCommandPacketToCtrlPipe: ; 0x020D4A58
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl SOCLi_GetCtrlPipe
	mov r1, r4
	bl SOCLi_SendCommandPacket
	ldmfd sp!, {r4, pc}
	arm_func_end SOCLi_SendCommandPacketToCtrlPipe

	arm_func_start SOCLi_ExecCommandPacket
SOCLi_ExecCommandPacket: ; 0x020D4A70
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x28
	mov r6, r1
	ldrsb r2, [r6, #0xd]
	mov r7, r0
	cmp r2, #1
	bne _020D4AC8
	add r5, sp, #8
	mov r4, #1
	add r1, sp, #0
	mov r0, r5
	mov r2, r4
	bl OS_InitMessageQueue
	mov r0, r7
	mov r1, r6
	str r5, [r6, #8]
	bl SOCLi_SendCommandPacket
	add r1, sp, #4
	mov r0, r5
	mov r2, r4
	bl OS_ReceiveMessage
	b _020D4AD8
_020D4AC8:
	mov r2, #0
	str r2, [r6, #8]
	bl SOCLi_SendCommandPacket
	str r0, [sp, #4]
_020D4AD8:
	ldr r0, [sp, #4]
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end SOCLi_ExecCommandPacket

	arm_func_start SOCLi_ExecCommandPacketInRecvPipe
SOCLi_ExecCommandPacketInRecvPipe: ; 0x020D4AE4
	ldr r0, [r0, #0xa0]
	ldr r12, _020D4AF0 ; =SOCLi_ExecCommandPacket
	bx r12
_020D4AF0: .word SOCLi_ExecCommandPacket
	arm_func_end SOCLi_ExecCommandPacketInRecvPipe

	arm_func_start SOCLi_ExecCommandPacketInSendPipe
SOCLi_ExecCommandPacketInSendPipe: ; 0x020D4AF4
	ldr r0, [r0, #0xa4]
	ldr r12, _020D4B00 ; =SOCLi_ExecCommandPacket
	bx r12
_020D4B00: .word SOCLi_ExecCommandPacket
	arm_func_end SOCLi_ExecCommandPacketInSendPipe

	arm_func_start SOCLi_ExecCommandPacketInCtrlPipe
SOCLi_ExecCommandPacketInCtrlPipe: ; 0x020D4B04
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl SOCLi_GetCtrlPipe
	mov r1, r4
	bl SOCLi_ExecCommandPacket
	ldmfd sp!, {r4, pc}
	arm_func_end SOCLi_ExecCommandPacketInCtrlPipe

	arm_func_start SOCLi_CommandPacketHandler
SOCLi_CommandPacketHandler: ; 0x020D4B1C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r4, #0
	mov r9, r0
	mov r10, r4
	add r6, sp, #0
	mov r5, #1
_020D4B38:
	mov r0, r9
	mov r1, r6
	mov r2, r5
	bl OS_ReadMessage
	ldr r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [r0]
	blx r1
	mov r8, r0
	bl OS_DisableInterrupts
	mov r7, r0
	bl OS_DisableScheduler
	mov r0, r9
	mov r1, r4
	mov r2, r4
	bl OS_ReceiveMessage
	ldr r0, [sp]
	ldr r0, [r0, #4]
	cmp r0, #0
	strne r8, [r0, #0xa8]
	ldr r0, [sp]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _020D4BAC
	mov r1, r8
	mov r2, r10
	bl OS_SendMessage
_020D4BAC:
	ldr r0, [sp]
	bl SOCLi_FreeCommandPacket
	bl OS_EnableScheduler
	mov r0, r7
	bl OS_RestoreInterrupts
	b _020D4B38
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end SOCLi_CommandPacketHandler

	arm_func_start SOCL_CreateSocket
SOCL_CreateSocket: ; 0x020D4BCC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020D4C74 ; =SOCLiConfigPtr
	ldr r1, [r1]
	cmp r1, #0
	mvneq r0, #0x26
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl SOCLi_StartupSocket
	movs r4, r0
	mvneq r0, #0x30
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r5, #1
	ldr r0, _020D4C78 ; =SOCLi_CreateSocketCallBack
	mov r1, r4
	mov r2, r5
	bl SOCLi_CreateCommandPacket
	mov r1, r0
	mov r0, r4
	bl SOCLi_ExecCommandPacketInCtrlPipe
	cmp r4, #0
	mov r1, #0
	beq _020D4C2C
	ldrsh r0, [r4, #0xac]
	tst r0, #1
	movne r1, r5
_020D4C2C:
	cmp r1, #0
	beq _020D4C6C
	ldrsb r0, [r4, #0xaf]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	ldrne r0, _020D4C7C ; =SOCLi_Resource
	ldrne r1, [r0]
	addne r1, r1, #1
	strne r1, [r0]
	ldreq r0, _020D4C7C ; =SOCLi_Resource
	ldreq r1, [r0, #4]
	addeq r1, r1, #1
	streq r1, [r0, #4]
_020D4C6C:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_020D4C74: .word SOCLiConfigPtr
_020D4C78: .word SOCLi_CreateSocketCallBack
_020D4C7C: .word SOCLi_Resource
	arm_func_end SOCL_CreateSocket

	arm_func_start SOCLi_CreateSocketCallBack
SOCLi_CreateSocketCallBack: ; 0x020D4C80
	stmfd sp!, {r4, lr}
	ldr r4, [r0, #4]
	mov r0, r4
	bl CPS_SocRegister
	ldrsb r0, [r4, #0xaf]
	ldr r1, [r4, #0xa4]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _020D4CE0
_020D4CA4: ; jump table
	b _020D4CB8 ; case 0
	b _020D4CC8 ; case 1
	b _020D4CDC ; case 2
	b _020D4CE0 ; case 3
	b _020D4CB8 ; case 4
_020D4CB8:
	add r0, r1, #0x20
	bl CPS_SocDup
	bl CPS_SocUse
	b _020D4CE0
_020D4CC8:
	bl CPS_SocUse
	bl CPS_SocDatagramMode
	ldr r0, _020D4CF0 ; =SOCLi_UdpRecvCallback
	bl CPS_SetUdpCallback
	b _020D4CE0
_020D4CDC:
	bl CPS_SocDatagramMode
_020D4CE0:
	mov r0, #1
	strh r0, [r4, #0xac]
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020D4CF0: .word SOCLi_UdpRecvCallback
	arm_func_end SOCLi_CreateSocketCallBack

	arm_func_start SOCLi_StartupSocket
SOCLi_StartupSocket: ; 0x020D4CF4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl SOCLi_GetSizeSocket
	mov r4, r0
	bl OS_DisableInterrupts
	ldr r1, _020D4D58 ; =SOCLiConfigPtr
	mov r6, r0
	ldr r1, [r1]
	mov r0, r4
	ldr r1, [r1, #0x18]
	blx r1
	movs r5, r0
	beq _020D4D48
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	mov r0, r5
	mov r1, r7
	bl SOCLi_InitSocket
	mov r0, r5
	bl SOCLi_SocketRegister
_020D4D48:
	mov r0, r6
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D4D58: .word SOCLiConfigPtr
	arm_func_end SOCLi_StartupSocket

	arm_func_start SOCLi_GetSizeSocket
SOCLi_GetSizeSocket: ; 0x020D4D5C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrh r0, [r5, #2]
	mov r4, #0xbc
	cmp r0, #0
	beq _020D4D98
	add r4, r4, #0x114
	bl SOCLi_RoundUp4
	add r4, r4, r0
	ldrh r0, [r5, #8]
	bl SOCLi_RoundUp4
	add r4, r4, r0
	add r0, r5, #0x10
	bl SOCLi_GetSizeCommandPipe
	add r4, r4, r0
_020D4D98:
	ldrh r0, [r5, #6]
	cmp r0, #0
	beq _020D4DD4
	add r4, r4, #0x110
	bl SOCLi_RoundUp4
	add r4, r4, r0
	ldrh r0, [r5, #0xa]
	bl SOCLi_RoundUp4
	add r4, r4, r0
	ldrh r0, [r5, #0xc]
	bl SOCLi_RoundUp4
	add r4, r4, r0
	add r0, r5, #0x14
	bl SOCLi_GetSizeCommandPipe
	add r4, r4, r0
_020D4DD4:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end SOCLi_GetSizeSocket

	arm_func_start SOCLi_GetSizeCommandPipe
SOCLi_GetSizeCommandPipe: ; 0x020D4DDC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #3]
	mov r0, r0, lsl #2
	bl SOCLi_RoundUp4
	mov r4, r0
	ldrh r0, [r5]
	bl SOCLi_RoundUp4
	add r0, r4, r0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end SOCLi_GetSizeCommandPipe

	arm_func_start SOCLi_InitSocket
SOCLi_InitSocket: ; 0x020D4E04
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	ldrh r1, [r6, #2]
	ldrsb r2, [r6]
	mov r7, r0
	ldrsb r0, [r6, #1]
	strb r2, [r7, #0xaf]
	cmp r1, #0
	strb r0, [r7, #0xae]
	add r5, r7, #0xbc
	beq _020D4E84
	ldrh r3, [r6, #4]
	mov r1, r5
	add r0, r5, #0x114
	add r2, r6, #0x10
	mov r4, r5
	str r5, [r7, #0xa0]
	strh r3, [r5, #0xfc]
	bl SOCLi_InitCommandPipe
	ldrh r2, [r6, #2]
	add r1, r7, #0x48
	bl SOCLi_InitSocketBuffer
	ldrh r2, [r6, #8]
	add r1, r7, #0x5c
	bl SOCLi_InitSocketBuffer
	mov r2, #0
	ldrh r3, [r6, #0xe]
	add r1, r4, #0x100
	mov r5, r0
	strh r3, [r1, #0xa]
	str r2, [r4, #0x110]
	str r2, [r4, #0x10c]
_020D4E84:
	ldrh r0, [r6, #6]
	cmp r0, #0
	ldreq r0, _020D4EF8 ; =SOCLiUDPSendSocket
	ldreq r0, [r0]
	ldreq r0, [r0, #0xa4]
	streq r0, [r7, #0xa4]
	beq _020D4EF0
	str r5, [r7, #0xa4]
	mov r1, r5
	add r0, r5, #0x110
	add r2, r6, #0x14
	mov r4, r5
	str r7, [r5, #0x10c]
	bl SOCLi_InitCommandPipe
	ldrh r2, [r6, #6]
	add r1, r7, #0x54
	bl SOCLi_InitSocketBuffer
	ldrh r2, [r6, #0xa]
	add r1, r7, #0x64
	bl SOCLi_InitSocketBuffer
	ldrh r2, [r6, #0xc]
	add r1, r5, #0xf8
	bl SOCLi_InitSocketBuffer
	mov r1, #0
	str r1, [r4, #0x108]
	mov r5, r0
	str r1, [r4, #0x104]
_020D4EF0:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D4EF8: .word SOCLiUDPSendSocket
	arm_func_end SOCLi_InitSocket

	arm_func_start SOCLi_InitSocketBuffer
SOCLi_InitSocketBuffer: ; 0x020D4EFC
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r3, r4
	cmp r2, #0
	moveq r3, #0
	mov r0, r2
	stmia r1, {r2, r3}
	bl SOCLi_RoundUp4
	add r0, r4, r0
	ldmfd sp!, {r4, pc}
	arm_func_end SOCLi_InitSocketBuffer

	arm_func_start SOCLi_InitCommandPipe
SOCLi_InitCommandPipe: ; 0x020D4F24
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r5, r2
	mov r7, r0
	mov r0, r5
	mov r6, r1
	bl SOCLi_GetSizeCommandPipe
	mov r4, r0
	ldrb r2, [r5, #3]
	mov r0, r6
	mov r1, r7
	bl OS_InitMessageQueue
	add r0, r6, #0xe0
	bl OS_InitMutex
	ldrh r2, [r5]
	ldrb r1, [r5, #2]
	add r0, r6, #0x20
	str r2, [sp]
	str r1, [sp, #4]
	ldr r1, _020D4F94 ; =SOCLi_CommandPacketHandler
	mov r2, r6
	add r3, r7, r4
	bl OS_CreateThread
	add r0, r6, #0x20
	bl OS_WakeupThreadDirect
	add r0, r7, r4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D4F94: .word SOCLi_CommandPacketHandler
	arm_func_end SOCLi_InitCommandPipe

	arm_func_start SOCL_Bind
SOCL_Bind: ; 0x020D4F98
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl SOCL_SocketIsInvalid
	cmp r0, #0
	mvnne r0, #0x1b
	ldmnefd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	mov r1, #0
	beq _020D4FCC
	ldrsh r0, [r5, #0xac]
	tst r0, #1
	movne r1, #1
_020D4FCC:
	cmp r1, #0
	mvneq r0, #0x26
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrsh r0, [r5, #0xac]
	tst r0, #2
	mvnne r0, #6
	ldmnefd sp!, {r3, r4, r5, pc}
	strh r4, [r5, #0xb0]
	ldrsb r0, [r5, #0xaf]
	cmp r0, #1
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl SOCLi_ExecBindCommand
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end SOCL_Bind

	arm_func_start SOCL_Connect
SOCL_Connect: ; 0x020D5008
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl SOCL_SocketIsInvalid
	cmp r0, #0
	bne _020D5030
	ldrsh r0, [r6, #0xac]
	tst r0, #8
	beq _020D5038
_020D5030:
	mvn r0, #0x1b
	ldmfd sp!, {r4, r5, r6, pc}
_020D5038:
	cmp r6, #0
	mov r1, #0
	beq _020D5050
	ldrsh r0, [r6, #0xac]
	tst r0, #1
	movne r1, #1
_020D5050:
	cmp r1, #0
	mvneq r0, #0x26
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrsb r0, [r6, #0xaf]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _020D5138
	and r0, r4, #0xf0000000
	cmp r0, #0xe0000000
	beq _020D50C4
	ldr r0, _020D5148 ; =CPSMyIp
	ldr r1, _020D514C ; =CPSNetMask
	ldr r0, [r0]
	ldr r1, [r1]
	eor r0, r0, r4
	tst r1, r0
	beq _020D50A8
	cmn r4, #1
	b _020D50B4
_020D50A8:
	mvn r1, r1
	and r0, r1, r4
	cmp r1, r0
_020D50B4:
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _020D50CC
_020D50C4:
	mvn r0, #0x1b
	ldmfd sp!, {r4, r5, r6, pc}
_020D50CC:
	ldrsh r0, [r6, #0xac]
	tst r0, #4
	beq _020D50EC
	ldrsb r0, [r6, #0xae]
	cmp r0, #1
	mvneq r0, #0x1d
	movne r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020D50EC:
	ldrsh r0, [r6, #0xac]
	tst r0, #2
	beq _020D5110
	ldrsh r0, [r6, #0xac]
	tst r0, #0x40
	ldrne r0, [r6, #0xa8]
	ldreq r0, _020D5150 ; =SOCLiResultCodeInConnecting
	ldreq r0, [r0]
	ldmfd sp!, {r4, r5, r6, pc}
_020D5110:
	strh r5, [r6, #0xb2]
	mov r0, r6
	str r4, [r6, #0xb4]
	bl SOCLi_ExecBindCommand
	ldrsb r1, [r6, #0xae]
	cmp r1, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r0, #0
	mvnge r0, #0x19
	ldmfd sp!, {r4, r5, r6, pc}
_020D5138:
	strh r5, [r6, #0xb2]
	str r4, [r6, #0xb4]
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020D5148: .word CPSMyIp
_020D514C: .word CPSNetMask
_020D5150: .word SOCLiResultCodeInConnecting
	arm_func_end SOCL_Connect

	arm_func_start SOCLi_ExecBindCommand
SOCLi_ExecBindCommand: ; 0x020D5154
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrsb r2, [r4, #0xae]
	ldr r0, _020D51A8 ; =SOCLi_BindCallBack
	mov r1, r4
	bl SOCLi_CreateCommandPacket
	movs r1, r0
	mvneq r0, #0x20
	ldmeqfd sp!, {r4, pc}
	ldrh r2, [r4, #0xb0]
	mov r0, r4
	strh r2, [r1, #0x10]
	ldrh r2, [r4, #0xb2]
	strh r2, [r1, #0x12]
	ldr r2, [r4, #0xb4]
	str r2, [r1, #0x14]
	ldrsh r2, [r4, #0xac]
	orr r2, r2, #2
	strh r2, [r4, #0xac]
	bl SOCLi_ExecCommandPacketInRecvPipe
	ldmfd sp!, {r4, pc}
_020D51A8: .word SOCLi_BindCallBack
	arm_func_end SOCLi_ExecBindCommand

	arm_func_start SOCLi_BindCallBack
SOCLi_BindCallBack: ; 0x020D51AC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r4, [r7, #4]
	mov r6, #0
	ldr r5, [r4, #0xa0]
	add r0, r5, #0xe0
	bl OS_LockMutex
	ldrh r0, [r7, #0x10]
	ldrh r1, [r7, #0x12]
	ldr r2, [r7, #0x14]
	bl CPS_SocBind
	str r6, [r5, #0xf8]
	ldrsb r0, [r7, #0xc]
	cmp r0, #0
	cmpne r0, #4
	bne _020D51F4
	bl CPS_TcpConnect
	mov r6, r0
_020D51F4:
	add r0, r5, #0xe0
	bl OS_UnlockMutex
	cmp r6, #0
	ldrnesh r1, [r4, #0xac]
	mvnne r0, #0x4b
	moveq r0, #0
	orrne r1, r1, #0x40
	strneh r1, [r4, #0xac]
	ldreqsh r1, [r4, #0xac]
	orreq r1, r1, #4
	streqh r1, [r4, #0xac]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end SOCLi_BindCallBack

	arm_func_start SOCL_ReadFrom
SOCL_ReadFrom: ; 0x020D5224
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	mov r9, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl SOCL_SocketIsInvalid
	cmp r0, #0
	addne sp, sp, #0xc
	mvnne r0, #0x1b
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [sp, #0x2c]
	tst r0, #4
	bne _020D5268
	ldrsb r0, [r9, #0xae]
	cmp r0, #0
	bne _020D5284
_020D5268:
	ldrsb r0, [r9, #0xaf]
	cmp r0, #4
	addeq sp, sp, #0xc
	mvneq r0, #0x1b
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r5, #0
	b _020D529C
_020D5284:
	bl OS_GetProcMode
	cmp r0, #0x12
	addeq sp, sp, #0xc
	mvneq r0, #0x1b
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r5, #1
_020D529C:
	cmp r9, #0
	mov r1, #0
	beq _020D52B4
	ldrsh r0, [r9, #0xac]
	tst r0, #1
	movne r1, #1
_020D52B4:
	cmp r1, #0
	addeq sp, sp, #0xc
	mvneq r0, #0x26
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldrsb r0, [r9, #0xaf]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _020D5304
	ldrsh r0, [r9, #0xac]
	tst r0, #4
	beq _020D52F8
	ldrsh r0, [r9, #0xac]
	tst r0, #8
	beq _020D5304
_020D52F8:
	add sp, sp, #0xc
	mvn r0, #0x37
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D5304:
	ldr r4, [r9, #0xa0]
	tst r5, #1
	add r0, r4, #0xe0
	bne _020D532C
	bl OS_TryLockMutex
	cmp r0, #0
	bne _020D5330
	add sp, sp, #0xc
	mvn r0, #5
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D532C:
	bl OS_LockMutex
_020D5330:
	ldr r0, [sp, #0x28]
	ldr r12, [sp, #0x2c]
	str r0, [sp]
	mov r0, r9
	mov r1, r8
	mov r2, r7
	mov r3, r6
	stmib sp, {r5, r12}
	bl SOCLi_ReadAndConsumeBuffer
	mov r5, r0
	add r0, r4, #0xe0
	bl OS_UnlockMutex
	mov r0, r5
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	arm_func_end SOCL_ReadFrom

	arm_func_start SOCLi_ReadAndConsumeBuffer
SOCLi_ReadAndConsumeBuffer: ; 0x020D536C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r4, [sp, #0x28]
	mov r7, r0
	tst r4, #2
	ldr r4, [r7, #0xa0]
	cmpne r4, #0
	movne r6, #1
	moveq r6, #0
	cmp r6, #0
	ldrnesb r5, [r4, #0xfe]
	movne r0, #1
	strneb r0, [r4, #0xfe]
	ldrsb r0, [r7, #0xaf]
	cmp r0, #1
	bne _020D53CC
	ldr r0, [sp, #0x20]
	ldr r12, [sp, #0x24]
	str r0, [sp]
	mov r0, r7
	str r12, [sp, #4]
	bl SOCLi_ReadUdpBuffer
	mov r8, r0
	b _020D53F4
_020D53CC:
	ldr r0, [sp, #0x20]
	ldr r12, [sp, #0x24]
	str r0, [sp]
	mov r0, r7
	str r12, [sp, #4]
	bl SOCLi_ReadBuffer
	movs r8, r0
	bmi _020D53F4
	mov r0, r7
	bl SOCLi_ConsumeBuffer
_020D53F4:
	cmp r6, #0
	strneb r5, [r4, #0xfe]
	mov r0, r8
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end SOCLi_ReadAndConsumeBuffer

	arm_func_start SOCLi_ReadBuffer
SOCLi_ReadBuffer: ; 0x020D5408
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldrsb r12, [r7, #0xaf]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp r12, #4
	bne _020D5438
	ldr r4, [sp, #0x18]
	str r4, [sp]
	bl SOCLi_ExecReadCommand
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D5438:
	ldr r12, [sp, #0x18]
	str r12, [sp]
	bl SOCLi_CopyCPSBuffer
	cmn r0, #6
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [sp, #0x1c]
	tst r1, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r12, [sp, #0x18]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str r12, [sp]
	bl SOCLi_ExecReadCommand
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end SOCLi_ReadBuffer

	arm_func_start SOCLi_CopyCPSBuffer
SOCLi_CopyCPSBuffer: ; 0x020D5478
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	mov r9, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl OS_DisableInterrupts
	add r1, sp, #8
	mov r4, r0
	str r1, [sp]
	add r1, sp, #0xc
	mov r0, r9
	add r2, sp, #6
	add r3, sp, #4
	bl SOCLi_ReadCPSBuffer
	cmp r0, #0
	beq _020D551C
	ldr r5, [sp, #0xc]
	cmp r5, #0
	mvneq r5, #5
	beq _020D5538
	ldrsb r1, [r9, #0xaf]
	cmp r7, r5
	mov r2, #1
	movgt r7, r5
	cmp r1, #0
	cmpne r1, #4
	movne r2, #0
	cmp r2, #0
	mov r1, r8
	mov r2, r7
	movne r5, r7
	bl MI_CpuCopy
	ldr r1, [r9, #0xa0]
	ldrsb r0, [r1, #0xfe]
	cmp r0, #0
	bne _020D5538
	ldr r0, [r1, #0xf8]
	add r0, r0, r5
	str r0, [r1, #0xf8]
	b _020D5538
_020D551C:
	ldr r0, [sp, #0xc]
	mov r5, #0
	cmp r0, #0
	ldrsh r0, [r9, #0xac]
	mvnne r5, #0x1b
	bic r0, r0, #6
	strh r0, [r9, #0xac]
_020D5538:
	cmp r5, #0
	blt _020D556C
	cmp r6, #0
	ldrne r1, [sp, #0x30]
	cmpne r1, #0
	ldrneh r0, [sp, #4]
	strneh r0, [r6]
	ldrne r0, [sp, #8]
	strne r0, [r1]
	ldrh r0, [r9, #0xb0]
	cmp r0, #0
	ldreqh r0, [sp, #6]
	streqh r0, [r9, #0xb0]
_020D556C:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end SOCLi_CopyCPSBuffer

	arm_func_start SOCLi_ReadCPSBuffer
SOCLi_ReadCPSBuffer: ; 0x020D5580
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, [r0, #0xa0]
	ldr r4, [r0, #0xc4]
	ldr r5, [r0, #0xf8]
	ldr r0, [r4, #0x50]
	subs lr, r0, r5
	bmi _020D55D8
	ldrh r12, [r4, #0xa]
	ldr r0, [sp, #0x10]
	cmp lr, #0
	strh r12, [r2]
	ldrh r2, [r4, #0x18]
	strh r2, [r3]
	ldr r2, [r4, #0x1c]
	str r2, [r0]
	str lr, [r1]
	bne _020D55E8
	ldrb r0, [r4, #8]
	cmp r0, #4
	beq _020D55E8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020D55D8:
	mvn r0, #0
	str r0, [r1]
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020D55E8:
	ldr r0, [r4, #0x4c]
	add r0, r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end SOCLi_ReadCPSBuffer

	arm_func_start SOCLi_ExecReadCommand
SOCLi_ExecReadCommand: ; 0x020D55F4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	ldr r0, _020D563C ; =SOCLi_ReadCallBack
	mov r1, r7
	mov r2, #1
	mov r4, r3
	bl SOCLi_CreateCommandPacket
	mov r1, r0
	str r6, [r1, #0x10]
	str r5, [r1, #0x14]
	ldr r2, [sp, #0x18]
	str r4, [r1, #0x18]
	mov r0, r7
	str r2, [r1, #0x1c]
	bl SOCLi_ExecCommandPacketInRecvPipe
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D563C: .word SOCLi_ReadCallBack
	arm_func_end SOCLi_ExecReadCommand

	arm_func_start SOCLi_ReadCallBack
SOCLi_ReadCallBack: ; 0x020D5640
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldr r7, [r0, #4]
	ldr r1, [r0, #0x10]
	ldr r8, [r7, #0xa0]
	str r1, [sp, #0xc]
	ldr r1, [r0, #0x18]
	ldr r10, [r0, #0x14]
	ldr r0, [r0, #0x1c]
	ldr r9, [r8, #0xf8]
	str r1, [sp, #8]
	str r0, [sp, #4]
	mov r4, #0
	mov r5, #1
	mov r11, #0xa
	add r6, sp, #0x10
_020D5680:
	mov r0, r6
	bl CPS_SocRead
	cmp r0, #0
	beq _020D56D4
	ldr r1, [sp, #0x10]
	sub r1, r1, r9
	cmp r1, #0
	bgt _020D56D4
	ldrsb r0, [r7, #0xaf]
	mov r1, r5
	cmp r0, #0
	cmpne r0, #4
	movne r1, r4
	cmp r1, #0
	ldrneb r0, [r7, #8]
	cmpne r0, #4
	movne r0, #0
	bne _020D56D4
	mov r0, r11
	bl OS_Sleep
	b _020D5680
_020D56D4:
	ldrsh r1, [r7, #0xac]
	tst r1, #0x80
	addne sp, sp, #0x14
	mvnne r0, #0xe
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsb r1, [r7, #0xaf]
	cmp r1, #4
	bne _020D5730
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x10]
	cmp r10, r1
	movhi r10, r1
	ldr r1, [sp, #0xc]
	mov r2, r10
	bl MI_CpuCopy
	mov r0, r10
	bl CPS_SocConsume
	add sp, sp, #0x14
	mov r0, r10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D5730:
	cmp r0, #0
	moveq r4, #0
	beq _020D575C
	ldr r4, [sp, #4]
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #8]
	mov r0, r7
	mov r2, r10
	str r4, [sp]
	bl SOCLi_CopyCPSBuffer
	mov r4, r0
_020D575C:
	cmp r4, #0
	addle sp, sp, #0x14
	movle r0, r4
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r0, [r8, #0xfc]
	ldr r1, [r8, #0xf8]
	cmp r1, r0
	blt _020D5784
	mov r0, r7
	bl SOCLi_ConsumeCPSBuffer
_020D5784:
	mov r0, r4
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end SOCLi_ReadCallBack

	arm_func_start SOCLi_ConsumeBuffer
SOCLi_ConsumeBuffer: ; 0x020D5790
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0xa0]
	ldrh r0, [r1, #0xfc]
	ldr r1, [r1, #0xf8]
	cmp r1, r0
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, pc}
	mov r4, #0
	ldr r0, _020D57DC ; =SOCLi_ConsumeCallBack
	mov r1, r5
	mov r2, r4
	bl SOCLi_CreateCommandPacket
	movs r1, r0
	subeq r0, r4, #0x21
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl SOCLi_ExecCommandPacketInRecvPipe
	ldmfd sp!, {r3, r4, r5, pc}
_020D57DC: .word SOCLi_ConsumeCallBack
	arm_func_end SOCLi_ConsumeBuffer

	arm_func_start SOCLi_ConsumeCallBack
SOCLi_ConsumeCallBack: ; 0x020D57E0
	ldr r0, [r0, #4]
	ldr r12, _020D57EC ; =SOCLi_ConsumeCPSBuffer
	bx r12
_020D57EC: .word SOCLi_ConsumeCPSBuffer
	arm_func_end SOCLi_ConsumeCallBack

	arm_func_start SOCLi_ConsumeCPSBuffer
SOCLi_ConsumeCPSBuffer: ; 0x020D57F0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, [r0, #0xa0]
	bl OS_DisableInterrupts
	ldr r6, [r4, #0xf8]
	mov r5, r0
	cmp r6, #0
	beq _020D581C
	mov r1, #0
	mov r0, r6
	str r1, [r4, #0xf8]
	bl CPS_SocConsume
_020D581C:
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end SOCLi_ConsumeCPSBuffer

	arm_func_start SOCLi_ReadUdpBuffer
SOCLi_ReadUdpBuffer: ; 0x020D582C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	ldr r6, [r10, #0xa0]
	str r1, [sp]
	str r2, [sp, #4]
	mov r11, r3
	bl OS_DisableInterrupts
	ldr r7, [r6, #0x104]
	str r0, [sp, #8]
	cmp r7, #0
	bne _020D58C4
	ldr r0, [sp, #0x34]
	mov r4, #1
	and r9, r0, #1
	mov r5, #0
_020D586C:
	cmp r9, #0
	mvneq r8, #5
	beq _020D58C4
	add r0, r6, #0x10c
	bl OS_SleepThread
	mov r0, r10
	bl SOCL_SocketIsInvalid
	cmp r0, #0
	bne _020D58B0
	mov r1, r5
	cmp r10, #0
	beq _020D58A8
	ldrsh r0, [r10, #0xac]
	tst r0, #1
	movne r1, r4
_020D58A8:
	cmp r1, #0
	bne _020D58B8
_020D58B0:
	mvn r8, #0x37
	b _020D58C4
_020D58B8:
	ldr r7, [r6, #0x104]
	cmp r7, #0
	beq _020D586C
_020D58C4:
	cmp r7, #0
	beq _020D5958
	ldrh r1, [r7, #4]
	ldr r0, [sp, #4]
	cmp r0, r1
	strgt r1, [sp, #4]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r7, #0xc
	bl MI_CpuCopy
	cmp r11, #0
	ldrneh r0, [r7, #6]
	ldr r1, [sp, #0x30]
	strneh r0, [r11]
	cmp r1, #0
	ldrne r0, [r7, #8]
	strne r0, [r1]
	ldrsb r0, [r6, #0xfe]
	ldrh r8, [r7, #4]
	cmp r0, #0
	bne _020D5958
	ldr r0, [r7]
	ldr r1, _020D596C ; =SOCLiConfigPtr
	str r0, [r6, #0x104]
	ldr r0, [r7]
	cmp r0, #0
	moveq r0, #0
	streq r0, [r6, #0x100]
	ldr r1, [r1]
	mov r0, r7
	ldr r1, [r1, #0x1c]
	blx r1
	add r1, r6, #0x100
	ldrh r2, [r1, #8]
	mov r0, r8, lsl #0x10
	sub r0, r2, r0, lsr #16
	strh r0, [r1, #8]
_020D5958:
	ldr r0, [sp, #8]
	bl OS_RestoreInterrupts
	mov r0, r8
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D596C: .word SOCLiConfigPtr
	arm_func_end SOCLi_ReadUdpBuffer

	arm_func_start SOCLi_UdpRecvCallback
SOCLi_UdpRecvCallback: ; 0x020D5970
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r2
	ldr r4, [r7, #0xa0]
	mov r9, r0
	mov r8, r1
	bl OS_DisableInterrupts
	add r1, r4, #0x100
	ldrh r2, [r1, #8]
	ldrh r1, [r1, #0xa]
	mov r6, r0
	add r0, r2, r8
	cmp r1, r0
	blo _020D5A3C
	ldr r1, _020D5A84 ; =SOCLiConfigPtr
	add r0, r8, #0xc
	ldr r1, [r1]
	ldr r1, [r1, #0x18]
	blx r1
	movs r5, r0
	beq _020D5A28
	add r1, r4, #0x100
	ldrh r3, [r1, #8]
	mov r0, r8, lsl #0x10
	mov r2, #0
	add r3, r3, r0, lsr #16
	strh r3, [r1, #8]
	str r2, [r5]
	mov r0, r0, lsr #0x10
	strh r0, [r5, #4]
	ldrh r1, [r7, #0x18]
	mov r0, r9
	mov r2, r8
	strh r1, [r5, #6]
	ldr r3, [r7, #0x1c]
	add r1, r5, #0xc
	str r3, [r5, #8]
	bl MI_CpuCopy
	ldr r0, [r4, #0x100]
	cmp r0, #0
	ldrne r0, [r4, #0x100]
	strne r5, [r0]
	str r5, [r4, #0x100]
	ldr r0, [r4, #0x104]
	cmp r0, #0
	streq r5, [r4, #0x104]
	b _020D5A4C
_020D5A28:
	ldr r0, _020D5A88 ; =SOCLi_CheckCount
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	b _020D5A4C
_020D5A3C:
	ldr r0, _020D5A88 ; =SOCLi_CheckCount
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
_020D5A4C:
	ldrh r0, [r7, #0xb0]
	ldrh r2, [r7, #0x1a]
	ldr r1, [r7, #0x20]
	cmp r0, #0
	ldreqh r0, [r7, #0xa]
	strh r2, [r7, #0x18]
	str r1, [r7, #0x1c]
	streqh r0, [r7, #0xb0]
	add r0, r4, #0x10c
	bl OS_WakeupThread
	mov r0, r6
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020D5A84: .word SOCLiConfigPtr
_020D5A88: .word SOCLi_CheckCount
	arm_func_end SOCLi_UdpRecvCallback

	arm_func_start SOCL_WriteTo
SOCL_WriteTo: ; 0x020D5A8C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl SOCL_SocketIsInvalid
	cmp r0, #0
	addne sp, sp, #8
	mvnne r0, #0x1b
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r8, #0
	mov r1, #0
	beq _020D5AD0
	ldrsh r0, [r8, #0xac]
	tst r0, #1
	movne r1, #1
_020D5AD0:
	cmp r1, #0
	addeq sp, sp, #8
	mvneq r0, #0x26
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrsb r0, [r8, #0xaf]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _020D5B20
	ldrsh r0, [r8, #0xac]
	tst r0, #4
	beq _020D5B14
	ldrsh r0, [r8, #0xac]
	tst r0, #8
	beq _020D5B20
_020D5B14:
	add sp, sp, #8
	mvn r0, #0x37
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D5B20:
	ldr r0, [sp, #0x24]
	ldr r4, [r8, #0xa4]
	tst r0, #4
	bne _020D5B3C
	ldrsb r0, [r8, #0xae]
	cmp r0, #0
	bne _020D5B5C
_020D5B3C:
	add r0, r4, #0xe0
	bl OS_TryLockMutex
	cmp r0, #0
	addeq sp, sp, #8
	mvneq r0, #5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r12, #0
	b _020D5B68
_020D5B5C:
	add r0, r4, #0xe0
	bl OS_LockMutex
	mov r12, #1
_020D5B68:
	ldr r1, [sp, #0x20]
	mov r0, r8
	str r1, [sp]
	mov r1, r7
	mov r2, r6
	mov r3, r5
	str r12, [sp, #4]
	bl SOCLi_WriteBuffer
	mov r5, r0
	add r0, r4, #0xe0
	bl OS_UnlockMutex
	mov r0, r5
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end SOCL_WriteTo

	arm_func_start SOCLi_WriteBuffer
SOCLi_WriteBuffer: ; 0x020D5BA0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r10, r0
	ldr r4, [r10, #0xa4]
	ldrsb r0, [r10, #0xaf]
	ldr r4, [r4, #0x10c]
	mov r9, r1
	str r3, [sp, #0xc]
	cmp r0, #1
	mov r8, r2
	ldr r7, [sp, #0x40]
	ldr r6, [sp, #0x44]
	ldr r0, [r4, #0x54]
	mov r5, #0
	bne _020D5BF8
	sub r0, r0, #0x2a
	cmp r8, r0
	addgt sp, sp, #0x18
	subgt r0, r5, #0x23
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r8, [sp, #0x10]
	b _020D5C08
_020D5BF8:
	sub r0, r0, #0x36
	str r0, [sp, #0x10]
	cmp r8, r0
	strle r8, [sp, #0x10]
_020D5C08:
	cmp r8, #0
	ble _020D5C98
	and r11, r6, #1
_020D5C14:
	ldr r2, [sp, #0x10]
	mov r0, r10
	mov r1, r8
	add r3, sp, #0x14
	str r6, [sp]
	bl SOCLi_AllocWriteBuffer
	mov r4, r0
	cmp r4, #0
	ble _020D5C74
	ldr r0, [sp, #0xc]
	mov r1, r9
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	ldr r3, [sp, #0x14]
	mov r0, r10
	mov r2, r4
	bl SOCLi_ExecWriteCommand
	cmp r0, #0
	addle sp, sp, #0x18
	mvnle r0, #5
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r9, r9, r4
	sub r8, r8, r4
	add r5, r5, r4
_020D5C74:
	cmp r11, #0
	bne _020D5C90
	cmp r4, #0
	bgt _020D5C98
	add sp, sp, #0x18
	mvn r0, #5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D5C90:
	cmp r8, #0
	bgt _020D5C14
_020D5C98:
	mov r0, r5
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end SOCLi_WriteBuffer

	arm_func_start SOCLi_AllocWriteBuffer
SOCLi_AllocWriteBuffer: ; 0x020D5CA4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r1
	mov r8, r2
	cmp r8, r9
	mov r7, r3
	ldr r4, [r10, #0xa4]
	movgt r8, r9
	bl OS_DisableInterrupts
	ldr r1, [sp, #0x28]
	mov r11, r0
	and r6, r1, #1
_020D5CD4:
	mov r0, r10
	bl SOCLi_GetWriteBufferFreeSize
	mov r5, r0
	cmp r5, r8
	blt _020D5D00
	add r0, r4, #0x100
	ldrh r0, [r0]
	cmp r5, r9
	movge r5, r9
	str r0, [r7]
	b _020D5D18
_020D5D00:
	cmp r6, #0
	moveq r5, #0
	beq _020D5D18
	add r0, r4, #0x104
	bl OS_SleepThread
	b _020D5CD4
_020D5D18:
	mov r0, r11
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end SOCLi_AllocWriteBuffer

	arm_func_start SOCLi_GetWriteBufferFreeSize
SOCLi_GetWriteBufferFreeSize: ; 0x020D5D28
	ldr r2, [r0, #0xa4]
	add r0, r2, #0x100
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	ldr r2, [r2, #0xf8]
	sub r0, r0, r1
	subs r0, r0, #1
	addmi r0, r0, r2
	bx lr
	arm_func_end SOCLi_GetWriteBufferFreeSize

	arm_func_start SOCLi_ExecWriteCommand
SOCLi_ExecWriteCommand: ; 0x020D5D4C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	ldr r4, [r9, #0xa4]
	mov r6, r1
	mov r8, r2
	ldr r1, [r4, #0x10c]
	ldr r2, [sp, #0x28]
	ldr r0, _020D5EB4 ; =SOCLi_WriteCallBack
	mov r7, r3
	bl SOCLi_CreateCommandPacket
	movs r5, r0
	mvneq r0, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [sp, #0x28]
	add r2, r7, r8
	tst r0, #1
	ldrnesb r0, [r9, #0xaf]
	cmpne r0, #1
	movne r0, #3
	strneb r0, [r5, #0xd]
	moveq r0, #0
	streqb r0, [r5, #0xd]
	ldr r0, [r4, #0xf8]
	ldr r1, [r4, #0xfc]
	cmp r2, r0
	bge _020D5DD4
	add r0, r1, r7
	str r0, [r5, #0x10]
	str r8, [r5, #0x14]
	mov r0, #0
	str r0, [r5, #0x18]
	mov r7, r2
	str r0, [r5, #0x1c]
	b _020D5DFC
_020D5DD4:
	add r2, r1, r7
	sub r0, r0, r7
	str r2, [r5, #0x10]
	str r0, [r5, #0x14]
	sub r7, r8, r0
	str r1, [r5, #0x18]
	mov r2, r7
	add r0, r6, r0
	str r7, [r5, #0x1c]
	bl MI_CpuCopy
_020D5DFC:
	ldr r1, [r5, #0x10]
	ldr r2, [r5, #0x14]
	mov r0, r6
	bl MI_CpuCopy
	add r0, r4, #0x100
	ldrh r6, [r0]
	strh r7, [r5, #0x20]
	ldrh r1, [r5, #0x20]
	strh r1, [r0]
	ldrsb r0, [r9, #0xaf]
	cmp r0, #1
	bne _020D5E88
	ldrh r0, [r9, #0xb0]
	cmp r0, #0
	bne _020D5E48
	bl CPS_SocGetEport
	strh r0, [r9, #0xb0]
	ldrh r0, [r9, #0xb0]
	strh r0, [r9, #0xa]
_020D5E48:
	ldrh r0, [r9, #0xb0]
	strh r0, [r5, #0x24]
	ldr r1, [r9, #0xb4]
	cmp r1, #0
	beq _020D5E68
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _020D5E7C
_020D5E68:
	ldr r1, [sp, #0x24]
	ldrh r0, [sp, #0x20]
	str r1, [r5, #0x28]
_020D5E74:
	strh r0, [r5, #0x26]
	b _020D5E90
_020D5E7C:
	str r1, [r5, #0x28]
	ldrh r0, [r9, #0xb2]
	b _020D5E74
_020D5E88:
	mov r0, #0
	str r0, [r5, #0x28]
_020D5E90:
	ldr r0, [r4, #0x10c]
	mov r1, r5
	bl SOCLi_ExecCommandPacketInSendPipe
	cmp r0, #0
	addne r0, r4, #0x100
	movne r8, #0
	strneh r6, [r0]
	mov r0, r8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020D5EB4: .word SOCLi_WriteCallBack
	arm_func_end SOCLi_ExecWriteCommand

	arm_func_start SOCLi_WriteCallBack
SOCLi_WriteCallBack: ; 0x020D5EB8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	ldr r5, [r9, #4]
	mov r7, #0
	ldrsb r1, [r5, #0xaf]
	ldr r6, [r5, #0xa4]
	cmp r1, #2
	bne _020D5EE8
	ldrsh r0, [r5, #0xac]
	tst r0, #8
	subne r0, r7, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020D5EE8:
	cmp r1, #0
	cmpne r1, #4
	bne _020D5F00
	ldrsh r0, [r5, #0xac]
	tst r0, #4
	beq _020D5FD0
_020D5F00:
	ldr r2, [r9, #0x28]
	cmp r2, #0
	beq _020D5F18
	ldrh r0, [r9, #0x24]
	ldrh r1, [r9, #0x26]
	bl CPS_SocBind
_020D5F18:
	ldrsb r1, [r5, #0xaf]
	mov r0, #1
	mov r8, #0x36
	cmp r1, #0
	cmpne r1, #4
	movne r0, #0
	cmp r0, #0
	moveq r8, #0x2a
	cmp r1, #0
	cmpne r1, #4
	ldrne r0, [r5, #0x54]
	ldr r4, [r5, #0x58]
	subne r10, r0, r8
	bne _020D5F60
	ldr r0, [r5, #0x54]
	sub r0, r0, r8
	bl SOCLi_GetOptimumSendBufLen
	mov r10, r0
_020D5F60:
	mov r1, r10
	mov r2, r9
	add r0, r4, r8
	bl SOCLi_MemCpy
	mov r1, r0
	cmp r1, #0
	ble _020D5FD4
	add r0, r4, r8
	bl CPS_SocWrite
	cmp r0, #0
	bgt _020D5FC8
	ldrsb r0, [r5, #0xaf]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _020D5FC4
	ldrsh r0, [r5, #0xac]
	bic r0, r0, #0xe
	strh r0, [r5, #0xac]
	ldrsh r0, [r5, #0xac]
	orr r0, r0, #0x80
	strh r0, [r5, #0xac]
	bl CPS_TcpClose
_020D5FC4:
	b _020D5FD0
_020D5FC8:
	add r7, r7, r0
	b _020D5F60
_020D5FD0:
	mvn r7, #0x4b
_020D5FD4:
	ldrh r2, [r9, #0x20]
	add r1, r6, #0x100
	add r0, r6, #0x104
	strh r2, [r1, #2]
	bl OS_WakeupThread
	mov r0, r7
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end SOCLi_WriteCallBack

	arm_func_start SOCLi_GetOptimumSendBufLen
SOCLi_GetOptimumSendBufLen: ; 0x020D5FF0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020D6080 ; =OSi_ThreadInfo
	mov r4, r0
	ldr r0, [r1, #4]
	ldr r5, [r0, #0xa4]
	bl OS_DisableInterrupts
	cmp r5, #0
	beq _020D6048
	ldrh r3, [r5, #0x3a]
	cmp r3, #0
	ldrneh r2, [r5, #0x38]
	cmpne r2, #0
	beq _020D6044
	ldr r1, _020D6084 ; =SOCLiCPSConfig
	cmp r3, r2
	ldr r1, [r1, #0x24]
	movgt r3, r2
	cmp r3, r1
	movgt r3, r1
	mov r5, r3, lsl #1
	b _020D6054
_020D6044:
	b _020D6048
_020D6048:
	ldr r1, _020D6084 ; =SOCLiCPSConfig
	ldr r1, [r1, #0x24]
	mov r5, r1, lsl #1
_020D6054:
	bl OS_RestoreInterrupts
	cmp r5, #0
	ble _020D6078
	mov r0, r4
	mov r1, r5
	bl _s32_div_f
	cmp r0, #0
	mulgt r0, r5, r0
	ldmgtfd sp!, {r3, r4, r5, pc}
_020D6078:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_020D6080: .word OSi_ThreadInfo
_020D6084: .word SOCLiCPSConfig
	arm_func_end SOCLi_GetOptimumSendBufLen

	arm_func_start SOCLi_MemCpy
SOCLi_MemCpy: ; 0x020D6088
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r2
	ldr r4, [r6, #0x14]
	ldr r5, [r6, #0x1c]
	cmp r4, r1
	mov r7, r0
	movgt r4, r1
	movgt r5, #0
	bgt _020D60B8
	sub r0, r1, r4
	cmp r5, r0
	movgt r5, r0
_020D60B8:
	cmp r4, #0
	ble _020D60E8
	ldr r0, [r6, #0x10]
	mov r1, r7
	mov r2, r4
	bl MI_CpuCopy
	ldr r1, [r6, #0x10]
	ldr r0, [r6, #0x14]
	add r1, r1, r4
	sub r0, r0, r4
	str r1, [r6, #0x10]
	str r0, [r6, #0x14]
_020D60E8:
	cmp r5, #0
	ble _020D6118
	ldr r0, [r6, #0x18]
	mov r2, r5
	add r1, r7, r4
	bl MI_CpuCopy
	ldr r1, [r6, #0x18]
	ldr r0, [r6, #0x1c]
	add r1, r1, r5
	sub r0, r0, r5
	str r1, [r6, #0x18]
	str r0, [r6, #0x1c]
_020D6118:
	add r0, r4, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end SOCLi_MemCpy

	arm_func_start SOCL_Shutdown
SOCL_Shutdown: ; 0x020D6120
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl SOCL_SocketIsInvalid
	cmp r0, #0
	mvnne r0, #0x1b
	ldmnefd sp!, {r3, r4, r5, pc}
	cmp r4, #0
	mov r1, #0
	beq _020D6150
	ldrsh r0, [r4, #0xac]
	tst r0, #1
	movne r1, #1
_020D6150:
	cmp r1, #0
	mvneq r0, #0x26
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrsh r0, [r4, #0xac]
	tst r0, #4
	beq _020D6174
	ldrsh r0, [r4, #0xac]
	tst r0, #8
	beq _020D617C
_020D6174:
	mvn r0, #0x37
	ldmfd sp!, {r3, r4, r5, pc}
_020D617C:
	ldrsh r0, [r4, #0xac]
	orr r0, r0, #8
	strh r0, [r4, #0xac]
	ldr r5, [r4, #0xa4]
	cmp r5, #0
	ldrne r1, [r5, #0x10c]
	cmpne r1, #0
	beq _020D61C0
	ldrsb r2, [r4, #0xae]
	ldr r0, _020D61C8 ; =SOCLi_ShutdownCallBack
	bl SOCLi_CreateCommandPacket
	movs r1, r0
	mvneq r0, #0x20
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x10c]
	bl SOCLi_ExecCommandPacketInSendPipe
	ldmfd sp!, {r3, r4, r5, pc}
_020D61C0:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020D61C8: .word SOCLi_ShutdownCallBack
	arm_func_end SOCL_Shutdown

	arm_func_start SOCLi_ShutdownCallBack
SOCLi_ShutdownCallBack: ; 0x020D61CC
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #4]
	mov r1, #1
	ldrsb r0, [r0, #0xaf]
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _020D61F4
	bl CPS_TcpShutdown
_020D61F4:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end SOCLi_ShutdownCallBack

	arm_func_start SOCL_IsClosed
SOCL_IsClosed: ; 0x020D61FC
	stmfd sp!, {r4, lr}
	movs r4, r0
	bmi _020D6228
	bl SOCL_SocketIsInvalid
	cmp r0, #0
	beq _020D6228
	mov r0, r4
	bl SOCL_SocketIsInTrash
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
_020D6228:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end SOCL_IsClosed

	arm_func_start SOCL_Close
SOCL_Close: ; 0x020D6230
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	cmp r4, #0
	mov r5, #0
	mvnle r0, #0x1b
	ldmlefd sp!, {r4, r5, r6, pc}
	bl OS_DisableInterrupts
	mov r6, r0
	mov r0, r4
	bl SOCL_SocketIsInTrash
	cmp r0, #0
	beq _020D6270
	mov r0, r6
	bl OS_RestoreInterrupts
	mvn r0, #0x19
	ldmfd sp!, {r4, r5, r6, pc}
_020D6270:
	mov r0, r4
	bl SOCL_SocketIsInvalid
	cmp r0, #0
	beq _020D6290
	mov r0, r6
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020D6290:
	cmp r4, #0
	mov r1, r5
	beq _020D62A8
	ldrsh r0, [r4, #0xac]
	tst r0, #1
	movne r1, #1
_020D62A8:
	cmp r1, #0
	bne _020D62C0
	mov r0, r6
	bl OS_RestoreInterrupts
	mvn r0, #0x26
	ldmfd sp!, {r4, r5, r6, pc}
_020D62C0:
	ldrsh r0, [r4, #0xac]
	tst r0, #0x10
	mov r0, r6
	beq _020D62DC
	bl OS_RestoreInterrupts
	mvn r0, #0x19
	ldmfd sp!, {r4, r5, r6, pc}
_020D62DC:
	bl OS_RestoreInterrupts
	ldrsh r0, [r4, #0xac]
	mov r1, #1
	orr r0, r0, #0x18
	strh r0, [r4, #0xac]
	ldrsb r0, [r4, #0xaf]
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	ldreq r0, _020D635C ; =SOCLi_Resource
	ldreq r1, [r0, #4]
	subeq r1, r1, #1
	streq r1, [r0, #4]
	beq _020D6334
	ldr r0, [r4, #0xa4]
	mov r1, #0
	bl SOCLi_SendCommandPacket
	ldr r0, _020D635C ; =SOCLi_Resource
	ldr r1, [r0]
	sub r1, r1, #1
	str r1, [r0]
_020D6334:
	ldr r0, _020D6360 ; =SOCLi_CloseCallBack
	mov r1, r4
	mov r2, #1
	bl SOCLi_CreateCommandPacket
	mov r1, r0
	mov r0, r4
	str r5, [r1, #8]
	bl SOCLi_SendCommandPacketToCtrlPipe
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020D635C: .word SOCLi_Resource
_020D6360: .word SOCLi_CloseCallBack
	arm_func_end SOCL_Close

	arm_func_start SOCLi_CloseCallBack
SOCLi_CloseCallBack: ; 0x020D6364
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, [r0, #4]
	mov r1, #1
	ldrsb r0, [r4, #0xaf]
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _020D63A0
	ldr r0, [r4, #0xa4]
	add r0, r0, #0x20
	bl OS_JoinThread
	bl CPS_TcpShutdown
	bl CPS_TcpClose
	bl CPS_SocRelease
_020D63A0:
	bl CPS_SocUnRegister
	ldrsh r0, [r4, #0xac]
	mov r6, #0
	mov r1, r6
	bic r0, r0, #6
	strh r0, [r4, #0xac]
	ldrsb r0, [r4, #0xaf]
	cmp r0, #2
	ldreq r0, [r4, #0xa4]
	ldrne r0, [r4, #0xa0]
	bl SOCLi_SendCommandPacket
	bl OS_DisableInterrupts
	mov r5, r0
	mov r0, r4
	bl SOCLi_SocketUnregister
	mov r0, r4
	bl SOCLi_SocketRegisterTrash
	mov r0, r5
	bl OS_RestoreInterrupts
	ldrsh r1, [r4, #0xac]
	mov r0, r6
	orr r1, r1, #0x20
	strh r1, [r4, #0xac]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end SOCLi_CloseCallBack

	arm_func_start SOCLi_CleanupSocket
SOCLi_CleanupSocket: ; 0x020D6400
	stmfd sp!, {r4, r5, r6, lr}
	movs r4, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrsb r2, [r4, #0xaf]
	mov r0, #0
	mov r1, #1
	cmp r2, #0
	cmpne r2, #4
	movne r1, r0
	strh r0, [r4, #0xac]
	cmp r1, #0
	beq _020D6440
	ldr r0, [r4, #0xa4]
	bl SOCLi_FreeCommandPipe
	ldr r0, [r4, #0xa0]
	b _020D64B8
_020D6440:
	cmp r2, #1
	bne _020D64AC
	ldr r0, [r4, #0xa0]
	ldr r0, [r0, #0x104]
	cmp r0, #0
	beq _020D6478
	ldr r5, _020D64F4 ; =SOCLiConfigPtr
_020D645C:
	ldr r1, [r5]
	ldr r6, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	mov r0, r6
	cmp r6, #0
	bne _020D645C
_020D6478:
	ldr r0, [r4, #0xa0]
	mov r1, #0
	add r0, r0, #0x100
	strh r1, [r0, #8]
	ldr r0, [r4, #0xa0]
	str r1, [r0, #0x100]
	ldr r0, [r4, #0xa0]
	str r1, [r0, #0x104]
	ldr r0, [r4, #0xa0]
	add r0, r0, #0x10c
	bl OS_WakeupThread
	ldr r0, [r4, #0xa0]
	b _020D64B8
_020D64AC:
	cmp r2, #2
	bne _020D64BC
	ldr r0, [r4, #0xa4]
_020D64B8:
	bl SOCLi_FreeCommandPipe
_020D64BC:
	bl OS_DisableInterrupts
	mov r5, r0
	mov r0, r4
	bl SOCLi_SocketUnregister
	mov r0, r4
	bl SOCLi_SocketUnregisterTrash
	ldr r1, _020D64F4 ; =SOCLiConfigPtr
	mov r0, r4
	ldr r1, [r1]
	ldr r1, [r1, #0x1c]
	blx r1
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, pc}
_020D64F4: .word SOCLiConfigPtr
	arm_func_end SOCLi_CleanupSocket

	arm_func_start SOCLi_FreeCommandPipe
SOCLi_FreeCommandPipe: ; 0x020D64F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r9, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r9, #0x20
	bl OS_JoinThread
	bl OS_DisableInterrupts
	mov r8, r0
	bl OS_DisableScheduler
	add r7, sp, #0
	mov r0, r9
	mov r1, r7
	mov r2, #0
	bl OS_ReceiveMessage
	cmp r0, #0
	beq _020D6584
	mov r5, #0
	mvn r6, #0xa
	mov r4, r5
_020D6540:
	ldr r0, [sp]
	cmp r0, #0
	beq _020D656C
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _020D6564
	mov r1, r6
	mov r2, r5
	bl OS_SendMessage
_020D6564:
	ldr r0, [sp]
	bl SOCLi_FreeCommandPacket
_020D656C:
	mov r0, r9
	mov r1, r7
	mov r2, r4
	bl OS_ReceiveMessage
	cmp r0, #0
	bne _020D6540
_020D6584:
	bl OS_EnableScheduler
	bl OS_RescheduleThread
	mov r0, r8
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end SOCLi_FreeCommandPipe

	arm_func_start SOCLi_TrashSocket
SOCLi_TrashSocket: ; 0x020D6598
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	ldr r4, _020D65D0 ; =SOCLiSocketListTrash
	mov r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _020D65C4
_020D65B4:
	bl SOCLi_CleanupSocket
	ldr r0, [r4]
	cmp r0, #0
	bne _020D65B4
_020D65C4:
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, pc}
_020D65D0: .word SOCLiSocketListTrash
	arm_func_end SOCLi_TrashSocket

	arm_func_start SOCL_Cleanup
SOCL_Cleanup: ; 0x020D65D4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020D6664 ; =SOCLiRequestedIP
	ldr r0, [r1]
	cmp r0, #0
	ldreq r0, _020D6668 ; =CPSMyIp
	ldreq r0, [r0]
	streq r0, [r1]
	bl SOCL_CalmDown
	mvn r4, #0x19
	cmp r0, r4
	bne _020D6618
	mov r5, #0x64
_020D6604:
	mov r0, r5
	bl OS_Sleep
	bl SOCL_CalmDown
	cmp r0, r4
	beq _020D6604
_020D6618:
	bl SOCLi_CleanupCommandPacketQueue
	movs r4, r0
	bmi _020D665C
	bl SOCLi_CleanupCPS
	ldr r0, _020D666C ; =SOCLiConfigPtr
	ldr r1, [r0]
	ldr r0, [r1, #0x28]
	cmp r0, #0
	bne _020D664C
	ldr r0, _020D6670 ; =SOCLiCPSConfig
	ldr r1, [r1, #0x1c]
	ldr r0, [r0, #0x1c]
	blx r1
_020D664C:
	ldr r0, _020D666C ; =SOCLiConfigPtr
	mov r1, #0
	str r1, [r0]
	bl SOCLi_InitResource
_020D665C:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_020D6664: .word SOCLiRequestedIP
_020D6668: .word CPSMyIp
_020D666C: .word SOCLiConfigPtr
_020D6670: .word SOCLiCPSConfig
	arm_func_end SOCL_Cleanup

	arm_func_start SOCLi_CleanupCPS
SOCLi_CleanupCPS: ; 0x020D6674
	stmfd sp!, {r4, lr}
	bl CPS_Cleanup
	mov r4, #0
	mov r0, r4
	bl CPS_SetScavengerCallback
	mov r0, r4
	bl CPS_SetCheckNConfigCallback
	mov r0, r4
	bl WCM_SetRecvDCFCallback
	ldmfd sp!, {r4, pc}
	arm_func_end SOCLi_CleanupCPS

	arm_func_start SOCL_CloseAll
SOCL_CloseAll: ; 0x020D669C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020D6738 ; =SOCLiUDPSendSocket
	ldr r5, _020D673C ; =SOCLiSocketList
_020D66A8:
	bl OS_DisableInterrupts
	ldr r6, [r5]
	cmp r6, #0
	beq _020D66DC
	ldr r2, [r4]
_020D66BC:
	cmp r6, r2
	beq _020D66D0
	ldrsh r1, [r6, #0xac]
	tst r1, #0x10
	beq _020D66DC
_020D66D0:
	ldr r6, [r6, #0xb8]
	cmp r6, #0
	bne _020D66BC
_020D66DC:
	bl OS_RestoreInterrupts
	cmp r6, #0
	beq _020D66F4
	mov r0, r6
	bl SOCL_Close
	b _020D66A8
_020D66F4:
	ldr r0, _020D673C ; =SOCLiSocketList
	ldr r1, [r0]
	cmp r1, #0
	beq _020D671C
	ldr r0, _020D6738 ; =SOCLiUDPSendSocket
	ldr r0, [r0]
	cmp r1, r0
	ldreq r0, [r1, #0xb8]
	cmpeq r0, #0
	bne _020D6730
_020D671C:
	ldr r0, _020D6740 ; =SOCLiSocketListTrash
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
_020D6730:
	mvn r0, #0x19
	ldmfd sp!, {r4, r5, r6, pc}
_020D6738: .word SOCLiUDPSendSocket
_020D673C: .word SOCLiSocketList
_020D6740: .word SOCLiSocketListTrash
	arm_func_end SOCL_CloseAll

	arm_func_start SOCL_CalmDown
SOCL_CalmDown: ; 0x020D6744
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020D67B0 ; =SOCLiUDPSendSocket
	ldr r0, [r4]
	cmp r0, #0
	beq _020D678C
	bl SOCL_CloseAll
	movs r5, r0
	bne _020D6784
	ldr r0, [r4]
	bl SOCL_Close
	ldr r0, [r4]
	bl SOCL_IsClosed
	cmp r0, #0
	movne r0, #0
	strne r0, [r4]
	mvn r5, #0x19
_020D6784:
	bl SOCLi_TrashSocket
	b _020D67A8
_020D678C:
	bl CPS_CalmDown
	cmp r0, #0
	mvneq r5, #0x19
	beq _020D67A8
	mov r5, #0
	mov r0, r5
	bl WCM_SetRecvDCFCallback
_020D67A8:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020D67B0: .word SOCLiUDPSendSocket
	arm_func_end SOCL_CalmDown

	arm_func_start SOCL_Resolve
SOCL_Resolve: ; 0x020D67B4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xa0
	ldr r8, _020D6870 ; =SOCLiConfigPtr
	mov r7, r0
	ldr r0, [r8]
	cmp r0, #0
	addeq sp, sp, #0xa0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r7, #0
	addeq sp, sp, #0xa0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r6, _020D6874 ; =0x00001708
	ldr r1, [r0, #0x18]
	mov r0, r6
	blx r1
	movs r5, r0
	addeq sp, sp, #0xa0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r4, sp, #0
	mov r1, #0
	mov r0, r4
	mov r2, #0xa0
	bl MI_CpuFill8
	add r0, r5, #0x368
	add r2, r0, #0x800
	ldr r1, _020D6878 ; =0x00000B9E
	sub r3, r6, #0xba0
	mov r0, r4
	str r5, [sp, #0x4c]
	str r3, [sp, #0x48]
	str r2, [sp, #0x58]
	str r1, [sp, #0x54]
	bl CPS_SocRegister
	mov r0, r7
	bl CPS_Resolve
	mov r4, r0
	bl CPS_SocUnRegister
	ldr r1, [r8]
	mov r0, r5
	ldr r1, [r1, #0x1c]
	blx r1
	mov r0, r4
	add sp, sp, #0xa0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D6870: .word SOCLiConfigPtr
_020D6874: .word 0x00001708
_020D6878: .word 0x00000B9E
	arm_func_end SOCL_Resolve

	arm_func_start SOCL_InetAtoH
SOCL_InetAtoH: ; 0x020D687C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r4, _020D68C0 ; =CPSDnsIp
	mov r6, r0
	ldmia r4, {r7, r8}
	mov r1, #0
	str r1, [r4]
	mov r0, r5
	str r1, [r4, #4]
	bl CPS_Resolve
	mov r5, r0
	mov r0, r6
	stmia r4, {r7, r8}
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D68C0: .word CPSDnsIp
	arm_func_end SOCL_InetAtoH

	arm_func_start SOCL_SetResolver
SOCL_SetResolver: ; 0x020D68C4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl SOCL_GetHostID
	cmp r0, #0
	mvneq r0, #0x26
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	ldrne r0, _020D6924 ; =CPSDhcpMode
	ldr r1, _020D6928 ; =CPSDnsIp
	ldrne r2, [r0]
	str r5, [r1]
	orrne r2, r2, #2
	strne r2, [r0]
	strne r4, [r1, #4]
	bne _020D691C
	ldr r0, _020D6924 ; =CPSDhcpMode
	mov r2, #0
	ldr r3, [r0]
	bic r3, r3, #2
	str r3, [r0]
	str r2, [r1, #4]
_020D691C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020D6924: .word CPSDhcpMode
_020D6928: .word CPSDnsIp
	arm_func_end SOCL_SetResolver

	arm_func_start SOCL_GetHostID
SOCL_GetHostID: ; 0x020D692C
	stmfd sp!, {r3, lr}
	ldr r0, _020D6988 ; =CPSMyIp
	ldr r2, [r0]
	cmp r2, #0
	bne _020D696C
	ldr r0, _020D698C ; =SOCLiDhcpState
	ldr r0, [r0]
	and r0, r0, #3
	cmp r0, #1
	bne _020D697C
	bl OS_GetProcMode
	cmp r0, #0x12
	beq _020D697C
	mov r0, #0xa
	bl OS_Sleep
	b _020D697C
_020D696C:
	ldr r0, _020D6990 ; =SOCLiRequestedIP
	ldr r1, [r0]
	cmp r1, #0
	streq r2, [r0]
_020D697C:
	ldr r0, _020D6988 ; =CPSMyIp
	ldr r0, [r0]
	ldmfd sp!, {r3, pc}
_020D6988: .word CPSMyIp
_020D698C: .word SOCLiDhcpState
_020D6990: .word SOCLiRequestedIP
	arm_func_end SOCL_GetHostID

	arm_func_start SOCL_GetStatus
SOCL_GetStatus: ; 0x020D6994
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, #0
	mov r5, r0
	bl SOCL_SocketIsInvalid
	cmp r0, #0
	orrne r4, r4, #0x80
	bne _020D6A5C
	ldrsh r0, [r5, #0xac]
	tst r0, #0x40
	ldrsb r0, [r5, #0xaf]
	orrne r4, r4, #0x20
	cmp r0, #1
	beq _020D69D4
	ldrsh r0, [r5, #0xac]
	tst r0, #4
	beq _020D6A04
_020D69D4:
	bl OS_DisableInterrupts
	mov r6, r0
	mov r0, r5
	bl SOCLi_GetReadBufferOccpiedSize
	cmp r0, #0
	mov r0, r5
	orrgt r4, r4, #1
	bl SOCLi_GetWriteBufferFreeSize
	cmp r0, #0
	mov r0, r6
	orrgt r4, r4, #8
	bl OS_RestoreInterrupts
_020D6A04:
	ldrsb r0, [r5, #0xaf]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _020D6A5C
	ldrsh r0, [r5, #0xac]
	tst r0, #4
	ldrneb r0, [r5, #8]
	cmpne r0, #4
	beq _020D6A44
	tst r4, #1
	ldreqsh r0, [r5, #0xac]
	biceq r0, r0, #6
	streqh r0, [r5, #0xac]
_020D6A44:
	ldrsh r0, [r5, #0xac]
	tst r0, #2
	bne _020D6A5C
	ldrsh r0, [r5, #0xac]
	tst r0, #4
	orreq r4, r4, #0x40
_020D6A5C:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end SOCL_GetStatus

	arm_func_start SOCLi_GetReadBufferOccpiedSize
SOCLi_GetReadBufferOccpiedSize: ; 0x020D6A64
	ldr r2, [r0, #0xa0]
	mov r3, #0
	cmp r2, #0
	beq _020D6AA4
	ldrsb r1, [r0, #0xaf]
	cmp r1, #1
	bne _020D6A90
	ldr r0, [r2, #0x104]
	cmp r0, #0
	ldrneh r3, [r0, #4]
	b _020D6AA4
_020D6A90:
	cmp r1, #0
	cmpne r1, #4
	ldreq r1, [r0, #0x50]
	ldreq r0, [r2, #0xf8]
	subeq r3, r1, r0
_020D6AA4:
	mov r0, r3
	bx lr
	arm_func_end SOCLi_GetReadBufferOccpiedSize

	arm_func_start SOCLi_RoundUp4
SOCLi_RoundUp4: ; 0x020D6AAC
	add r0, r0, #3
	bic r0, r0, #3
	bx lr
	arm_func_end SOCLi_RoundUp4

	arm_func_start SOCLi_InitResource
SOCLi_InitResource: ; 0x020D6AB8
	ldr r0, _020D6ACC ; =SOCLi_Resource
	ldr r12, _020D6AD0 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #8
	bx r12
_020D6ACC: .word SOCLi_Resource
_020D6AD0: .word MI_CpuFill8
	arm_func_end SOCLi_InitResource

	arm_func_start SOCLi_IsIPv4ValidDNSAddr
SOCLi_IsIPv4ValidDNSAddr: ; 0x020D6AD4
	stmfd sp!, {r4, lr}
	mov r12, #0
	sub r3, r12, #1
	cmp r1, r3
	cmpne r1, #0
	mov lr, r12
	mov r4, r12
	cmpne r2, r1
	beq _020D6B38
	eor r3, r2, r1
	tst r0, r3
	bne _020D6B10
	mvn r3, r0
	tst r1, r3
	beq _020D6B38
_020D6B10:
	eor r2, r2, r1
	tst r0, r2
	mov r3, #1
	bne _020D6B30
	mvn r2, r0
	and r0, r1, r2
	teq r2, r0
	moveq r3, #0
_020D6B30:
	cmp r3, #0
	movne r4, #1
_020D6B38:
	cmp r4, #0
	beq _020D6B4C
	and r0, r1, #0xff000000
	teq r0, #0x7f000000
	movne lr, #1
_020D6B4C:
	cmp lr, #0
	beq _020D6B60
	and r0, r1, #0xf0000000
	teq r0, #0xe0000000
	movne r12, #1
_020D6B60:
	mov r0, r12
	ldmfd sp!, {r4, pc}
	arm_func_end SOCLi_IsIPv4ValidDNSAddr

	arm_func_start SOCLi_IsIPv4ValidNodeAddr
SOCLi_IsIPv4ValidNodeAddr: ; 0x020D6B68
	stmfd sp!, {r3, lr}
	mvn r3, r0
	mov r0, #0
	and r2, r1, r3
	teq r3, r2
	mov lr, r0
	cmpne r2, #0
	movne lr, #1
	mov r12, r0
	cmp lr, #0
	beq _020D6BA0
	and r2, r1, #0xff000000
	teq r2, #0x7f000000
	movne r12, #1
_020D6BA0:
	cmp r12, #0
	ldmeqfd sp!, {r3, pc}
	and r1, r1, #0xf0000000
	teq r1, #0xe0000000
	movne r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end SOCLi_IsIPv4ValidNodeAddr

	arm_func_start SOCLi_CheckNConfig
SOCLi_CheckNConfig: ; 0x020D6BB8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _020D6CB0 ; =CPSNetMask
	mov r4, #0
	ldr r0, [r7]
	cmp r0, #0
	beq _020D6BE0
	mvn r2, r0
	add r1, r2, #1
	tst r2, r1
	beq _020D6BE8
_020D6BE0:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D6BE8:
	ldr r6, _020D6CB4 ; =CPSMyIp
	ldr r1, [r6]
	bl SOCLi_IsIPv4ValidNodeAddr
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, _020D6CB8 ; =CPSGatewayIp
	ldr r1, [r5]
	cmp r1, #0
	beq _020D6C60
	ldr r0, [r7]
	bl SOCLi_IsIPv4ValidNodeAddr
	cmp r0, #0
	beq _020D6C58
	ldr r2, [r7]
	cmn r2, #1
	ldrne r1, [r6]
	ldrne r0, [r5]
	andne r1, r1, r2
	andne r0, r0, r2
	cmpne r1, r0
	bne _020D6C58
	ldr r1, _020D6CB4 ; =CPSMyIp
	ldr r0, _020D6CB8 ; =CPSGatewayIp
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	bne _020D6C60
_020D6C58:
	ldr r0, _020D6CB8 ; =CPSGatewayIp
	str r4, [r0]
_020D6C60:
	ldr r0, _020D6CB0 ; =CPSNetMask
	ldr r5, _020D6CBC ; =CPSDnsIp
	ldr r2, _020D6CB4 ; =CPSMyIp
	ldr r0, [r0]
	ldr r1, [r5]
	ldr r2, [r2]
	bl SOCLi_IsIPv4ValidDNSAddr
	cmp r0, #0
	streq r4, [r5]
	ldr r0, _020D6CB0 ; =CPSNetMask
	ldr r5, _020D6CBC ; =CPSDnsIp
	ldr r2, _020D6CB4 ; =CPSMyIp
	ldr r0, [r0]
	ldr r1, [r5, #4]
	ldr r2, [r2]
	bl SOCLi_IsIPv4ValidDNSAddr
	cmp r0, #0
	streq r4, [r5, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D6CB0: .word CPSNetMask
_020D6CB4: .word CPSMyIp
_020D6CB8: .word CPSGatewayIp
_020D6CBC: .word CPSDnsIp
	arm_func_end SOCLi_CheckNConfig

	arm_func_start SOCLi_SocketRegister
SOCLi_SocketRegister: ; 0x020D6CC0
	mov r1, r0
	ldr r0, _020D6CD0 ; =SOCLiSocketList
	ldr r12, _020D6CD4 ; =SOCLi_SocketRegisterList
	bx r12
_020D6CD0: .word SOCLiSocketList
_020D6CD4: .word SOCLi_SocketRegisterList
	arm_func_end SOCLi_SocketRegister

	arm_func_start SOCLi_SocketRegisterList
SOCLi_SocketRegisterList: ; 0x020D6CD8
	ldr r2, [r0]
	str r2, [r1, #0xb8]
	str r1, [r0]
	bx lr
	arm_func_end SOCLi_SocketRegisterList

	arm_func_start SOCLi_SocketRegisterTrash
SOCLi_SocketRegisterTrash: ; 0x020D6CE8
	mov r1, r0
	ldr r0, _020D6CF8 ; =SOCLiSocketListTrash
	ldr r12, _020D6CFC ; =SOCLi_SocketRegisterList
	bx r12
_020D6CF8: .word SOCLiSocketListTrash
_020D6CFC: .word SOCLi_SocketRegisterList
	arm_func_end SOCLi_SocketRegisterTrash

	arm_func_start SOCLi_SocketUnregister
SOCLi_SocketUnregister: ; 0x020D6D00
	mov r1, r0
	ldr r0, _020D6D10 ; =SOCLiSocketList
	ldr r12, _020D6D14 ; =SOCLi_SocketUnregisterList
	bx r12
_020D6D10: .word SOCLiSocketList
_020D6D14: .word SOCLi_SocketUnregisterList
	arm_func_end SOCLi_SocketUnregister

	arm_func_start SOCLi_SocketUnregisterList
SOCLi_SocketUnregisterList: ; 0x020D6D18
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl OS_DisableInterrupts
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl SOCLi_SocketGetNextPtr
	cmp r0, #0
	ldrne r1, [r5, #0xb8]
	strne r1, [r0]
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end SOCLi_SocketUnregisterList

	arm_func_start SOCLi_SocketGetNextPtr
SOCLi_SocketGetNextPtr: ; 0x020D6D50
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl OS_DisableInterrupts
	ldr r1, [r5]
	cmp r1, #0
	beq _020D6D90
_020D6D6C:
	cmp r1, r4
	bne _020D6D80
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020D6D80:
	add r5, r1, #0xb8
	ldr r1, [r1, #0xb8]
	cmp r1, #0
	bne _020D6D6C
_020D6D90:
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end SOCLi_SocketGetNextPtr

	arm_func_start SOCLi_SocketUnregisterTrash
SOCLi_SocketUnregisterTrash: ; 0x020D6D9C
	mov r1, r0
	ldr r0, _020D6DAC ; =SOCLiSocketListTrash
	ldr r12, _020D6DB0 ; =SOCLi_SocketUnregisterList
	bx r12
_020D6DAC: .word SOCLiSocketListTrash
_020D6DB0: .word SOCLi_SocketUnregisterList
	arm_func_end SOCLi_SocketUnregisterTrash

	arm_func_start SOCL_SocketIsInvalid
SOCL_SocketIsInvalid: ; 0x020D6DB4
	stmfd sp!, {r3, lr}
	mov r1, r0
	cmp r1, #0
	ble _020D6DD4
	ldr r0, _020D6DE4 ; =SOCLiSocketList
	bl SOCLi_SocketGetNextPtr
	cmp r0, #0
	bne _020D6DDC
_020D6DD4:
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020D6DDC:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_020D6DE4: .word SOCLiSocketList
	arm_func_end SOCL_SocketIsInvalid

	arm_func_start SOCL_SocketIsInTrash
SOCL_SocketIsInTrash: ; 0x020D6DE8
	stmfd sp!, {r3, lr}
	mov r1, r0
	ldr r0, _020D6E08 ; =SOCLiSocketListTrash
	bl SOCLi_SocketGetNextPtr
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_020D6E08: .word SOCLiSocketListTrash
	arm_func_end SOCL_SocketIsInTrash

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
_020D70E0: .word ov15_020ED564
_020D70E4: .word 0x00000101
_020D70E8: .word ov15_020ED4DC
_020D70EC: .word ov15_020ED4F4
_020D70F0: .word ov15_020ED4DC
_020D70F4: .word ov15_020ED4FC
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

	arm_func_start AllocFunc_SOCL
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
_020D71C4: .word ov15_020ED4DC
	arm_func_end AllocFunc_SOCL

	arm_func_start FreeFunc_SOCL
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
_020D71F0: .word ov15_020ED4DC
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
_020D7378: .word ov15_020ED4DC
_020D737C: .word AllocFunc_SOCL
_020D7380: .word FreeFunc_SOCL
_020D7384: .word ov15_020ED52C
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

	arm_func_start SOCL_EnableSsl
SOCL_EnableSsl: ; 0x020D74C0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl SOCL_SocketIsInvalid
	cmp r0, #0
	mvnne r0, #0x1b
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrsb r0, [r5, #0xaf]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	mvneq r0, #0x1b
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	mov r1, #0
	beq _020D7514
	ldrsh r0, [r5, #0xac]
	tst r0, #1
	movne r1, #1
_020D7514:
	cmp r1, #0
	mvneq r0, #0x26
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrsh r0, [r5, #0xac]
	tst r0, #2
	mvnne r0, #0x1b
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl SOCLi_ExecEnableSslCommand
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end SOCL_EnableSsl

	arm_func_start SOCLi_ExecEnableSslCommand
SOCLi_ExecEnableSslCommand: ; 0x020D7540
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, #1
	mov r5, r1
	ldr r0, _020D757C ; =SOCLi_EnableSslCallBack
	mov r1, r6
	mov r2, r4
	bl SOCLi_CreateCommandPacket
	movs r1, r0
	subeq r0, r4, #0x22
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	str r5, [r1, #0x10]
	bl SOCLi_ExecCommandPacketInRecvPipe
	ldmfd sp!, {r4, r5, r6, pc}
_020D757C: .word SOCLi_EnableSslCallBack
	arm_func_end SOCLi_ExecEnableSslCommand

	arm_func_start SOCLi_EnableSslCallBack
SOCLi_EnableSslCallBack: ; 0x020D7580
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r5, [r4, #4]
	ldr r6, [r5, #0xa0]
	add r0, r6, #0xe0
	ldr r7, [r6, #0xc4]
	bl OS_LockMutex
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _020D75C0
	mov r0, #1
	str r1, [r7, #0xc]
	bl CPS_SetSsl
	mov r0, #4
	strb r0, [r5, #0xaf]
	b _020D75D4
_020D75C0:
	mov r4, #0
	mov r0, r4
	strb r4, [r5, #0xaf]
	bl CPS_SetSsl
	str r4, [r7, #0xc]
_020D75D4:
	add r0, r6, #0xe0
	bl OS_UnlockMutex
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end SOCLi_EnableSslCallBack

	arm_func_start find_session_from_id
find_session_from_id: ; 0x020D75E4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r8, r0
	bl OS_DisableInterrupts
	mov r5, #0
	ldr r4, _020D7678 ; =session
	mov r7, r0
	strb r5, [r8, #0x30]
	mov r10, #0x20
	mov r9, #0x5c
_020D7608:
	mla r6, r5, r9, r4
	ldrb r0, [r6, #0x5a]
	cmp r0, #0
	beq _020D7660
	ldr r0, [r6, #0x54]
	cmp r0, #0
	ldreqh r0, [r6, #0x58]
	cmpeq r0, #0
	bne _020D7660
	mov r0, r6
	mov r2, r10
	add r1, r8, #0x74
	bl memcmp
	cmp r0, #0
	bne _020D7660
	mov r1, r8
	add r0, r6, #0x20
	mov r2, #0x30
	bl MI_CpuCopy8
	mov r0, #1
	strb r0, [r8, #0x30]
	b _020D766C
_020D7660:
	add r5, r5, #1
	cmp r5, #4
	blt _020D7608
_020D766C:
	mov r0, r7
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020D7678: .word session
	arm_func_end find_session_from_id

	arm_func_start find_session_from_IP
find_session_from_IP: ; 0x020D767C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl OS_DisableInterrupts
	mov r3, #0
	mov r5, r0
	ldr r2, _020D771C ; =session
	strb r3, [r8, #0x30]
	mov r0, #0x5c
_020D76A4:
	mla r4, r3, r0, r2
	ldrb r1, [r4, #0x5a]
	cmp r1, #0
	beq _020D7704
	ldr r1, [r4, #0x54]
	cmp r1, r7
	ldreqh r1, [r4, #0x58]
	cmpeq r1, r6
	bne _020D7704
	mov r0, r4
	add r1, r8, #0x74
	mov r2, #0x20
	bl MI_CpuCopy8
	mov r1, r8
	add r0, r4, #0x20
	mov r2, #0x30
	bl MI_CpuCopy8
	bl OS_GetTick
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	str r0, [r4, #0x50]
	mov r0, #1
	strb r0, [r8, #0x30]
	b _020D7710
_020D7704:
	add r3, r3, #1
	cmp r3, #4
	blt _020D76A4
_020D7710:
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D771C: .word session
	arm_func_end find_session_from_IP

	arm_func_start cache_session
cache_session: ; 0x020D7720
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl OS_DisableInterrupts
	mov r11, r0
	bl OS_GetTick
	mov r5, r0, lsr #0x10
	ldr r4, _020D780C ; =session
	mov r3, #0
	mov r2, r3
	orr r5, r5, r1, lsl #16
	mov r0, r4
	mvn r9, #0
	mov lr, #0x5c
_020D775C:
	mla r1, r2, lr, r0
	ldrb r12, [r1, #0x5a]
	cmp r12, #0
	cmpne r7, #0
	beq _020D7794
	ldr r10, [r1, #0x54]
	cmp r7, r10
	bne _020D7794
	cmp r6, #0
	beq _020D7794
	ldrh r10, [r1, #0x58]
	cmp r6, r10
	moveq r4, r1
	beq _020D77CC
_020D7794:
	cmp r3, r9
	beq _020D77C0
	cmp r12, #0
	moveq r3, r9
	moveq r4, r1
	beq _020D77C0
	ldr r10, [r1, #0x50]
	sub r10, r5, r10
	cmp r10, r3
	movhi r3, r10
	movhi r4, r1
_020D77C0:
	add r2, r2, #1
	cmp r2, #4
	blt _020D775C
_020D77CC:
	mov r1, r4
	add r0, r8, #0x74
	mov r2, #0x20
	bl MI_CpuCopy8
	mov r0, r8
	add r1, r4, #0x20
	mov r2, #0x30
	bl MI_CpuCopy8
	str r5, [r4, #0x50]
	mov r0, #1
	strb r0, [r4, #0x5a]
	str r7, [r4, #0x54]
	mov r0, r11
	strh r6, [r4, #0x58]
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D780C: .word session
	arm_func_end cache_session

	arm_func_start purge_session
purge_session: ; 0x020D7810
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r8, r0
	bl OS_DisableInterrupts
	ldr r4, _020D7878 ; =session
	mov r7, r0
	mov r5, #0
	mov r10, #0x20
	mov r9, #0x5c
_020D7830:
	mla r6, r5, r9, r4
	ldrb r0, [r6, #0x5a]
	cmp r0, #0
	beq _020D7860
	mov r0, r6
	mov r2, r10
	add r1, r8, #0x74
	bl memcmp
	cmp r0, #0
	moveq r0, #0
	streqb r0, [r6, #0x5a]
	beq _020D786C
_020D7860:
	add r5, r5, #1
	cmp r5, #4
	blt _020D7830
_020D786C:
	mov r0, r7
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020D7878: .word session
	arm_func_end purge_session

	arm_func_start date2sec
date2sec: ; 0x020D787C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	add r5, sp, #0xc
	mov r0, r5
	bl RTC_GetDate
	add r4, sp, #0
	mov r0, r4
	bl RTC_GetTime
	mov r0, r5
	mov r1, r4
	bl RTC_ConvertDateTimeToSecond
	ldr r1, _020D78B8 ; =0x386D4380
	add r0, r0, r1
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, pc}
_020D78B8: .word 0x386D4380
	arm_func_end date2sec

	arm_func_start CPS_GetSslHandshakePriority
CPS_GetSslHandshakePriority: ; 0x020D78BC
	ldr r0, _020D78C8 ; =0x020E5A54
	ldr r0, [r0, #4]
	bx lr
_020D78C8: .word ov15_020E5A54
	arm_func_end CPS_GetSslHandshakePriority

	arm_func_start CPS_SetSslHandshakePriority
CPS_SetSslHandshakePriority: ; 0x020D78CC
	ldr r1, _020D78D8 ; =0x020E5A54
	str r0, [r1, #4]
	bx lr
_020D78D8: .word ov15_020E5A54
	arm_func_end CPS_SetSslHandshakePriority

	arm_func_start enter_computebound
enter_computebound: ; 0x020D78DC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020D791C ; =0x020E5A54
	ldr r0, [r4, #4]
	cmp r0, #0x20
	mvnhs r0, #0
	ldmhsfd sp!, {r4, r5, r6, pc}
	ldr r0, _020D7920 ; =OSi_ThreadInfo
	ldr r6, [r0, #4]
	mov r0, r6
	bl OS_GetThreadPriority
	mov r5, r0
	ldr r1, [r4, #4]
	mov r0, r6
	bl OS_SetThreadPriority
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020D791C: .word ov15_020E5A54
_020D7920: .word OSi_ThreadInfo
	arm_func_end enter_computebound

	arm_func_start exit_computebound
exit_computebound: ; 0x020D7924
	stmfd sp!, {r3, lr}
	mov r1, r0
	cmp r1, #0x20
	ldmhsfd sp!, {r3, pc}
	ldr r0, _020D7944 ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	bl OS_SetThreadPriority
	ldmfd sp!, {r3, pc}
_020D7944: .word OSi_ThreadInfo
	arm_func_end exit_computebound

	arm_func_start CPS_SetRootCa
CPS_SetRootCa: ; 0x020D7948
	ldr r2, _020D796C ; =OSi_ThreadInfo
	ldr r2, [r2, #4]
	ldr r2, [r2, #0xa4]
	cmp r2, #0
	ldrne r2, [r2, #0xc]
	cmpne r2, #0
	strne r0, [r2, #0x814]
	strne r1, [r2, #0x818]
	bx lr
_020D796C: .word OSi_ThreadInfo
	arm_func_end CPS_SetRootCa

	arm_func_start get_rootCA
get_rootCA: ; 0x020D7970
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r6, [r0, #0x818]
	mov r8, r1
	cmp r6, #0
	mov r4, #0
	ble _020D79B4
	ldr r5, [r0, #0x814]
_020D798C:
	ldr r7, [r5, r4, lsl #2]
	mov r1, r8
	ldr r0, [r7]
	bl strcmp
	cmp r0, #0
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r4, r4, #1
	cmp r4, r6
	blt _020D798C
_020D79B4:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end get_rootCA

	arm_func_start cert_item_len
cert_item_len: ; 0x020D79BC
	ldr r1, [r0]
	ldrb r2, [r1]
	add r3, r1, #1
	tst r2, #0x80
	beq _020D7A00
	ands r1, r2, #0x7f
	sub r12, r1, #1
	mov r2, #0
	beq _020D7A00
_020D79E0:
	tst r2, #0xff000000
	mvnne r0, #0
	bxne lr
	ldrb r1, [r3], #1
	cmp r12, #0
	sub r12, r12, #1
	add r2, r1, r2, lsl #8
	bne _020D79E0
_020D7A00:
	str r3, [r0]
	mov r0, r2
	bx lr
	arm_func_end cert_item_len

	arm_func_start make_dn
make_dn: ; 0x020D7A0C
	ldrsb r3, [r0]
	mov r12, r0
	cmp r3, #0
	beq _020D7A54
_020D7A1C:
	ldrsb r3, [r0, #1]!
	cmp r3, #0
	bne _020D7A1C
	sub r3, r0, r12
	cmp r3, #0xff
	bxge lr
	mov r3, #0x2c
	strb r3, [r0]
	mov r3, #0x20
	strb r3, [r0, #1]
	add r0, r0, #2
	b _020D7A54
_020D7A4C:
	ldrsb r3, [r1], #1
	strb r3, [r0], #1
_020D7A54:
	cmp r2, #0
	sub r2, r2, #1
	beq _020D7A6C
	sub r3, r0, r12
	cmp r3, #0xff
	blt _020D7A4C
_020D7A6C:
	mov r1, #0
	strb r1, [r0]
	bx lr
	arm_func_end make_dn

	arm_func_start parse_time
parse_time: ; 0x020D7A78
	stmfd sp!, {r4, lr}
	ldrb r12, [r0, #1]
	ldrb r3, [r0], #2
	mov r2, #0xa
	cmp r1, #0x17
	mla r1, r3, r2, r12
	sub lr, r1, #0x210
	bne _020D7AAC
	cmp lr, #0x32
	addlo r4, lr, #0x7d0
	addhs r1, lr, #0x36c
	addhs r4, r1, #0x400
	b _020D7AC4
_020D7AAC:
	ldrb r12, [r0, #1]
	ldrb r3, [r0], #2
	mov r1, #0x64
	mla r2, r3, r2, r12
	sub r2, r2, #0x210
	mla r4, lr, r1, r2
_020D7AC4:
	ldrb r12, [r0, #1]
	ldrb r3, [r0]
	mov r1, #0xa
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #2]
	mla r12, r3, r1, r12
	mla r1, r0, r1, r2
	sub r0, r12, #0x210
	mov r0, r0, lsl #8
	add r2, r0, r4, lsl #16
	sub r0, r1, #0x210
	add r0, r2, r0
	ldmfd sp!, {r4, pc}
	arm_func_end parse_time

	arm_func_start cert_item
cert_item: ; 0x020D7AF8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r11, r1
	ldr r4, [r11]
	add r5, sp, #4
	add r1, r4, #1
	mov r9, r0
	str r1, [sp, #4]
	mov r0, r5
	mov r7, r2
	mov r6, r3
	ldr r8, [sp, #0x30]
	ldrb r10, [r4]
	bl cert_item_len
	movs r4, r0
	bmi _020D7B40
	cmp r4, #0x7d0
	ble _020D7B4C
_020D7B40:
	add sp, sp, #8
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D7B4C:
	and r1, r10, #0x1f
	cmp r1, #0x18
	addls pc, pc, r1, lsl #2
	b _020D7F28
_020D7B5C: ; jump table
	b _020D7F28 ; case 0
	b _020D7F28 ; case 1
	b _020D7BC0 ; case 2
	b _020D7CA4 ; case 3
	b _020D7F28 ; case 4
	b _020D7F28 ; case 5
	b _020D7D14 ; case 6
	b _020D7F28 ; case 7
	b _020D7F28 ; case 8
	b _020D7F28 ; case 9
	b _020D7F28 ; case 10
	b _020D7F28 ; case 11
	b _020D7DA0 ; case 12
	b _020D7F28 ; case 13
	b _020D7F28 ; case 14
	b _020D7F28 ; case 15
	b _020D7E5C ; case 16
	b _020D7EDC ; case 17
	b _020D7F28 ; case 18
	b _020D7DA0 ; case 19
	b _020D7DA0 ; case 20
	b _020D7F28 ; case 21
	b _020D7DA0 ; case 22
	b _020D7E10 ; case 23
	b _020D7E10 ; case 24
_020D7BC0:
	ldrb r0, [r9, #0x5ad]
	cmp r0, #0
	beq _020D7CA0
	cmp r6, #0
	bne _020D7C38
	ldr r0, [sp, #4]
	ldrb r1, [r0]
	cmp r1, #0
	bne _020D7BFC
_020D7BE4:
	add r0, r0, #1
	str r0, [sp, #4]
	ldrb r1, [r0]
	sub r4, r4, #1
	cmp r1, #0
	beq _020D7BE4
_020D7BFC:
	cmp r8, #0
	beq _020D7C18
	cmp r8, #2
	streq r4, [r9, #0x484]
	ldreq r0, [sp, #4]
	streq r0, [r9, #0x488]
	b _020D7CA0
_020D7C18:
	cmp r4, #0x100
	bgt _020D7CA0
	add r1, r9, #0x94
	mov r2, r4
	add r1, r1, #0x400
	bl MI_CpuCopy8
	str r4, [r9, #0x594]
	b _020D7CA0
_020D7C38:
	cmp r6, #1
	bne _020D7CA0
	ldr r0, [sp, #4]
	ldrb r1, [r0]
	cmp r1, #0
	bne _020D7C68
_020D7C50:
	add r0, r0, #1
	str r0, [sp, #4]
	ldrb r1, [r0]
	sub r4, r4, #1
	cmp r1, #0
	beq _020D7C50
_020D7C68:
	cmp r8, #0
	beq _020D7C84
	cmp r8, #2
	streq r4, [r9, #0x48c]
	ldreq r0, [sp, #4]
	streq r0, [r9, #0x490]
	b _020D7CA0
_020D7C84:
	cmp r4, #8
	bgt _020D7CA0
	add r1, r9, #0x198
	mov r2, r4
	add r1, r1, #0x400
	bl MI_CpuCopy8
	str r4, [r9, #0x5a0]
_020D7CA0:
	b _020D7F80
_020D7CA4:
	cmp r7, #1
	mov r5, #0
	bne _020D7CC8
	cmp r8, #2
	ldrne r1, [sp, #4]
	subne r0, r4, #1
	addne r1, r1, #1
	strne r1, [r9, #0x5a4]
	strne r0, [r9, #0x5a8]
_020D7CC8:
	ldrb r0, [r9, #0x5ad]
	cmp r0, #0
	beq _020D7D10
	ldr r0, [sp, #4]
	add r1, sp, #4
	add r0, r0, #1
	str r0, [sp, #4]
	mov r0, r9
	mov r2, r7
	mov r3, r5
	str r8, [sp]
	bl cert_item
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	strb r5, [r9, #0x5ad]
	b _020D7F8C
_020D7D10:
	b _020D7F80
_020D7D14:
	ldr r6, [sp, #4]
	ldr r10, _020D7FA0 ; =0x020E5A5C
	mov r5, #0
_020D7D20:
	ldr r7, [r10, r5, lsl #2]
	mov r0, r7
	bl strlen
	mov r2, r0
	mov r0, r6
	mov r1, r7
	bl memcmp
	cmp r0, #0
	bne _020D7D90
	cmp r5, #5
	addls pc, pc, r5, lsl #2
	b _020D7D9C
_020D7D50: ; jump table
	b _020D7D9C ; case 0
	b _020D7D68 ; case 1
	b _020D7D68 ; case 2
	b _020D7D78 ; case 3
	b _020D7D78 ; case 4
	b _020D7D84 ; case 5
_020D7D68:
	cmp r8, #0
	streq r5, [r9, #0x45c]
	strb r5, [r9, #0x5ad]
	b _020D7D9C
_020D7D78:
	cmp r8, #2
	strne r5, [r9, #0x458]
	b _020D7D9C
_020D7D84:
	cmp r8, #2
	strneb r5, [r9, #0x5ae]
	b _020D7D9C
_020D7D90:
	add r5, r5, #1
	cmp r5, #6
	blt _020D7D20
_020D7D9C:
	b _020D7F80
_020D7DA0:
	cmp r8, #2
	mov r5, #0
	beq _020D7E08
	ldrb r0, [r9, #0x5ac]
	cmp r0, #0
	beq _020D7DF8
	ldr r1, [sp, #4]
	mov r2, r4
	add r0, r9, #0x6b0
	bl make_dn
	ldrb r0, [r9, #0x5ae]
	cmp r0, #5
	bne _020D7E08
	cmp r4, #0x4f
	bgt _020D7E08
	ldr r0, [sp, #4]
	mov r2, r4
	add r1, r9, #0x7b0
	bl MI_CpuCopy8
	add r0, r9, r4
	strb r5, [r0, #0x7b0]
	b _020D7E08
_020D7DF8:
	ldr r1, [sp, #4]
	mov r2, r4
	add r0, r9, #0x5b0
	bl make_dn
_020D7E08:
	strb r5, [r9, #0x5ae]
	b _020D7F80
_020D7E10:
	cmp r8, #2
	mov r5, #1
	mov r7, #0
	beq _020D7E48
	ldr r0, [sp, #4]
	bl parse_time
	cmp r6, #0
	ldr r1, [r9, #0x80c]
	bne _020D7E40
	cmp r1, r0
	strhsb r5, [r9, #0x5af]
	b _020D7E48
_020D7E40:
	cmp r1, r0
	strhib r7, [r9, #0x5af]
_020D7E48:
	ldr r0, [sp, #4]
	add r0, r0, r4
	str r0, [sp, #4]
	strb r5, [r9, #0x5ac]
	b _020D7F8C
_020D7E5C:
	cmp r7, #0
	cmpeq r6, #0
	bne _020D7E74
	cmp r8, #2
	ldrne r0, [sp, #4]
	strne r0, [r9, #0x460]
_020D7E74:
	ldr r0, [sp, #4]
	mov r5, #0
	add r10, r0, r4
	cmp r0, r10
	bhs _020D7EC4
	add r4, sp, #4
_020D7E8C:
	mov r0, r9
	mov r1, r4
	mov r3, r5
	add r2, r7, #1
	str r8, [sp]
	bl cert_item
	cmp r0, #0
	add r5, r5, #1
	addne sp, sp, #8
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #4]
	cmp r0, r10
	blo _020D7E8C
_020D7EC4:
	cmp r7, #1
	cmpeq r6, #0
	bne _020D7F8C
	cmp r8, #2
	strne r0, [r9, #0x464]
	b _020D7F8C
_020D7EDC:
	ldr r0, [sp, #4]
	mov r6, #0
	add r4, r0, r4
	cmp r0, r4
	bhs _020D7F8C
_020D7EF0:
	mov r0, r9
	mov r1, r5
	mov r3, r6
	add r2, r7, #1
	str r8, [sp]
	bl cert_item
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #4]
	cmp r0, r4
	blo _020D7EF0
	b _020D7F8C
_020D7F28:
	cmp r10, #0xa0
	mov r5, #0
	bne _020D7F80
	ldr r0, [sp, #4]
	add r6, r0, r4
	cmp r0, r6
	bhs _020D7F8C
	add r4, sp, #4
_020D7F48:
	mov r0, r9
	mov r1, r4
	mov r3, r5
	add r2, r7, #1
	str r8, [sp]
	bl cert_item
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #4]
	cmp r0, r6
	blo _020D7F48
	b _020D7F8C
_020D7F80:
	ldr r0, [sp, #4]
	add r0, r0, r4
	str r0, [sp, #4]
_020D7F8C:
	ldr r1, [sp, #4]
	mov r0, #0
	str r1, [r11]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D7FA0: .word ov15_020E5A5C
	arm_func_end cert_item

	arm_func_start validate_signature
validate_signature: ; 0x020D7FA4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r8, r0
	ldr r0, [r8, #0x5a4]
	mov r7, r1
	cmp r0, #0
	ldrne r0, [r8, #0x5a8]
	cmpne r0, #0
	ldrne r0, [r7, #0x10]
	cmpne r0, #0
	ldrne r0, [r7, #0xc]
	cmpne r0, #0
	ldrne r0, [r7, #8]
	cmpne r0, #0
	ldrne r0, [r7, #4]
	cmpne r0, #0
	addeq sp, sp, #4
	moveq r0, #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r0, lsl #1
	ldr r1, _020D8144 ; =CPSiAlloc
	add r0, r0, r0, lsr #31
	mov r5, r0, asr #1
	ldr r1, [r1]
	mov r0, r5, lsl #3
	blx r1
	movs r4, r0
	addeq sp, sp, #4
	moveq r0, #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r6, r4, r5, lsl #1
	add r9, r6, r5, lsl #1
	ldr r1, [r8, #0x5a4]
	ldr r2, [r8, #0x5a8]
	mov r0, r6
	mov r3, r5
	add r10, r9, r5, lsl #1
	bl CPSi_big_from_char
	ldr r1, [r7, #0x10]
	ldr r2, [r7, #0xc]
	mov r0, r9
	mov r3, r5
	bl CPSi_big_from_char
	ldr r1, [r7, #8]
	ldr r2, [r7, #4]
	mov r0, r10
	mov r3, r5
	bl CPSi_big_from_char
	bl enter_computebound
	mov r2, r9
	mov r9, r0
	mov r0, r4
	mov r1, r6
	mov r3, r5
	str r10, [sp]
	bl CPSi_big_power
	mov r0, r9
	bl exit_computebound
	ldr r2, [r7, #4]
	mov r0, r6
	mov r1, r4
	mov r3, r5
	bl CPSi_char_from_big
	ldrb r0, [r4, r5, lsl #1]
	mov r5, #0
	cmp r0, #0
	ldreqb r0, [r6, #1]
	cmpeq r0, #1
	movne r5, #2
	bne _020D8128
	ldr r3, [r7, #4]
	mov r2, #2
	cmp r3, #2
	ble _020D80E4
_020D80CC:
	ldrb r0, [r6, r2]
	cmp r0, #0xff
	bne _020D80E4
	add r2, r2, #1
	cmp r2, r3
	blt _020D80CC
_020D80E4:
	add r1, r2, #1
	cmp r1, r3
	bge _020D8124
	ldrb r0, [r6, r2]
	cmp r0, #0
	ldreqb r0, [r6, r1]
	cmpeq r0, #0x30
	bne _020D8124
	ldr r2, [r8, #0x47c]
	add r0, r8, #0x68
	add r1, r6, r3
	add r0, r0, #0x400
	sub r1, r1, r2
	bl memcmp
	cmp r0, #0
	beq _020D8128
_020D8124:
	mov r5, #2
_020D8128:
	ldr r1, _020D8148 ; =CPSiFree
	mov r0, r4
	ldr r1, [r1]
	blx r1
	mov r0, r5
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D8144: .word CPSiAlloc
_020D8148: .word CPSiFree
	arm_func_end validate_signature

	arm_func_start auth_cert
auth_cert: ; 0x020D814C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0x5af]
	mov r4, #0
	cmp r0, #0
	ldr r0, [r5, #0x45c]
	moveq r4, #0x8000
	cmn r0, #1
	orreq r0, r4, #4
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x458]
	cmp r0, #3
	beq _020D818C
	cmp r0, #4
	beq _020D81C4
	b _020D81F8
_020D818C:
	add r0, r5, #0x3fc
	bl CPSi_md5_init
	ldr r1, [r5, #0x460]
	ldr r2, [r5, #0x464]
	add r0, r5, #0x3fc
	sub r2, r2, r1
	bl CPSi_md5_calc
	add r1, r5, #0x68
	add r0, r5, #0x3fc
	add r1, r1, #0x400
	bl CPSi_md5_result
	mov r0, #0x10
_020D81BC:
	str r0, [r5, #0x47c]
	b _020D8200
_020D81C4:
	add r0, r5, #0x348
	bl CPSi_sha1_init
	ldr r1, [r5, #0x460]
	ldr r2, [r5, #0x464]
	add r0, r5, #0x348
	sub r2, r2, r1
	bl CPSi_sha1_calc
	add r1, r5, #0x68
	add r0, r5, #0x348
	add r1, r1, #0x400
	bl CPSi_sha1_result
	mov r0, #0x14
	b _020D81BC
_020D81F8:
	orr r0, r4, #3
	ldmfd sp!, {r3, r4, r5, pc}
_020D8200:
	mov r0, r5
	add r1, r5, #0x5b0
	bl get_rootCA
	movs r1, r0
	orreq r0, r4, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl validate_signature
	orr r0, r4, r0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end auth_cert

	arm_func_start chars_till_end
chars_till_end: ; 0x020D8228
	mov r2, r0
	b _020D8234
_020D8230:
	add r0, r0, #1
_020D8234:
	ldrsb r1, [r0]
	cmp r1, #0x2e
	beq _020D8248
	cmp r1, #0
	bne _020D8230
_020D8248:
	sub r0, r0, r2
	bx lr
	arm_func_end chars_till_end

	arm_func_start compare_fqdn
compare_fqdn: ; 0x020D8250
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	b _020D826C
_020D8260:
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
_020D826C:
	ldrsb r0, [r5], #1
	ldrsb r1, [r6], #1
	cmp r1, r0
	beq _020D8260
	cmp r0, #0x2a
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	sub r6, r6, #1
	mov r0, r6
	bl chars_till_end
	mov r4, r0
	mov r0, r5
	bl chars_till_end
	cmp r0, r4
	movgt r0, #1
	ldmgtfd sp!, {r4, r5, r6, pc}
	sub r0, r4, r0
	add r6, r6, r0
	b _020D826C
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end compare_fqdn

	arm_func_start rcv_certificate
rcv_certificate: ; 0x020D82BC
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	ldr r4, [sp, #0x44]
	mov r10, r0
	ldrb r3, [r4, #2]
	ldrb r2, [r4]
	ldrb r1, [r4, #1]
	add r0, r4, #3
	mvn r5, #0
	str r0, [sp, #0x44]
	add r1, r1, r2, lsl #8
	add r0, sp, #8
	str r5, [r10, #0x45c]
	add r8, r3, r1, lsl #8
	bl RTC_GetDate
	mov r6, #0
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r1, r1, #0x7d0
	mov r0, r0, lsl #8
	add r0, r0, r1, lsl #16
	add r0, r2, r0
	mov r9, r6
	str r0, [r10, #0x80c]
	strb r6, [r10, #0x6b0]
	str r6, [r10, #0x5a0]
	str r6, [r10, #0x594]
	mov r11, #2
	mov r4, r6
_020D8338:
	ldr r1, [sp, #0x44]
	mov r0, r10
	ldrb r2, [r1, #2]
	ldrb r12, [r1]
	ldrb r3, [r1, #1]
	add r7, r1, #3
	add r1, sp, #0x44
	str r7, [sp, #0x44]
	add r3, r3, r12, lsl #8
	add r3, r2, r3, lsl #8
	add r2, r3, #3
	sub r8, r8, r2
	str r5, [r10, #0x458]
	strb r4, [r10, #0x5ad]
	strb r4, [r10, #0x5ac]
	strb r4, [r10, #0x5af]
	strb r4, [r10, #0x6b0]
	strb r4, [r10, #0x5b0]
	strb r4, [r10, #0x7b0]
	ldr r7, [sp, #0x44]
	mov r2, r4
	str r3, [r10, #0x808]
	str r7, [r10, #0x804]
	mov r3, r4
	str r6, [sp]
	bl cert_item
	cmp r0, #0
	bne _020D83C0
	ldr r0, [r10, #0x594]
	cmp r0, #0x33
	blo _020D83C0
	ldr r0, [r10, #0x5a0]
	cmp r0, #0
	bne _020D83D8
_020D83C0:
	mov r0, #9
	add sp, sp, #0x18
	strb r0, [r10, #0x455]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_020D83D8:
	mov r0, r10
	bl auth_cert
	mov r7, r0
	cmp r9, #0
	bne _020D8408
	ldr r0, [r10, #0x800]
	cmp r0, #0
	beq _020D8408
	add r1, r10, #0x7b0
	bl compare_fqdn
	cmp r0, #0
	orrne r7, r7, #0x4000
_020D8408:
	and r6, r7, #0xff
	cmp r6, #1
	bne _020D8478
	cmp r8, #0
	beq _020D8478
	ldr r1, [sp, #0x44]
	mov r2, #0
	add r1, r1, #3
	str r1, [sp, #4]
	mov r1, #0
	strb r1, [r10, #0x5ad]
	mov r0, r10
	add r1, sp, #4
	mov r3, r2
	str r11, [sp]
	bl cert_item
	cmp r0, #0
	movne r0, #9
	addne sp, sp, #0x18
	strneb r0, [r10, #0x455]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	addne sp, sp, #0x10
	bxne lr
	mov r0, r10
	add r1, r10, #0x480
	bl validate_signature
	bic r1, r7, #0xff
	orr r7, r1, r0
_020D8478:
	ldr r3, [r10, #0x810]
	cmp r3, #0
	beq _020D8498
	mov r0, r7
	mov r1, r10
	mov r2, r9
	blx r3
	mov r7, r0
_020D8498:
	cmp r6, #0
	add r9, r9, #1
	beq _020D84B8
	cmp r7, #0
	bne _020D84B8
	cmp r8, #0
	movne r6, #1
	bne _020D8338
_020D84B8:
	cmp r7, #0
	moveq r0, #3
	streqb r0, [r10, #0x455]
	movne r0, #9
	strneb r0, [r10, #0x455]
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end rcv_certificate

	arm_func_start rcv_server_hello
rcv_server_hello: ; 0x020D84DC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #0x20
	mov r6, r0
	mov r5, r1
	mov r2, r7
	add r0, r5, #2
	add r1, r6, #0x54
	bl MI_CpuCopy8
	ldrb r8, [r6, #0x30]
	ldrb r4, [r5, #0x22]
	add r5, r5, #0x23
	cmp r8, #0
	beq _020D8538
	cmp r4, #0x20
	bne _020D8538
	mov r1, r5
	mov r2, r7
	add r0, r6, #0x74
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r6, #0x31]
	beq _020D8574
_020D8538:
	cmp r8, #0
	beq _020D8548
	mov r0, r6
	bl purge_session
_020D8548:
	cmp r4, #0
	moveq r0, #0
	beq _020D8568
	mov r0, r5
	add r1, r6, #0x74
	mov r2, #0x20
	bl MI_CpuCopy8
	mov r0, #1
_020D8568:
	strb r0, [r6, #0x30]
	mov r0, #0
	strb r0, [r6, #0x31]
_020D8574:
	add r0, r5, r4
	ldrb r1, [r5, r4]
	ldrb r0, [r0, #1]
	add r0, r0, r1, lsl #8
	strh r0, [r6, #0x32]
	ldrh r0, [r6, #0x32]
	cmp r0, #4
	cmpne r0, #5
	movne r0, #9
	strneb r0, [r6, #0x455]
	moveq r0, #2
	streqb r0, [r6, #0x455]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end rcv_server_hello

	arm_func_start has_method
has_method: ; 0x020D85A8
	stmfd sp!, {r4, lr}
	cmp r1, #0
	mov r4, #0
	ble _020D85EC
_020D85B8:
	ldrb lr, [r0]
	ldrb r12, [r0, #1]
	cmp r2, #3
	add lr, r12, lr, lsl #8
	ldreqb r12, [r0, #2]
	addeq lr, r12, lr, lsl #8
	cmp lr, r3
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	add r4, r4, #1
	cmp r4, r1
	add r0, r0, r2
	blt _020D85B8
_020D85EC:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end has_method

	arm_func_start select_method
select_method: ; 0x020D85F4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _020D8648 ; =0x020E5A54
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, #0
_020D860C:
	mov r0, r5, lsl #1
	ldrh r3, [r4, r0]
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl has_method
	cmp r0, #0
	movne r0, r5, lsl #1
	ldrneh r0, [r4, r0]
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	add r5, r5, #1
	cmp r5, #2
	blo _020D860C
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D8648: .word ov15_020E5A54
	arm_func_end select_method

	arm_func_start version_ok
version_ok: ; 0x020D864C
	cmp r0, #3
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end version_ok

	arm_func_start client_hello_v2
client_hello_v2: ; 0x020D865C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	ldrb r0, [r6]
	ldrb r1, [r6, #1]
	bl version_ok
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r2, [r6, #2]
	ldrb r1, [r6, #3]
	ldr r3, _020D871C ; =0x55555556
	add r0, r6, #8
	add r4, r1, r2, lsl #8
	smull r2, r1, r3, r4
	add r1, r1, r4, lsr #31
	mov r2, #3
	bl select_method
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	strh r0, [r7, #0x32]
	ldrb r5, [r6, #4]
	ldrb r3, [r6, #5]
	ldrb r2, [r6, #6]
	ldrb r0, [r6, #7]
	mov r1, #0
	add r3, r3, r5, lsl #8
	add r5, r0, r2, lsl #8
	add r0, r4, #8
	strb r1, [r7, #0x30]
	cmp r5, #0x20
	add r4, r0, r3
	blt _020D86F0
	add r0, r6, r4
	add r1, r7, #0x34
	mov r2, #0x20
	b _020D870C
_020D86F0:
	add r0, r7, #0x34
	rsb r2, r5, #0x20
	bl MI_CpuFill8
	add r1, r7, #0x54
	mov r2, r5
	add r0, r6, r4
	sub r1, r1, r5
_020D870C:
	bl MI_CpuCopy8
	mov r0, #1
	strb r0, [r7, #0x455]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D871C: .word 0x55555556
	arm_func_end client_hello_v2

	arm_func_start client_hello
client_hello: ; 0x020D8720
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	mov r4, r0
	ldrb r0, [r7]
	ldrb r1, [r7, #1]
	bl version_ok
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0x20
	mov r2, r5
	add r0, r7, #2
	add r1, r4, #0x34
	bl MI_CpuCopy8
	ldrb r6, [r7, #0x22]
	add r7, r7, #0x23
	cmp r6, #0x20
	movne r0, #0
	strneb r0, [r4, #0x30]
	bne _020D8784
	mov r0, r7
	mov r2, r5
	add r1, r4, #0x74
	bl MI_CpuCopy8
	mov r0, r4
	bl find_session_from_id
_020D8784:
	add r0, r7, r6
	ldrb r1, [r0, #1]
	ldrb r3, [r7, r6]
	add r0, r0, #2
	mov r2, #2
	add r1, r1, r3, lsl #8
	add r1, r1, r1, lsr #31
	mov r1, r1, asr #1
	bl select_method
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	strh r0, [r4, #0x32]
	movne r0, #1
	strneb r0, [r4, #0x455]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end client_hello

	arm_func_start decrypt_premaster_secret
decrypt_premaster_secret: ; 0x020D87C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	movs r10, r2
	str r0, [sp, #8]
	ldrne r0, [r10]
	mov r11, r1
	cmpne r0, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r0, lsl #1
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	add r4, r0, #1
	mov r0, #0x14
	mul r0, r4, r0
	ldr r1, _020D89F8 ; =CPSiAlloc
	ldr r1, [r1]
	blx r1
	movs r5, r0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r6, r5, r4, lsl #1
	add r7, r6, r4, lsl #1
	add r1, r7, r4, lsl #1
	str r1, [sp, #0x10]
	add r1, r1, r4, lsl #1
	add r8, r1, r4, lsl #1
	str r1, [sp, #0xc]
	ldr r2, [r10]
	add r9, r8, r4, lsl #1
	mov r1, r11
	mov r3, r4
	add r11, r9, r4, lsl #1
	bl CPSi_big_from_char
	ldr r1, [r10, #0x1c]
	ldr r2, [r10, #0x18]
	mov r0, r6
	mov r3, r4
	bl CPSi_big_from_char
	ldr r1, [r10, #0xc]
	ldr r2, [r10, #8]
	mov r0, r8
	mov r3, r4
	bl CPSi_big_from_char
	bl enter_computebound
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	str r8, [sp]
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl CPSi_big_montpower
	ldr r1, [r10, #0x24]
	ldr r2, [r10, #0x20]
	mov r0, r6
	mov r3, r4
	bl CPSi_big_from_char
	ldr r1, [r10, #0x14]
	ldr r2, [r10, #0x10]
	mov r0, r8
	mov r3, r4
	bl CPSi_big_from_char
	ldr r0, [sp, #0xc]
	mov r1, r5
	mov r2, r6
	mov r3, r4
	str r8, [sp]
	bl CPSi_big_montpower
	ldr r0, [sp, #0x14]
	bl exit_computebound
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	mov r0, r5
	mov r3, r4
	bl CPSi_big_sub
	ldr r1, [r10, #0x2c]
	ldr r2, [r10, #0x28]
	mov r0, r6
	mov r3, r4
	bl CPSi_big_from_char
	mov r0, r7
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl CPSi_big_mult
	ldr r1, [r10, #0x14]
	ldr r2, [r10, #0x10]
	mov r0, r6
	mov r3, r4
	bl CPSi_big_from_char
	mov r0, r5
	mov r1, r7
	mov r2, r6
	mov r3, r4
	bl CPSi_big_mult
	ldr r2, [sp, #0xc]
	mov r0, r7
	mov r1, r5
	mov r3, r4
	bl CPSi_big_add
	ldr r1, [r10, #4]
	ldr r2, [r10]
	mov r0, r6
	mov r3, r4
	bl CPSi_big_from_char
	mov r0, r7
	mov r1, r4
	bl CPSi_big_sign
	cmp r0, #0
	bge _020D89B4
	mov r0, r7
	mov r1, r4
	bl CPSi_big_negate
	mov r1, r7
	mov r2, r6
	mov r3, r9
	mov r0, #0
	stmia sp, {r4, r11}
	bl CPSi_big_div
	mov r0, r9
	mov r1, r6
	mov r2, r9
	mov r3, r4
	bl CPSi_big_sub
	b _020D89CC
_020D89B4:
	mov r1, r7
	mov r2, r6
	mov r3, r9
	mov r0, #0
	stmia sp, {r4, r11}
	bl CPSi_big_div
_020D89CC:
	ldr r0, [sp, #8]
	mov r1, r9
	mov r3, r4
	mov r2, #0x30
	bl CPSi_char_from_big
	ldr r1, _020D89FC ; =CPSiFree
	mov r0, r5
	ldr r1, [r1]
	blx r1
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D89F8: .word CPSiAlloc
_020D89FC: .word CPSiFree
	arm_func_end decrypt_premaster_secret

	arm_func_start create_ms_sub
create_ms_sub: ; 0x020D8A00
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r6, r2
	mov r7, r0
	mov r4, r1
	add r0, r6, #0x348
	bl CPSi_sha1_init
	mov r0, r4
	bl strlen
	mov r2, r0
	mov r1, r4
	add r0, r6, #0x348
	bl CPSi_sha1_calc
	mov r5, #0x30
	add r0, r6, #0x348
	mov r1, r6
	mov r2, r5
	bl CPSi_sha1_calc
	add r0, r6, #0x348
	add r1, r6, #0x34
	mov r2, #0x40
	bl CPSi_sha1_calc
	add r4, sp, #0
	add r0, r6, #0x348
	mov r1, r4
	bl CPSi_sha1_result
	add r0, r6, #0x3fc
	bl CPSi_md5_init
	mov r2, r5
	add r0, r6, #0x3fc
	mov r1, r6
	bl CPSi_md5_calc
	mov r1, r4
	add r0, r6, #0x3fc
	mov r2, #0x14
	bl CPSi_md5_calc
	add r0, r6, #0x3fc
	mov r1, r7
	bl CPSi_md5_result
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end create_ms_sub

	arm_func_start create_master_secret
create_master_secret: ; 0x020D8AA4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x30
	mov r5, r0
	add r4, sp, #0
	ldr r1, _020D8AFC ; =0x020E5AA0
	mov r0, r4
	mov r2, r5
	bl create_ms_sub
	ldr r1, _020D8B00 ; =0x020E5AA4
	add r0, sp, #0x10
	mov r2, r5
	bl create_ms_sub
	ldr r1, _020D8B04 ; =0x020E5AA8
	add r0, sp, #0x20
	mov r2, r5
	bl create_ms_sub
	mov r0, r4
	mov r1, r5
	mov r2, #0x30
	bl MI_CpuCopy8
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, pc}
_020D8AFC: .word ov15_020E5AA0
_020D8B00: .word ov15_020E5AA4
_020D8B04: .word ov15_020E5AA8
	arm_func_end create_master_secret

	arm_func_start create_key_block
create_key_block: ; 0x020D8B08
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r10, r0
	ldrh r0, [r10, #0x32]
	cmp r0, #4
	beq _020D8B3C
	cmp r0, #5
	moveq r0, #0x14
	streq r0, [sp, #4]
	moveq r0, #0x10
	streq r0, [sp]
	moveq r2, #0
	b _020D8B4C
_020D8B3C:
	mov r0, #0x10
	str r0, [sp, #4]
	str r0, [sp]
	mov r2, #0
_020D8B4C:
	ldr r1, [sp, #4]
	ldr r0, [sp]
	mov r7, #0
	add r0, r1, r0
	add r0, r2, r0
	mov r9, r0, lsl #1
	cmp r9, #0
	ble _020D8C30
	add r11, r10, #0x74
	add r5, sp, #8
	mov r4, #1
_020D8B78:
	add r0, r10, #0x348
	bl CPSi_sha1_init
	add r0, r7, #0x41
	add r6, r7, #1
	strb r0, [sp, #8]
	cmp r6, #0
	mov r8, #0
	ble _020D8BB4
_020D8B98:
	add r0, r10, #0x348
	mov r1, r5
	mov r2, r4
	bl CPSi_sha1_calc
	add r8, r8, #1
	cmp r8, r6
	blt _020D8B98
_020D8BB4:
	mov r1, r10
	add r0, r10, #0x348
	mov r2, #0x30
	bl CPSi_sha1_calc
	add r0, r10, #0x348
	add r1, r10, #0x54
	mov r2, #0x20
	bl CPSi_sha1_calc
	add r0, r10, #0x348
	add r1, r10, #0x34
	mov r2, #0x20
	bl CPSi_sha1_calc
	add r0, r10, #0x348
	add r1, sp, #9
	bl CPSi_sha1_result
	add r0, r10, #0x3fc
	bl CPSi_md5_init
	add r0, r10, #0x3fc
	mov r1, r10
	mov r2, #0x30
	bl CPSi_md5_calc
	add r0, r10, #0x3fc
	add r1, sp, #9
	mov r2, #0x14
	bl CPSi_md5_calc
	add r0, r10, #0x3fc
	add r1, r11, r7, lsl #4
	bl CPSi_md5_result
	add r7, r7, #1
	cmp r9, r7, lsl #4
	bgt _020D8B78
_020D8C30:
	ldrb r0, [r10, #0x454]
	add r4, r10, #0x74
	cmp r0, #0
	beq _020D8C6C
	ldr r0, [sp, #4]
	str r4, [r10, #0x1d4]
	add r2, r4, r0
	add r3, r4, r0, lsl #1
	add r1, r2, r0
	ldr r0, [sp]
	str r3, [r10, #0x1d8]
	add r0, r1, r0
	str r2, [r10, #0xbc]
	str r0, [r10, #0xc0]
	b _020D8C94
_020D8C6C:
	ldr r0, [sp, #4]
	str r4, [r10, #0xbc]
	add r2, r4, r0
	add r3, r4, r0, lsl #1
	add r1, r2, r0
	ldr r0, [sp]
	str r3, [r10, #0xc0]
	add r0, r1, r0
	str r2, [r10, #0x1d4]
	str r0, [r10, #0x1d8]
_020D8C94:
	mov r4, #0x10
	ldr r1, [r10, #0x1d8]
	mov r2, r4
	add r0, r10, #0x1e0
	bl CPSi_rc4_init
	ldr r1, [r10, #0xc0]
	mov r2, r4
	add r0, r10, #0xc8
	bl CPSi_rc4_init
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end create_key_block

	arm_func_start rcv_client_key_exchange
rcv_client_key_exchange: ; 0x020D8CC0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0x81c]
	bl decrypt_premaster_secret
	mov r0, r4
	bl create_master_secret
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl cache_session
	mov r0, r4
	bl create_key_block
	mov r0, #5
	strb r0, [r4, #0x455]
	ldmfd sp!, {r4, pc}
	arm_func_end rcv_client_key_exchange

	arm_func_start finished_md5
finished_md5: ; 0x020D8CFC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x30
	mov r7, r0
	ldrb r0, [r7, #0x454]
	mov r6, r1
	teq r0, r2
	mov r2, #4
	beq _020D8D24
	ldr r1, _020D8DD0 ; =0x020E5AAC
	b _020D8D28
_020D8D24:
	ldr r1, _020D8DD4 ; =0x020E5AB4
_020D8D28:
	add r0, r7, #0x3a4
	bl CPSi_md5_calc
	mov r5, #0x30
	mov r1, r7
	mov r2, r5
	add r0, r7, #0x3a4
	bl CPSi_md5_calc
	add r4, sp, #0
	mov r2, r5
	mov r0, r4
	mov r1, #0x36
	bl MI_CpuFill8
	mov r1, r4
	mov r2, r5
	add r0, r7, #0x3a4
	bl CPSi_md5_calc
	mov r1, r6
	add r0, r7, #0x3a4
	bl CPSi_md5_result
	add r0, r7, #0x3a4
	bl CPSi_md5_init
	add r0, r7, #0x3a4
	mov r1, r7
	mov r2, r5
	bl CPSi_md5_calc
	mov r0, r4
	mov r1, #0x5c
	mov r2, r5
	bl MI_CpuFill8
	mov r1, r4
	mov r2, r5
	add r0, r7, #0x3a4
	bl CPSi_md5_calc
	add r0, r7, #0x3a4
	mov r1, r6
	mov r2, #0x10
	bl CPSi_md5_calc
	add r0, r7, #0x3a4
	mov r1, r6
	bl CPSi_md5_result
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D8DD0: .word ov15_020E5AAC
_020D8DD4: .word ov15_020E5AB4
	arm_func_end finished_md5

	arm_func_start finished_sha1
finished_sha1: ; 0x020D8DD8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x28
	mov r8, r0
	ldrb r0, [r8, #0x454]
	mov r7, r1
	teq r0, r2
	mov r2, #4
	beq _020D8E00
	ldr r1, _020D8EB0 ; =0x020E5AAC
	b _020D8E04
_020D8E00:
	ldr r1, _020D8EB4 ; =0x020E5AB4
_020D8E04:
	add r0, r8, #0x2ec
	bl CPSi_sha1_calc
	mov r6, #0x30
	mov r1, r8
	mov r2, r6
	add r0, r8, #0x2ec
	bl CPSi_sha1_calc
	add r5, sp, #0
	mov r4, #0x28
	mov r0, r5
	mov r2, r4
	mov r1, #0x36
	bl MI_CpuFill8
	mov r1, r5
	mov r2, r4
	add r0, r8, #0x2ec
	bl CPSi_sha1_calc
	add r0, r8, #0x2ec
	mov r1, r7
	bl CPSi_sha1_result
	add r0, r8, #0x2ec
	bl CPSi_sha1_init
	mov r2, r6
	add r0, r8, #0x2ec
	mov r1, r8
	bl CPSi_sha1_calc
	mov r0, r5
	mov r1, #0x5c
	mov r2, r4
	bl MI_CpuFill8
	mov r1, r5
	mov r2, r4
	add r0, r8, #0x2ec
	bl CPSi_sha1_calc
	add r0, r8, #0x2ec
	mov r1, r7
	mov r2, #0x14
	bl CPSi_sha1_calc
	add r0, r8, #0x2ec
	mov r1, r7
	bl CPSi_sha1_result
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D8EB0: .word ov15_020E5AAC
_020D8EB4: .word ov15_020E5AB4
	arm_func_end finished_sha1

	arm_func_start rcv_finished
rcv_finished: ; 0x020D8EB8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	mov r4, r0
	mov r5, #0x58
	mov r8, r1
	mov r2, r5
	add r0, r4, #0x3a4
	add r1, r4, #0x3fc
	bl MI_CpuCopy8
	add r7, sp, #0
	mov r6, #1
	mov r0, r4
	mov r1, r7
	mov r2, r6
	bl finished_md5
	mov r2, r5
	add r0, r4, #0x3fc
	add r1, r4, #0x3a4
	bl MI_CpuCopy8
	mov r0, r8
	mov r1, r7
	mov r2, #0x10
	bl memcmp
	cmp r0, #0
	movne r0, #9
	addne sp, sp, #0x14
	strneb r0, [r4, #0x455]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r5, #0x5c
	mov r2, r5
	add r0, r4, #0x2ec
	add r1, r4, #0x348
	bl MI_CpuCopy8
	mov r0, r4
	mov r1, r7
	mov r2, r6
	bl finished_sha1
	mov r2, r5
	add r0, r4, #0x348
	add r1, r4, #0x2ec
	bl MI_CpuCopy8
	mov r1, r7
	add r0, r8, #0x10
	mov r2, #0x14
	bl memcmp
	cmp r0, #0
	movne r0, #9
	strneb r0, [r4, #0x455]
	moveq r0, #6
	streqb r0, [r4, #0x455]
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end rcv_finished

	arm_func_start add1_be8
add1_be8: ; 0x020D8F88
	mov r2, #8
_020D8F8C:
	ldrb r1, [r0, #-1]!
	add r1, r1, #1
	ands r1, r1, #0xff
	strb r1, [r0]
	bxne lr
	subs r2, r2, #1
	bne _020D8F8C
	bx lr
	arm_func_end add1_be8

	arm_func_start decrypt
decrypt: ; 0x020D8FAC
	stmfd sp!, {r4, lr}
	add r0, r0, #0x1e0
	mov r4, r2
	bl CPSi_rc4_crypt
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end decrypt

	arm_func_start make_plaintext
make_plaintext: ; 0x020D8FC4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x44
	mov r6, r1
	ldrb r3, [r6, #3]
	ldrb r2, [r6, #4]
	mov r7, r0
	add r1, r6, #5
	add r2, r2, r3, lsl #8
	bl decrypt
	ldrh r1, [r7, #0x32]
	mov r4, r0
	cmp r1, #4
	beq _020D9004
	cmp r1, #5
	beq _020D90F0
	b _020D91D8
_020D9004:
	sub r4, r4, #0x10
	mov r0, r4, asr #8
	strb r0, [r6, #3]
	strb r4, [r6, #4]
	add r0, r7, #0x3fc
	bl CPSi_md5_init
	mov r5, #0x10
	ldr r1, [r7, #0x1d4]
	mov r2, r5
	add r0, r7, #0x3fc
	bl CPSi_md5_calc
	add r10, sp, #0
	mov r9, #0x30
	mov r0, r10
	mov r1, #0x36
	mov r2, r9
	bl MI_CpuFill8
	add r0, r7, #0x3fc
	mov r1, r10
	mov r2, r9
	bl CPSi_md5_calc
	add r0, r7, #0x3fc
	add r1, r7, #0x2e4
	mov r2, #8
	bl CPSi_md5_calc
	add r0, r7, #0x3fc
	mov r1, r6
	mov r2, #1
	bl CPSi_md5_calc
	add r0, r7, #0x3fc
	add r1, r6, #3
	add r2, r4, #2
	bl CPSi_md5_calc
	add r8, sp, #0x30
	add r0, r7, #0x3fc
	mov r1, r8
	bl CPSi_md5_result
	add r0, r7, #0x3fc
	bl CPSi_md5_init
	ldr r1, [r7, #0x1d4]
	add r0, r7, #0x3fc
	mov r2, r5
	bl CPSi_md5_calc
	mov r0, r10
	mov r1, #0x5c
	mov r2, r9
	bl MI_CpuFill8
	mov r1, r10
	mov r2, r9
	add r0, r7, #0x3fc
	bl CPSi_md5_calc
	add r0, r7, #0x3fc
	mov r1, r8
	mov r2, r5
	bl CPSi_md5_calc
	mov r1, r8
	add r0, r7, #0x3fc
	bl CPSi_md5_result
	b _020D91D8
_020D90F0:
	sub r4, r4, #0x14
	mov r0, r4, asr #8
	strb r0, [r6, #3]
	strb r4, [r6, #4]
	add r0, r7, #0x348
	bl CPSi_sha1_init
	mov r5, #0x14
	ldr r1, [r7, #0x1d4]
	mov r2, r5
	add r0, r7, #0x348
	bl CPSi_sha1_calc
	add r10, sp, #0
	mov r9, #0x28
	mov r0, r10
	mov r1, #0x36
	mov r2, r9
	bl MI_CpuFill8
	add r0, r7, #0x348
	mov r1, r10
	mov r2, r9
	bl CPSi_sha1_calc
	add r0, r7, #0x348
	add r1, r7, #0x2e4
	mov r2, #8
	bl CPSi_sha1_calc
	add r0, r7, #0x348
	mov r1, r6
	mov r2, #1
	bl CPSi_sha1_calc
	add r0, r7, #0x348
	add r1, r6, #3
	add r2, r4, #2
	bl CPSi_sha1_calc
	add r8, sp, #0x30
	add r0, r7, #0x348
	mov r1, r8
	bl CPSi_sha1_result
	add r0, r7, #0x348
	bl CPSi_sha1_init
	ldr r1, [r7, #0x1d4]
	add r0, r7, #0x348
	mov r2, r5
	bl CPSi_sha1_calc
	mov r0, r10
	mov r1, #0x5c
	mov r2, r9
	bl MI_CpuFill8
	mov r1, r10
	mov r2, r9
	add r0, r7, #0x348
	bl CPSi_sha1_calc
	add r0, r7, #0x348
	mov r1, r8
	mov r2, r5
	bl CPSi_sha1_calc
	mov r1, r8
	add r0, r7, #0x348
	bl CPSi_sha1_result
_020D91D8:
	add r0, r6, #5
	add r1, sp, #0x30
	mov r2, r5
	add r0, r0, r4
	bl memcmp
	cmp r0, #0
	movne r0, #9
	strneb r0, [r7, #0x455]
	add r0, r7, #0x2ec
	bl add1_be8
	add r0, r4, #5
	add sp, sp, #0x44
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end make_plaintext

	arm_func_start make_ciphertext
make_ciphertext: ; 0x020D920C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x30
	mov r6, r1
	mov r7, r0
	ldrh r0, [r7, #0x32]
	ldrb r2, [r6, #3]
	ldrb r1, [r6, #4]
	cmp r0, #4
	add r4, r6, #5
	add r5, r1, r2, lsl #8
	beq _020D9244
	cmp r0, #5
	beq _020D9320
	b _020D93F8
_020D9244:
	add r0, r7, #0x3fc
	bl CPSi_md5_init
	mov r10, #0x10
	ldr r1, [r7, #0xbc]
	mov r2, r10
	add r0, r7, #0x3fc
	bl CPSi_md5_calc
	add r9, sp, #0
	mov r8, #0x30
	mov r0, r9
	mov r1, #0x36
	mov r2, r8
	bl MI_CpuFill8
	add r0, r7, #0x3fc
	mov r1, r9
	mov r2, r8
	bl CPSi_md5_calc
	add r0, r7, #0x3fc
	add r1, r7, #0x1cc
	mov r2, #8
	bl CPSi_md5_calc
	add r0, r7, #0x3fc
	mov r1, r6
	mov r2, #1
	bl CPSi_md5_calc
	add r0, r7, #0x3fc
	add r1, r6, #3
	add r2, r5, #2
	bl CPSi_md5_calc
	add r0, r7, #0x3fc
	add r1, r4, r5
	bl CPSi_md5_result
	add r0, r7, #0x3fc
	bl CPSi_md5_init
	ldr r1, [r7, #0xbc]
	add r0, r7, #0x3fc
	mov r2, r10
	bl CPSi_md5_calc
	mov r0, r9
	mov r1, #0x5c
	mov r2, r8
	bl MI_CpuFill8
	mov r1, r9
	mov r2, r8
	add r0, r7, #0x3fc
	bl CPSi_md5_calc
	mov r2, r10
	add r0, r7, #0x3fc
	add r1, r4, r5
	bl CPSi_md5_calc
	add r1, r4, r5
	add r0, r7, #0x3fc
	bl CPSi_md5_result
	add r5, r5, #0x10
	b _020D93F8
_020D9320:
	add r0, r7, #0x348
	bl CPSi_sha1_init
	mov r10, #0x14
	ldr r1, [r7, #0xbc]
	mov r2, r10
	add r0, r7, #0x348
	bl CPSi_sha1_calc
	add r9, sp, #0
	mov r8, #0x28
	mov r0, r9
	mov r1, #0x36
	mov r2, r8
	bl MI_CpuFill8
	add r0, r7, #0x348
	mov r1, r9
	mov r2, r8
	bl CPSi_sha1_calc
	add r0, r7, #0x348
	add r1, r7, #0x1cc
	mov r2, #8
	bl CPSi_sha1_calc
	add r0, r7, #0x348
	mov r1, r6
	mov r2, #1
	bl CPSi_sha1_calc
	add r0, r7, #0x348
	add r1, r6, #3
	add r2, r5, #2
	bl CPSi_sha1_calc
	add r0, r7, #0x348
	add r1, r4, r5
	bl CPSi_sha1_result
	add r0, r7, #0x348
	bl CPSi_sha1_init
	ldr r1, [r7, #0xbc]
	add r0, r7, #0x348
	mov r2, r10
	bl CPSi_sha1_calc
	mov r0, r9
	mov r1, #0x5c
	mov r2, r8
	bl MI_CpuFill8
	mov r1, r9
	mov r2, r8
	add r0, r7, #0x348
	bl CPSi_sha1_calc
	mov r2, r10
	add r0, r7, #0x348
	add r1, r4, r5
	bl CPSi_sha1_calc
	add r1, r4, r5
	add r0, r7, #0x348
	bl CPSi_sha1_result
	add r5, r5, #0x14
_020D93F8:
	mov r3, r5, asr #8
	mov r2, r5
	add r0, r7, #0xc8
	add r1, r6, #5
	strb r3, [r6, #3]
	strb r5, [r6, #4]
	bl CPSi_rc4_crypt
	add r0, r7, #0x1d4
	bl add1_be8
	add r0, r5, #5
	add sp, sp, #0x30
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end make_ciphertext

	arm_func_start tcp_read_raw_nbytes
tcp_read_raw_nbytes: ; 0x020D9428
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	add r4, sp, #0
_020D943C:
	mov r0, r4
	mov r1, r5
	bl CPSi_TcpReadRaw
	ldr r1, [sp]
	cmp r1, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, r6
	strhi r6, [sp]
	ldr r2, [sp]
	mov r1, r7
	bl MI_CpuCopy8
	ldr r0, [sp]
	mov r1, r5
	bl CPSi_SocConsumeRaw
	ldr r0, [sp]
	sub r6, r6, r0
	cmp r6, #0
	add r7, r7, r0
	bgt _020D943C
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end tcp_read_raw_nbytes

	arm_func_start update_digest
update_digest: ; 0x020D9494
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	add r0, r6, #0x2ec
	bl CPSi_sha1_calc
	mov r1, r5
	mov r2, r4
	add r0, r6, #0x3a4
	bl CPSi_md5_calc
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end update_digest

	arm_func_start parse_record_in_buf
parse_record_in_buf: ; 0x020D94C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r0
	ldrb r2, [r9, #0x455]
	mov r10, r1
	mov r4, #9
	cmp r2, #9
	bne _020D94F0
	ldr r1, _020D97D4 ; =CPSiFree
	mov r0, r10
	ldr r1, [r1]
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D94F0:
	ldrb r3, [r10, #3]
	ldrb r1, [r10, #4]
	ldr r0, [r9, #0x1d4]
	ldrb r5, [r10]
	add r1, r1, r3, lsl #8
	cmp r0, #0
	add r6, r1, #5
	beq _020D9568
	add r0, r2, #0xf9
	and r0, r0, #0xff
	cmp r0, #1
	bhi _020D9528
	cmp r5, #0x15
	bne _020D9538
_020D9528:
	cmp r5, #0x15
	bne _020D9568
	cmp r6, #7
	bls _020D9568
_020D9538:
	mov r0, r9
	mov r1, r10
	bl make_plaintext
	ldrb r2, [r9, #0x455]
	mov r6, r0
	cmp r2, #9
	bne _020D9568
	ldr r1, _020D97D4 ; =CPSiFree
	mov r0, r10
	ldr r1, [r1]
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D9568:
	sub r0, r5, #0x14
	cmp r0, #3
	add r5, r10, #5
	sub r6, r6, #5
	addls pc, pc, r0, lsl #2
	b _020D97BC
_020D9580: ; jump table
	b _020D9590 ; case 0
	b _020D95BC ; case 1
	b _020D95D4 ; case 2
	b _020D9790 ; case 3
_020D9590:
	ldr r0, [r9, #0x1d4]
	cmp r0, #0
	streqb r4, [r9, #0x455]
	beq _020D97C0
	add r0, r9, #0x2e4
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	mov r0, #7
	strb r0, [r9, #0x455]
	b _020D97C0
_020D95BC:
	cmp r6, #2
	bne _020D95D0
	ldrb r0, [r5]
	cmp r0, #2
	bne _020D97C0
_020D95D0:
	b _020D97BC
_020D95D4:
	cmp r6, #4
	strlob r4, [r9, #0x455]
	blo _020D97C0
	mov r11, #0
_020D95E4:
	ldrb r3, [r5, #1]
	ldrb r7, [r5, #2]
	ldrb r1, [r5, #3]
	mov r3, r3, lsl #0x10
	add r3, r3, r7, lsl #8
	add r8, r1, r3
	ldrb r0, [r5]
	cmp r8, r6
	movhi r0, #9
	strhib r0, [r9, #0x455]
	bhi _020D97C0
	cmp r0, #0xb
	add r5, r5, #4
	bgt _020D9644
	cmp r0, #0xb
	bge _020D96E0
	cmp r0, #2
	bgt _020D974C
	cmp r0, #1
	blt _020D974C
	beq _020D9674
	cmp r0, #2
	beq _020D96BC
	b _020D974C
_020D9644:
	sub r0, r0, #0xd
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _020D974C
_020D9654: ; jump table
	b _020D9708 ; case 0
	b _020D9720 ; case 1
	b _020D974C ; case 2
	b _020D969C ; case 3
	b _020D974C ; case 4
	b _020D974C ; case 5
	b _020D974C ; case 6
	b _020D973C ; case 7
_020D9674:
	ldrb r0, [r9, #0x454]
	cmp r0, #0
	beq _020D9698
	cmp r2, #0
	bne _020D9698
	mov r0, r9
	mov r1, r5
	bl client_hello
	b _020D9750
_020D9698:
	b _020D974C
_020D969C:
	ldrb r0, [r9, #0x454]
	cmp r0, #0
	streqb r4, [r9, #0x455]
	beq _020D9750
	mov r0, r9
	mov r1, r5
	bl rcv_client_key_exchange
	b _020D9750
_020D96BC:
	cmp r8, #0x26
	ldrgeb r0, [r9, #0x454]
	cmpge r0, #0
	strneb r4, [r9, #0x455]
	bne _020D9750
	mov r0, r9
	mov r1, r5
	bl rcv_server_hello
	b _020D9750
_020D96E0:
	cmp r2, #2
	ldreqb r0, [r9, #0x454]
	cmpeq r0, #0
	strneb r4, [r9, #0x455]
	bne _020D9750
	mov r0, r9
	mov r1, r5
	bl rcv_certificate
	strb r11, [r9, #0x5ac]
	b _020D9750
_020D9708:
	cmp r2, #3
	ldreqb r0, [r9, #0x454]
	cmpeq r0, #0
	moveq r0, #1
	streqb r0, [r9, #0x5ac]
	b _020D9734
_020D9720:
	ldrb r0, [r9, #0x454]
	cmp r0, #0
	cmpeq r2, #3
	moveq r0, #4
	streqb r0, [r9, #0x455]
_020D9734:
	strneb r4, [r9, #0x455]
	b _020D9750
_020D973C:
	mov r0, r9
	mov r1, r5
	bl rcv_finished
	b _020D9750
_020D974C:
	strb r4, [r9, #0x455]
_020D9750:
	ldrb r0, [r9, #0x455]
	cmp r0, #9
	beq _020D9778
	add r7, r8, #4
	mov r0, r9
	sub r1, r5, #4
	mov r2, r7
	bl update_digest
	add r5, r5, r8
	sub r6, r6, r7
_020D9778:
	cmp r6, #0
	beq _020D97C0
	ldrb r2, [r9, #0x455]
	cmp r2, #9
	bne _020D95E4
	b _020D97C0
_020D9790:
	cmp r2, #8
	strneb r4, [r9, #0x455]
	bne _020D97C0
	add r1, r6, #5
	mov r2, #5
	mov r0, #1
	str r10, [r9, #0x824]
	str r2, [r9, #0x82c]
	str r1, [r9, #0x828]
	strb r0, [r9, #0x456]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D97BC:
	strb r4, [r9, #0x455]
_020D97C0:
	ldr r1, _020D97D4 ; =CPSiFree
	mov r0, r10
	ldr r1, [r1]
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D97D4: .word CPSiFree
	arm_func_end parse_record_in_buf

	arm_func_start parse_record
parse_record: ; 0x020D97D8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r4, [r5, #0xc]
	mov r6, #9
	add r7, sp, #0
_020D97EC:
	mov r0, r7
	mov r1, r5
	bl CPSi_TcpReadRaw
	ldr r1, [sp]
	cmp r1, #5
	bhs _020D9824
	cmp r1, #0
	beq _020D9818
	ldrb r0, [r5, #8]
	cmp r0, #0
	bne _020D97EC
_020D9818:
	mov r0, #9
	strb r0, [r4, #0x455]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D9824:
	ldrb r1, [r0]
	cmp r1, #0x80
	bne _020D98D4
	ldrb r1, [r4, #0x454]
	cmp r1, #0
	beq _020D98CC
	ldrb r1, [r4, #0x455]
	cmp r1, #0
	bne _020D98CC
	ldrb r2, [r0, #1]
	mov r1, r5
	mov r0, #2
	str r2, [sp]
	bl CPSi_SocConsumeRaw
	ldr r1, _020D995C ; =CPSiAlloc
	ldr r0, [sp]
	ldr r1, [r1]
	blx r1
	movs r7, r0
	moveq r0, #9
	streqb r0, [r4, #0x455]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [sp]
	mov r2, r5
	bl tcp_read_raw_nbytes
	cmp r0, #0
	ldreqb r0, [r7]
	cmpeq r0, #1
	strneb r6, [r4, #0x455]
	bne _020D98A8
	mov r0, r4
	add r1, r7, #1
	bl client_hello_v2
_020D98A8:
	ldr r2, [sp]
	mov r0, r4
	mov r1, r7
	bl update_digest
	ldr r1, _020D9960 ; =CPSiFree
	mov r0, r7
	ldr r1, [r1]
	blx r1
	b _020D9954
_020D98CC:
	strb r6, [r4, #0x455]
	b _020D9954
_020D98D4:
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	ldr r1, _020D9964 ; =0x00004805
	add r0, r0, r2, lsl #8
	add r0, r0, #5
	str r0, [sp]
	cmp r0, r1
	movhi r0, #9
	strhib r0, [r4, #0x455]
	ldmhifd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _020D995C ; =CPSiAlloc
	ldr r1, [r1]
	blx r1
	movs r6, r0
	moveq r0, #9
	streqb r0, [r4, #0x455]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [sp]
	mov r2, r5
	bl tcp_read_raw_nbytes
	cmp r0, #0
	beq _020D9948
	ldr r1, _020D9960 ; =CPSiFree
	mov r0, r6
	ldr r1, [r1]
	blx r1
	mov r0, #9
	strb r0, [r4, #0x455]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D9948:
	mov r0, r4
	mov r1, r6
	bl parse_record_in_buf
_020D9954:
	ldrb r0, [r4, #0x455]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D995C: .word CPSiAlloc
_020D9960: .word CPSiFree
_020D9964: .word 0x00004805
	arm_func_end parse_record

	arm_func_start set_random
set_random: ; 0x020D9968
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x74
	ldr r2, _020D9A7C ; =0x020ED668
	mov r10, r0
	ldrb r0, [r2]
	mov r9, r1
	cmp r0, #0
	bne _020D99C8
	ldr r2, _020D9A80 ; =CPSiRand32ctx
	add r0, sp, #0
	ldmia r2, {r4, r5, r6}
	umull r7, r3, r6, r4
	mla r3, r6, r5, r3
	ldr r1, [r2, #0xc]
	ldr r6, [r2, #0x10]
	mla r3, r1, r4, r3
	ldr r1, [r2, #0x14]
	adds r4, r6, r7
	adc r3, r1, r3
	str r4, [r2]
	mov r1, #4
	str r3, [r2, #4]
	str r3, [sp]
	bl CPS_SslAddRandomSeed
_020D99C8:
	cmp r9, #0
	mov r8, #0
	addle sp, sp, #0x74
	mov r1, #0x14
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r5, _020D9A84 ; =0x020ED670
	add r4, sp, #4
	add r6, sp, #0x18
	mov r11, r1
_020D99EC:
	cmp r1, #0x14
	bne _020D9A58
	mov r0, r6
	bl CPSi_sha1_init
	bl OS_DisableInterrupts
	mov r7, r0
	mov r0, r6
	mov r1, r5
	mov r2, r11
	bl CPSi_sha1_calc
	mov r0, r6
	mov r1, r4
	bl CPSi_sha1_result_prng
	mov r1, #1
	mov r0, #0x13
_020D9A28:
	ldrb r3, [r5, r0]
	ldrb r2, [r4, r0]
	add r2, r3, r2
	add r2, r1, r2
	strb r2, [r5, r0]
	mov r1, r2, lsr #8
	subs r0, r0, #1
	bpl _020D9A28
	mov r0, r7
	str r2, [sp]
	bl OS_RestoreInterrupts
	mov r1, #0
_020D9A58:
	ldrb r0, [r4, r1]
	add r1, r1, #1
	cmp r0, #0
	strneb r0, [r10, r8]
	addne r8, r8, #1
	cmp r8, r9
	blt _020D99EC
	add sp, sp, #0x74
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D9A7C: .word ov15_020ED668
_020D9A80: .word CPSiRand32ctx
_020D9A84: .word ov15_020ED670
	arm_func_end set_random

	arm_func_start CPS_SslAddRandomSeed
CPS_SslAddRandomSeed: ; 0x020D9A88
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x5c
	add r6, sp, #0
	mov r8, r0
	mov r0, r6
	mov r7, r1
	bl CPSi_sha1_init
	bl OS_DisableInterrupts
	ldr r4, _020D9AF8 ; =0x020ED670
	mov r5, r0
	mov r0, r6
	mov r1, r4
	mov r2, #0x14
	bl CPSi_sha1_calc
	mov r1, r8
	mov r2, r7
	mov r0, r6
	bl CPSi_sha1_calc
	mov r0, r6
	mov r1, r4
	bl CPSi_sha1_result
	mov r0, r5
	bl OS_RestoreInterrupts
	ldr r0, _020D9AFC ; =0x020ED668
	mov r1, #1
	strb r1, [r0]
	add sp, sp, #0x5c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020D9AF8: .word ov15_020ED670
_020D9AFC: .word ov15_020ED668
	arm_func_end CPS_SslAddRandomSeed

	arm_func_start send_change_cipher_spec_and_finished
send_change_cipher_spec_and_finished: ; 0x020D9B00
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	ldr r1, _020D9C50 ; =CPSiAlloc
	mov r9, r0
	ldr r1, [r1]
	mov r0, #0x83
	ldr r8, [r9, #0xc]
	blx r1
	movs r7, r0
	moveq r0, #9
	addeq sp, sp, #4
	streqb r0, [r8, #0x455]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r6, #0x14
	strb r6, [r7]
	mov r4, #3
	mov r5, #0
	strb r4, [r7, #1]
	strb r5, [r7, #2]
	strb r5, [r7, #3]
	mov r3, #1
	strb r3, [r7, #4]
	mov r1, r5
	add r0, r8, #0x1cc
	mov r2, #8
	strb r3, [r7, #5]
	bl MI_CpuFill8
	mov r0, #0x16
	strb r0, [r7, #6]
	strb r4, [r7, #7]
	strb r5, [r7, #8]
	mov r10, #0x58
	strb r5, [r7, #9]
	mov r4, #0x28
	strb r4, [r7, #0xa]
	strb r6, [r7, #0xb]
	strb r5, [r7, #0xc]
	mov r2, r10
	strb r5, [r7, #0xd]
	mov r3, #0x24
	add r0, r8, #0x3a4
	add r1, r8, #0x3fc
	strb r3, [r7, #0xe]
	bl MI_CpuCopy8
	mov r0, r8
	add r1, r7, #0xf
	mov r2, r5
	bl finished_md5
	mov r2, r10
	add r0, r8, #0x3fc
	add r1, r8, #0x3a4
	bl MI_CpuCopy8
	mov r6, #0x5c
	add r0, r8, #0x2ec
	add r1, r8, #0x348
	mov r2, r6
	bl MI_CpuCopy8
	mov r0, r8
	add r1, r7, #0x1f
	mov r2, r5
	bl finished_sha1
	mov r2, r6
	add r0, r8, #0x348
	add r1, r8, #0x2ec
	bl MI_CpuCopy8
	mov r2, r4
	mov r0, r8
	add r1, r7, #0xb
	bl update_digest
	mov r0, r8
	add r1, r7, #6
	bl make_ciphertext
	add r1, r0, #6
	mov r0, r7
	mov r2, r5
	mov r3, r5
	str r9, [sp]
	bl CPSi_TcpWrite2Raw
	ldr r1, _020D9C54 ; =CPSiFree
	mov r0, r7
	ldr r1, [r1]
	blx r1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D9C50: .word CPSiAlloc
_020D9C54: .word CPSiFree
	arm_func_end send_change_cipher_spec_and_finished

	arm_func_start send_client_hello
send_client_hello: ; 0x020D9C58
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	ldr r1, _020D9DEC ; =CPSiAlloc
	mov r7, r0
	ldr r1, [r1]
	mov r0, #0x98
	ldr r5, [r7, #0xc]
	blx r1
	movs r6, r0
	moveq r0, #9
	addeq sp, sp, #4
	streqb r0, [r5, #0x455]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, #3
	strb r0, [r6, #9]
	mov r4, #0
	strb r4, [r6, #0xa]
	bl date2sec
	mov r1, r0, lsr #0x18
	strb r1, [r5, #0x34]
	mov r1, r0, lsr #0x10
	strb r1, [r5, #0x35]
	mov r1, r0, lsr #8
	strb r1, [r5, #0x36]
	strb r0, [r5, #0x37]
	add r0, r5, #0x38
	mov r1, #0x1c
	bl set_random
	mov r8, #0x20
	mov r2, r8
	add r0, r5, #0x34
	add r1, r6, #0xb
	bl MI_CpuCopy8
	ldrh r2, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	mov r0, r5
	bl find_session_from_IP
	ldrb r0, [r5, #0x30]
	cmp r0, #0
	streqb r4, [r6, #0x2b]
	addeq r0, r6, #0x2c
	beq _020D9D18
	mov r2, r8
	add r0, r5, #0x74
	add r1, r6, #0x2c
	strb r8, [r6, #0x2b]
	bl MI_CpuCopy8
	add r0, r6, #0x4c
_020D9D18:
	mov r4, #0
	strb r4, [r0]
	mov r1, #4
	strb r1, [r0, #1]
	ldr r2, _020D9DF0 ; =0x020E5A54
	add r0, r0, #2
_020D9D30:
	mov r3, r4, lsl #1
	ldrh r1, [r2, r3]
	add r4, r4, #1
	cmp r4, #2
	mov r1, r1, asr #8
	strb r1, [r0]
	ldrh r1, [r2, r3]
	strb r1, [r0, #1]
	add r0, r0, #2
	blo _020D9D30
	mov r3, #1
	mov r2, #0
	strb r3, [r0]
	add r1, r0, #2
	sub r1, r1, r6
	sub r4, r1, #5
	strb r2, [r0, #1]
	sub r1, r4, #4
	mov r0, #0x16
	strb r0, [r6]
	mov r0, #3
	strb r0, [r6, #1]
	strb r2, [r6, #2]
	mov r0, r4, asr #8
	strb r0, [r6, #3]
	strb r4, [r6, #4]
	strb r3, [r6, #5]
	mov r0, r1, asr #0x10
	strb r0, [r6, #6]
	mov r0, r1, asr #8
	strb r0, [r6, #7]
	strb r1, [r6, #8]
	mov r0, r6
	mov r3, r2
	add r1, r4, #5
	str r7, [sp]
	bl CPSi_TcpWrite2Raw
	mov r0, r5
	mov r2, r4
	add r1, r6, #5
	bl update_digest
	ldr r1, _020D9DF4 ; =CPSiFree
	mov r0, r6
	ldr r1, [r1]
	blx r1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020D9DEC: .word CPSiAlloc
_020D9DF0: .word ov15_020E5A54
_020D9DF4: .word CPSiFree
	arm_func_end send_client_hello

	arm_func_start send_client_key_exchange
send_client_key_exchange: ; 0x020D9DF8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	ldr r4, [r10, #0xc]
	ldrb r0, [r4, #0x5ac]
	cmp r0, #0
	beq _020D9E2C
	mov r2, #0
	ldr r0, _020DA0A0 ; =0x020E3FE0
	mov r3, r2
	mov r1, #7
	str r10, [sp]
	bl CPSi_TcpWrite2Raw
_020D9E2C:
	mov r0, #3
	strb r0, [r4]
	mov r0, #0
	strb r0, [r4, #1]
	add r0, r4, #2
	mov r1, #0x2e
	bl set_random
	ldr r9, [r4, #0x594]
	mov r0, r9, lsl #1
	add r1, r0, r0, lsr #31
	ldr r0, _020DA0A4 ; =CPSiAlloc
	mov r7, r1, asr #1
	ldr r2, [r0]
	mov r0, r9
	blx r2
	movs r8, r0
	moveq r0, #9
	addeq sp, sp, #8
	streqb r0, [r4, #0x455]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #0
	strb r0, [r8]
	mov r2, #2
	add r0, r8, #2
	sub r1, r9, #0x33
	strb r2, [r8, #1]
	bl set_random
	sub r3, r9, #0x31
	mov r1, #0
	add r2, r8, r9
	strb r1, [r8, r3]
	sub r1, r2, #0x30
	mov r0, r4
	mov r2, #0x30
	bl MI_CpuCopy8
	ldr r0, _020DA0A4 ; =CPSiAlloc
	ldr r1, [r0]
	mov r0, r7, lsl #3
	blx r1
	movs r5, r0
	bne _020D9EF0
	ldr r1, _020DA0A8 ; =CPSiFree
	mov r0, r8
	ldr r1, [r1]
	blx r1
	mov r0, #9
	add sp, sp, #8
	strb r0, [r4, #0x455]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D9EF0:
	add r0, r5, r7, lsl #1
	add r11, r0, r7, lsl #1
	mov r1, r8
	mov r2, r9
	mov r3, r7
	str r0, [sp, #4]
	add r6, r11, r7, lsl #1
	bl CPSi_big_from_char
	add r1, r4, #0x198
	ldr r2, [r4, #0x5a0]
	mov r0, r11
	add r1, r1, #0x400
	mov r3, r7
	bl CPSi_big_from_char
	add r1, r4, #0x94
	mov r0, r6
	add r1, r1, #0x400
	mov r2, r9
	mov r3, r7
	bl CPSi_big_from_char
	bl enter_computebound
	str r6, [sp]
	mov r6, r0
	ldr r1, [sp, #4]
	mov r2, r11
	mov r3, r7
	mov r0, r5
	bl CPSi_big_power
	mov r0, r6
	bl exit_computebound
	ldr r0, _020DA0A4 ; =CPSiAlloc
	ldr r1, [r0]
	add r0, r9, #0x49
	blx r1
	movs r6, r0
	bne _020D9FAC
	ldr r6, _020DA0A8 ; =CPSiFree
	mov r0, r8
	ldr r1, [r6]
	blx r1
	ldr r1, [r6]
	mov r0, r5
	blx r1
	mov r0, #9
	add sp, sp, #8
	strb r0, [r4, #0x455]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D9FAC:
	mov r0, #0x16
	strb r0, [r6]
	mov r0, #3
	strb r0, [r6, #1]
	mov r0, #0
	add r1, r9, #4
	strb r0, [r6, #2]
	mov r0, r1, asr #8
	strb r0, [r6, #3]
	strb r1, [r6, #4]
	mov r0, #0x10
	strb r0, [r6, #5]
	mov r0, r9, asr #0x10
	strb r0, [r6, #6]
	mov r0, r9, asr #8
	strb r0, [r6, #7]
	strb r9, [r6, #8]
	tst r9, #1
	add r0, r6, #9
	beq _020DA014
	add r0, r9, r9, lsr #31
	mov r0, r0, asr #1
	mov r0, r0, lsl #1
	ldrh r1, [r5, r0]
	add r0, r6, #0xa
	strb r1, [r6, #9]
_020DA014:
	add r1, r9, r9, lsr #31
	mov r1, r1, asr #1
	subs r3, r1, #1
	bmi _020DA048
_020DA024:
	mov r2, r3, lsl #1
	ldrh r1, [r5, r2]
	subs r3, r3, #1
	mov r1, r1, asr #8
	strb r1, [r0]
	ldrh r1, [r5, r2]
	strb r1, [r0, #1]
	add r0, r0, #2
	bpl _020DA024
_020DA048:
	mov r2, #0
	mov r0, r6
	mov r3, r2
	add r1, r9, #9
	str r10, [sp]
	bl CPSi_TcpWrite2Raw
	mov r0, r4
	add r1, r6, #5
	add r2, r9, #4
	bl update_digest
	ldr r4, _020DA0A8 ; =CPSiFree
	mov r0, r6
	ldr r1, [r4]
	blx r1
	ldr r1, [r4]
	mov r0, r5
	blx r1
	ldr r1, [r4]
	mov r0, r8
	blx r1
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DA0A0: .word ov15_020E3FE0
_020DA0A4: .word CPSiAlloc
_020DA0A8: .word CPSiFree
	arm_func_end send_client_key_exchange

	arm_func_start mustget_change_cipher_spec_and_finished
mustget_change_cipher_spec_and_finished: ; 0x020DA0AC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl parse_record
	cmp r0, #7
	movne r0, #1
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl parse_record
	cmp r0, #6
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end mustget_change_cipher_spec_and_finished

	arm_func_start ssl_connect_try
ssl_connect_try: ; 0x020DA0DC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xc]
	bl send_client_hello
_020DA0EC:
	mov r0, r5
	bl parse_record
	cmp r0, #9
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r0, #4
	beq _020DA114
	ldrb r0, [r4, #0x31]
	cmp r0, #0
	beq _020DA0EC
_020DA114:
	ldrb r0, [r4, #0x31]
	cmp r0, #0
	beq _020DA148
	mov r0, r4
	bl create_key_block
	mov r0, r5
	bl mustget_change_cipher_spec_and_finished
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl send_change_cipher_spec_and_finished
	b _020DA198
_020DA148:
	mov r0, r5
	bl send_client_key_exchange
	mov r0, r4
	bl create_master_secret
	ldrb r0, [r4, #0x30]
	cmp r0, #0
	beq _020DA174
	ldrh r2, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	mov r0, r4
	bl cache_session
_020DA174:
	mov r0, r4
	bl create_key_block
	mov r0, r5
	bl send_change_cipher_spec_and_finished
	mov r0, r5
	bl mustget_change_cipher_spec_and_finished
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
_020DA198:
	mov r0, #8
	strb r0, [r4, #0x455]
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end ssl_connect_try

	arm_func_start CPSi_SslConnect
CPSi_SslConnect: ; 0x020DA1A8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r1, [r5, #8]
	ldr r4, [r5, #0xc]
	cmp r1, #4
	beq _020DA1D0
	bl CPSi_TcpConnectRaw
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
_020DA1D0:
	mov r1, #0
	strb r1, [r4, #0x455]
	str r1, [r4, #0x1d4]
	add r0, r4, #0x2ec
	strb r1, [r4, #0x454]
	bl CPSi_sha1_init
	add r0, r4, #0x3a4
	bl CPSi_md5_init
	mov r0, r5
	bl ssl_connect_try
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end CPSi_SslConnect

	arm_func_start CPSi_SslRead
CPSi_SslRead: ; 0x020DA1FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r4, [r5, #0xc]
	mov r6, r0
	ldr r12, [r4, #0x824]
	cmp r12, #0
	beq _020DA280
	ldrb r0, [r4, #0x456]
	cmp r0, #0
	bne _020DA280
	ldr r3, [r4, #0x82c]
	ldr r1, [r4, #0x828]
	mov r2, r5
	add r0, r12, r3
	sub r1, r1, r3
	bl tcp_read_raw_nbytes
	cmp r0, #0
	beq _020DA264
	ldr r1, _020DA2D0 ; =CPSiFree
	ldr r0, [r4, #0x824]
	ldr r1, [r1]
	blx r1
	mov r0, #0
	str r0, [r4, #0x824]
	str r0, [r6]
	ldmfd sp!, {r4, r5, r6, pc}
_020DA264:
	ldr r1, [r4, #0x824]
	mov r0, r4
	bl parse_record_in_buf
	ldrb r0, [r4, #0x456]
	cmp r0, #0
	moveq r0, #0
	streq r0, [r4, #0x824]
_020DA280:
	ldr r0, [r4, #0x824]
	cmp r0, #0
	bne _020DA2B0
_020DA28C:
	mov r0, r5
	bl parse_record
	cmp r0, #9
	moveq r0, #0
	streq r0, [r6]
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x824]
	cmp r0, #0
	beq _020DA28C
_020DA2B0:
	ldr r1, [r4, #0x828]
	ldr r0, [r4, #0x82c]
	sub r0, r1, r0
	str r0, [r6]
	ldr r1, [r4, #0x824]
	ldr r0, [r4, #0x82c]
	add r0, r1, r0
	ldmfd sp!, {r4, r5, r6, pc}
_020DA2D0: .word CPSiFree
	arm_func_end CPSi_SslRead

	arm_func_start CPSi_SslConsume
CPSi_SslConsume: ; 0x020DA2D4
	stmfd sp!, {r4, lr}
	ldr r4, [r1, #0xc]
	ldr r2, [r4, #0x828]
	ldr r1, [r4, #0x82c]
	sub r2, r2, r1
	cmp r0, r2
	blo _020DA314
	ldr r0, [r4, #0x824]
	cmp r0, #0
	beq _020DA308
	ldr r1, _020DA320 ; =CPSiFree
	ldr r1, [r1]
	blx r1
_020DA308:
	mov r0, #0
	str r0, [r4, #0x824]
	ldmfd sp!, {r4, pc}
_020DA314:
	add r0, r1, r0
	str r0, [r4, #0x82c]
	ldmfd sp!, {r4, pc}
_020DA320: .word CPSiFree
	arm_func_end CPSi_SslConsume

	arm_func_start try_fill_record
try_fill_record: ; 0x020DA324
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r4, [r5, #0xc]
	ldr r0, [r4, #0x824]
	cmp r0, #0
	ldr r0, [r5, #0x50]
	bne _020DA3C4
	cmp r0, #5
	addlo sp, sp, #4
	ldmlofd sp!, {r3, r4, r5, r6, pc}
	add r0, sp, #0
	mov r1, r5
	bl CPSi_TcpReadRaw
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	ldr r1, _020DA460 ; =0x00004805
	add r0, r0, r2, lsl #8
	add r0, r0, #5
	str r0, [sp]
	cmp r0, r1
	movhi r0, #9
	addhi sp, sp, #4
	strhib r0, [r4, #0x455]
	ldmhifd sp!, {r3, r4, r5, r6, pc}
	ldr r1, _020DA464 ; =CPSiAlloc
	ldr r1, [r1]
	blx r1
	cmp r0, #0
	str r0, [r4, #0x824]
	moveq r0, #9
	addeq sp, sp, #4
	streqb r0, [r4, #0x455]
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r1, [sp]
	mov r0, #0
	str r1, [r4, #0x828]
	str r0, [r4, #0x82c]
	strb r0, [r4, #0x456]
	b _020DA3D0
_020DA3C4:
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
_020DA3D0:
	add r0, sp, #0
	mov r1, r5
	bl CPSi_TcpReadRaw
	ldr r3, [r4, #0x828]
	ldr r2, [r4, #0x82c]
	ldr r1, [sp]
	sub r2, r3, r2
	cmp r1, r2
	strhs r2, [sp]
	movhs r6, #1
	ldr r3, [r4, #0x824]
	ldr r1, [r4, #0x82c]
	ldr r2, [sp]
	add r1, r3, r1
	movlo r6, #0
	bl MI_CpuCopy8
	ldr r0, [sp]
	mov r1, r5
	bl CPSi_SocConsumeRaw
	cmp r6, #0
	beq _020DA448
	ldr r1, [r4, #0x824]
	mov r0, r4
	bl parse_record_in_buf
	ldrb r0, [r4, #0x456]
	add sp, sp, #4
	cmp r0, #0
	moveq r0, #0
	streq r0, [r4, #0x824]
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DA448:
	ldr r1, [r4, #0x82c]
	ldr r0, [sp]
	add r0, r1, r0
	str r0, [r4, #0x82c]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DA460: .word 0x00004805
_020DA464: .word CPSiAlloc
	arm_func_end try_fill_record

	arm_func_start CPSi_SslGetLength
CPSi_SslGetLength: ; 0x020DA468
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xc]
	ldr r0, [r4, #0x824]
	cmp r0, #0
	ldrneb r0, [r4, #0x456]
	cmpne r0, #0
	bne _020DA490
	mov r0, r5
	bl try_fill_record
_020DA490:
	ldr r1, [r4, #0x824]
	cmp r1, #0
	ldrneb r0, [r4, #0x456]
	cmpne r0, #0
	ldrne r1, [r4, #0x828]
	ldrne r0, [r4, #0x82c]
	subne r0, r1, r0
	ldmnefd sp!, {r3, r4, r5, pc}
	cmp r1, #0
	bne _020DA4D8
	ldrb r0, [r5, #8]
	cmp r0, #4
	bne _020DA4D0
	ldrb r0, [r4, #0x455]
	cmp r0, #9
	bne _020DA4D8
_020DA4D0:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020DA4D8:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end CPSi_SslGetLength

	arm_func_start CPSi_SslWrite2
CPSi_SslWrite2: ; 0x020DA4E0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r4, [sp, #0x30]
	mov r9, r1
	mov r1, r4
	ldr r1, [r1, #0xc]
	mov r10, r0
	mov r0, #0
	str r4, [sp, #0x30]
	str r1, [sp, #8]
	mov r8, r2
	add r5, r9, r3
	str r0, [sp, #4]
_020DA514:
	ldr r0, _020DA60C ; =0x00000B4F
	ldr r1, _020DA610 ; =CPSiAlloc
	mov r6, r0
	cmp r5, r0
	movle r6, r5
	ldr r1, [r1]
	add r0, r6, #0x19
	blx r1
	movs r4, r0
	beq _020DA600
	mov r7, r6
	cmp r9, r6
	movlo r7, r9
	mov r0, r10
	add r1, r4, #5
	mov r2, r7
	sub r11, r6, r7
	bl MI_CpuCopy8
	add r1, r4, #5
	mov r0, r8
	add r1, r1, r7
	mov r2, r11
	add r10, r10, r7
	sub r9, r9, r7
	bl MI_CpuCopy8
	mov r0, #0x17
	strb r0, [r4]
	mov r0, #3
	strb r0, [r4, #1]
	mov r0, #0
	strb r0, [r4, #2]
	mov r0, r6, asr #8
	strb r0, [r4, #3]
	ldr r0, [sp, #8]
	mov r1, r4
	add r8, r8, r11
	strb r6, [r4, #4]
	bl make_ciphertext
	ldr r1, [sp, #0x30]
	mov r7, r0
	mov r2, #0
	str r1, [sp]
	mov r0, r4
	mov r1, r7
	mov r3, r2
	bl CPSi_TcpWrite2Raw
	cmp r0, r7
	ldr r1, _020DA614 ; =CPSiFree
	mov r0, r4
	ldr r1, [r1]
	movlo r6, #0
	blx r1
	ldr r0, [sp, #4]
	subs r5, r5, r6
	add r0, r0, r6
	str r0, [sp, #4]
	beq _020DA600
	cmp r6, #0
	bne _020DA514
_020DA600:
	ldr r0, [sp, #4]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DA60C: .word 0x00000B4F
_020DA610: .word CPSiAlloc
_020DA614: .word CPSiFree
	arm_func_end CPSi_SslWrite2

	arm_func_start CPSi_SslShutdown
CPSi_SslShutdown: ; 0x020DA618
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	mov r5, r0
	ldr r4, [r5, #0xc]
	ldrb r0, [r4, #0x455]
	cmp r0, #8
	bne _020DA68C
	add r6, sp, #4
	mov r7, #0
	mov lr, #0x15
	mov r12, #3
	mov r3, #2
	mov r2, #1
	mov r0, r4
	mov r1, r6
	strb lr, [sp, #4]
	strb r12, [sp, #5]
	strb r7, [sp, #6]
	strb r7, [sp, #7]
	strb r3, [sp, #8]
	strb r2, [sp, #9]
	strb r7, [sp, #0xa]
	bl make_ciphertext
	mov r1, r0
	mov r0, r6
	mov r2, r7
	mov r3, r7
	str r5, [sp]
	bl CPSi_TcpWrite2Raw
_020DA68C:
	mov r0, #0
	strb r0, [r4, #0x455]
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end CPSi_SslShutdown

	arm_func_start CPSi_SslClose
CPSi_SslClose: ; 0x020DA69C
	stmfd sp!, {r4, lr}
	ldr r4, [r0, #0xc]
	mov r0, #0
	strb r0, [r4, #0x455]
	ldr r0, [r4, #0x824]
	cmp r0, #0
	beq _020DA6C4
	ldr r1, _020DA6D0 ; =CPSiFree
	ldr r1, [r1]
	blx r1
_020DA6C4:
	mov r0, #0
	str r0, [r4, #0x824]
	ldmfd sp!, {r4, pc}
_020DA6D0: .word CPSiFree
	arm_func_end CPSi_SslClose

	arm_func_start CPS_SetSsl
CPS_SetSsl: ; 0x020DA6D4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020DA6FC ; =_version_UBIQUITOUS_SSL
	bl OSi_ReferSymbol
	ldr r0, _020DA700 ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	ldr r0, [r0, #0xa4]
	cmp r0, #0
	strneb r4, [r0, #9]
	ldmfd sp!, {r4, pc}
_020DA6FC: .word _version_UBIQUITOUS_SSL
_020DA700: .word OSi_ThreadInfo
	arm_func_end CPS_SetSsl

	arm_func_start CPSi_SslPeriodical
CPSi_SslPeriodical: ; 0x020DA704
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	mov lr, #0
	ldr r6, _020DA7D8 ; =session
	ldr r1, _020DA7DC ; =0x000003BD
	mov r3, lr
	mov r2, #0x5c
_020DA724:
	mla r12, lr, r2, r6
	ldrb r4, [r12, #0x5a]
	add lr, lr, #1
	cmp r4, #0
	ldrne r4, [r12, #0x50]
	subne r4, r5, r4
	cmpne r4, r1
	strgtb r3, [r12, #0x5a]
	cmp lr, #4
	blt _020DA724
	bl OS_RestoreInterrupts
	ldr r0, _020DA7E0 ; =OSi_ThreadInfo
	ldr r4, [r0, #8]
	cmp r4, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r6, #0
_020DA764:
	ldr r1, [r4, #0xa4]
	cmp r1, #0
	ldrne r0, [r1]
	cmpne r0, #0
	ldrneb r0, [r1, #9]
	cmpne r0, #0
	beq _020DA7C8
	ldrb r0, [r1, #8]
	cmp r0, #4
	bne _020DA7C8
	ldr r0, [r1, #0xc]
	ldrb r0, [r0, #0x455]
	cmp r0, #8
	bhs _020DA7C8
	ldr r0, [r1, #0x10]
	sub r0, r5, r0
	cmp r0, #0xef
	ble _020DA7C8
	ldr r0, [r1, #4]
	cmp r0, #2
	bne _020DA7C8
	strb r6, [r1, #8]
	str r6, [r1, #4]
	ldr r0, [r1]
	bl OS_WakeupThreadDirect
_020DA7C8:
	ldr r4, [r4, #0x68]
	cmp r4, #0
	bne _020DA764
	ldmfd sp!, {r4, r5, r6, pc}
_020DA7D8: .word session
_020DA7DC: .word 0x000003BD
_020DA7E0: .word OSi_ThreadInfo
	arm_func_end CPSi_SslPeriodical

	arm_func_start CPSi_SslCleanup
CPSi_SslCleanup: ; 0x020DA7E4
	ldr r0, _020DA7F8 ; =session
	ldr r12, _020DA7FC ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x170
	bx r12
_020DA7F8: .word session
_020DA7FC: .word MI_CpuFill8
	arm_func_end CPSi_SslCleanup

	arm_func_start char_from_long_020da800
char_from_long_020da800: ; 0x020DA800
	mov r3, r0
	mov r0, r1
	ldr r12, _020DA814 ; =MI_CpuCopy8
	mov r1, r3
	bx r12
_020DA814: .word MI_CpuCopy8
	arm_func_end char_from_long_020da800

	arm_func_start long_from_char_020da818
long_from_char_020da818: ; 0x020DA818
	mov r3, r0
	mov r0, r1
	ldr r12, _020DA82C ; =MI_CpuCopy8
	mov r1, r3
	bx r12
_020DA82C: .word MI_CpuCopy8
	arm_func_end long_from_char_020da818

	arm_func_start CPSi_md5_block
CPSi_md5_block: ; 0x020DA830
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x44
	str r0, [sp]
	ldr r3, [sp]
	add r4, sp, #4
	mov r0, r4
	mov r2, #0x40
	ldmia r3, {r5, r6, r7}
	ldr r8, [r3, #0xc]
	bl long_from_char_020da818
	mov lr, #0
	ldr r11, _020DAC28 ; =0x020E5B3C
	mov r9, lr
_020DA864:
	ldr r0, _020DAC2C ; =0x020E5ABC
	eor r2, r7, r8
	ldrb r1, [r0, lr]
	and r2, r6, r2
	add r9, r9, #1
	ldr r1, [r4, r1, lsl #2]
	eor r2, r8, r2
	add r1, r2, r1
	ldr r3, [r11, lr, lsl #2]
	add r2, r11, lr, lsl #2
	add r1, r3, r1
	add r3, r5, r1
	add r0, r0, lr
	mov r1, r3, lsr #0x19
	orr r1, r1, r3, lsl #7
	ldrb r3, [r0, #1]
	add r5, r6, r1
	eor r10, r6, r7
	and r10, r5, r10
	ldr r3, [r4, r3, lsl #2]
	eor r10, r7, r10
	add r3, r10, r3
	ldr r1, [r2, #4]
	ldr r12, [r2, #8]
	add r1, r1, r3
	add r3, r8, r1
	mov r1, r3, lsr #0x14
	orr r1, r1, r3, lsl #12
	add r8, r5, r1
	ldr r1, [r2, #0xc]
	eor r2, r5, r6
	and r2, r8, r2
	eor r3, r6, r2
	ldrb r2, [r0, #2]
	ldrb r10, [r0, #3]
	eor r0, r8, r5
	ldr r2, [r4, r2, lsl #2]
	ldr r10, [r4, r10, lsl #2]
	add r2, r3, r2
	add r2, r12, r2
	add r3, r7, r2
	mov r2, r3, lsr #0xf
	orr r2, r2, r3, lsl #17
	add r7, r8, r2
	and r0, r7, r0
	eor r0, r5, r0
	add r0, r0, r10
	add r0, r1, r0
	add r1, r6, r0
	mov r0, r1, lsr #0xa
	orr r0, r0, r1, lsl #22
	add r6, r7, r0
	add lr, lr, #4
	cmp r9, #4
	blt _020DA864
	ldr r12, _020DAC2C ; =0x020E5ABC
	ldr r9, _020DAC28 ; =0x020E5B3C
	mov r11, #0
	add r4, sp, #4
_020DA950:
	ldrb r0, [r12, lr]
	add r10, r12, lr
	eor r1, r6, r7
	and r2, r8, r1
	ldr r1, [r4, r0, lsl #2]
	eor r2, r7, r2
	ldr r0, [r9, lr, lsl #2]
	add r1, r2, r1
	add r0, r0, r1
	add r1, r5, r0
	mov r0, r1, lsr #0x1b
	orr r0, r0, r1, lsl #5
	add r1, r9, lr, lsl #2
	ldrb r2, [r10, #1]
	add r5, r6, r0
	ldr r0, [r1, #4]
	ldr r2, [r4, r2, lsl #2]
	eor r3, r5, r6
	and r3, r7, r3
	eor r3, r6, r3
	add r2, r3, r2
	add r0, r0, r2
	add r2, r8, r0
	mov r0, r2, lsr #0x17
	orr r0, r0, r2, lsl #9
	add r8, r5, r0
	ldr r3, [r1, #8]
	ldr r0, [r1, #0xc]
	eor r1, r8, r5
	and r1, r6, r1
	eor r2, r5, r1
	ldrb r1, [r10, #2]
	ldrb r10, [r10, #3]
	add lr, lr, #4
	ldr r1, [r4, r1, lsl #2]
	ldr r10, [r4, r10, lsl #2]
	add r1, r2, r1
	add r1, r3, r1
	add r2, r7, r1
	mov r1, r2, lsr #0x12
	orr r1, r1, r2, lsl #14
	add r7, r8, r1
	eor r1, r7, r8
	and r1, r5, r1
	eor r1, r8, r1
	add r1, r1, r10
	add r0, r0, r1
	add r1, r6, r0
	mov r0, r1, lsr #0xc
	orr r0, r0, r1, lsl #20
	add r6, r7, r0
	add r11, r11, #1
	cmp r11, #4
	blt _020DA950
	ldr r12, _020DAC2C ; =0x020E5ABC
	ldr r9, _020DAC28 ; =0x020E5B3C
	mov r11, #0
	add r4, sp, #4
_020DAA38:
	ldrb r0, [r12, lr]
	add r10, r12, lr
	add r1, r9, lr, lsl #2
	eor r2, r6, r7
	eor r2, r8, r2
	ldr r0, [r4, r0, lsl #2]
	ldr r3, [r9, lr, lsl #2]
	add r0, r2, r0
	add r0, r3, r0
	add r2, r5, r0
	mov r0, r2, lsr #0x1c
	orr r0, r0, r2, lsl #4
	ldrb r2, [r10, #1]
	add r5, r6, r0
	ldr r0, [r1, #4]
	ldr r2, [r4, r2, lsl #2]
	eor r3, r5, r6
	eor r3, r7, r3
	add r2, r3, r2
	add r0, r0, r2
	add r2, r8, r0
	mov r0, r2, lsr #0x15
	orr r0, r0, r2, lsl #11
	add r8, r5, r0
	ldr r3, [r1, #8]
	ldr r0, [r1, #0xc]
	eor r1, r8, r5
	eor r2, r6, r1
	ldrb r1, [r10, #2]
	ldrb r10, [r10, #3]
	add lr, lr, #4
	ldr r1, [r4, r1, lsl #2]
	ldr r10, [r4, r10, lsl #2]
	add r1, r2, r1
	add r1, r3, r1
	add r2, r7, r1
	mov r1, r2, lsr #0x10
	orr r1, r1, r2, lsl #16
	add r7, r8, r1
	eor r1, r7, r8
	eor r1, r5, r1
	add r1, r1, r10
	add r0, r0, r1
	add r1, r6, r0
	mov r0, r1, lsr #9
	orr r0, r0, r1, lsl #23
	add r6, r7, r0
	add r11, r11, #1
	cmp r11, #4
	blt _020DAA38
	ldr r12, _020DAC28 ; =0x020E5B3C
	mov r10, #0
	add r9, sp, #4
_020DAB0C:
	ldr r0, _020DAC2C ; =0x020E5ABC
	mvn r2, r8
	ldrb r1, [r0, lr]
	orr r2, r6, r2
	add r0, r0, lr
	ldr r1, [r9, r1, lsl #2]
	eor r2, r7, r2
	add r1, r2, r1
	ldr r3, [r12, lr, lsl #2]
	add r2, r12, lr, lsl #2
	add r1, r3, r1
	add r3, r5, r1
	mov r1, r3, lsr #0x1a
	orr r1, r1, r3, lsl #6
	ldrb r3, [r0, #1]
	add r5, r6, r1
	mvn r4, r7
	orr r4, r5, r4
	ldr r3, [r9, r3, lsl #2]
	eor r4, r6, r4
	add r3, r4, r3
	ldr r1, [r2, #4]
	ldr r4, [r2, #8]
	add r1, r1, r3
	add r3, r8, r1
	mov r1, r3, lsr #0x16
	orr r1, r1, r3, lsl #10
	add r8, r5, r1
	ldr r1, [r2, #0xc]
	mvn r2, r6
	orr r2, r8, r2
	eor r3, r5, r2
	ldrb r2, [r0, #2]
	ldrb r11, [r0, #3]
	mvn r0, r5
	ldr r2, [r9, r2, lsl #2]
	ldr r11, [r9, r11, lsl #2]
	add r2, r3, r2
	add r2, r4, r2
	add r3, r7, r2
	mov r2, r3, lsr #0x11
	orr r2, r2, r3, lsl #15
	add r7, r8, r2
	orr r0, r7, r0
	eor r0, r8, r0
	add r0, r0, r11
	add r0, r1, r0
	add r1, r6, r0
	mov r0, r1, lsr #0xb
	orr r0, r0, r1, lsl #21
	add r10, r10, #1
	add r6, r7, r0
	add lr, lr, #4
	cmp r10, #4
	blt _020DAB0C
	ldr r0, [sp]
	ldr r3, [r0]
	ldr r2, [r0, #4]
	ldr r1, [r0, #8]
	add r4, r3, r5
	add r3, r2, r6
	ldr r0, [r0, #0xc]
	add r2, r1, r7
	add r1, r0, r8
	ldr r0, [sp]
	str r4, [r0]
	str r3, [r0, #4]
	str r2, [r0, #8]
	str r1, [r0, #0xc]
	add sp, sp, #0x44
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DAC28: .word ov15_020E5B3C
_020DAC2C: .word ov15_020E5ABC
	arm_func_end CPSi_md5_block

	arm_func_start CPSi_md5_init
CPSi_md5_init: ; 0x020DAC30
	stmfd sp!, {r4, lr}
	mov r1, #0
	mov r2, #0x58
	mov r4, r0
	bl MI_CpuFill8
	ldr r3, _020DAC68 ; =0x67452301
	ldr r2, _020DAC6C ; =0xEFCDAB89
	ldr r1, _020DAC70 ; =0x98BADCFE
	ldr r0, _020DAC74 ; =0x10325476
	str r3, [r4]
	str r2, [r4, #4]
	str r1, [r4, #8]
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_020DAC68: .word 0x67452301
_020DAC6C: .word 0xEFCDAB89
_020DAC70: .word 0x98BADCFE
_020DAC74: .word 0x10325476
	arm_func_end CPSi_md5_init

	arm_func_start CPSi_md5_calc
CPSi_md5_calc: ; 0x020DAC78
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r3, [r8, #0x10]
	mov r6, r2
	add r0, r3, r6, lsl #3
	str r0, [r8, #0x10]
	cmp r0, r6, lsl #3
	ldrlo r0, [r8, #0x14]
	mov r2, r3, lsr #3
	addlo r0, r0, #1
	strlo r0, [r8, #0x14]
	ldr r0, [r8, #0x14]
	and r4, r2, #0x3f
	rsb r5, r4, #0x40
	add r0, r0, r6, lsr #29
	mov r7, r1
	str r0, [r8, #0x14]
	cmp r6, r5
	blo _020DAD14
	add r1, r8, #0x18
	mov r0, r7
	mov r2, r5
	add r1, r1, r4
	bl MI_CpuCopy8
	mov r0, r8
	add r1, r8, #0x18
	mov r4, #0
	bl CPSi_md5_block
	add r0, r5, #0x3f
	cmp r0, r6
	bhs _020DAD18
_020DACF4:
	mov r0, r8
	add r1, r7, r5
	bl CPSi_md5_block
	add r5, r5, #0x40
	add r0, r5, #0x3f
	cmp r0, r6
	blo _020DACF4
	b _020DAD18
_020DAD14:
	mov r5, #0
_020DAD18:
	add r1, r8, #0x18
	add r0, r7, r5
	add r1, r1, r4
	sub r2, r6, r5
	bl MI_CpuCopy8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end CPSi_md5_calc

	arm_func_start CPSi_md5_result
CPSi_md5_result: ; 0x020DAD30
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, r4
	add r1, r5, #0x10
	mov r2, #8
	bl char_from_long_020da800
	ldr r0, [r5, #0x10]
	ldr r1, _020DAD94 ; =0x020E5AFC
	mov r0, r0, lsr #3
	and r0, r0, #0x3f
	rsb r2, r0, #0x38
	cmp r0, #0x38
	rsbge r2, r0, #0x78
	mov r0, r5
	bl CPSi_md5_calc
	mov r0, r5
	mov r1, r4
	mov r2, #8
	bl CPSi_md5_calc
	mov r0, r4
	mov r1, r5
	mov r2, #0x10
	bl char_from_long_020da800
	ldmfd sp!, {r3, r4, r5, pc}
_020DAD94: .word ov15_020E5AFC
	arm_func_end CPSi_md5_result

	arm_func_start sha1_R
sha1_R: ; 0x020DAD98
	add r2, r0, #0xd
	add r12, r0, #2
	and r3, r2, #0xf
	eor r2, r0, #8
	and r12, r12, #0xf
	ldr r3, [r1, r3, lsl #2]
	ldr r2, [r1, r2, lsl #2]
	ldr r12, [r1, r12, lsl #2]
	eor r2, r3, r2
	ldr r3, [r1, r0, lsl #2]
	eor r2, r12, r2
	eor r3, r3, r2
	mov r2, r3, lsr #0x1f
	orr r2, r2, r3, lsl #1
	str r2, [r1, r0, lsl #2]
	mov r0, r2
	bx lr
	arm_func_end sha1_R

	arm_func_start char_from_long
char_from_long: ; 0x020DADDC
	stmfd sp!, {r3, lr}
	movs r2, r2, lsr #2
	mov lr, #0
	ldmeqfd sp!, {r3, pc}
_020DADEC:
	ldr r12, [r1], #4
	add lr, lr, #1
	mov r3, r12, lsr #0x18
	strb r3, [r0]
	mov r3, r12, lsr #0x10
	strb r3, [r0, #1]
	mov r3, r12, lsr #8
	strb r3, [r0, #2]
	strb r12, [r0, #3]
	cmp lr, r2
	add r0, r0, #4
	blo _020DADEC
	ldmfd sp!, {r3, pc}
	arm_func_end char_from_long

	arm_func_start long_from_char
long_from_char: ; 0x020DAE20
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	cmp r2, #0
	ldmlsfd sp!, {r3, r4, r5, pc}
_020DAE30:
	add r4, r1, r5
	ldrb r3, [r4, #1]
	ldrb r12, [r1, r5]
	ldrb lr, [r4, #2]
	mov r3, r3, lsl #0x10
	orr r3, r3, r12, lsl #24
	ldrb r12, [r4, #3]
	orr r3, r3, lr, lsl #8
	add r5, r5, #4
	orr r3, r12, r3
	cmp r5, r2
	str r3, [r0], #4
	blo _020DAE30
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end long_from_char

	arm_func_start CPSi_sha1_block
CPSi_sha1_block: ; 0x020DAE68
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x50
	str r0, [sp]
	ldr r3, [sp]
	add r7, sp, #0x10
	mov r0, r7
	mov r2, #0x40
	ldmia r3, {r5, r6, r10}
	ldr r8, [r3, #0xc]
	ldr r9, [r3, #0x10]
	bl long_from_char
	mov r0, #0
	ldr r2, _020DB4CC ; =0x5A827999
	mov r1, r0
_020DAEA0:
	eor r3, r10, r8
	mov r4, r5, lsr #0x1b
	and r3, r6, r3
	orr r4, r4, r5, lsl #5
	eor r3, r8, r3
	mov r11, r6, lsr #2
	orr r11, r11, r6, lsl #30
	add r6, r7, r0, lsl #2
	add r3, r4, r3
	ldr r12, [r7, r0, lsl #2]
	ldr r4, [r6, #4]
	add r3, r12, r3
	add r3, r3, r2
	add r9, r9, r3
	mov r3, r9, lsr #0x1b
	orr r3, r3, r9, lsl #5
	eor r12, r11, r10
	and r12, r5, r12
	eor r12, r10, r12
	add r3, r3, r12
	add r3, r4, r3
	add r3, r3, r2
	add r8, r8, r3
	mov r3, r5, lsr #2
	orr r4, r3, r5, lsl #30
	ldr r5, [r6, #8]
	mov r3, r8, lsr #0x1b
	orr r3, r3, r8, lsl #5
	eor r12, r4, r11
	and r12, r9, r12
	eor r12, r11, r12
	add r3, r3, r12
	add r3, r5, r3
	add r3, r3, r2
	add r3, r10, r3
	mov r5, r9, lsr #2
	orr r9, r5, r9, lsl #30
	ldr r12, [r6, #0xc]
	ldr r10, [r6, #0x10]
	mov r5, r3, lsr #0x1b
	orr r5, r5, r3, lsl #5
	eor r6, r9, r4
	and r6, r8, r6
	eor r6, r4, r6
	add r5, r5, r6
	add r5, r12, r5
	add r5, r5, r2
	add r6, r11, r5
	mov r5, r8, lsr #2
	orr r8, r5, r8, lsl #30
	mov r5, r6, lsr #0x1b
	orr r5, r5, r6, lsl #5
	eor r11, r8, r9
	and r11, r3, r11
	eor r11, r9, r11
	add r5, r5, r11
	add r5, r10, r5
	add r5, r5, r2
	add r5, r4, r5
	mov r4, r3, lsr #2
	orr r10, r4, r3, lsl #30
	add r0, r0, #5
	add r1, r1, #1
	cmp r1, #3
	blt _020DAEA0
	eor r0, r10, r8
	mov r1, r5, lsr #0x1b
	and r0, r6, r0
	orr r3, r1, r5, lsl #5
	eor r1, r8, r0
	mov r0, #0
	str r0, [sp, #4]
	add r0, r3, r1
	ldr r11, [sp, #0x4c]
	mov r2, r6, lsr #2
	ldr r4, _020DB4CC ; =0x5A827999
	add r0, r11, r0
	add r3, r0, r4
	ldr r0, [sp, #4]
	mov r1, r7
	orr r6, r2, r6, lsl #30
	add r9, r9, r3
	bl sha1_R
	eor r1, r6, r10
	mov r2, r9, lsr #0x1b
	and r1, r5, r1
	orr r2, r2, r9, lsl #5
	eor r1, r10, r1
	add r1, r2, r1
	add r1, r1, r0
	mov r0, r5, lsr #2
	orr r5, r0, r5, lsl #30
	add r0, r1, r4
	add r8, r8, r0
	mov r1, r7
	mov r0, #1
	bl sha1_R
	mov r1, r8, lsr #0x1b
	orr r2, r1, r8, lsl #5
	eor r1, r5, r6
	and r1, r9, r1
	eor r1, r6, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r10, r10, r0
	mov r0, r9, lsr #2
	orr r9, r0, r9, lsl #30
	mov r0, #2
	mov r1, r7
	bl sha1_R
	mov r2, r10, lsr #0x1b
	orr r3, r2, r10, lsl #5
	eor r2, r9, r5
	and r2, r8, r2
	eor r2, r5, r2
	add r2, r3, r2
	add r0, r2, r0
	add r0, r0, r4
	add r6, r6, r0
	mov r0, r8, lsr #2
	orr r8, r0, r8, lsl #30
	mov r1, r7
	mov r0, #3
	bl sha1_R
	mov r1, r6, lsr #0x1b
	orr r2, r1, r6, lsl #5
	eor r1, r8, r9
	and r1, r10, r1
	eor r1, r9, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r5, r5, r0
	mov r0, r10, lsr #2
	orr r7, r0, r10, lsl #30
	ldr r4, _020DB4D0 ; =0x6ED9EBA1
	mov r10, #4
	add r11, sp, #0x10
_020DB0CC:
	mov r0, r10
	mov r1, r11
	bl sha1_R
	mov r2, r5, lsr #0x1b
	eor r1, r6, r7
	orr r2, r2, r5, lsl #5
	eor r1, r8, r1
	add r1, r2, r1
	add r0, r1, r0
	add r1, r0, r4
	mov r0, r6, lsr #2
	add r9, r9, r1
	orr r6, r0, r6, lsl #30
	add r0, r10, #1
	mov r1, r11
	bl sha1_R
	mov r1, r9, lsr #0x1b
	orr r2, r1, r9, lsl #5
	eor r1, r5, r6
	eor r1, r7, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r8, r8, r0
	mov r0, r5, lsr #2
	orr r5, r0, r5, lsl #30
	add r0, r10, #2
	and r10, r0, #0xf
	mov r0, r10
	mov r1, r11
	bl sha1_R
	mov r1, r8, lsr #0x1b
	orr r2, r1, r8, lsl #5
	eor r1, r9, r5
	eor r1, r6, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r7, r7, r0
	mov r0, r9, lsr #2
	orr r9, r0, r9, lsl #30
	add r0, r10, #1
	mov r1, r11
	bl sha1_R
	mov r1, r7, lsr #0x1b
	orr r2, r1, r7, lsl #5
	eor r1, r8, r9
	eor r1, r5, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r6, r6, r0
	mov r0, r8, lsr #2
	orr r8, r0, r8, lsl #30
	add r0, r10, #2
	mov r1, r11
	bl sha1_R
	mov r1, r6, lsr #0x1b
	orr r2, r1, r6, lsl #5
	eor r1, r7, r8
	eor r1, r9, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r5, r5, r0
	mov r0, r7, lsr #2
	orr r7, r0, r7, lsl #30
	ldr r0, [sp, #4]
	add r10, r10, #3
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _020DB0CC
	mov r0, #0
	ldr r4, _020DB4D4 ; =0x8F1BBCDC
	str r0, [sp, #8]
	add r11, sp, #0x10
_020DB200:
	mov r0, r10
	mov r1, r11
	bl sha1_R
	orr r2, r7, r8
	mov r1, r5, lsr #0x1b
	and r3, r6, r2
	and r2, r7, r8
	orr r1, r1, r5, lsl #5
	orr r2, r3, r2
	add r1, r1, r2
	add r1, r1, r0
	mov r0, r6, lsr #2
	add r1, r1, r4
	add r9, r9, r1
	orr r6, r0, r6, lsl #30
	add r0, r10, #1
	mov r1, r11
	bl sha1_R
	orr r2, r6, r7
	mov r1, r9, lsr #0x1b
	and r3, r5, r2
	and r2, r6, r7
	orr r1, r1, r9, lsl #5
	orr r2, r3, r2
	add r1, r1, r2
	add r0, r1, r0
	add r0, r0, r4
	add r8, r8, r0
	mov r0, r5, lsr #2
	orr r5, r0, r5, lsl #30
	add r0, r10, #2
	mov r1, r11
	bl sha1_R
	orr r2, r5, r6
	mov r1, r8, lsr #0x1b
	and r3, r9, r2
	and r2, r5, r6
	orr r1, r1, r8, lsl #5
	orr r2, r3, r2
	add r1, r1, r2
	add r0, r1, r0
	add r0, r0, r4
	add r7, r7, r0
	mov r0, r9, lsr #2
	orr r9, r0, r9, lsl #30
	add r0, r10, #3
	and r10, r0, #0xf
	mov r0, r10
	mov r1, r11
	bl sha1_R
	orr r2, r9, r5
	mov r1, r7, lsr #0x1b
	and r3, r8, r2
	and r2, r9, r5
	orr r1, r1, r7, lsl #5
	orr r2, r3, r2
	add r1, r1, r2
	add r0, r1, r0
	add r0, r0, r4
	add r6, r6, r0
	mov r0, r8, lsr #2
	orr r8, r0, r8, lsl #30
	add r0, r10, #1
	mov r1, r11
	bl sha1_R
	orr r2, r8, r9
	mov r1, r6, lsr #0x1b
	and r3, r7, r2
	and r2, r8, r9
	orr r1, r1, r6, lsl #5
	orr r2, r3, r2
	add r1, r1, r2
	add r0, r1, r0
	add r0, r0, r4
	add r5, r5, r0
	mov r0, r7, lsr #2
	orr r7, r0, r7, lsl #30
	ldr r0, [sp, #8]
	add r10, r10, #2
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _020DB200
	mov r0, #0
	ldr r4, _020DB4D8 ; =0xCA62C1D6
	str r0, [sp, #0xc]
	add r11, sp, #0x10
_020DB35C:
	mov r0, r10
	mov r1, r11
	bl sha1_R
	mov r2, r5, lsr #0x1b
	eor r1, r6, r7
	orr r2, r2, r5, lsl #5
	eor r1, r8, r1
	add r1, r2, r1
	add r0, r1, r0
	add r1, r0, r4
	mov r0, r6, lsr #2
	add r9, r9, r1
	orr r6, r0, r6, lsl #30
	add r0, r10, #1
	mov r1, r11
	bl sha1_R
	mov r1, r9, lsr #0x1b
	orr r2, r1, r9, lsl #5
	eor r1, r5, r6
	eor r1, r7, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r8, r8, r0
	mov r0, r5, lsr #2
	orr r5, r0, r5, lsl #30
	add r0, r10, #2
	mov r1, r11
	bl sha1_R
	mov r1, r8, lsr #0x1b
	orr r2, r1, r8, lsl #5
	eor r1, r9, r5
	eor r1, r6, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r7, r7, r0
	mov r0, r9, lsr #2
	orr r9, r0, r9, lsl #30
	add r0, r10, #3
	mov r1, r11
	bl sha1_R
	mov r1, r7, lsr #0x1b
	orr r2, r1, r7, lsl #5
	eor r1, r8, r9
	eor r1, r5, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r6, r6, r0
	mov r0, r8, lsr #2
	orr r8, r0, r8, lsl #30
	add r0, r10, #4
	and r10, r0, #0xf
	mov r0, r10
	mov r1, r11
	bl sha1_R
	mov r1, r6, lsr #0x1b
	orr r2, r1, r6, lsl #5
	eor r1, r7, r8
	eor r1, r9, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r5, r5, r0
	mov r0, r7, lsr #2
	orr r7, r0, r7, lsl #30
	ldr r0, [sp, #0xc]
	add r10, r10, #1
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #4
	blt _020DB35C
	ldr r0, [sp]
	ldr r2, [sp]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	ldr r4, [r2, #8]
	ldr r3, [r2, #0xc]
	ldr r2, [r2, #0x10]
	add r1, r1, r5
	add r5, r0, r6
	ldr r0, [sp]
	add r4, r4, r7
	stmia r0, {r1, r5}
	add r3, r3, r8
	add r2, r2, r9
	str r4, [r0, #8]
	str r3, [r0, #0xc]
	str r2, [r0, #0x10]
	add sp, sp, #0x50
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DB4CC: .word 0x5A827999
_020DB4D0: .word 0x6ED9EBA1
_020DB4D4: .word 0x8F1BBCDC
_020DB4D8: .word 0xCA62C1D6
	arm_func_end CPSi_sha1_block

	arm_func_start CPSi_sha1_init
CPSi_sha1_init: ; 0x020DB4DC
	stmfd sp!, {r4, lr}
	mov r1, #0
	mov r2, #0x5c
	mov r4, r0
	bl MI_CpuFill8
	ldr r12, _020DB51C ; =0x67452301
	ldr r3, _020DB520 ; =0xEFCDAB89
	ldr r2, _020DB524 ; =0x98BADCFE
	ldr r1, _020DB528 ; =0x10325476
	ldr r0, _020DB52C ; =0xC3D2E1F0
	str r12, [r4]
	str r3, [r4, #4]
	str r2, [r4, #8]
	str r1, [r4, #0xc]
	str r0, [r4, #0x10]
	ldmfd sp!, {r4, pc}
_020DB51C: .word 0x67452301
_020DB520: .word 0xEFCDAB89
_020DB524: .word 0x98BADCFE
_020DB528: .word 0x10325476
_020DB52C: .word 0xC3D2E1F0
	arm_func_end CPSi_sha1_init

	arm_func_start CPSi_sha1_calc
CPSi_sha1_calc: ; 0x020DB530
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r3, [r8, #0x18]
	mov r6, r2
	add r0, r3, r6, lsl #3
	str r0, [r8, #0x18]
	cmp r0, r6, lsl #3
	ldrlo r0, [r8, #0x14]
	mov r2, r3, lsr #3
	addlo r0, r0, #1
	strlo r0, [r8, #0x14]
	ldr r0, [r8, #0x14]
	and r4, r2, #0x3f
	rsb r5, r4, #0x40
	add r0, r0, r6, lsr #29
	mov r7, r1
	str r0, [r8, #0x14]
	cmp r6, r5
	blo _020DB5CC
	add r1, r8, #0x1c
	mov r0, r7
	mov r2, r5
	add r1, r1, r4
	bl MI_CpuCopy8
	mov r0, r8
	add r1, r8, #0x1c
	mov r4, #0
	bl CPSi_sha1_block
	add r0, r5, #0x3f
	cmp r0, r6
	bhs _020DB5D0
_020DB5AC:
	mov r0, r8
	add r1, r7, r5
	bl CPSi_sha1_block
	add r5, r5, #0x40
	add r0, r5, #0x3f
	cmp r0, r6
	blo _020DB5AC
	b _020DB5D0
_020DB5CC:
	mov r5, #0
_020DB5D0:
	add r1, r8, #0x1c
	add r0, r7, r5
	add r1, r1, r4
	sub r2, r6, r5
	bl MI_CpuCopy8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end CPSi_sha1_calc

	arm_func_start CPSi_sha1_result
CPSi_sha1_result: ; 0x020DB5E8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, r4
	add r1, r5, #0x14
	mov r2, #8
	bl char_from_long
	ldr r0, [r5, #0x18]
	ldr r1, _020DB64C ; =0x020E5C3C
	mov r0, r0, lsr #3
	and r0, r0, #0x3f
	rsb r2, r0, #0x38
	cmp r0, #0x38
	rsbge r2, r0, #0x78
	mov r0, r5
	bl CPSi_sha1_calc
	mov r0, r5
	mov r1, r4
	mov r2, #8
	bl CPSi_sha1_calc
	mov r0, r4
	mov r1, r5
	mov r2, #0x14
	bl char_from_long
	ldmfd sp!, {r3, r4, r5, pc}
_020DB64C: .word ov15_020E5C3C
	arm_func_end CPSi_sha1_result

	arm_func_start CPSi_sha1_result_prng
CPSi_sha1_result_prng: ; 0x020DB650
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r1, _020DB67C ; =0x020E5C3D
	mov r5, r0
	mov r2, #0x2c
	bl CPSi_sha1_calc
	mov r0, r4
	mov r1, r5
	mov r2, #0x14
	bl char_from_long
	ldmfd sp!, {r3, r4, r5, pc}
_020DB67C: .word ov15_020E5C3D
	arm_func_end CPSi_sha1_result_prng

	arm_func_start CPSi_rc4_init
CPSi_rc4_init: ; 0x020DB680
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r3, #0
	strb r3, [r0]
	strb r3, [r0, #1]
	add r4, r0, #2
_020DB694:
	strb r3, [r4, r3]
	add r3, r3, #1
	cmp r3, #0x100
	blt _020DB694
	mov r6, #0
	mov r5, r6
	mov r7, r6
	mov r0, r6
_020DB6B4:
	ldrb lr, [r4, r7]
	ldrb r12, [r1, r6]
	add r3, r6, #1
	and r6, r3, #0xff
	add r3, lr, r12
	and r3, r3, #0xff
	add r3, r5, r3
	and r5, r3, #0xff
	ldrb r3, [r4, r5]
	cmp r6, r2
	movge r6, r0
	strb r3, [r4, r7]
	add r7, r7, #1
	strb lr, [r4, r5]
	cmp r7, #0x100
	blt _020DB6B4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end CPSi_rc4_init

	arm_func_start CPSi_rc4_crypt
CPSi_rc4_crypt: ; 0x020DB6F8
	stmfd sp!, {r4, r5, r6, lr}
	cmp r2, #0
	add r4, r0, #2
	ldrb r12, [r0]
	ldrb lr, [r0, #1]
	mov r3, #0
	ble _020DB758
_020DB714:
	add r5, r12, #1
	and r12, r5, #0xff
	ldrb r6, [r4, r12]
	add r5, lr, r6
	and lr, r5, #0xff
	ldrb r5, [r4, lr]
	strb r5, [r4, r12]
	add r5, r6, r5
	strb r6, [r4, lr]
	and r5, r5, #0xff
	ldrb r6, [r1, r3]
	ldrb r5, [r4, r5]
	eor r5, r6, r5
	strb r5, [r1, r3]
	add r3, r3, #1
	cmp r3, r2
	blt _020DB714
_020DB758:
	strb r12, [r0]
	strb lr, [r0, #1]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end CPSi_rc4_crypt

	arm_func_start count_digits
count_digits: ; 0x020DB764
	b _020DB76C
_020DB768:
	sub r1, r1, #1
_020DB76C:
	cmp r1, #0
	beq _020DB784
	add r2, r0, r1, lsl #1
	ldrh r2, [r2, #-2]
	cmp r2, #0
	beq _020DB768
_020DB784:
	mov r0, r1
	bx lr
	arm_func_end count_digits

	arm_func_start CPSi_big_sign
CPSi_big_sign: ; 0x020DB78C
	stmfd sp!, {r3, lr}
	sub r2, r1, #1
	mov r2, r2, lsl #1
	ldrh r2, [r0, r2]
	tst r2, #0x8000
	mvnne r0, #0
	ldmnefd sp!, {r3, pc}
	bl count_digits
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end CPSi_big_sign

	arm_func_start CPSi_big_add
CPSi_big_add: ; 0x020DB7BC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r5, r3
	mov r8, r0
	mov r6, r2
	mov r0, r7
	mov r1, r5
	bl count_digits
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl count_digits
	cmp r4, r0
	movlt r4, r0
	cmp r4, r5
	addne r4, r4, #1
	mov r12, #0
	mov r3, r12
	cmp r4, #0
	ble _020DB834
_020DB80C:
	mov r2, r3, lsl #1
	ldrh r1, [r7, r2]
	ldrh r0, [r6, r2]
	add r3, r3, #1
	cmp r3, r4
	add r0, r1, r0
	add r0, r12, r0
	strh r0, [r8, r2]
	mov r12, r0, lsr #0x10
	blt _020DB80C
_020DB834:
	cmp r8, r7
	cmpne r8, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	sub r1, r5, r3
	add r0, r8, r3, lsl #1
	mov r2, r1, lsl #1
	mov r1, #0
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end CPSi_big_add

	arm_func_start CPSi_big_add_small
CPSi_big_add_small: ; 0x020DB858
	stmfd sp!, {r4, lr}
	cmp r3, #0
	mov r4, #0
	ble _020DB88C
_020DB868:
	mov lr, r4, lsl #1
	ldrh r12, [r1, lr]
	add r2, r2, r12
	strh r2, [r0, lr]
	movs r2, r2, lsr #0x10
	beq _020DB88C
	add r4, r4, #1
	cmp r4, r3
	blt _020DB868
_020DB88C:
	cmp r0, r1
	addne r4, r4, #1
	cmpne r4, r3
	ldmgefd sp!, {r4, pc}
_020DB89C:
	mov r12, r4, lsl #1
	ldrh r2, [r1, r12]
	add r4, r4, #1
	cmp r4, r3
	strh r2, [r0, r12]
	blt _020DB89C
	ldmfd sp!, {r4, pc}
	arm_func_end CPSi_big_add_small

	arm_func_start CPSi_big_negate
CPSi_big_negate: ; 0x020DB8B8
	stmfd sp!, {r3, lr}
	mov r3, r1
	cmp r3, #0
	mov r12, #0
	ble _020DB8E8
_020DB8CC:
	mov r2, r12, lsl #1
	ldrh r1, [r0, r2]
	add r12, r12, #1
	cmp r12, r3
	mvn r1, r1
	strh r1, [r0, r2]
	blt _020DB8CC
_020DB8E8:
	mov r1, r0
	mov r2, #1
	bl CPSi_big_add_small
	ldmfd sp!, {r3, pc}
	arm_func_end CPSi_big_negate

	arm_func_start CPSi_big_sub
CPSi_big_sub: ; 0x020DB8F8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r5, r3
	mov r8, r0
	mov r6, r2
	mov r0, r7
	mov r1, r5
	bl count_digits
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl count_digits
	cmp r4, r0
	movlt r4, r0
	mov r12, #0
	cmp r4, r5
	addne r4, r4, #1
	mov r3, r12
	b _020DB964
_020DB944:
	mov r2, r3, lsl #1
	ldrh r1, [r7, r2]
	ldrh r0, [r6, r2]
	add r3, r3, #1
	sub r0, r1, r0
	add r0, r12, r0
	strh r0, [r8, r2]
	mov r12, r0, asr #0x10
_020DB964:
	cmp r3, r4
	blt _020DB944
	cmp r3, r5
	bge _020DB97C
	cmp r12, #0
	bne _020DB944
_020DB97C:
	cmp r8, r7
	cmpne r8, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	sub r1, r5, r3
	add r0, r8, r3, lsl #1
	mov r2, r1, lsl #1
	mov r1, #0
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end CPSi_big_sub

	arm_func_start CPSi_big_sub_small
CPSi_big_sub_small: ; 0x020DB9A0
	stmfd sp!, {r4, lr}
	cmp r3, #0
	mov r4, #0
	ble _020DB9D8
_020DB9B0:
	mov lr, r4, lsl #1
	ldrh r12, [r1, lr]
	sub r12, r12, r2
	mov r2, r12, lsr #0x10
	strh r12, [r0, lr]
	ands r2, r2, #1
	beq _020DB9D8
	add r4, r4, #1
	cmp r4, r3
	blt _020DB9B0
_020DB9D8:
	cmp r0, r1
	addne r4, r4, #1
	cmpne r4, r3
	ldmgefd sp!, {r4, pc}
_020DB9E8:
	mov r12, r4, lsl #1
	ldrh r2, [r1, r12]
	add r4, r4, #1
	cmp r4, r3
	strh r2, [r0, r12]
	blt _020DB9E8
	ldmfd sp!, {r4, pc}
	arm_func_end CPSi_big_sub_small

	arm_func_start CPSi_big_compare
CPSi_big_compare: ; 0x020DBA04
	subs r12, r2, #1
	bmi _020DBA34
_020DBA0C:
	mov r2, r12, lsl #1
	ldrh r3, [r1, r2]
	ldrh r2, [r0, r2]
	cmp r2, r3
	movhi r0, #1
	bxhi lr
	mvnlo r0, #0
	bxlo lr
	subs r12, r12, #1
	bpl _020DBA0C
_020DBA34:
	mov r0, #0
	bx lr
	arm_func_end CPSi_big_compare

	arm_func_start CPSi_big_add_part
CPSi_big_add_part: ; 0x020DBA3C
	stmfd sp!, {r3, lr}
	b _020DBA5C
_020DBA44:
	mov lr, r2, lsl #1
	ldrh r12, [r0, lr]
	add r2, r2, #1
	add r1, r1, r12
	strh r1, [r0, lr]
	mov r1, r1, lsr #0x10
_020DBA5C:
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	cmp r2, r3
	blt _020DBA44
	ldmfd sp!, {r3, pc}
	arm_func_end CPSi_big_add_part

	arm_func_start CPSi_big_mult
CPSi_big_mult: ; 0x020DBA70
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r8, r3
	mov r9, r2
	mov r5, #0
	mov r10, r1
	mov r1, r5
	mov r2, r8, lsl #1
	str r0, [sp]
	bl MI_CpuFill8
	mov r0, r10
	mov r1, r8
	bl count_digits
	mov r11, r0
	mov r0, r9
	mov r1, r8
	bl count_digits
	str r0, [sp, #4]
	cmp r0, #0
	addle sp, sp, #8
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DBAC4:
	mov r6, #0
	sub r7, r8, r5
	mov r4, r5, lsl #1
	b _020DBAF8
_020DBAD4:
	mov r0, r6, lsl #1
	ldrh r3, [r10, r0]
	ldrh r1, [r9, r4]
	ldr r0, [sp]
	add r2, r5, r6
	mul r1, r3, r1
	mov r3, r8
	bl CPSi_big_add_part
	add r6, r6, #1
_020DBAF8:
	cmp r6, r11
	bge _020DBB08
	cmp r6, r7
	blt _020DBAD4
_020DBB08:
	ldr r0, [sp, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _020DBAC4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end CPSi_big_mult

	arm_func_start CPSi_big_mult_small
CPSi_big_mult_small: ; 0x020DBB20
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r4, r3
	mov r7, r0
	mov r0, r6
	mov r1, r4
	mov r5, r2
	bl count_digits
	mov r3, #0
	mov r12, r3
	cmp r0, #0
	ble _020DBB70
_020DBB50:
	mov r2, r12, lsl #1
	ldrh r1, [r6, r2]
	add r12, r12, #1
	cmp r12, r0
	mla r1, r5, r1, r3
	strh r1, [r7, r2]
	mov r3, r1, lsr #0x10
	blt _020DBB50
_020DBB70:
	cmp r12, r4
	movlt r0, r12, lsl #1
	addlt r12, r12, #1
	sub r1, r4, r12
	strlth r3, [r7, r0]
	mov r2, r1, lsl #1
	add r0, r7, r12, lsl #1
	mov r1, #0
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end CPSi_big_mult_small

	arm_func_start CPSi_big_sqr
CPSi_big_sqr: ; 0x020DBB98
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r1
	mov r8, r2
	mov r10, r0
	mov r0, r9
	mov r1, r8
	bl count_digits
	mov r11, r0
	cmp r8, r11, lsl #1
	mov r0, r11, lsl #1
	ble _020DBBD8
	sub r1, r8, r0
	add r0, r10, r0, lsl #1
	mov r2, r1, lsl #1
	mov r1, #0
	bl MI_CpuFill8
_020DBBD8:
	cmp r11, #0
	mov r4, #0
	ble _020DBC24
	sub r2, r8, #1
_020DBBE8:
	cmp r8, r4, lsl #1
	mov r1, r4, lsl #1
	ble _020DBC24
	ldrh r3, [r9, r1]
	mov r0, r1, lsl #1
	cmp r1, r2
	mul r1, r3, r3
	strh r1, [r10, r0]
	beq _020DBC24
	add r4, r4, #1
	mov r1, r1, lsr #0x10
	add r0, r10, r0
	strh r1, [r0, #2]
	cmp r4, r11
	blt _020DBBE8
_020DBC24:
	mov r5, #0
	cmp r11, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DBC30:
	mov r0, r5, lsl #1
	add r6, r5, #1
	str r0, [sp]
	b _020DBC9C
_020DBC40:
	mov r0, r6, lsl #1
	ldrh r1, [r9, r0]
	ldr r0, [sp]
	ldrh r0, [r9, r0]
	mul r7, r1, r0
	ldr r0, _020DBCC0 ; =0x7FFF8000
	cmp r7, r0
	mov r0, r10
	bhi _020DBC74
	mov r2, r4
	mov r3, r8
	mov r1, r7, lsl #1
	b _020DBC94
_020DBC74:
	mov r1, r7
	mov r2, r4
	mov r3, r8
	bl CPSi_big_add_part
	mov r1, r7
	mov r2, r4
	mov r0, r10
	mov r3, r8
_020DBC94:
	bl CPSi_big_add_part
	add r6, r6, #1
_020DBC9C:
	cmp r6, r11
	bge _020DBCB0
	add r4, r5, r6
	cmp r4, r8
	blt _020DBC40
_020DBCB0:
	add r5, r5, #1
	cmp r5, r11
	blt _020DBC30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DBCC0: .word 0x7FFF8000
	arm_func_end CPSi_big_sqr

	arm_func_start get48bits_1
get48bits_1: ; 0x020DBCC4
	ldrh r1, [r0]
	mov r0, #0
	bx lr
	arm_func_end get48bits_1

	arm_func_start get48bits_2
get48bits_2: ; 0x020DBCD0
	ldrh r1, [r0]
	ldrh r0, [r0, #-2]
	mov r0, r0, lsl #0x10
	bx lr
	arm_func_end get48bits_2

	arm_func_start get48bits_3
get48bits_3: ; 0x020DBCE0
	ldrh r1, [r0]
	ldrh r2, [r0, #-2]
	ldrh r3, [r0, #-4]
	orr r0, r3, r2, lsl #16
	bx lr
	arm_func_end get48bits_3

	arm_func_start get64bits
get64bits: ; 0x020DBCF4
	ldrh r2, [r0]
	ldrh r3, [r0, #-2]
	orr r1, r3, r2, lsl #16
	ldrh r2, [r0, #-4]
	ldrh r3, [r0, #-6]
	orr r0, r3, r2, lsl #16
	bx lr
	arm_func_end get64bits

	arm_func_start CPSi_big_div
CPSi_big_div: ; 0x020DBD10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r9, [sp, #0x48]
	ldr r8, [sp, #0x4c]
	str r1, [sp, #4]
	add r6, r8, r9, lsl #1
	str r0, [sp]
	mov r10, r2
	mov r0, r6
	mov r2, r9, lsl #2
	mov r1, #0
	str r3, [sp, #8]
	add r7, r6, r9, lsl #1
	bl MI_CpuFill8
	ldr r0, [sp, #4]
	mov r1, r9
	bl count_digits
	mov r11, r0
	mov r0, r10
	mov r1, r9
	bl count_digits
	mov r5, r0
	cmp r11, #0
	cmpgt r5, #0
	ble _020DBE94
	sub r0, r9, r11
	add r0, r5, r0
	sub r4, r0, #1
	cmp r4, r9
	blt _020DBD9C
	ldr r0, [sp, #4]
	mov r1, r7
	mov r2, r9, lsl #1
	bl MI_CpuCopy8
	b _020DBE94
_020DBD9C:
	ldr r0, [sp, #4]
	add r1, r6, r4, lsl #1
	mov r2, r11, lsl #1
	bl MI_CpuCopy8
	cmp r5, #2
	ble _020DBDC8
	add r0, r10, r5, lsl #1
	sub r0, r0, #2
	mov r11, r5, lsl #1
	bl get48bits_3
	b _020DBDE8
_020DBDC8:
	add r0, r10, r5, lsl #1
	cmp r5, #1
	sub r0, r0, #2
	mov r11, r5, lsl #1
	ble _020DBDE4
	bl get48bits_2
	b _020DBDE8
_020DBDE4:
	bl get48bits_1
_020DBDE8:
	str r0, [sp, #0x18]
	str r1, [sp, #0x10]
	cmp r4, r9
	bge _020DBE94
	mov r0, r9, lsl #1
	sub r0, r0, #1
	mov r0, r0, lsl #1
	str r0, [sp, #0x14]
_020DBE08:
	ldr r2, [sp, #0x14]
	mov r1, r6
	add r0, r6, #2
	bl memmove
	add r0, r7, r11
	bl get64bits
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x10]
	bl _ll_udiv
	mov r5, r0
	ldr r0, _020DBED8 ; =0x0000FFFF
	cmp r5, r0
	movhi r5, r0
_020DBE3C:
	mov r2, r5, lsl #0x10
	mov r0, r8
	mov r1, r10
	mov r2, r2, lsr #0x10
	mov r3, r9
	bl CPSi_big_mult_small
	mov r0, r7
	mov r1, r8
	mov r2, r9
	bl CPSi_big_compare
	cmp r0, #0
	sublt r5, r5, #1
	blt _020DBE3C
	mov r0, r7
	mov r1, r7
	mov r2, r8
	mov r3, r9
	bl CPSi_big_sub
	strh r5, [r6]
	add r4, r4, #1
	cmp r4, r9
	blt _020DBE08
_020DBE94:
	ldr r0, [sp]
	cmp r0, #0
	beq _020DBEB0
	ldr r1, [sp]
	mov r0, r6
	mov r2, r9, lsl #1
	bl MI_CpuCopy8
_020DBEB0:
	ldr r0, [sp, #8]
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #8]
	mov r0, r7
	mov r2, r9, lsl #1
	bl MI_CpuCopy8
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DBED8: .word 0x0000FFFF
	arm_func_end CPSi_big_div

	arm_func_start CPSi_big_power
CPSi_big_power: ; 0x020DBEDC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r4, _020DC068 ; =CPSiAlloc
	mov r8, r3
	ldr r3, [r4]
	mov r10, r0
	mov r0, r8, lsl #3
	ldr r7, [sp, #0x30]
	str r1, [sp, #8]
	mov r9, r2
	blx r3
	movs r4, r0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	sub r1, r8, #1
	add r0, r10, #2
	mov r2, r1, lsl #1
	mov r1, #0
	add r5, r4, r8, lsl #1
	bl MI_CpuFill8
	mov r2, #1
	mov r0, r9
	mov r1, r8
	strh r2, [r10]
	bl count_digits
	sub r0, r8, r0
	mov r6, r0, lsl #4
	cmp r6, r8, lsl #4
	bhs _020DBF90
	mov r2, #0x8000
_020DBF54:
	sub r0, r8, r6, asr #4
	add r0, r9, r0, lsl #1
	ldrh r0, [r0, #-2]
	and r1, r6, #0xf
	tst r0, r2, lsr r1
	beq _020DBF84
	ldr r0, [sp, #8]
	mov r1, r10
	mov r2, r8, lsl #1
	bl MI_CpuCopy8
	add r6, r6, #1
	b _020DBF90
_020DBF84:
	add r6, r6, #1
	cmp r6, r8, lsl #4
	blo _020DBF54
_020DBF90:
	cmp r6, r8, lsl #4
	bhs _020DC050
	mov r11, r8, lsl #1
_020DBF9C:
	mov r0, r4
	mov r1, r10
	mov r2, r8
	bl CPSi_big_sqr
	mov r0, r4
	mov r1, r10
	mov r2, r11
	bl MI_CpuCopy8
	cmp r7, #0
	beq _020DBFE0
	str r8, [sp]
	mov r0, #0
	mov r1, r10
	mov r2, r7
	mov r3, r10
	str r5, [sp, #4]
	bl CPSi_big_div
_020DBFE0:
	sub r0, r8, r6, asr #4
	add r0, r9, r0, lsl #1
	ldrh r1, [r0, #-2]
	and r2, r6, #0xf
	mov r0, #0x8000
	tst r1, r0, lsr r2
	beq _020DC044
	ldr r2, [sp, #8]
	mov r0, r4
	mov r1, r10
	mov r3, r8
	bl CPSi_big_mult
	mov r0, r4
	mov r1, r10
	mov r2, r11
	bl MI_CpuCopy8
	cmp r7, #0
	beq _020DC044
	str r8, [sp]
	mov r0, #0
	mov r1, r10
	mov r2, r7
	mov r3, r10
	str r5, [sp, #4]
	bl CPSi_big_div
_020DC044:
	add r6, r6, #1
	cmp r6, r8, lsl #4
	blo _020DBF9C
_020DC050:
	ldr r1, _020DC06C ; =CPSiFree
	mov r0, r4
	ldr r1, [r1]
	blx r1
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DC068: .word CPSiAlloc
_020DC06C: .word CPSiFree
	arm_func_end CPSi_big_power

	arm_func_start CPSi_big_modinv
CPSi_big_modinv: ; 0x020DC070
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldr r9, [sp, #0x38]
	mov r10, r3
	add r11, r9, r10, lsl #1
	add r4, r11, r10, lsl #1
	add r5, r4, r10, lsl #1
	add r6, r5, r10, lsl #1
	add r7, r6, r10, lsl #1
	str r0, [sp, #8]
	mov r0, r1
	add r1, r7, r10, lsl #1
	str r1, [sp, #0x10]
	mov r8, r10, lsl #1
	str r2, [sp, #0xc]
	mov r1, r9
	mov r2, r8
	bl MI_CpuCopy8
	ldr r0, [sp, #0xc]
	mov r1, r4
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, #1
	strh r0, [r4, r8]
	mov r0, r9
	mov r1, r10
	bl CPSi_big_sign
	cmp r0, #0
	ble _020DC180
_020DC0E4:
	ldr r3, [sp, #0x10]
	str r10, [sp]
	str r3, [sp, #4]
	mov r0, r11
	mov r1, r4
	mov r2, r9
	mov r3, r7
	bl CPSi_big_div
	mov r0, r9
	mov r1, r4
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, r7
	mov r1, r9
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, r7
	mov r1, r11
	mov r2, r5
	mov r3, r10
	bl CPSi_big_mult
	mov r0, r7
	mov r1, r6
	mov r2, r7
	mov r3, r10
	bl CPSi_big_sub
	mov r0, r5
	mov r1, r6
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, r7
	mov r1, r5
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, r9
	mov r1, r10
	bl CPSi_big_sign
	cmp r0, #0
	bgt _020DC0E4
_020DC180:
	ldr r2, [sp, #0xc]
	mov r0, r6
	mov r1, r6
	mov r3, r10
	bl CPSi_big_add
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r4, [sp, #0x10]
	str r10, [sp]
	mov r1, r6
	mov r0, #0
	str r4, [sp, #4]
	bl CPSi_big_div
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end CPSi_big_modinv

	arm_func_start CPSi_big_montmult
CPSi_big_montmult: ; 0x020DC1BC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r3
	mov r4, r6, lsl #1
	mov r8, r2
	mov r2, r4
	mov r7, r0
	mov r9, r1
	ldr r5, [sp, #0x20]
	bl MI_CpuCopy8
	cmp r8, #1
	bne _020DC1FC
	mov r0, r7
	mov r1, r9
	mov r2, r6
	bl CPSi_big_sqr
	b _020DC218
_020DC1FC:
	cmp r8, #0
	beq _020DC218
	mov r0, r7
	mov r1, r9
	mov r2, r8
	mov r3, r6
	bl CPSi_big_mult
_020DC218:
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x28]
	mov r1, r7
	mov r3, r5
	bl CPSi_big_mult
	sub r1, r6, r5
	ldr r0, [sp, #0x2c]
	mov r9, r1, lsl #1
	mov r8, #0
	mov r1, r8
	mov r2, r9
	add r0, r0, r5, lsl #1
	bl MI_CpuFill8
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x24]
	mov r3, r6
	bl CPSi_big_mult
	mov r0, r7
	mov r1, r7
	ldr r2, [sp, #0x30]
	mov r3, r6
	bl CPSi_big_add
	mov r2, r9
	mov r0, r7
	add r1, r7, r5, lsl #1
	bl memmove
	add r0, r7, r6, lsl #1
	sub r0, r0, r5, lsl #1
	mov r2, r5, lsl #1
	mov r1, r8
	bl MI_CpuFill8
	mov r0, r7
	ldr r1, [sp, #0x24]
	mov r2, r6
	bl CPSi_big_compare
	cmp r0, #0
	beq _020DC2BC
	cmp r0, #1
	beq _020DC2D0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DC2BC:
	mov r0, r7
	mov r1, r8
	mov r2, r4
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DC2D0:
	ldr r2, [sp, #0x24]
	mov r0, r7
	mov r1, r7
	mov r3, r6
	bl CPSi_big_sub
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end CPSi_big_montmult

	arm_func_start CPSi_big_montpower
CPSi_big_montpower: ; 0x020DC2E8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r10, r3
	mov r3, #0x16
	mul r4, r10, r3
	ldr r3, _020DC4FC ; =CPSiAlloc
	mov r11, r0
	ldr r3, [r3]
	mov r0, r4
	ldr r9, [sp, #0x58]
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	blx r3
	str r0, [sp, #0x2c]
	cmp r0, #0
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r5, #0
	mov r1, r5
	mov r2, r4
	bl MI_CpuFill8
	ldr r0, [sp, #0x2c]
	mov r1, r10
	add r6, r0, r10, lsl #1
	add r0, r6, r10, lsl #1
	add r7, r0, r10, lsl #1
	add r8, r7, r10, lsl #1
	str r0, [sp, #0x28]
	add r0, r8, r10, lsl #1
	str r0, [sp, #0x24]
	add r0, r0, r10, lsl #1
	str r0, [sp, #0x20]
	mov r0, r9
	bl count_digits
	mov r4, r0
	ldr r0, [sp, #0x2c]
	mov r2, r4, lsl #1
	mov r1, #1
	strh r1, [r0, r2]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	str r0, [sp]
	mov r0, r6
	mov r2, r9
	mov r3, r10
	bl CPSi_big_modinv
	ldr r1, [sp, #0x2c]
	mov r0, r7
	mov r2, r6
	mov r3, r10
	bl CPSi_big_mult
	mov r2, #1
	mov r0, r6
	mov r1, r7
	mov r3, r10
	bl CPSi_big_sub_small
	ldr r0, [sp, #0x20]
	str r10, [sp]
	str r0, [sp, #4]
	mov r0, r6
	mov r1, r6
	mov r2, r9
	mov r3, r5
	bl CPSi_big_div
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	mov r3, r10
	bl CPSi_big_mult
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x20]
	str r10, [sp]
	str r0, [sp, #4]
	mov r0, r5
	mov r2, r9
	mov r3, r1
	bl CPSi_big_div
	ldr r0, [sp, #0x20]
	str r10, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x2c]
	mov r0, r5
	mov r2, r9
	mov r3, r11
	bl CPSi_big_div
	movs r0, r4, lsl #4
	str r0, [sp, #0x1c]
	beq _020DC4C0
_020DC448:
	stmia sp, {r4, r9}
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	ldr r1, [sp, #0x24]
	mov r0, r11
	mov r2, #1
	mov r3, r10
	str r8, [sp, #0x10]
	bl CPSi_big_montmult
	ldr r1, [sp, #0x18]
	sub r2, r4, r5, asr #4
	add r1, r1, r2, lsl #1
	ldrh r2, [r1, #-2]
	and r0, r5, #0xf
	mov r1, #0x8000
	tst r2, r1, lsr r0
	beq _020DC4B0
	stmia sp, {r4, r9}
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	mov r0, r11
	mov r3, r10
	str r8, [sp, #0x10]
	bl CPSi_big_montmult
_020DC4B0:
	ldr r0, [sp, #0x1c]
	add r5, r5, #1
	cmp r5, r0
	blo _020DC448
_020DC4C0:
	stmia sp, {r4, r9}
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	ldr r1, [sp, #0x24]
	mov r0, r11
	mov r3, r10
	mov r2, #0
	str r8, [sp, #0x10]
	bl CPSi_big_montmult
	ldr r1, _020DC500 ; =CPSiFree
	ldr r0, [sp, #0x2c]
	ldr r1, [r1]
	blx r1
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DC4FC: .word CPSiAlloc
_020DC500: .word CPSiFree
	arm_func_end CPSi_big_montpower

	arm_func_start CPSi_big_from_char
CPSi_big_from_char: ; 0x020DC504
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r2, r3, lsl #1
	mov r1, #0
	mov r4, r0
	bl MI_CpuFill8
	sub r0, r5, #1
	cmp r5, #1
	add r6, r6, r0
	ble _020DC550
_020DC530:
	ldrb r1, [r6]
	ldrb r0, [r6, #-1]
	sub r5, r5, #2
	cmp r5, #1
	add r0, r1, r0, lsl #8
	strh r0, [r4], #2
	sub r6, r6, #2
	bgt _020DC530
_020DC550:
	cmp r5, #0
	ldrgtb r0, [r6]
	strgth r0, [r4]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end CPSi_big_from_char

	arm_func_start CPSi_char_from_big
CPSi_char_from_big: ; 0x020DC560
	sub r3, r2, #1
	cmp r2, #1
	add r0, r0, r3
	ble _020DC594
_020DC570:
	ldrh r3, [r1]
	sub r12, r0, #1
	sub r2, r2, #2
	strb r3, [r0], #-2
	ldrh r3, [r1], #2
	cmp r2, #1
	mov r3, r3, asr #8
	strb r3, [r12]
	bgt _020DC570
_020DC594:
	cmp r2, #0
	ldrgth r1, [r1]
	strgtb r1, [r0]
	bx lr
	arm_func_end CPSi_char_from_big

	arm_func_start WCM_Init
WCM_Init: ; 0x020DC5A4
	ldr r12, _020DC5B0 ; =WCM_InitEx
	mov r2, #1
	bx r12
_020DC5B0: .word WCM_InitEx
	arm_func_end WCM_Init

	arm_func_start WCM_InitEx
WCM_InitEx: ; 0x020DC5B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r4, #1
	bl OS_DisableInterrupts
	ldr r9, _020DC71C ; =WCMi_OverridedDeviceId
	mov r1, #0
	ldr r2, [r9, #4]
	mov r5, r0
	str r1, [sp]
	cmp r2, #0
	beq _020DC5F4
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DC5F4:
	cmp r8, #0
	bne _020DC608
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DC608:
	tst r8, #0x1f
	beq _020DC61C
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DC61C:
	mov r0, r8
	mov r2, r7
	bl MI_CpuFill8
	cmp r6, #0
	ldreqb r6, [r9]
	cmpeq r6, #0
	bne _020DC640
	bl WCMi_GetDefaultDeviceId
	mov r6, r0
_020DC640:
	add r0, sp, #0
	mov r1, r6
	bl WCM_GetWorkSize
	cmp r0, #0
	bne _020DC664
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DC664:
	ldr r0, [sp]
	cmp r7, r0
	bge _020DC680
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, #6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DC680:
	ldr r1, _020DC71C ; =WCMi_OverridedDeviceId
	add r0, r8, #0x1000
	str r8, [r1, #4]
	strb r4, [r0, #0x2de]
	ldr r0, [r1, #4]
	mov r2, #0
	add r0, r0, #0x1200
	strh r2, [r0, #0xda]
	ldr r0, [r1, #4]
	add r0, r0, #0x1200
	strh r2, [r0, #0xd8]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	strb r2, [r0, #0x2dc]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	strb r2, [r0, #0x2dd]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	strb r6, [r0, #0x2df]
	bl WcmInitOption
	bl WCMi_InitCpsif
	bl OS_IsTickAvailable
	cmp r0, #0
	bne _020DC6E8
	bl OS_InitTick
_020DC6E8:
	bl OS_IsAlarmAvailable
	cmp r0, #0
	bne _020DC6F8
	bl OS_InitAlarm
_020DC6F8:
	ldr r0, _020DC71C ; =WCMi_OverridedDeviceId
	ldr r0, [r0, #4]
	add r0, r0, #0x294
	add r0, r0, #0x1000
	bl OS_CreateAlarm
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DC71C: .word WCMi_OverridedDeviceId
	arm_func_end WCM_InitEx

	arm_func_start WCM_Finish
WCM_Finish: ; 0x020DC720
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	ldr r2, _020DC774 ; =WCMi_OverridedDeviceId
	ldr r1, [r2, #4]
	cmp r1, #0
	bne _020DC744
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020DC744:
	add r1, r1, #0x1000
	ldrb r1, [r1, #0x2de]
	cmp r1, #1
	beq _020DC760
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020DC760:
	mov r4, #0
	str r4, [r2, #4]
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020DC774: .word WCMi_OverridedDeviceId
	arm_func_end WCM_Finish

	arm_func_start WCM_GetWorkSize
WCM_GetWorkSize: ; 0x020DC778
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	bne _020DC790
	bl WCMi_GetDefaultDeviceId
	mov r1, r0
_020DC790:
	cmp r1, #1
	moveq r0, #0x2300
	streq r0, [r4]
	beq _020DC7A8
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020DC7A8:
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end WCM_GetWorkSize

	arm_func_start WCM_StartupAsync
WCM_StartupAsync: ; 0x020DC7B0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	bl OS_DisableInterrupts
	ldr r5, _020DC878 ; =WCMi_OverridedDeviceId
	mov r4, r0
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _020DC7E0
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DC7E0:
	add r1, r1, #0x1000
	ldrb r1, [r1, #0x2de]
	cmp r1, #1
	beq _020DC804
	cmp r1, #2
	beq _020DC814
	cmp r1, #3
	beq _020DC820
	b _020DC82C
_020DC804:
	mov r0, r7
	mov r1, r6
	bl WcmConfigure
	b _020DC838
_020DC814:
	bl OS_RestoreInterrupts
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DC820:
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DC82C:
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DC838:
	bl WM_GetAllowedChannel
	cmp r0, #0
	moveq r0, #5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5, #4]
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x2df]
	cmp r0, #1
	movne r5, #7
	bne _020DC868
	bl WCMi_WmifStartupAsync
	mov r5, r0
_020DC868:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DC878: .word WCMi_OverridedDeviceId
	arm_func_end WCM_StartupAsync

	arm_func_start WCM_CleanupAsync
WCM_CleanupAsync: ; 0x020DC87C
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	ldr r1, _020DC910 ; =WCMi_OverridedDeviceId
	mov r4, r0
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _020DC8A4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020DC8A4:
	add r1, r1, #0x1000
	ldrb r2, [r1, #0x2de]
	cmp r2, #1
	beq _020DC8D0
	cmp r2, #3
	beq _020DC8E8
	cmp r2, #4
	bne _020DC8DC
	bl OS_RestoreInterrupts
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, pc}
_020DC8D0:
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020DC8DC:
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020DC8E8:
	ldrb r0, [r1, #0x2df]
	cmp r0, #1
	movne r5, #7
	bne _020DC900
	bl WCMi_WmifCleanupAsync
	mov r5, r0
_020DC900:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020DC910: .word WCMi_OverridedDeviceId
	arm_func_end WCM_CleanupAsync

	arm_func_start WCM_SearchAsync
WCM_SearchAsync: ; 0x020DC914
	stmfd sp!, {r3, lr}
	cmp r0, #0
	cmpne r1, #0
	bne _020DC92C
	bl WCM_EndSearchAsync
	ldmfd sp!, {r3, pc}
_020DC92C:
	bl WCM_BeginSearchAsync
	ldmfd sp!, {r3, pc}
	arm_func_end WCM_SearchAsync

	arm_func_start WCM_BeginSearchAsync
WCM_BeginSearchAsync: ; 0x020DC934
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl OS_DisableInterrupts
	ldr r1, _020DC9A0 ; =WCMi_OverridedDeviceId
	mov r4, r0
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _020DC968
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DC968:
	add r0, r1, #0x1000
	ldrb r0, [r0, #0x2df]
	cmp r0, #1
	movne r5, #7
	bne _020DC990
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl WCMi_WmifBeginSearchAsync
	mov r5, r0
_020DC990:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DC9A0: .word WCMi_OverridedDeviceId
	arm_func_end WCM_BeginSearchAsync

	arm_func_start WCM_EndSearchAsync
WCM_EndSearchAsync: ; 0x020DC9A4
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	ldr r5, _020DCA40 ; =WCMi_OverridedDeviceId
	mov r4, r0
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _020DC9CC
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020DC9CC:
	add r1, r1, #0x1000
	ldrb r1, [r1, #0x2de]
	cmp r1, #3
	beq _020DCA18
	cmp r1, #6
	beq _020DC9F0
	cmp r1, #7
	beq _020DCA0C
	b _020DCA24
_020DC9F0:
	mov r0, #7
	bl WCMi_SetPhase
	ldr r0, [r5, #4]
	mov r1, #4
	add r0, r0, #0x1200
	strh r1, [r0, #0xda]
	b _020DCA30
_020DCA0C:
	bl OS_RestoreInterrupts
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, pc}
_020DCA18:
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020DCA24:
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020DCA30:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #3
	ldmfd sp!, {r3, r4, r5, pc}
_020DCA40: .word WCMi_OverridedDeviceId
	arm_func_end WCM_EndSearchAsync

	arm_func_start WCM_ConnectAsync
WCM_ConnectAsync: ; 0x020DCA44
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl OS_DisableInterrupts
	mov r4, r0
	bl WCMi_GetSystemWork
	movs r5, r0
	bne _020DCA78
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DCA78:
	add r0, r5, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #3
	beq _020DCA9C
	cmp r0, #8
	beq _020DCB98
	cmp r0, #9
	beq _020DCBA8
	b _020DCBB8
_020DCA9C:
	cmp r8, #0
	bne _020DCAB4
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DCAB4:
	ldrh r0, [r8, #0x3c]
	cmp r0, #0
	beq _020DCAD0
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DCAD0:
	cmp r7, #0
	beq _020DCB68
	ldrb r1, [r7]
	cmp r1, #3
	bhi _020DCAF0
	ldrb r0, [r7, #1]
	cmp r0, #4
	bhs _020DCB00
_020DCAF0:
	add r3, r5, #0x1000
	ldrb r0, [r3, #0x291]
	cmp r0, #0x40
	bls _020DCB10
_020DCB00:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DCB10:
	strb r1, [r3, #0x290]
	ldrb r0, [r7]
	cmp r0, #0
	bne _020DCB30
	add r0, r5, #0x1240
	mov r1, #0
	mov r2, #0x50
	b _020DCB74
_020DCB30:
	cmp r0, #3
	bhi _020DCB54
	ldrb r12, [r7, #1]
	add r0, r7, #2
	add r1, r5, #0x1240
	mov r2, #0x50
	strb r12, [r3, #0x291]
_020DCB4C:
	bl MI_CpuCopy8
	b _020DCB78
_020DCB54:
	ldrb r2, [r7, #1]
	add r0, r7, #2
	add r1, r5, #0x1240
	strb r2, [r3, #0x291]
	b _020DCB4C
_020DCB68:
	add r0, r5, #0x1240
	mov r1, #0
	mov r2, #0x54
_020DCB74:
	bl MI_CpuFill8
_020DCB78:
	add r1, r5, #0x2e0
	mov r0, r8
	add r1, r1, #0x1000
	mov r2, #0xc0
	bl MI_CpuCopy8
	mov r0, r6
	bl WCM_UpdateOption
	b _020DCBC8
_020DCB98:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #2
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DCBA8:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DCBB8:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DCBC8:
	add r0, r5, #0x1000
	ldrb r0, [r0, #0x2df]
	cmp r0, #1
	movne r5, #7
	bne _020DCBE4
	bl WCMi_WmifConnectAsync
	mov r5, r0
_020DCBE4:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end WCM_ConnectAsync

	arm_func_start WCM_DisconnectAsync
WCM_DisconnectAsync: ; 0x020DCBF4
	stmfd sp!, {r4, r5, r6, lr}
	bl OS_DisableInterrupts
	ldr r6, _020DCCB4 ; =WCMi_OverridedDeviceId
	mov r4, r0
	ldr r1, [r6, #4]
	mov r5, #0
	cmp r1, #0
	bne _020DCC20
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020DCC20:
	add r1, r1, #0x1000
	ldrb r2, [r1, #0x2de]
	cmp r2, #3
	beq _020DCC4C
	cmp r2, #9
	beq _020DCC64
	cmp r2, #0xa
	bne _020DCC58
	bl OS_RestoreInterrupts
	mov r0, #2
	ldmfd sp!, {r4, r5, r6, pc}
_020DCC4C:
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020DCC58:
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020DCC64:
	ldrb r0, [r1, #0x2dd]
	cmp r0, #1
	bne _020DCC8C
	mov r0, #0xa
	bl WCMi_SetPhase
	ldr r0, [r6, #4]
	mov r1, #6
	add r0, r0, #0x1200
	strh r1, [r0, #0xda]
	b _020DCCA4
_020DCC8C:
	ldrb r0, [r1, #0x2df]
	cmp r0, #1
	movne r5, #7
	bne _020DCCA4
	bl WCMi_WmifDisconnectAsync
	mov r5, r0
_020DCCA4:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020DCCB4: .word WCMi_OverridedDeviceId
	arm_func_end WCM_DisconnectAsync

	arm_func_start WCM_TerminateAsync
WCM_TerminateAsync: ; 0x020DCCB8
	stmfd sp!, {r4, r5, r6, lr}
	bl OS_DisableInterrupts
	ldr r6, _020DCDD0 ; =WCMi_OverridedDeviceId
	mov r4, r0
	ldr r1, [r6, #4]
	mov r5, #0
	cmp r1, #0
	bne _020DCCE4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020DCCE4:
	add r1, r1, #0x1000
	ldrb r2, [r1, #0x2de]
	cmp r2, #0xd
	addls pc, pc, r2, lsl #2
	b _020DCD70
_020DCCF8: ; jump table
	b _020DCD70 ; case 0
	b _020DCD3C ; case 1
	b _020DCD70 ; case 2
	b _020DCD80 ; case 3
	b _020DCD70 ; case 4
	b _020DCD70 ; case 5
	b _020DCD48 ; case 6
	b _020DCD70 ; case 7
	b _020DCD70 ; case 8
	b _020DCD80 ; case 9
	b _020DCD70 ; case 10
	b _020DCD70 ; case 11
	b _020DCD80 ; case 12
	b _020DCD30 ; case 13
_020DCD30:
	bl OS_RestoreInterrupts
	mov r0, #2
	ldmfd sp!, {r4, r5, r6, pc}
_020DCD3C:
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020DCD48:
	mov r0, #0xd
	bl WCMi_SetPhase
	ldr r1, [r6, #4]
	mov r2, #9
	add r1, r1, #0x1200
	mov r0, r4
	strh r2, [r1, #0xda]
	bl OS_RestoreInterrupts
	mov r0, #3
	ldmfd sp!, {r4, r5, r6, pc}
_020DCD70:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020DCD80:
	ldrb r0, [r1, #0x2dd]
	cmp r0, #1
	bne _020DCDA8
	mov r0, #0xd
	bl WCMi_SetPhase
	ldr r0, [r6, #4]
	mov r1, #9
	add r0, r0, #0x1200
	strh r1, [r0, #0xda]
	b _020DCDC0
_020DCDA8:
	ldrb r0, [r1, #0x2df]
	cmp r0, #1
	movne r5, #7
	bne _020DCDC0
	bl WCMi_WmifTerminateAsync
	mov r5, r0
_020DCDC0:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020DCDD0: .word WCMi_OverridedDeviceId
	arm_func_end WCM_TerminateAsync

	arm_func_start WCM_GetPhase
WCM_GetPhase: ; 0x020DCDD4
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	ldr r1, _020DCE00 ; =WCMi_OverridedDeviceId
	mov r4, #0
	ldr r1, [r1, #4]
	cmp r1, #0
	addne r1, r1, #0x1000
	ldrneb r4, [r1, #0x2de]
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020DCE00: .word WCMi_OverridedDeviceId
	arm_func_end WCM_GetPhase

	arm_func_start WCM_UpdateOption
WCM_UpdateOption: ; 0x020DCE04
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r1, _020DCE98 ; =WCMi_OverridedDeviceId
	mov r6, #0
	ldr r3, [r1, #4]
	add r1, r3, #0x1000
	cmp r3, #0
	ldr r4, [r1, #0x2d4]
	bne _020DCE38
	bl OS_RestoreInterrupts
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, pc}
_020DCE38:
	tst r5, #0x8000
	beq _020DCE58
	ldr r1, _020DCE9C ; =0x00003FFE
	orr r6, r6, #0xfe
	tst r5, r1
	orreq r5, r5, #0x82
	orr r6, r6, #0x3f00
	orreq r5, r5, #0xa000
_020DCE58:
	tst r5, #0x20000
	orrne r6, r6, #0x10000
	tst r5, #0x80000
	orrne r6, r6, #0x40000
	tst r5, #0x200000
	orrne r6, r6, #0x100000
	tst r5, #0x800000
	orrne r6, r6, #0x400000
	mvn r1, r6
	and r1, r4, r1
	orr r2, r5, r1
	add r1, r3, #0x1000
	str r2, [r1, #0x2d4]
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_020DCE98: .word WCMi_OverridedDeviceId
_020DCE9C: .word 0x00003FFE
	arm_func_end WCM_UpdateOption

	arm_func_start WCM_GetAllowedChannel
WCM_GetAllowedChannel: ; 0x020DCEA0
	stmfd sp!, {r3, lr}
	bl WCMi_GetSystemWork
	add r0, r0, #0x1000
	ldrb r1, [r0, #0x2de]
	cmp r1, #3
	blo _020DCED4
	cmp r1, #0xa
	bhi _020DCED4
	ldrb r0, [r0, #0x2df]
	cmp r0, #1
	bne _020DCED4
	bl WCMi_WmifGetAllowedChannel
	ldmfd sp!, {r3, pc}
_020DCED4:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end WCM_GetAllowedChannel

	arm_func_start WCMi_GetSystemWork
WCMi_GetSystemWork: ; 0x020DCEDC
	ldr r0, _020DCEE8 ; =WCMi_OverridedDeviceId
	ldr r0, [r0, #4]
	bx lr
_020DCEE8: .word WCMi_OverridedDeviceId
	arm_func_end WCMi_GetSystemWork

	arm_func_start WcmConfigure
WcmConfigure: ; 0x020DCEEC
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _020DCF3C
	ldr r1, _020DD008 ; =WCMi_OverridedDeviceId
	mov r3, #3
	ldr r0, [r1, #4]
	mov r2, #0
	add r0, r0, #0x1000
	str r3, [r0, #0x2c0]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x2c4]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x2c8]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x2cc]
	b _020DCFF4
_020DCF3C:
	ldr r1, _020DD008 ; =WCMi_OverridedDeviceId
	ldr r2, [r5]
	ldr r0, [r1, #4]
	and r2, r2, #3
	add r0, r0, #0x1000
	str r2, [r0, #0x2c0]
	ldr r3, [r5, #4]
	ldr r0, [r5, #8]
	and r2, r3, #3
	rsb r2, r2, #4
	and r2, r2, #3
	add r2, r2, #0xc
	cmp r2, r0
	ldr r0, [r1, #4]
	bls _020DCF94
	mov r2, #0
	add r0, r0, #0x1000
	str r2, [r0, #0x2c4]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x2c8]
	b _020DCFE0
_020DCF94:
	add r2, r3, #3
	bic r2, r2, #3
	add r0, r0, #0x1000
	str r2, [r0, #0x2c4]
	ldr r2, [r5, #4]
	ldr r0, [r1, #4]
	and r2, r2, #3
	rsb r2, r2, #4
	ldr r3, [r5, #8]
	and r2, r2, #3
	sub r2, r3, r2
	add r0, r0, #0x1000
	str r2, [r0, #0x2c8]
	ldr r0, [r1, #4]
	mov r1, #0
	add r2, r0, #0x1000
	ldr r0, [r2, #0x2c4]
	ldr r2, [r2, #0x2c8]
	bl MI_CpuFill8
_020DCFE0:
	ldr r0, _020DD008 ; =WCMi_OverridedDeviceId
	ldr r1, [r5, #0xc]
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	str r1, [r0, #0x2cc]
_020DCFF4:
	ldr r0, _020DD008 ; =WCMi_OverridedDeviceId
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	str r4, [r0, #0x2d0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DD008: .word WCMi_OverridedDeviceId
	arm_func_end WcmConfigure

	arm_func_start WcmInitOption
WcmInitOption: ; 0x020DD00C
	ldr r0, _020DD024 ; =WCMi_OverridedDeviceId
	ldr r1, _020DD028 ; =0x00AAA082
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	str r1, [r0, #0x2d4]
	bx lr
_020DD024: .word WCMi_OverridedDeviceId
_020DD028: .word 0x00AAA082
	arm_func_end WcmInitOption

	arm_func_start WCMi_GetNextScanChannel
WCMi_GetNextScanChannel: ; 0x020DD02C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r5, _020DD0C0 ; =0x4EC4EC4F
	ldr r6, _020DD0C4 ; =WCMi_OverridedDeviceId
	mov r10, r0
	mov r8, #0
	mov r7, #1
	mov r4, #0xd
_020DD048:
	add r2, r10, r8
	mov r0, r2, lsr #0x1f
	smull r1, r9, r5, r2
	add r9, r0, r9, asr #2
	smull r0, r1, r4, r9
	ldr r1, [r6, #4]
	sub r9, r2, r0
	add r0, r1, #0x1000
	ldr r1, [r0, #0x2d4]
	add r0, r9, #1
	tst r1, r7, lsl r0
	beq _020DD084
	bl WCM_GetAllowedChannel
	tst r0, r7, lsl r9
	bne _020DD090
_020DD084:
	add r8, r8, #1
	cmp r8, #0xd
	blt _020DD048
_020DD090:
	add r3, r10, r8
	ldr r2, _020DD0C0 ; =0x4EC4EC4F
	mov r0, r3, lsr #0x1f
	smull r1, r4, r2, r3
	add r4, r0, r4, asr #2
	mov r2, #0xd
	smull r0, r1, r2, r4
	sub r4, r3, r0
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020DD0C0: .word 0x4EC4EC4F
_020DD0C4: .word WCMi_OverridedDeviceId
	arm_func_end WCMi_GetNextScanChannel

	arm_func_start WCMi_Notify
WCMi_Notify: ; 0x020DD0C8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r12, _020DD108 ; =WCMi_OverridedDeviceId
	mov r5, r0
	ldr r0, [r12, #4]
	mov r4, r1
	add r1, r0, #0x1200
	ldrsh r0, [r1, #0xda]
	mov r12, #0
	mov lr, r2
	strh r12, [r1, #0xda]
	str r3, [sp]
	mov r1, r5
	mov r2, r4
	mov r3, lr
	bl WCMi_NotifyEx
	ldmfd sp!, {r3, r4, r5, pc}
_020DD108: .word WCMi_OverridedDeviceId
	arm_func_end WCMi_Notify

	arm_func_start WCMi_NotifyEx
WCMi_NotifyEx: ; 0x020DD10C
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	ldr r12, _020DD15C ; =WCMi_OverridedDeviceId
	ldr r12, [r12, #4]
	add r12, r12, #0x1000
	ldr lr, [r12, #0x2d0]
	cmp lr, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, pc}
	ldr lr, [sp, #0x18]
	strh r0, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	str lr, [sp, #0xc]
	strh r1, [sp, #2]
	ldr r1, [r12, #0x2d0]
	add r0, sp, #0
	blx r1
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_020DD15C: .word WCMi_OverridedDeviceId
	arm_func_end WCMi_NotifyEx

	arm_func_start WCMi_SetPhase
WCMi_SetPhase: ; 0x020DD160
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r1, _020DD1FC ; =WCMi_OverridedDeviceId
	mov r4, r0
	ldr r1, [r1, #4]
	add r0, r1, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #9
	bne _020DD19C
	cmp r5, #9
	beq _020DD19C
	add r0, r1, #0x294
	add r0, r0, #0x1000
	bl OS_CancelAlarm
_020DD19C:
	ldr r0, _020DD1FC ; =WCMi_OverridedDeviceId
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldrb r1, [r0, #0x2de]
	cmp r1, #0xb
	strneb r5, [r0, #0x2de]
	cmp r5, #9
	bne _020DD1F0
	ldr r5, _020DD1FC ; =WCMi_OverridedDeviceId
	ldr r0, [r5, #4]
	add r0, r0, #0x294
	add r0, r0, #0x1000
	bl OS_CancelAlarm
	mov r2, #0
	str r2, [sp]
	ldr r0, [r5, #4]
	ldr r1, _020DD200 ; =0x022F5341
	add r0, r0, #0x294
	ldr r3, _020DD204 ; =WcmKeepAliveAlarm
	add r0, r0, #0x1000
	bl OS_SetAlarm
_020DD1F0:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, pc}
_020DD1FC: .word WCMi_OverridedDeviceId
_020DD200: .word 0x022F5341
_020DD204: .word WcmKeepAliveAlarm
	arm_func_end WCMi_SetPhase

	arm_func_start WCMi_ResetKeepAliveAlarm
WCMi_ResetKeepAliveAlarm: ; 0x020DD208
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	ldr r5, _020DD264 ; =WCMi_OverridedDeviceId
	mov r4, r0
	ldr r0, [r5, #4]
	add r0, r0, #0x294
	add r0, r0, #0x1000
	bl OS_CancelAlarm
	ldr r1, [r5, #4]
	add r0, r1, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #9
	bne _020DD258
	add r0, r1, #0x294
	mov r2, #0
	ldr r1, _020DD268 ; =0x022F5341
	ldr r3, _020DD26C ; =WcmKeepAliveAlarm
	add r0, r0, #0x1000
	str r2, [sp]
	bl OS_SetAlarm
_020DD258:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, pc}
_020DD264: .word WCMi_OverridedDeviceId
_020DD268: .word 0x022F5341
_020DD26C: .word WcmKeepAliveAlarm
	arm_func_end WCMi_ResetKeepAliveAlarm

	arm_func_start WcmKeepAliveAlarm
WcmKeepAliveAlarm: ; 0x020DD270
	ldr r12, _020DD278 ; =WCMi_ResetKeepAliveAlarm
	bx r12
_020DD278: .word WCMi_ResetKeepAliveAlarm
	arm_func_end WcmKeepAliveAlarm

	arm_func_start WCMi_GetDefaultDeviceId
WCMi_GetDefaultDeviceId: ; 0x020DD27C
	mov r0, #1
	bx lr
	arm_func_end WCMi_GetDefaultDeviceId

	arm_func_start WCM_ClearApList
WCM_ClearApList: ; 0x020DD284
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	mov r4, r0
	bl WCMi_GetSystemWork
	cmp r0, #0
	bne _020DD2A8
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, pc}
_020DD2A8:
	add r1, r0, #0x1000
	ldr r0, [r1, #0x2c4]
	cmp r0, #0
	ldrne r2, [r1, #0x2c8]
	cmpne r2, #0
	ble _020DD2C8
	mov r1, #0
	bl MI_CpuFill8
_020DD2C8:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, pc}
	arm_func_end WCM_ClearApList

	arm_func_start WCM_CountApList
WCM_CountApList: ; 0x020DD2D4
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	mov r4, r0
	bl WCMi_GetSystemWork
	cmp r0, #0
	mov r5, #0
	bne _020DD300
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020DD300:
	add r0, r0, #0x1000
	ldr r1, [r0, #0x2c4]
	cmp r1, #0
	beq _020DD31C
	ldr r0, [r0, #0x2c8]
	cmp r0, #0xc
	ldrhi r5, [r1]
_020DD31C:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end WCM_CountApList

	arm_func_start WCM_LockApList
WCM_LockApList: ; 0x020DD32C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	mov r4, r0
	bl WCMi_GetSystemWork
	cmp r0, #0
	bne _020DD358
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020DD358:
	add r1, r0, #0x1000
	cmp r5, #0
	ldrb r1, [r1, #0x2dc]
	mov r5, #1
	beq _020DD380
	cmp r1, #0
	moveq r5, #0
	add r0, r0, #0x1000
	mov r1, #1
	b _020DD390
_020DD380:
	cmp r1, #0
	moveq r5, #0
	add r0, r0, #0x1000
	mov r1, #0
_020DD390:
	strb r1, [r0, #0x2dc]
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end WCM_LockApList

	arm_func_start WCM_PointApList
WCM_PointApList: ; 0x020DD3A4
	ldr r12, _020DD3AC ; =WCM_PointApListEx
	bx r12
_020DD3AC: .word WCM_PointApListEx
	arm_func_end WCM_PointApList

	arm_func_start WCM_PointApListEx
WCM_PointApListEx: ; 0x020DD3B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl OS_DisableInterrupts
	mov r5, r0
	bl WCMi_GetSystemWork
	cmp r0, #0
	bne _020DD3DC
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020DD3DC:
	mov r0, r4
	bl WcmSearchIndexedApList
	movs r4, r0
	mov r0, r5
	bne _020DD3FC
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020DD3FC:
	bl OS_RestoreInterrupts
	add r0, r4, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end WCM_PointApListEx

	arm_func_start WCMi_EntryApList
WCMi_EntryApList: ; 0x020DD408
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, r1
	bl WCMi_GetSystemWork
	movs r6, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, #0x1000
	ldrb r1, [r0, #0x2dc]
	cmp r1, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r0, #0x2df]
	cmp r0, #1
	bne _020DD448
	ldrh r0, [r5, #0x3c]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_020DD448:
	add r0, r5, #4
	bl WcmSearchApList
	movs r7, r0
	bne _020DD460
	bl WcmAllocApList
	mov r7, r0
_020DD460:
	cmp r7, #0
	addeq r0, r6, #0x1000
	ldreq r0, [r0, #0x2cc]
	cmpeq r0, #1
	bne _020DD47C
	bl WcmGetOldestApList
	mov r7, r0
_020DD47C:
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	add r1, r7, #0x10
	bl WCMi_BssDescCopy
	mov r0, r7
	strh r4, [r7, #2]
	bl WcmAppendApList
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end WCMi_EntryApList

	arm_func_start WcmAllocApList
WcmAllocApList: ; 0x020DD4A0
	stmfd sp!, {r4, lr}
	bl WCMi_GetSystemWork
	add r2, r0, #0x1000
	ldr r1, [r2, #0x2c4]
	mov r0, #0
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r3, [r2, #0x2c8]
	cmp r3, #0xc
	ldmlsfd sp!, {r4, pc}
	ldr r2, _020DD568 ; =0x4EC4EC4F
	sub r3, r3, #0xc
	umull r2, r12, r3, r2
	movs r12, r12, lsr #6
	ldmeqfd sp!, {r4, pc}
	ldr r2, [r1]
	cmp r12, r2
	ldmlsfd sp!, {r4, pc}
	mov lr, r0
	cmp r12, #0
	bls _020DD51C
	add r4, r1, #0xc
	mov r2, #0xd0
_020DD4FC:
	mul r0, lr, r2
	ldrb r3, [r4, r0]
	add r0, r4, r0
	cmp r3, #0
	beq _020DD51C
	add lr, lr, #1
	cmp lr, r12
	blo _020DD4FC
_020DD51C:
	cmp lr, r12
	ldmhsfd sp!, {r4, pc}
	mov r2, #1
	strb r2, [r0]
	ldr r3, [r1]
	mov r2, #0
	str r3, [r0, #4]
	str r2, [r0, #0xc]
	ldr r2, [r1, #8]
	str r2, [r0, #8]
	str r0, [r1, #8]
	ldr r2, [r0, #8]
	cmp r2, #0
	strne r0, [r2, #0xc]
	streq r0, [r1, #4]
	ldr r2, [r1]
	add r2, r2, #1
	str r2, [r1]
	ldmfd sp!, {r4, pc}
_020DD568: .word 0x4EC4EC4F
	arm_func_end WcmAllocApList

	arm_func_start WcmGetOldestApList
WcmGetOldestApList: ; 0x020DD56C
	stmfd sp!, {r3, lr}
	bl WCMi_GetSystemWork
	add r0, r0, #0x1000
	ldr r1, [r0, #0x2c4]
	cmp r1, #0
	beq _020DD594
	ldr r0, [r0, #0x2c8]
	cmp r0, #0xc
	ldrhi r0, [r1, #4]
	ldmhifd sp!, {r3, pc}
_020DD594:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end WcmGetOldestApList

	arm_func_start WcmSearchApList
WcmSearchApList: ; 0x020DD59C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl WCMi_GetSystemWork
	add r0, r0, #0x1000
	mov r4, #0
	cmp r5, #0
	ldr r1, [r0, #0x2c4]
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r1, #0
	beq _020DD600
	ldr r0, [r0, #0x2c8]
	cmp r0, #0xc
	bls _020DD600
	ldr r4, [r1, #4]
	cmp r4, #0
	beq _020DD600
_020DD5E0:
	mov r1, r5
	add r0, r4, #0x14
	bl WCM_CompareBssID
	cmp r0, #0
	bne _020DD600
	ldr r4, [r4, #0xc]
	cmp r4, #0
	bne _020DD5E0
_020DD600:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end WcmSearchApList

	arm_func_start WcmSearchIndexedApList
WcmSearchIndexedApList: ; 0x020DD608
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl WCMi_GetSystemWork
	add r1, r0, #0x1000
	ldr r2, [r1, #0x2c4]
	mov r0, #0
	cmp r2, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r1, #0x2c8]
	cmp r1, #0xc
	ldmlsfd sp!, {r4, pc}
	ldr r0, [r2, #4]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
_020DD640:
	ldr r1, [r0, #4]
	cmp r1, r4
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _020DD640
	ldmfd sp!, {r4, pc}
	arm_func_end WcmSearchIndexedApList

	arm_func_start WcmAppendApList
WcmAppendApList: ; 0x020DD65C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl WCMi_GetSystemWork
	add r1, r0, #0x1000
	ldr r0, [r1, #0x2c4]
	cmp r4, #0
	cmpne r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r1, #0x2c8]
	cmp r1, #0xc
	ldmlsfd sp!, {r4, pc}
	ldr r3, [r0, #4]
	cmp r3, #0
	beq _020DD6D4
_020DD694:
	cmp r3, r4
	bne _020DD6C8
	ldr r2, [r3, #8]
	ldr r1, [r3, #0xc]
	cmp r2, #0
	strne r1, [r2, #0xc]
	streq r1, [r0, #4]
	ldr r2, [r3, #0xc]
	ldr r1, [r3, #8]
	cmp r2, #0
	strne r1, [r2, #8]
	streq r1, [r0, #8]
	b _020DD6D4
_020DD6C8:
	ldr r3, [r3, #0xc]
	cmp r3, #0
	bne _020DD694
_020DD6D4:
	mov r1, #0
	str r1, [r4, #0xc]
	ldr r1, [r0, #8]
	str r1, [r4, #8]
	str r4, [r0, #8]
	ldr r1, [r4, #8]
	cmp r1, #0
	strne r4, [r1, #0xc]
	streq r4, [r0, #4]
	cmp r3, #0
	ldreq r1, [r0]
	streq r1, [r4, #4]
	ldreq r1, [r0]
	addeq r1, r1, #1
	streq r1, [r0]
	ldmfd sp!, {r4, pc}
	arm_func_end WcmAppendApList

	arm_func_start WCMi_BssDescCopy
WCMi_BssDescCopy: ; 0x020DD714
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r11, r0
	mov r4, r1
	bl WCMi_GetSystemWork
	mov r6, #0
	str r0, [sp]
	mov r0, r6
	mov r1, r4
	mov r2, #0xc0
	bl MIi_CpuClearFast
	mov r5, #0x40
	mov r0, r11
	mov r1, r4
	mov r2, r5
	bl MIi_CpuCopyFast
	ldr r0, [sp]
	strh r6, [r4, #0x3e]
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x2df]
	ldr r1, _020DD8BC ; =0x020E4010
	mov r7, #0
	cmp r0, #1
	moveq r0, #0x20
	streqh r0, [r4]
	strneh r5, [r4]
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	ldr r0, _020DD8C0 ; =0x020E4014
	strb r3, [sp, #9]
	strb r2, [sp, #0xa]
	ldrb r5, [r1, #2]
	ldrb r3, [r1, #3]
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	strb r5, [sp, #0xb]
	strb r2, [sp, #4]
	strb r3, [sp, #0xc]
	strb r1, [sp, #5]
	ldrb r1, [r0, #3]
	ldrb r2, [r0, #2]
	mov r8, r7
	strb r1, [sp, #7]
	strb r2, [sp, #6]
	ldrb r0, [r0, #4]
	add r5, r11, #0x40
	add r6, r4, #0x40
	strb r0, [sp, #8]
	ldrh r0, [r11, #0x3e]
	cmp r0, #0
	bls _020DD88C
_020DD7E0:
	ldrb r0, [r5]
	ldrb r9, [r5, #1]
	cmp r0, #0x32
	cmpne r0, #0x2a
	cmpne r0, #0x2f
	cmpne r0, #7
	cmpne r0, #0x30
	bne _020DD804
	b _020DD83C
_020DD804:
	cmp r0, #0xdd
	bne _020DD86C
	add r1, sp, #9
	mov r2, #4
	add r0, r5, #2
	bl MI_CpuComp8
	cmp r0, #0
	beq _020DD83C
	add r1, sp, #4
	mov r2, #5
	add r0, r5, #2
	bl MI_CpuComp8
	cmp r0, #0
	bne _020DD86C
_020DD83C:
	add r10, r9, #2
	mov r0, r5
	mov r1, r6
	and r2, r10, #0xff
	bl MI_CpuCopy
	ldrh r0, [r4, #0x3e]
	and r1, r10, #0xff
	add r1, r7, r1
	add r0, r0, #1
	add r6, r6, r10
	and r7, r1, #0xff
	strh r0, [r4, #0x3e]
_020DD86C:
	ldrh r1, [r11, #0x3e]
	add r0, r8, #1
	add r2, r9, #2
	add r5, r5, r2
	mov r0, r0, lsl #0x10
	cmp r1, r0, lsr #16
	mov r8, r0, lsr #0x10
	bhi _020DD7E0
_020DD88C:
	ldr r0, [sp]
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x2df]
	cmp r0, #1
	ldreqh r1, [r4]
	moveq r0, r7, lsl #0x10
	addeq r0, r1, r0, lsr #16
	ldrneh r0, [r4]
	addne r0, r0, r7
	strh r0, [r4]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DD8BC: .word ov15_020E4010
_020DD8C0: .word ov15_020E4014
	arm_func_end WCMi_BssDescCopy

	arm_func_start WCMi_InitCpsif
WCMi_InitCpsif: ; 0x020DD8C4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020DD90C ; =wcmCpsifw
	ldrb r0, [r4]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, #1
	mov r5, #0
	strb r0, [r4]
	ldr r0, _020DD910 ; =0x020ED82C
	mov r1, r5
	mov r2, #6
	strh r5, [r4, #0x24]
	bl MI_CpuFill8
	str r5, [r4, #8]
	ldr r0, _020DD914 ; =0x020ED808
	str r5, [r4, #4]
	bl OS_InitMutex
	ldmfd sp!, {r3, r4, r5, pc}
_020DD90C: .word wcmCpsifw
_020DD910: .word ov15_020ED82C
_020DD914: .word ov15_020ED808
	arm_func_end WCMi_InitCpsif

	arm_func_start WCMi_CpsifRecvCallback
WCMi_CpsifRecvCallback: ; 0x020DD918
	stmfd sp!, {r3, lr}
	ldr r12, _020DD934 ; =wcmCpsifw
	ldr r12, [r12, #0x28]
	cmp r12, #0
	ldmeqfd sp!, {r3, pc}
	blx r12
	ldmfd sp!, {r3, pc}
_020DD934: .word wcmCpsifw
	arm_func_end WCMi_CpsifRecvCallback

	arm_func_start WCMi_GetCpsifWork
WCMi_GetCpsifWork: ; 0x020DD938
	ldr r0, _020DD940 ; =wcmCpsifw
	bx lr
_020DD940: .word wcmCpsifw
	arm_func_end WCMi_GetCpsifWork

	arm_func_start WCM_GetApMacAddress
WCM_GetApMacAddress: ; 0x020DD944
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	bl WCMi_GetSystemWork
	mov r4, r0
	bl OS_DisableInterrupts
	cmp r4, #0
	beq _020DD97C
	add r1, r4, #0x1000
	ldrb r2, [r1, #0x2de]
	cmp r2, #9
	ldreqb r1, [r1, #0x2dd]
	cmpeq r1, #0
	addeq r1, r4, #0x2e4
	addeq r5, r1, #0x1000
_020DD97C:
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end WCM_GetApMacAddress

	arm_func_start WCM_GetApEssid
WCM_GetApEssid: ; 0x020DD988
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r5, r0
	mov r4, r7
	bl WCMi_GetSystemWork
	mov r6, r0
	bl OS_DisableInterrupts
	cmp r6, #0
	beq _020DD9D0
	add r1, r6, #0x1000
	ldrb r2, [r1, #0x2de]
	cmp r2, #9
	ldreqb r1, [r1, #0x2dd]
	cmpeq r1, #0
	addeq r1, r6, #0x1200
	ldreqh r4, [r1, #0xea]
	addeq r1, r6, #0x2ec
	addeq r7, r1, #0x1000
_020DD9D0:
	bl OS_RestoreInterrupts
	cmp r5, #0
	strneh r4, [r5]
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end WCM_GetApEssid

	arm_func_start WCM_SetRecvDCFCallback
WCM_SetRecvDCFCallback: ; 0x020DD9E4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_DisableInterrupts
	ldr r1, _020DDA00 ; =wcmCpsifw
	str r4, [r1, #0x28]
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, pc}
_020DDA00: .word wcmCpsifw
	arm_func_end WCM_SetRecvDCFCallback

	arm_func_start WCM_SendDCFDataEx
WCM_SendDCFDataEx: ; 0x020DDA04
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	mov r9, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl OS_DisableInterrupts
	mov r5, r0
	bl WCMi_GetSystemWork
	cmp r0, #0
	bne _020DDA44
	mov r0, r5
	bl OS_RestoreInterrupts
	add sp, sp, #8
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020DDA44:
	ldr r10, _020DDB18 ; =0x020ED808
	mov r0, r10
	bl OS_LockMutex
	bl WCMi_GetSystemWork
	movs r4, r0
	bne _020DDA78
	mov r0, r10
	bl OS_UnlockMutex
	mov r0, r5
	bl OS_RestoreInterrupts
	add sp, sp, #8
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020DDA78:
	add r0, r4, #0x1000
	ldrb r1, [r0, #0x2de]
	cmp r1, #9
	bne _020DDA94
	ldrb r1, [r0, #0x2dd]
	cmp r1, #1
	bne _020DDAB0
_020DDA94:
	ldr r0, _020DDB18 ; =0x020ED808
	bl OS_UnlockMutex
	mov r0, r5
	bl OS_RestoreInterrupts
	add sp, sp, #8
	mvn r0, #3
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020DDAB0:
	ldr r1, [sp, #0x28]
	str r6, [sp]
	str r1, [sp, #4]
	ldrb r0, [r0, #0x2df]
	mov r1, r4
	mov r2, r8
	mov r3, r7
	bl WCMi_MergeToBuffer
	add r1, r4, #0x1000
	ldrb r1, [r1, #0x2df]
	cmp r1, #1
	bne _020DDAF8
	mov r2, r0, lsl #0x10
	mov r0, r9
	mov r1, r4
	mov r2, r2, lsr #0x10
	mov r3, #0
	bl WCMi_WmifSetDCFData
_020DDAF8:
	ldr r0, _020DDB18 ; =0x020ED808
	bl OS_UnlockMutex
	mov r0, r5
	bl OS_RestoreInterrupts
	ldr r0, [sp, #0x28]
	add r0, r7, r0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020DDB18: .word ov15_020ED808
	arm_func_end WCM_SendDCFDataEx

	arm_func_start WCMi_CpsifUnlockMutexInIRQ
WCMi_CpsifUnlockMutexInIRQ: ; 0x020DDB1C
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #8]
	ldr r1, _020DDB50 ; =OS_IrqHandler
	cmp r2, r1
	ldmnefd sp!, {r3, pc}
	ldr r1, [r0, #0xc]
	subs r1, r1, #1
	str r1, [r0, #0xc]
	ldmnefd sp!, {r3, pc}
	mov r1, #0
	str r1, [r0, #8]
	bl OS_WakeupThread
	ldmfd sp!, {r3, pc}
_020DDB50: .word OS_IrqHandler
	arm_func_end WCMi_CpsifUnlockMutexInIRQ

	arm_func_start WCMi_CpsifSetMacAddress
WCMi_CpsifSetMacAddress: ; 0x020DDB54
	ldr r1, _020DDB64 ; =0x020ED82C
	ldr r12, _020DDB68 ; =MI_CpuCopy
	mov r2, #6
	bx r12
_020DDB64: .word ov15_020ED82C
_020DDB68: .word MI_CpuCopy
	arm_func_end WCMi_CpsifSetMacAddress

	arm_func_start WCMi_MergeToBuffer
WCMi_MergeToBuffer: ; 0x020DDB6C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r3
	mov r0, r2
	mov r2, r5
	mov r6, r1
	ldr r4, [sp, #0x14]
	bl MI_CpuCopy
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ldrne r2, [sp, #0x14]
	cmpne r2, #0
	beq _020DDBA4
	add r1, r6, r5
	bl MI_CpuCopy
_020DDBA4:
	add r0, r5, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end WCMi_MergeToBuffer

	arm_func_start WcmCompareMemory
WcmCompareMemory: ; 0x020DDBAC
	stmfd sp!, {r3, lr}
	cmp r2, #0
	mov lr, #0
	bls _020DDBDC
_020DDBBC:
	ldrb r12, [r0, lr]
	ldrb r3, [r1, lr]
	cmp r12, r3
	movne r0, #0
	ldmnefd sp!, {r3, pc}
	add lr, lr, #1
	cmp lr, r2
	blo _020DDBBC
_020DDBDC:
	mov r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end WcmCompareMemory

	arm_func_start WCM_CompareBssID
WCM_CompareBssID: ; 0x020DDBE4
	ldr r12, _020DDBF0 ; =WcmCompareMemory
	mov r2, #6
	bx r12
_020DDBF0: .word WcmCompareMemory
	arm_func_end WCM_CompareBssID

	arm_func_start WCM_GetLinkLevel
WCM_GetLinkLevel: ; 0x020DDBF4
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	mov r4, r0
	bl WCMi_GetSystemWork
	cmp r0, #0
	mov r5, #0
	beq _020DDC2C
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #9
	bne _020DDC2C
	bl WCMi_GetRssiAverage
	bl WCM_CalcLinkLevel
	mov r5, r0
_020DDC2C:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end WCM_GetLinkLevel

	arm_func_start WCM_CalcLinkLevel
WCM_CalcLinkLevel: ; 0x020DDC3C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl WCMi_GetSystemWork
	cmp r4, #0x1c
	movhs r0, #3
	ldmhsfd sp!, {r4, pc}
	cmp r4, #0x16
	movhs r0, #2
	ldmhsfd sp!, {r4, pc}
	mov r0, #1
	cmp r4, #0x10
	movlo r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end WCM_CalcLinkLevel

	arm_func_start WCMi_GetRssiAverage
WCMi_GetRssiAverage: ; 0x020DDC70
	stmfd sp!, {r3, lr}
	ldr r1, _020DDCE8 ; =wcmRssiIndex
	mov r0, #0
	ldrb r1, [r1]
	cmp r1, #0x10
	bls _020DDCB4
	ldr r2, _020DDCEC ; =wcmRssi
	mov r3, r0
_020DDC90:
	ldrb r1, [r2, r3]
	add r3, r3, #1
	cmp r3, #0x10
	add r0, r0, r1
	blt _020DDC90
	mov r1, r0, asr #3
	add r0, r0, r1, lsr #28
	mov r0, r0, asr #4
	b _020DDCE0
_020DDCB4:
	cmp r1, #0
	beq _020DDCE0
	mov r12, r0
	ble _020DDCDC
	ldr r3, _020DDCEC ; =wcmRssi
_020DDCC8:
	ldrb r2, [r3, r12]
	add r12, r12, #1
	cmp r12, r1
	add r0, r0, r2
	blt _020DDCC8
_020DDCDC:
	bl _s32_div_f
_020DDCE0:
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
_020DDCE8: .word wcmRssiIndex
_020DDCEC: .word wcmRssi
	arm_func_end WCMi_GetRssiAverage

	arm_func_start WCMi_ShelterRssi
WCMi_ShelterRssi: ; 0x020DDCF0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl WCMi_GetSystemWork
	ldr r2, _020DDD48 ; =wcmRssiIndex
	mov r0, r4, asr #2
	ldrb r12, [r2]
	tst r4, #2
	addeq r0, r0, #0x19
	mov r1, r12, lsr #0x1f
	and lr, r0, #0xff
	rsb r0, r1, r12, lsl #28
	ldr r3, _020DDD4C ; =wcmRssi
	add r0, r1, r0, ror #28
	strb lr, [r3, r0]
	add r0, r12, #1
	cmp r12, #0x10
	movhs r1, r0, lsr #0x1f
	rsbhs r0, r1, r0, lsl #28
	addhs r0, r1, r0, ror #28
	addhs r0, r0, #0x10
	strb r0, [r2]
	ldmfd sp!, {r4, pc}
_020DDD48: .word wcmRssiIndex
_020DDD4C: .word wcmRssi
	arm_func_end WCMi_ShelterRssi

	arm_func_start WCMi_WmifStartupAsync
WCMi_WmifStartupAsync: ; 0x020DDD50
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	bl WCMi_GetSystemWork
	mov r5, r0
	add r0, r5, #0x1000
	ldr r1, [r0, #0x2c0]
	add r0, r5, #0x3a0
	mov r1, r1, lsl #0x10
	add r0, r0, #0x1000
	mov r1, r1, lsr #0x10
	bl WM_Init
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _020DDDC4
_020DDD88: ; jump table
	b _020DDDD8 ; case 0
	b _020DDDC4 ; case 1
	b _020DDDC4 ; case 2
	b _020DDDA4 ; case 3
	b _020DDDB8 ; case 4
	b _020DDDC4 ; case 5
	b _020DDDC4 ; case 6
_020DDDA4:
	mov r0, #0xb
	bl WCMi_SetPhase
	add sp, sp, #8
	mov r0, #7
	ldmfd sp!, {r3, r4, r5, pc}
_020DDDB8:
	add sp, sp, #8
	mov r0, #5
	ldmfd sp!, {r3, r4, r5, pc}
_020DDDC4:
	mov r0, #0xb
	bl WCMi_SetPhase
	add sp, sp, #8
	mov r0, #7
	ldmfd sp!, {r3, r4, r5, pc}
_020DDDD8:
	ldr r0, _020DDE80 ; =WcmWmcbIndication
	bl WM_SetIndCallback
	cmp r0, #0
	beq _020DDDFC
	mov r0, #0xb
	bl WCMi_SetPhase
	add sp, sp, #8
	mov r0, #7
	ldmfd sp!, {r3, r4, r5, pc}
_020DDDFC:
	add r4, sp, #0
	mov r0, r4
	bl OS_GetMacAddress
	mov r0, r4
	bl WCMi_CpsifSetMacAddress
	ldr r0, _020DDE84 ; =WcmWmcbCommon
	bl WM_Enable
	cmp r0, #2
	beq _020DDE34
	cmp r0, #3
	beq _020DDE60
	cmp r0, #8
	beq _020DDE4C
	b _020DDE60
_020DDE34:
	mov r0, #2
	bl WCMi_SetPhase
	add r0, r5, #0x1200
	mov r1, #1
	strh r1, [r0, #0xda]
	b _020DDE74
_020DDE4C:
	mov r0, #0xc
	bl WCMi_SetPhase
	add sp, sp, #8
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020DDE60:
	mov r0, #0xb
	bl WCMi_SetPhase
	add sp, sp, #8
	mov r0, #7
	ldmfd sp!, {r3, r4, r5, pc}
_020DDE74:
	mov r0, #3
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020DDE80: .word WcmWmcbIndication
_020DDE84: .word WcmWmcbCommon
	arm_func_end WCMi_WmifStartupAsync

	arm_func_start WCMi_WmifCleanupAsync
WCMi_WmifCleanupAsync: ; 0x020DDE88
	stmfd sp!, {r4, lr}
	bl WCMi_GetSystemWork
	mov r4, r0
	ldr r0, _020DDEF0 ; =WcmWmcbCommon
	bl WM_PowerOff
	cmp r0, #2
	beq _020DDEB8
	cmp r0, #3
	beq _020DDED8
	cmp r0, #8
	beq _020DDED0
	b _020DDED8
_020DDEB8:
	mov r0, #4
	bl WCMi_SetPhase
	add r0, r4, #0x1200
	mov r1, #2
	strh r1, [r0, #0xda]
	b _020DDEE8
_020DDED0:
	mov r0, #4
	ldmfd sp!, {r4, pc}
_020DDED8:
	mov r0, #0xb
	bl WCMi_SetPhase
	mov r0, #7
	ldmfd sp!, {r4, pc}
_020DDEE8:
	mov r0, #3
	ldmfd sp!, {r4, pc}
_020DDEF0: .word WcmWmcbCommon
	arm_func_end WCMi_WmifCleanupAsync

	arm_func_start WCMi_WmifBeginSearchAsync
WCMi_WmifBeginSearchAsync: ; 0x020DDEF4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl WCMi_GetSystemWork
	mov r4, r0
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #3
	beq _020DDF68
	cmp r0, #5
	beq _020DDF30
	cmp r0, #6
	beq _020DDF48
	b _020DDF60
_020DDF30:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl WcmEditScanExParam
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DDF48:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl WcmEditScanExParam
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DDF60:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DDF68:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl WcmEditScanExParam
	add r1, r4, #0x2200
	add r0, r4, #0x2000
	ldrh r1, [r1, #0xa4]
	ldr r0, [r0, #0x2a0]
	bl DC_InvalidateRange
	add r2, r4, #0x2000
	ldr r0, [r2, #0x2e4]
	add r1, r4, #0x2a0
	add r3, r0, #1
	ldr r0, _020DDFF8 ; =WcmWmcbScanEx
	add r1, r1, #0x2000
	str r3, [r2, #0x2e4]
	bl WM_StartScanEx
	cmp r0, #2
	beq _020DDFC8
	cmp r0, #3
	beq _020DDFE8
	cmp r0, #8
	beq _020DDFE0
	b _020DDFE8
_020DDFC8:
	mov r0, #5
	bl WCMi_SetPhase
	add r1, r4, #0x1200
	mov r0, #3
	strh r0, [r1, #0xda]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DDFE0:
	mov r0, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DDFE8:
	mov r0, #0xb
	bl WCMi_SetPhase
	mov r0, #7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DDFF8: .word WcmWmcbScanEx
	arm_func_end WCMi_WmifBeginSearchAsync

	arm_func_start WCMi_WmifConnectAsync
WCMi_WmifConnectAsync: ; 0x020DDFFC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl WCMi_GetSystemWork
	mov r4, r0
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x2de]
	mov r2, #0x50
	cmp r0, #3
	addeq r0, r4, #0x1300
	ldreqh r1, [r0, #0xe]
	orreq r1, r1, #3
	streqh r1, [r0, #0x10]
	ldr r1, _020DE0A0 ; =0x0000FFFF
	ldr r0, _020DE0A4 ; =WcmWmcbCommon
	mov r3, r1
	str r1, [sp]
	bl WM_SetLifeTime
	cmp r0, #2
	beq _020DE05C
	cmp r0, #3
	beq _020DE080
	cmp r0, #8
	beq _020DE074
	b _020DE080
_020DE05C:
	mov r0, #8
	bl WCMi_SetPhase
	add r0, r4, #0x1200
	mov r1, #5
	strh r1, [r0, #0xda]
	b _020DE094
_020DE074:
	add sp, sp, #4
	mov r0, #4
	ldmfd sp!, {r3, r4, pc}
_020DE080:
	mov r0, #0xb
	bl WCMi_SetPhase
	add sp, sp, #4
	mov r0, #7
	ldmfd sp!, {r3, r4, pc}
_020DE094:
	mov r0, #3
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020DE0A0: .word 0x0000FFFF
_020DE0A4: .word WcmWmcbCommon
	arm_func_end WCMi_WmifConnectAsync

	arm_func_start WCMi_WmifDisconnectAsync
WCMi_WmifDisconnectAsync: ; 0x020DE0A8
	stmfd sp!, {r4, lr}
	bl WCMi_GetSystemWork
	mov r4, r0
	ldr r0, _020DE110 ; =WcmWmcbEndDCF
	bl WM_EndDCF
	cmp r0, #2
	beq _020DE0D8
	cmp r0, #3
	beq _020DE0F8
	cmp r0, #8
	beq _020DE0F0
	b _020DE0F8
_020DE0D8:
	mov r0, #0xa
	bl WCMi_SetPhase
	add r0, r4, #0x1200
	mov r1, #6
	strh r1, [r0, #0xda]
	b _020DE108
_020DE0F0:
	mov r0, #4
	ldmfd sp!, {r4, pc}
_020DE0F8:
	mov r0, #0xb
	bl WCMi_SetPhase
	mov r0, #7
	ldmfd sp!, {r4, pc}
_020DE108:
	mov r0, #3
	ldmfd sp!, {r4, pc}
_020DE110: .word WcmWmcbEndDCF
	arm_func_end WCMi_WmifDisconnectAsync

	arm_func_start WCMi_WmifTerminateAsync
WCMi_WmifTerminateAsync: ; 0x020DE114
	stmfd sp!, {r3, r4, r5, lr}
	bl WCMi_GetSystemWork
	mov r5, r0
	bl WMi_GetStatusAddress
	mov r4, r0
	mov r1, #2
	bl DC_InvalidateRange
	ldrh r0, [r4]
	cmp r0, #0
	beq _020DE150
	cmp r0, #1
	beq _020DE174
	cmp r0, #2
	beq _020DE180
	b _020DE18C
_020DE150:
	bl WM_Finish
	cmp r0, #0
	bne _020DE1A0
	mov r0, #1
	bl WCMi_SetPhase
	add r1, r5, #0x1200
	mov r0, #0
	strh r0, [r1, #0xda]
	ldmfd sp!, {r3, r4, r5, pc}
_020DE174:
	ldr r0, _020DE1F4 ; =WcmWmcbCommon
	bl WM_Disable
	b _020DE1A0
_020DE180:
	ldr r0, _020DE1F4 ; =WcmWmcbCommon
	bl WM_PowerOff
	b _020DE1A0
_020DE18C:
	ldr r0, _020DE1F8 ; =WcmWmcbReset
	add r1, r5, #0x1000
	mov r2, #1
	strb r2, [r1, #0x2dd]
	bl WM_Reset
_020DE1A0:
	cmp r0, #2
	beq _020DE1BC
	cmp r0, #3
	beq _020DE1DC
	cmp r0, #8
	beq _020DE1D4
	b _020DE1DC
_020DE1BC:
	mov r0, #0xd
	bl WCMi_SetPhase
	add r0, r5, #0x1200
	mov r1, #9
	strh r1, [r0, #0xda]
	b _020DE1EC
_020DE1D4:
	mov r0, #4
	ldmfd sp!, {r3, r4, r5, pc}
_020DE1DC:
	mov r0, #0xb
	bl WCMi_SetPhase
	mov r0, #7
	ldmfd sp!, {r3, r4, r5, pc}
_020DE1EC:
	mov r0, #3
	ldmfd sp!, {r3, r4, r5, pc}
_020DE1F4: .word WcmWmcbCommon
_020DE1F8: .word WcmWmcbReset
	arm_func_end WCMi_WmifTerminateAsync

	arm_func_start WCMi_WmifSetDCFData
WCMi_WmifSetDCFData: ; 0x020DE1FC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r3
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl WCMi_GetCpsifWork
	mov r4, r0
	cmp r5, #0
	bne _020DE234
	ldr r0, _020DE2AC ; =WcmWmcbSetDCFData
	mov r1, r8
	mov r2, r7
	mov r3, r6
	b _020DE248
_020DE234:
	ldr r0, _020DE2B0 ; =WcmWmcbSetDCFDataAsync
	mov r1, r8
	mov r2, r7
	mov r3, r6
	str r5, [r4, #0x2c]
_020DE248:
	bl WM_SetDCFData
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020DE27C
_020DE258: ; jump table
	b _020DE27C ; case 0
	b _020DE27C ; case 1
	b _020DE284 ; case 2
	b _020DE27C ; case 3
	b _020DE27C ; case 4
	b _020DE27C ; case 5
	b _020DE27C ; case 6
	b _020DE27C ; case 7
	b _020DE27C ; case 8
_020DE27C:
	mvn r0, #4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DE284:
	cmp r5, #0
	bne _020DE2A4
	add r0, r4, #4
	bl OS_SleepThread
	ldrh r0, [r4, #0x24]
	cmp r0, #0
	mvnne r0, #4
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_020DE2A4:
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DE2AC: .word WcmWmcbSetDCFData
_020DE2B0: .word WcmWmcbSetDCFDataAsync
	arm_func_end WCMi_WmifSetDCFData

	arm_func_start WCMi_WmifGetAllowedChannel
WCMi_WmifGetAllowedChannel: ; 0x020DE2B4
	stmfd sp!, {r3, lr}
	bl WM_GetAllowedChannel
	cmp r0, #0
	mov r3, #0x8000
	mov r2, #1
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	tst r0, #0x8000
	bne _020DE2F0
_020DE2D8:
	mov r1, r3, asr #1
	orr r1, r1, #0x8000
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
	tst r3, r0
	beq _020DE2D8
_020DE2F0:
	tst r0, #1
	bne _020DE310
_020DE2F8:
	mov r1, r2, lsl #1
	orr r1, r1, #1
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	tst r2, r0
	beq _020DE2F8
_020DE310:
	mov r0, r3, lsl #0x11
	mov r1, r2, lsr #1
	orr r0, r1, r0, lsr #16
	mvn r0, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r3, pc}
	arm_func_end WCMi_WmifGetAllowedChannel

	arm_func_start WcmWmReset
WcmWmReset: ; 0x020DE32C
	stmfd sp!, {r3, lr}
	bl WCMi_GetSystemWork
	add r1, r0, #0x1000
	ldrb r0, [r1, #0x2dd]
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r2, #1
	ldr r0, _020DE37C ; =WcmWmcbReset
	strb r2, [r1, #0x2dd]
	bl WM_Reset
	cmp r0, #2
	ldmeqfd sp!, {r3, pc}
	mov r0, #0xb
	bl WCMi_SetPhase
	mov r0, #7
	mov r1, #0
	mov r2, r1
	add r3, r0, #0x248
	bl WCMi_Notify
	ldmfd sp!, {r3, pc}
_020DE37C: .word WcmWmcbReset
	arm_func_end WcmWmReset

	arm_func_start WcmWmcbIndication
WcmWmcbIndication: ; 0x020DE380
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl WCMi_GetSystemWork
	ldrh r1, [r4, #2]
	cmp r1, #8
	ldreqh r1, [r4, #4]
	cmpeq r1, #0x16
	ldreqh r1, [r4, #6]
	cmpeq r1, #0x25
	ldmnefd sp!, {r4, pc}
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x2de]
	sub r0, r0, #8
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, pc}
_020DE3C0: ; jump table
	b _020DE3D4 ; case 0
	b _020DE3E0 ; case 1
	b _020DE3E8 ; case 2
	ldmfd sp!, {r4, pc} ; case 3
	b _020DE3E0 ; case 4
_020DE3D4:
	mov r0, #0xc
	bl WCMi_SetPhase
	ldmfd sp!, {r4, pc}
_020DE3E0:
	bl WcmWmReset
	ldmfd sp!, {r4, pc}
_020DE3E8:
	mov r0, #0xc
	bl WCMi_SetPhase
	ldmfd sp!, {r4, pc}
	arm_func_end WcmWmcbIndication

	arm_func_start WcmWmcbCommon
WcmWmcbCommon: ; 0x020DE3F4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, #0x14
	bl WCMi_GetSystemWork
	ldrh r1, [r6, #2]
	mov r4, r0
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _020DE650
_020DE41C: ; jump table
	b _020DE430 ; case 0
	b _020DE618 ; case 1
	b _020DE650 ; case 2
	b _020DE650 ; case 3
	b _020DE650 ; case 4
_020DE430:
	ldrh r0, [r6]
	cmp r0, #0x19
	bgt _020DE468
	bge _020DE524
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _020DE58C
_020DE44C: ; jump table
	b _020DE58C ; case 0
	b _020DE58C ; case 1
	b _020DE58C ; case 2
	b _020DE484 ; case 3
	b _020DE490 ; case 4
	b _020DE4E4 ; case 5
	b _020DE508 ; case 6
_020DE468:
	cmp r0, #0x1d
	bgt _020DE478
	beq _020DE514
	b _020DE58C
_020DE478:
	cmp r0, #0x27
	beq _020DE540
	b _020DE58C
_020DE484:
	ldr r0, _020DE688 ; =WcmWmcbCommon
	bl WM_PowerOn
	b _020DE588
_020DE490:
	bl WM_Finish
	cmp r0, #0
	bne _020DE4C0
	mov r0, #1
	bl WCMi_SetPhase
	mov r0, #0
	mov r1, r0
	mov r2, r0
	mov r3, #0x2a4
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DE4C0:
	mov r0, #0xb
	bl WCMi_SetPhase
	mov r0, #7
	mov r1, #0
	mov r2, r1
	rsb r3, r0, #0x2b4
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DE4E4:
	mov r0, #3
	bl WCMi_SetPhase
	mov r0, #0
	mov r1, r0
	mov r2, r0
	mov r3, #0x2b4
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DE508:
	ldr r0, _020DE688 ; =WcmWmcbCommon
	bl WM_Disable
	b _020DE588
_020DE514:
	ldr r0, _020DE688 ; =WcmWmcbCommon
	mov r1, #0
	bl WM_SetBeaconIndication
	b _020DE588
_020DE524:
	add r0, r4, #0x1000
	ldrb r1, [r0, #0x290]
	ldrb r2, [r0, #0x291]
	ldr r0, _020DE688 ; =WcmWmcbCommon
	add r3, r4, #0x1240
	bl WM_SetWEPKeyEx
	b _020DE588
_020DE540:
	add r0, r4, #0x1000
	ldr r1, [r0, #0x2d4]
	mov r2, #1
	and r0, r1, #0xc0000
	cmp r0, #0xc0000
	and r0, r1, #0x30000
	movne r2, #0
	cmp r0, #0x30000
	mov r0, r2, lsl #0x10
	mov r12, r0, lsr #0x10
	mov r3, #1
	add r1, r4, #0x2e0
	ldr r0, _020DE68C ; =WcmWmcbConnect
	moveq r3, #0
	add r1, r1, #0x1000
	mov r2, #0
	str r12, [sp]
	bl WM_StartConnectEx
_020DE588:
	mov r5, r0
_020DE58C:
	cmp r5, #2
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	cmp r5, #3
	beq _020DE5E0
	cmp r5, #8
	bne _020DE5E0
	mov r0, #0xc
	bl WCMi_SetPhase
	add r0, r4, #0x1200
	ldrsh r0, [r0, #0xda]
	mov r2, #0
	mov r3, #0x2f0
	cmp r0, #5
	addeq r0, r4, #0x2e0
	addeq r1, r0, #0x1000
	movne r1, #0
	mov r0, #1
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DE5E0:
	mov r0, #0xb
	bl WCMi_SetPhase
	add r0, r4, #0x1200
	ldrsh r0, [r0, #0xda]
	mov r2, #0
	cmp r0, #5
	addeq r0, r4, #0x2e0
	addeq r1, r0, #0x1000
	mov r0, #7
	movne r1, #0
	rsb r3, r0, #0x300
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DE618:
	mov r0, #0xc
	bl WCMi_SetPhase
	add r0, r4, #0x1200
	ldrsh r0, [r0, #0xda]
	mov r2, #0
	cmp r0, #5
	addeq r0, r4, #0x2e0
	addeq r1, r0, #0x1000
	mov r0, #1
	movne r1, #0
	rsb r3, r0, #0x320
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DE650:
	mov r0, #0xb
	bl WCMi_SetPhase
	add r0, r4, #0x1200
	ldrsh r0, [r0, #0xda]
	mov r2, #0
	cmp r0, #5
	addeq r0, r4, #0x2e0
	addeq r1, r0, #0x1000
	mov r0, #7
	movne r1, #0
	rsb r3, r0, #0x330
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DE688: .word WcmWmcbCommon
_020DE68C: .word WcmWmcbConnect
	arm_func_end WcmWmcbCommon

	arm_func_start WcmWmcbScanEx
WcmWmcbScanEx: ; 0x020DE690
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	mov r5, #0
	mov r6, #0x14
	bl WCMi_GetSystemWork
	ldrh r1, [r4, #2]
	mov r8, r0
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _020DE8E0
_020DE6B8: ; jump table
	b _020DE6CC ; case 0
	b _020DE8D8 ; case 1
	b _020DE8E0 ; case 2
	b _020DE8E0 ; case 3
	b _020DE8E0 ; case 4
_020DE6CC:
	add r0, r8, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #5
	bne _020DE6FC
	mov r7, #6
	mov r0, r7
	bl WCMi_SetPhase
	mov r0, r5
	mov r1, r0
	mov r2, r0
	add r3, r7, #0x340
	bl WCMi_Notify
_020DE6FC:
	add r0, r8, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #6
	beq _020DE720
	cmp r0, #7
	beq _020DE86C
	cmp r0, #0xd
	beq _020DE878
	b _020DE880
_020DE720:
	add r0, r8, #0x1200
	mov r1, #7
	strh r1, [r0, #0xda]
	ldrh r0, [r4, #8]
	cmp r0, #5
	bne _020DE79C
	add r1, r8, #0x2200
	add r0, r8, #0x2000
	ldrh r1, [r1, #0xa4]
	ldr r0, [r0, #0x2a0]
	bl DC_InvalidateRange
	mov r9, #0
	mov r7, #0x35c
	mov r6, #7
	b _020DE790
_020DE75C:
	add r0, r4, r9, lsl #1
	add r2, r4, r9, lsl #2
	ldrh r1, [r0, #0x50]
	ldr r0, [r2, #0x10]
	bl WCMi_EntryApList
	str r7, [sp]
	add r0, r4, r9, lsl #2
	ldr r2, [r0, #0x10]
	mov r0, r6
	mov r1, r5
	mov r3, r4
	bl WCMi_NotifyEx
	add r9, r9, #1
_020DE790:
	ldrh r0, [r4, #0xe]
	cmp r9, r0
	blt _020DE75C
_020DE79C:
	add r0, r8, #0x1000
	ldr r1, [r0, #0x2d4]
	and r0, r1, #0xc00000
	cmp r0, #0xc00000
	bne _020DE7F8
	ldr r0, _020DE900 ; =0x00003FFE
	and r0, r1, r0
	bl MATH_CountPopulation
	movs r1, r0
	beq _020DE7F8
	add r0, r8, #0x2000
	ldr r0, [r0, #0x2e4]
	bl _u32_div_f
	cmp r1, #0
	bne _020DE7F8
	ldr r0, _020DE904 ; =0x0000036A
	mov r1, #0
	str r0, [sp]
	add r0, r8, #0x2000
	ldr r2, [r0, #0x2e4]
	mov r3, r1
	mov r0, #8
	bl WCMi_NotifyEx
_020DE7F8:
	ldrh r0, [r4, #0xa]
	clz r0, r0
	rsb r0, r0, #0x20
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl WCMi_GetNextScanChannel
	ldr r2, _020DE908 ; =0x00000001
	add r1, r8, #0x2200
	mov r0, r2, lsl r0
	mov r0, r0, asr #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	strh r0, [r1, #0xa6]
	add r1, r8, #0x2200
	add r0, r8, #0x2000
	ldrh r1, [r1, #0xa4]
	ldr r0, [r0, #0x2a0]
	bl DC_StoreRange
	add r0, r8, #0x2e4
	add r3, r0, #0x2000
	ldr r0, [r3]
	add r1, r8, #0x2a0
	add r2, r0, #1
	ldr r0, _020DE90C ; =WcmWmcbScanEx
	add r1, r1, #0x2000
	str r2, [r3]
	bl WM_StartScanEx
_020DE864:
	mov r6, r0
	b _020DE880
_020DE86C:
	ldr r0, _020DE910 ; =WcmWmcbEndScan
	bl WM_EndScan
	b _020DE864
_020DE878:
	bl WcmWmReset
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DE880:
	cmp r6, #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r6, #3
	beq _020DE8B8
	cmp r6, #8
	bne _020DE8B8
	mov r0, #0xc
	bl WCMi_SetPhase
	mov r0, #1
	mov r1, #0
	mov r2, r1
	add r3, r0, #0x394
	bl WCMi_Notify
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DE8B8:
	mov r0, #0xb
	bl WCMi_SetPhase
	mov r1, #0
	ldr r3, _020DE914 ; =0x0000039E
	mov r2, r1
	mov r0, #7
	bl WCMi_Notify
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DE8D8:
	bl WcmWmReset
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DE8E0:
	mov r0, #0xb
	bl WCMi_SetPhase
	mov r0, #7
	mov r1, #0
	mov r2, r1
	add r3, r0, #0x3a8
	bl WCMi_Notify
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DE900: .word 0x00003FFE
_020DE904: .word 0x0000036A
_020DE908: .word 0x00000001
_020DE90C: .word WcmWmcbScanEx
_020DE910: .word WcmWmcbEndScan
_020DE914: .word 0x0000039E
	arm_func_end WcmWmcbScanEx

	arm_func_start WcmWmcbEndScan
WcmWmcbEndScan: ; 0x020DE918
	stmfd sp!, {r4, lr}
	ldrh r0, [r0, #2]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _020DE96C
_020DE92C: ; jump table
	b _020DE940 ; case 0
	b _020DE964 ; case 1
	b _020DE96C ; case 2
	b _020DE96C ; case 3
	b _020DE96C ; case 4
_020DE940:
	mov r4, #3
	mov r0, r4
	bl WCMi_SetPhase
	mov r0, #0
	mov r1, r0
	mov r2, r0
	rsb r3, r4, #0x3c8
	bl WCMi_Notify
	ldmfd sp!, {r4, pc}
_020DE964:
	bl WcmWmReset
	ldmfd sp!, {r4, pc}
_020DE96C:
	mov r0, #0xb
	bl WCMi_SetPhase
	mov r0, #7
	mov r1, #0
	mov r2, r1
	rsb r3, r0, #0x3dc
	bl WCMi_Notify
	ldmfd sp!, {r4, pc}
	arm_func_end WcmWmcbEndScan

	arm_func_start WcmWmcbConnect
WcmWmcbConnect: ; 0x020DE98C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r6, #0
	bl WCMi_GetSystemWork
	ldrh r1, [r5, #2]
	mov r4, r0
	cmp r1, #0xc
	addls pc, pc, r1, lsl #2
	b _020DEB84
_020DE9B0: ; jump table
	b _020DE9E4 ; case 0
	b _020DEB68 ; case 1
	b _020DEB84 ; case 2
	b _020DEB84 ; case 3
	b _020DEB84 ; case 4
	b _020DEB84 ; case 5
	b _020DEB74 ; case 6
	b _020DEB84 ; case 7
	b _020DEB84 ; case 8
	b _020DEB84 ; case 9
	b _020DEB84 ; case 10
	b _020DEB74 ; case 11
	b _020DEB74 ; case 12
_020DE9E4:
	ldrh r0, [r5, #8]
	cmp r0, #9
	bgt _020DEA24
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _020DEB44
_020DE9FC: ; jump table
	b _020DEB44 ; case 0
	b _020DEB44 ; case 1
	b _020DEB44 ; case 2
	b _020DEB44 ; case 3
	b _020DEB44 ; case 4
	b _020DEB44 ; case 5
	ldmfd sp!, {r4, r5, r6, pc} ; case 6
	b _020DEA8C ; case 7
	b _020DEA30 ; case 8
	b _020DEA30 ; case 9
_020DEA24:
	cmp r0, #0x1a
	ldmeqfd sp!, {r4, r5, r6, pc}
	b _020DEB44
_020DEA30:
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x2de]
	sub r0, r0, #8
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_020DEA48: ; jump table
	b _020DEA64 ; case 0
	b _020DEA70 ; case 1
	b _020DEA5C ; case 2
	ldmfd sp!, {r4, r5, r6, pc} ; case 3
	b _020DEA84 ; case 4
_020DEA5C:
	add r0, r4, #0x2200
	strh r6, [r0, #0xe8]
_020DEA64:
	mov r0, #0xc
	bl WCMi_SetPhase
	ldmfd sp!, {r4, r5, r6, pc}
_020DEA70:
	add r0, r4, #0x2200
	strh r6, [r0, #0xe8]
	add r0, r4, #0x1200
	mov r1, #6
	strh r1, [r0, #0xda]
_020DEA84:
	bl WcmWmReset
	ldmfd sp!, {r4, r5, r6, pc}
_020DEA8C:
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #0xc
	bne _020DEAAC
	mov r0, #8
	bl WCMi_SetPhase
	bl WcmWmReset
	ldmfd sp!, {r4, r5, r6, pc}
_020DEAAC:
	ldrh r5, [r5, #0xa]
	cmp r5, #1
	blo _020DEB3C
	ldr r0, _020DEBA8 ; =0x000007D7
	cmp r5, r0
	bhi _020DEB3C
	ldr r0, _020DEBAC ; =WcmWmcbStartDCF
	add r3, r4, #0x2200
	add r1, r4, #0x600
	mov r2, #0x620
	strh r5, [r3, #0xe8]
	bl WM_StartDCF
	cmp r0, #2
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r0, #3
	beq _020DEB18
	cmp r0, #8
	bne _020DEB18
	mov r0, #0xc
	bl WCMi_SetPhase
	add r0, r4, #0x2e0
	add r1, r0, #0x1000
	mov r0, #1
	mov r2, r6
	mov r3, #0x430
	bl WCMi_Notify
	ldmfd sp!, {r4, r5, r6, pc}
_020DEB18:
	mov r0, #0xb
	bl WCMi_SetPhase
	add r1, r4, #0x2e0
	mov r0, #7
	add r1, r1, #0x1000
	rsb r3, r0, #0x440
	mov r2, #0
	bl WCMi_Notify
	ldmfd sp!, {r4, r5, r6, pc}
_020DEB3C:
	bl WcmWmReset
	ldmfd sp!, {r4, r5, r6, pc}
_020DEB44:
	mov r0, #0xb
	bl WCMi_SetPhase
	add r1, r4, #0x2e0
	mov r0, #7
	ldrh r2, [r5, #8]
	add r1, r1, #0x1000
	add r3, r0, #0x440
	bl WCMi_Notify
	ldmfd sp!, {r4, r5, r6, pc}
_020DEB68:
	ldrh r1, [r5, #0xe]
	add r0, r4, #0x2200
	strh r1, [r0, #0xea]
_020DEB74:
	mov r0, #8
	bl WCMi_SetPhase
	bl WcmWmReset
	ldmfd sp!, {r4, r5, r6, pc}
_020DEB84:
	mov r0, #0xb
	bl WCMi_SetPhase
	add r0, r4, #0x2e0
	ldr r3, _020DEBB0 ; =0x0000045E
	add r1, r0, #0x1000
	mov r0, #7
	mov r2, #0
	bl WCMi_Notify
	ldmfd sp!, {r4, r5, r6, pc}
_020DEBA8: .word 0x000007D7
_020DEBAC: .word WcmWmcbStartDCF
_020DEBB0: .word 0x0000045E
	arm_func_end WcmWmcbConnect

	arm_func_start WcmWmcbDisconnect
WcmWmcbDisconnect: ; 0x020DEBB4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl WCMi_GetSystemWork
	ldrh r1, [r4, #2]
	mov r5, r0
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _020DEC48
_020DEBD4: ; jump table
	b _020DEBE8 ; case 0
	b _020DEC38 ; case 1
	b _020DEC48 ; case 2
	b _020DEC38 ; case 3
	b _020DEC48 ; case 4
_020DEBE8:
	add r0, r5, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #0xc
	bne _020DEC08
	mov r0, #0xa
	bl WCMi_SetPhase
	bl WcmWmReset
	ldmfd sp!, {r3, r4, r5, pc}
_020DEC08:
	add r1, r5, #0x2200
	mov r4, #0
	mov r0, #3
	strh r4, [r1, #0xe8]
	bl WCMi_SetPhase
	add r1, r5, #0x2e0
	ldr r3, _020DEC6C ; =0x00000481
	mov r0, r4
	mov r2, r4
	add r1, r1, #0x1000
	bl WCMi_Notify
	ldmfd sp!, {r3, r4, r5, pc}
_020DEC38:
	mov r0, #0xa
	bl WCMi_SetPhase
	bl WcmWmReset
	ldmfd sp!, {r3, r4, r5, pc}
_020DEC48:
	mov r0, #0xb
	bl WCMi_SetPhase
	add r0, r5, #0x2e0
	ldr r3, _020DEC70 ; =0x00000493
	add r1, r0, #0x1000
	mov r0, #7
	mov r2, #0
	bl WCMi_Notify
	ldmfd sp!, {r3, r4, r5, pc}
_020DEC6C: .word 0x00000481
_020DEC70: .word 0x00000493
	arm_func_end WcmWmcbDisconnect

	arm_func_start WcmWmcbStartDCF
WcmWmcbStartDCF: ; 0x020DEC74
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl WCMi_GetSystemWork
	ldrh r1, [r4, #2]
	mov r5, r0
	cmp r1, #0
	bne _020DED50
	ldrh r0, [r4, #4]
	cmp r0, #0xe
	beq _020DECA8
	cmp r0, #0xf
	beq _020DECF0
	b _020DED2C
_020DECA8:
	add r0, r5, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #0xc
	bne _020DECC8
	mov r0, #8
	bl WCMi_SetPhase
	bl WcmWmReset
	ldmfd sp!, {r3, r4, r5, pc}
_020DECC8:
	mov r4, #9
	mov r0, r4
	bl WCMi_SetPhase
	add r1, r5, #0x2e0
	mov r0, #0
	mov r2, r0
	add r1, r1, #0x1000
	rsb r3, r4, #0x4c0
	bl WCMi_Notify
	ldmfd sp!, {r3, r4, r5, pc}
_020DECF0:
	ldr r0, [r4, #8]
	ldrh r0, [r0, #0xe]
	mov r0, r0, asr #8
	and r0, r0, #0xff
	bl WCMi_ShelterRssi
	ldr r0, [r4, #8]
	mov r1, #0x620
	bl DC_InvalidateRange
	ldr r2, [r4, #8]
	ldrh r3, [r2, #6]
	add r0, r2, #0x1e
	add r1, r2, #0x18
	add r2, r2, #0x2c
	bl WCMi_CpsifRecvCallback
	ldmfd sp!, {r3, r4, r5, pc}
_020DED2C:
	mov r0, #0xb
	bl WCMi_SetPhase
	add r0, r5, #0x2e0
	add r1, r0, #0x1000
	ldrh r2, [r4, #4]
	ldr r3, _020DED74 ; =0x000004C6
	mov r0, #7
	bl WCMi_Notify
	ldmfd sp!, {r3, r4, r5, pc}
_020DED50:
	mov r0, #0xb
	bl WCMi_SetPhase
	add r0, r5, #0x2e0
	ldr r3, _020DED78 ; =0x000004D1
	add r1, r0, #0x1000
	mov r0, #7
	mov r2, #0
	bl WCMi_Notify
	ldmfd sp!, {r3, r4, r5, pc}
_020DED74: .word 0x000004C6
_020DED78: .word 0x000004D1
	arm_func_end WcmWmcbStartDCF

	arm_func_start WcmWmcbEndDCF
WcmWmcbEndDCF: ; 0x020DED7C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl WCMi_GetSystemWork
	ldrh r1, [r4, #2]
	mov r5, r0
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _020DEE60
_020DED9C: ; jump table
	b _020DEDB0 ; case 0
	b _020DEE50 ; case 1
	b _020DEE60 ; case 2
	b _020DEE50 ; case 3
	b _020DEE60 ; case 4
_020DEDB0:
	add r0, r5, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #0xc
	bne _020DEDD0
	mov r0, #0xa
	bl WCMi_SetPhase
	bl WcmWmReset
	ldmfd sp!, {r3, r4, r5, pc}
_020DEDD0:
	mov r4, #0
	ldr r0, _020DEE84 ; =WcmWmcbDisconnect
	mov r1, r4
	bl WM_Disconnect
	cmp r0, #2
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r0, #3
	beq _020DEE1C
	cmp r0, #8
	bne _020DEE2C
	mov r0, #0xc
	bl WCMi_SetPhase
	add r0, r5, #0x2e0
	add r1, r0, #0x1000
	ldr r3, _020DEE88 ; =0x000004FA
	mov r2, r4
	mov r0, #1
	bl WCMi_Notify
	ldmfd sp!, {r3, r4, r5, pc}
_020DEE1C:
	mov r0, #0xa
	bl WCMi_SetPhase
	bl WcmWmReset
	ldmfd sp!, {r3, r4, r5, pc}
_020DEE2C:
	mov r0, #0xb
	bl WCMi_SetPhase
	add r0, r5, #0x2e0
	add r1, r0, #0x1000
	ldr r3, _020DEE8C ; =0x00000506
	mov r2, r4
	mov r0, #7
	bl WCMi_Notify
	ldmfd sp!, {r3, r4, r5, pc}
_020DEE50:
	mov r0, #0xa
	bl WCMi_SetPhase
	bl WcmWmReset
	ldmfd sp!, {r3, r4, r5, pc}
_020DEE60:
	mov r0, #0xb
	bl WCMi_SetPhase
	add r1, r5, #0x2e0
	mov r0, #7
	add r1, r1, #0x1000
	rsb r3, r0, #0x520
	mov r2, #0
	bl WCMi_Notify
	ldmfd sp!, {r3, r4, r5, pc}
_020DEE84: .word WcmWmcbDisconnect
_020DEE88: .word 0x000004FA
_020DEE8C: .word 0x00000506
	arm_func_end WcmWmcbEndDCF

	arm_func_start WcmWmcbReset
WcmWmcbReset: ; 0x020DEE90
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r5, #3
	bl WCMi_GetSystemWork
	ldrh r1, [r4, #2]
	mov r4, r0
	cmp r1, #0
	bne _020DF13C
	add r1, r4, #0x1000
	mov r6, #0
	strb r6, [r1, #0x2dd]
	add r0, r4, #0x2200
	strh r6, [r0, #0xe8]
	ldrb r2, [r1, #0x2de]
	cmp r2, #0xd
	addls pc, pc, r2, lsl #2
	b _020DF114
_020DEED8: ; jump table
	b _020DF114 ; case 0
	b _020DF114 ; case 1
	b _020DF114 ; case 2
	b _020DF114 ; case 3
	b _020DF114 ; case 4
	b _020DEF10 ; case 5
	b _020DEF10 ; case 6
	b _020DEF34 ; case 7
	b _020DEF58 ; case 8
	b _020DF058 ; case 9
	b _020DF080 ; case 10
	b _020DF114 ; case 11
	b _020DF058 ; case 12
	b _020DF0A8 ; case 13
_020DEF10:
	mov r0, r5
	bl WCMi_SetPhase
	ldr r3, _020DF160 ; =0x0000053C
	mov r1, r6
	mov r2, r6
	mov r0, #1
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DEF34:
	mov r0, r5
	bl WCMi_SetPhase
	ldr r3, _020DF164 ; =0x00000542
	mov r0, r6
	mov r1, r6
	mov r2, r6
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DEF58:
	ldrh r5, [r0, #0xea]
	strh r6, [r0, #0xea]
	cmp r5, #0x12
	bne _020DF030
	add r0, r4, #0x1300
	ldrh r2, [r0, #0x10]
	and r3, r2, #0x24
	cmp r3, #0x24
	beq _020DF030
	orr r2, r2, #0x24
	strh r2, [r0, #0x10]
	ldr r1, [r1, #0x2d4]
	mov r3, #1
	and r0, r1, #0xc0000
	cmp r0, #0xc0000
	and r0, r1, #0x30000
	moveq r6, #1
	cmp r0, #0x30000
	mov r0, r6, lsl #0x10
	mov r6, r0, lsr #0x10
	add r1, r4, #0x2e0
	ldr r0, _020DF168 ; =WcmWmcbConnect
	moveq r3, #0
	add r1, r1, #0x1000
	mov r2, #0
	str r6, [sp]
	bl WM_StartConnectEx
	cmp r0, #2
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	cmp r0, #3
	beq _020DF008
	cmp r0, #8
	bne _020DF008
	mov r0, #0xc
	bl WCMi_SetPhase
	add r0, r4, #0x2e0
	add r1, r0, #0x1000
	ldr r3, _020DF16C ; =0x00000563
	mov r2, r5
	mov r0, #1
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF008:
	mov r0, #0xb
	bl WCMi_SetPhase
	add r0, r4, #0x2e0
	ldr r3, _020DF170 ; =0x0000056C
	mov r2, r5
	add r1, r0, #0x1000
	mov r0, #7
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF030:
	mov r0, #3
	bl WCMi_SetPhase
	add r0, r4, #0x2e0
	add r1, r0, #0x1000
	ldr r3, _020DF174 ; =0x00000574
	mov r2, r5
	mov r0, #1
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF058:
	mov r0, r5
	bl WCMi_SetPhase
	add r1, r4, #0x2e0
	ldr r3, _020DF178 ; =0x0000057C
	mov r0, r6
	add r1, r1, #0x1000
	mov r2, #1
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF080:
	mov r0, r5
	bl WCMi_SetPhase
	add r1, r4, #0x2e0
	mov r0, r6
	mov r2, r6
	add r1, r1, #0x1000
	add r3, r5, #0x580
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF0A8:
	ldr r0, _020DF17C ; =WcmWmcbCommon
	bl WM_PowerOff
	cmp r0, #2
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	cmp r0, #3
	beq _020DF0F0
	cmp r0, #8
	bne _020DF0F0
	mov r0, #0xc
	bl WCMi_SetPhase
	mov r0, #1
	mov r1, r6
	mov r2, r6
	add r3, r0, #0x590
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF0F0:
	mov r0, #0xb
	bl WCMi_SetPhase
	mov r1, #0
	ldr r3, _020DF180 ; =0x0000059A
	mov r2, r1
	mov r0, #7
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF114:
	mov r0, #0xb
	bl WCMi_SetPhase
	add r0, r4, #0x1000
	ldrb r2, [r0, #0x2de]
	mov r0, #7
	mov r1, #0
	mov r3, #0x5a0
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF13C:
	mov r0, #0xb
	bl WCMi_SetPhase
	mov r0, #7
	mov r1, #0
	mov r2, r1
	add r3, r0, #0x5a0
	bl WCMi_Notify
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF160: .word 0x0000053C
_020DF164: .word 0x00000542
_020DF168: .word WcmWmcbConnect
_020DF16C: .word 0x00000563
_020DF170: .word 0x0000056C
_020DF174: .word 0x00000574
_020DF178: .word 0x0000057C
_020DF17C: .word WcmWmcbCommon
_020DF180: .word 0x0000059A
	arm_func_end WcmWmcbReset

	arm_func_start WcmEditScanExParam
WcmEditScanExParam: ; 0x020DF184
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r2
	mov r7, r0
	mov r6, r1
	mov r4, #0
	bl WCMi_GetSystemWork
	mov r5, r0
	mov r0, r8
	bl WCM_UpdateOption
	add r1, r5, #0x600
	add r0, r5, #0x2000
	str r1, [r0, #0x2a0]
	add r1, r5, #0x2200
	mov r2, #0x400
	mov r0, r4
	strh r2, [r1, #0xa4]
	bl WCMi_GetNextScanChannel
	mov r1, #1
	mov r0, r1, lsl r0
	mov r1, r0, asr #1
	add r0, r5, #0x2200
	strh r1, [r0, #0xa6]
	add r0, r5, #0x1200
	ldrh r0, [r0, #0xd8]
	cmp r0, #0
	bne _020DF1F0
	bl WM_GetDispersionScanPeriod
_020DF1F0:
	add r1, r5, #0x2200
	strh r0, [r1, #0xa8]
	add r0, r5, #0x1000
	ldr r0, [r0, #0x2d4]
	mov r1, #1
	and r0, r0, #0x300000
	cmp r0, #0x300000
	moveq r1, #0
	add r0, r5, #0x2200
	strh r1, [r0, #0xb0]
	cmp r7, #0
	add r1, r5, #0xaa
	mov r2, #6
	bne _020DF230
	ldr r0, _020DF2A8 ; =WCM_Bssid_Any
	b _020DF234
_020DF230:
	mov r0, r7
_020DF234:
	add r1, r1, #0x2200
	bl MI_CpuCopy8
	cmp r6, #0
	ldrne r0, _020DF2AC ; =WCM_Essid_Any
	add r1, r5, #0x2b4
	cmpne r6, r0
	mov r2, #0x20
	bne _020DF26C
	ldr r0, _020DF2AC ; =WCM_Essid_Any
	add r1, r1, #0x2000
	bl MI_CpuCopy8
	add r0, r5, #0x2200
	strh r4, [r0, #0xb2]
	b _020DF29C
_020DF26C:
	mov r0, r6
	add r1, r1, #0x2000
	bl MI_CpuCopy8
	mov r1, #0
_020DF27C:
	ldrb r0, [r6, r1]
	cmp r0, #0
	beq _020DF294
	add r1, r1, #1
	cmp r1, #0x20
	blt _020DF27C
_020DF294:
	add r0, r5, #0x2200
	strh r1, [r0, #0xb2]
_020DF29C:
	add r0, r5, #0x2000
	str r4, [r0, #0x2e4]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DF2A8: .word WCM_Bssid_Any
_020DF2AC: .word WCM_Essid_Any
	arm_func_end WcmEditScanExParam

	arm_func_start WcmWmcbSetDCFData
WcmWmcbSetDCFData: ; 0x020DF2B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl WCMi_GetCpsifWork
	ldrh r1, [r5]
	mov r4, r0
	cmp r1, #0x12
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrh r0, [r5, #2]
	strh r0, [r4, #0x24]
	ldrh r0, [r5, #2]
	cmp r0, #0
	bne _020DF2E4
	bl WCMi_ResetKeepAliveAlarm
_020DF2E4:
	add r0, r4, #4
	bl OS_WakeupThread
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end WcmWmcbSetDCFData

	arm_func_start WcmWmcbSetDCFDataAsync
WcmWmcbSetDCFDataAsync: ; 0x020DF2F0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl WCMi_GetCpsifWork
	ldrh r1, [r5]
	mov r4, r0
	cmp r1, #0x12
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrh r0, [r5, #2]
	strh r0, [r4, #0x24]
	ldrh r0, [r5, #2]
	cmp r0, #0
	bne _020DF324
	bl WCMi_ResetKeepAliveAlarm
_020DF324:
	ldrh r0, [r4, #0x24]
	mov r5, #0
	cmp r0, #0
	beq _020DF338
	mvn r5, #4
_020DF338:
	ldr r6, [r4, #0x2c]
	mov r1, #0
	add r0, r4, #0xc
	str r1, [r4, #0x2c]
	bl WCMi_CpsifUnlockMutexInIRQ
	mov r0, r5
	blx r6
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end WcmWmcbSetDCFDataAsync

    .rodata
	.global ov15_020E3CCC
ov15_020E3CCC:
	.byte 0x21, 0x53, 0x44, 0x57
	.global dwcacmakelist_WAYPORT_SSID
dwcacmakelist_WAYPORT_SSID:
	.byte 0x57, 0x61, 0x79, 0x70, 0x6F, 0x72, 0x74, 0x32
	.global dwcacmakelist_FREESPOT_SSID
dwcacmakelist_FREESPOT_SSID:
	.byte 0x46, 0x52, 0x45, 0x45
	.byte 0x53, 0x50, 0x4F, 0x54
	.global dwcacmakelist_NINTENDOWFC_SSID
dwcacmakelist_NINTENDOWFC_SSID:
	.byte 0x4E, 0x49, 0x4E, 0x54, 0x45, 0x4E, 0x44, 0x4F, 0x57, 0x46, 0x43, 0x00
	.global DWC_AC_SEARCH_CHANNEL
DWC_AC_SEARCH_CHANNEL:
	.byte 0x02, 0x80, 0x00, 0x00, 0x04, 0x80, 0x00, 0x00, 0x08, 0x80, 0x00, 0x00, 0x10, 0x80, 0x00, 0x00
	.byte 0x20, 0x80, 0x00, 0x00, 0x40, 0x80, 0x00, 0x00, 0x80, 0x80, 0x00, 0x00, 0x00, 0x81, 0x00, 0x00
	.byte 0x00, 0x82, 0x00, 0x00, 0x00, 0x84, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00, 0x90, 0x00, 0x00
	.byte 0x00, 0xA0, 0x00, 0x00
	.global dwcacshop_CONV_BYTE_TABLE
dwcacshop_CONV_BYTE_TABLE:
	.byte 0x05, 0x01, 0x0C, 0x04, 0x02, 0x03, 0x0A, 0x00, 0x0B, 0x07, 0x09, 0x08
	.byte 0x06
	.global dwcacshop_CONV_4BIT_TABLE
dwcacshop_CONV_4BIT_TABLE:
	.byte 0x0A, 0x0D, 0x0E, 0x08, 0x09, 0x03, 0x06, 0x00, 0x0C, 0x05, 0x02, 0x07, 0x0B, 0x01, 0x0F
	.byte 0x04, 0x00, 0x00, 0x00
	.global ov15_020E3D40
ov15_020E3D40:
	.byte 0x17, 0x14, 0x11, 0x0D, 0x0B, 0x06, 0x0F, 0x0E, 0x09, 0x15, 0x0C, 0x04
	.byte 0x02, 0x01, 0x12, 0x10, 0x05, 0x03, 0x13, 0x0A, 0x07, 0x08, 0x00, 0x16
	.global DWC_AC_SOC_CONFIG
DWC_AC_SOC_CONFIG:
	.byte 0x00, 0x00, 0x00, 0x01
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0C, 0x44, 0x0E, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global DWCi_SETTING_NONE
DWCi_SETTING_NONE:
	.byte 0x00, 0x00, 0x00, 0x00
	.global DWCi_util_wifiid_exctable
DWCi_util_wifiid_exctable:
	.byte 0x01, 0x02, 0x00, 0x04, 0x03, 0x05, 0x06, 0x07
	.byte 0x07, 0x02, 0x05, 0x0A, 0x0B, 0x00, 0x0D, 0x0F, 0x0C, 0x01, 0x06, 0x08, 0x04, 0x09, 0x03, 0x0E
	.global DWCi_util_wifiid_ttable
DWCi_util_wifiid_ttable:
	.byte 0x05, 0x09, 0x01, 0x0E, 0x0C, 0x02, 0x0A, 0x00, 0x0B, 0x0D, 0x03, 0x04, 0x08, 0x06, 0x0F, 0x07
	.byte 0x2A
	.global DWCiNd_action_count
DWCiNd_action_count:
	.byte 0x59, 0x32, 0x39, 0x31, 0x62, 0x6E, 0x51, 0x2A, 0x00
	.global DWCiNd_action_list
DWCiNd_action_list:
	.byte 0x62, 0x47, 0x6C, 0x7A, 0x64, 0x41
	.byte 0x2A, 0x2A, 0x00
	.global DWCiNd_action_contents
DWCiNd_action_contents:
	.byte 0x59, 0x32, 0x39, 0x75, 0x64, 0x47, 0x56, 0x75, 0x64, 0x48, 0x4D, 0x2A, 0x00
	.global ov15_020E3DFC
ov15_020E3DFC:
	.byte 0x30, 0x30, 0x3A, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x2D, 0x30, 0x30, 0x00, 0x00, 0x00
	.global dwcind_szBASE64
dwcind_szBASE64:
	.byte 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4A, 0x4B, 0x4C, 0x4D, 0x4E, 0x4F, 0x50
	.byte 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5A, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66
	.byte 0x67, 0x68, 0x69, 0x6A, 0x6B, 0x6C, 0x6D, 0x6E, 0x6F, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76
	.byte 0x77, 0x78, 0x79, 0x7A, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x2E, 0x2D
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E3E50
ov15_020E3E50:
	.byte 0x00, 0x00, 0xC1, 0x6F, 0xF2, 0x86, 0x23, 0x00, 0x00, 0x80, 0xC6, 0xA4
	.byte 0x7E, 0x8D, 0x03, 0x00, 0x00, 0x40, 0x7A, 0x10, 0xF3, 0x5A, 0x00, 0x00, 0x00, 0xA0, 0x72, 0x4E
	.byte 0x18, 0x09, 0x00, 0x00, 0x00, 0x10, 0xA5, 0xD4, 0xE8, 0x00, 0x00, 0x00, 0x00, 0xE8, 0x76, 0x48
	.byte 0x17, 0x00, 0x00, 0x00, 0x00, 0xE4, 0x0B, 0x54, 0x02, 0x00, 0x00, 0x00, 0x00, 0xCA, 0x9A, 0x3B
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0xE1, 0xF5, 0x05, 0x00, 0x00, 0x00, 0x00, 0x80, 0x96, 0x98, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x40, 0x42, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x86, 0x01, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE8, 0x03, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E3ED0
ov15_020E3ED0:
	.byte 0x00, 0xCA, 0x9A, 0x3B, 0x00, 0xE1, 0xF5, 0x05, 0x80, 0x96, 0x98, 0x00
	.byte 0x40, 0x42, 0x0F, 0x00, 0xA0, 0x86, 0x01, 0x00, 0x10, 0x27, 0x00, 0x00, 0xE8, 0x03, 0x00, 0x00
	.byte 0x64, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.global ov15_020E3EF4
ov15_020E3EF4:
	.byte 0x2D, 0x2D, 0x74, 0x39, 0x53, 0x66, 0x34, 0x79
	.byte 0x66, 0x6A, 0x66, 0x31, 0x52, 0x74, 0x76, 0x44, 0x75, 0x33, 0x41, 0x41, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E3F0C
ov15_020E3F0C:
	.byte 0x43, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x2D, 0x44, 0x69, 0x73, 0x70, 0x6F, 0x73, 0x69, 0x74
	.byte 0x69, 0x6F, 0x6E, 0x3A, 0x20, 0x66, 0x6F, 0x72, 0x6D, 0x2D, 0x64, 0x61, 0x74, 0x61, 0x3B, 0x20
	.byte 0x6E, 0x61, 0x6D, 0x65, 0x3D, 0x22, 0x00
	.global ov15_020E3F33
ov15_020E3F33:
	.byte 0x43, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x2D, 0x54
	.byte 0x79, 0x70, 0x65, 0x3A, 0x20, 0x6D, 0x75, 0x6C, 0x74, 0x69, 0x70, 0x61, 0x72, 0x74, 0x2F, 0x66
	.byte 0x6F, 0x72, 0x6D, 0x2D, 0x64, 0x61, 0x74, 0x61, 0x3B, 0x20, 0x62, 0x6F, 0x75, 0x6E, 0x64, 0x61
	.byte 0x72, 0x79, 0x3D, 0x00
	.global ov15_020E3F60
ov15_020E3F60:
	.byte 0x43, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x2D, 0x54, 0x79, 0x70, 0x65
	.byte 0x3A, 0x20, 0x61, 0x70, 0x70, 0x6C, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x2F, 0x78, 0x2D
	.byte 0x77, 0x77, 0x77, 0x2D, 0x66, 0x6F, 0x72, 0x6D, 0x2D, 0x75, 0x72, 0x6C, 0x65, 0x6E, 0x63, 0x6F
	.byte 0x64, 0x65, 0x64, 0x0D, 0x0A, 0x00, 0x00, 0x00
	.global ov15_020E3F94
ov15_020E3F94:
	.byte 0x43, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x2D
	.byte 0x54, 0x79, 0x70, 0x65, 0x3A, 0x20, 0x61, 0x70, 0x70, 0x6C, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6F
	.byte 0x6E, 0x2F, 0x6F, 0x63, 0x74, 0x65, 0x74, 0x2D, 0x73, 0x74, 0x72, 0x65, 0x61, 0x6D, 0x0D, 0x0A
	.byte 0x43, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x2D, 0x54, 0x72, 0x61, 0x6E, 0x73, 0x66, 0x65, 0x72
	.byte 0x2D, 0x45, 0x6E, 0x63, 0x6F, 0x64, 0x69, 0x6E, 0x67, 0x3A, 0x20, 0x62, 0x69, 0x6E, 0x61, 0x72
	.byte 0x79, 0x0D, 0x0A, 0x00
	.global ov15_020E3FE0
ov15_020E3FE0:
	.byte 0x15, 0x03, 0x00, 0x00, 0x02, 0x01, 0x29, 0x00
	.global WCM_Bssid_Any
WCM_Bssid_Any:
	.byte 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x00, 0x00
	.global WCM_Essid_Any
WCM_Essid_Any:
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF
	.global ov15_020E4010
ov15_020E4010:
	.byte 0x00, 0x50, 0xF2, 0x01
	.global ov15_020E4014
ov15_020E4014:
	.byte 0x00, 0x50, 0xF2, 0x02, 0x00, 0x00, 0x00, 0x00

    .data
	.global ov15_020E4340
ov15_020E4340:
	.byte 0x10, 0x00, 0x00, 0x00
	.global ov15_020E4344
ov15_020E4344:
	.byte 0x02, 0x02, 0x03, 0x05, 0x08
	.global ov15_020E4349
ov15_020E4349:
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00
	.global ov15_020E4350
ov15_020E4350:
	.byte 0xE8, 0x03, 0x00, 0x00, 0xDC, 0x05, 0x00, 0x00, 0xD0, 0x07, 0x00, 0x00, 0xC4, 0x09, 0x00, 0x00
	.byte 0xB8, 0x0B, 0x00, 0x00, 0xAC, 0x0D, 0x00, 0x00
	.global ov15_020E4368
ov15_020E4368:
	.byte 0xAA, 0xAA, 0x03, 0x00, 0x00, 0x00, 0x08, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4374
ov15_020E4374:
	.byte 0x4E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x44, 0x53, 0x00, 0x00
	.global ov15_020E4380
ov15_020E4380:
	.byte 0x4E, 0x57, 0x43, 0x55, 0x53, 0x42, 0x41, 0x50, 0x00, 0x00, 0x00, 0x00
	.global dwcacshop_SHMASKkey0
dwcacshop_SHMASKkey0:
	.word ov15_020E43D8
	.word ov15_020E439C
	.word ov15_020E43BC
	.word ov15_020E43AC
	.global ov15_020E439C
ov15_020E439C:
	.byte 0x67, 0x77, 0x69, 0x27
	.byte 0x36, 0x26, 0x66, 0x73, 0x3D, 0x30, 0x4E, 0x66, 0x7E, 0x00, 0x00, 0x00
	.global ov15_020E43AC
ov15_020E43AC:
	.byte 0x25, 0x28, 0x65, 0x67
	.byte 0x45, 0x72, 0x29, 0x61, 0x67, 0x28, 0x73, 0x26, 0x6D, 0x00, 0x00, 0x00
	.global ov15_020E43BC
ov15_020E43BC:
	.byte 0x39, 0x35, 0x32, 0x75
	.byte 0x79, 0x62, 0x6A, 0x6E, 0x70, 0x6D, 0x75, 0x39, 0x30, 0x33, 0x62, 0x69, 0x61, 0x40, 0x62, 0x6B
	.byte 0x35, 0x6D, 0x5B, 0x2D, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E43D8
ov15_020E43D8:
	.byte 0x33, 0x38, 0x67, 0x36, 0x7A, 0x78, 0x6A, 0x6B
	.byte 0x32, 0x30, 0x67, 0x76, 0x6D, 0x76, 0x5D, 0x36, 0x5E, 0x3D, 0x6A, 0x26, 0x25, 0x76, 0x59, 0x31
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E43F4
ov15_020E43F4:
	.byte 0x4E, 0x44, 0x57, 0x43, 0x53, 0x48, 0x41, 0x50, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4400
ov15_020E4400:
	.byte 0x4E, 0x57, 0x43, 0x55, 0x53, 0x42, 0x41, 0x50, 0x00, 0x00, 0x00, 0x00, 0x4E, 0x49, 0x4E, 0x54
	.byte 0x45, 0x4E, 0x44, 0x4F, 0x2D, 0x44, 0x53, 0x00
	.global ov15_020E4418
ov15_020E4418:
	.byte 0x00, 0x00, 0x00, 0x00
	.global DWCauthhttpparam
DWCauthhttpparam:
	.word ov15_020E4418
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x20, 0x4E, 0x00, 0x00
	.global ov15_020E4438
ov15_020E4438:
	.byte 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F
	.byte 0x6E, 0x61, 0x73, 0x2E, 0x6E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x77, 0x69, 0x66, 0x69
	.byte 0x2E, 0x6E, 0x65, 0x74, 0x2F, 0x61, 0x63, 0x00
	.global ov15_020E4458
ov15_020E4458:
	.byte 0x44, 0x61, 0x74, 0x65, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4460
ov15_020E4460:
	.byte 0x68, 0x74, 0x74, 0x70, 0x72, 0x65, 0x73, 0x75, 0x6C, 0x74, 0x00, 0x00
	.global ov15_020E446C
ov15_020E446C:
	.byte 0x72, 0x65, 0x74, 0x75
	.byte 0x72, 0x6E, 0x63, 0x64, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4478
ov15_020E4478:
	.byte 0x74, 0x6F, 0x6B, 0x65, 0x6E, 0x00, 0x00, 0x00
	.global ov15_020E4480
ov15_020E4480:
	.byte 0x6C, 0x6F, 0x63, 0x61, 0x74, 0x6F, 0x72, 0x00
	.global ov15_020E4488
ov15_020E4488:
	.byte 0x63, 0x68, 0x61, 0x6C, 0x6C, 0x65, 0x6E, 0x67
	.byte 0x65, 0x00, 0x00, 0x00
	.global ov15_020E4494
ov15_020E4494:
	.byte 0x64, 0x61, 0x74, 0x65, 0x74, 0x69, 0x6D, 0x65, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E44A0
ov15_020E44A0:
	.byte 0x53, 0x65, 0x74, 0x2D, 0x43, 0x6F, 0x6F, 0x6B, 0x69, 0x65, 0x00, 0x00
	.global ov15_020E44AC
ov15_020E44AC:
	.byte 0x61, 0x63, 0x63, 0x74
	.byte 0x63, 0x72, 0x65, 0x61, 0x74, 0x65, 0x00, 0x00
	.global ov15_020E44B8
ov15_020E44B8:
	.byte 0x61, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x00, 0x00
	.global ov15_020E44C0
ov15_020E44C0:
	.byte 0x6C, 0x6F, 0x67, 0x69, 0x6E, 0x00, 0x00, 0x00
	.global ov15_020E44C8
ov15_020E44C8:
	.byte 0x67, 0x73, 0x62, 0x72, 0x63, 0x64, 0x00, 0x00
	.global ov15_020E44D0
ov15_020E44D0:
	.byte 0x59, 0x00, 0x00, 0x00
	.global ov15_020E44D4
ov15_020E44D4:
	.byte 0x69, 0x73, 0x77, 0x66, 0x63, 0x00, 0x00, 0x00
	.global ov15_020E44DC
ov15_020E44DC:
	.byte 0x69, 0x6E, 0x67, 0x61
	.byte 0x6D, 0x65, 0x73, 0x6E, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E44E8
ov15_020E44E8:
	.byte 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F
	.byte 0x6E, 0x61, 0x73, 0x2E, 0x74, 0x65, 0x73, 0x74, 0x2E, 0x6E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64
	.byte 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74, 0x2F, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4510
ov15_020E4510:
	.byte 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F, 0x6E, 0x61, 0x73, 0x2E, 0x64, 0x65, 0x76, 0x2E
	.byte 0x6E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74
	.byte 0x2F, 0x61, 0x63, 0x00
	.global ov15_020E4534
ov15_020E4534:
	.byte 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F, 0x6E, 0x61, 0x73, 0x2E
	.byte 0x6E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74
	.byte 0x2F, 0x61, 0x63, 0x00
	.global ov15_020E4554
ov15_020E4554:
	.byte 0x25, 0x30, 0x31, 0x33, 0x6C, 0x6C, 0x75, 0x00
	.global ov15_020E455C
ov15_020E455C:
	.byte 0x25, 0x30, 0x33, 0x75
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4564
ov15_020E4564:
	.byte 0x25, 0x30, 0x32, 0x78, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E456C
ov15_020E456C:
	.byte 0x25, 0x30, 0x32, 0x78
	.byte 0x25, 0x30, 0x32, 0x78, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4578
ov15_020E4578:
	.byte 0x25, 0x30, 0x32, 0x64, 0x25, 0x30, 0x32, 0x64
	.byte 0x25, 0x30, 0x32, 0x64, 0x25, 0x30, 0x32, 0x64, 0x25, 0x30, 0x32, 0x64, 0x25, 0x30, 0x32, 0x64
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4594
ov15_020E4594:
	.byte 0x25, 0x30, 0x32, 0x64, 0x3A, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30
	.byte 0x2D, 0x30, 0x30, 0x00
	.global ov15_020E45A4
ov15_020E45A4:
	.byte 0x25, 0x30, 0x33, 0x64, 0x25, 0x30, 0x33, 0x64, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E45B0
ov15_020E45B0:
	.byte 0x73, 0x64, 0x6B, 0x76, 0x65, 0x72, 0x00, 0x00
	.global ov15_020E45B8
ov15_020E45B8:
	.byte 0x75, 0x73, 0x65, 0x72, 0x69, 0x64, 0x00, 0x00
	.global ov15_020E45C0
ov15_020E45C0:
	.byte 0x70, 0x61, 0x73, 0x73, 0x77, 0x64, 0x00, 0x00
	.global ov15_020E45C8
ov15_020E45C8:
	.byte 0x62, 0x73, 0x73, 0x69, 0x64, 0x00, 0x00, 0x00
	.global ov15_020E45D0
ov15_020E45D0:
	.byte 0x61, 0x70, 0x69, 0x6E, 0x66, 0x6F, 0x00, 0x00
	.global ov15_020E45D8
ov15_020E45D8:
	.byte 0x67, 0x61, 0x6D, 0x65, 0x63, 0x64, 0x00, 0x00
	.global ov15_020E45E0
ov15_020E45E0:
	.byte 0x6D, 0x61, 0x6B, 0x65, 0x72, 0x63, 0x64, 0x00
	.global ov15_020E45E8
ov15_020E45E8:
	.byte 0x75, 0x6E, 0x69, 0x74, 0x63, 0x64, 0x00, 0x00
	.global ov15_020E45F0
ov15_020E45F0:
	.byte 0x6D, 0x61, 0x63, 0x61, 0x64, 0x72, 0x00, 0x00
	.global ov15_020E45F8
ov15_020E45F8:
	.byte 0x6C, 0x61, 0x6E, 0x67, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4600
ov15_020E4600:
	.byte 0x62, 0x69, 0x72, 0x74, 0x68, 0x00, 0x00, 0x00
	.global ov15_020E4608
ov15_020E4608:
	.byte 0x64, 0x65, 0x76, 0x74, 0x69, 0x6D, 0x65, 0x00
	.global ov15_020E4610
ov15_020E4610:
	.byte 0x64, 0x65, 0x76, 0x6E, 0x61, 0x6D, 0x65, 0x00
	.global ov15_020E4618
ov15_020E4618:
	.byte 0x73, 0x73, 0x69, 0x64, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4620
ov15_020E4620:
	.byte 0x4E, 0x69, 0x74, 0x72, 0x6F, 0x20, 0x57, 0x69, 0x46, 0x69, 0x20, 0x53, 0x44, 0x4B, 0x2F, 0x25
	.byte 0x64, 0x2E, 0x25, 0x64, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4638
ov15_020E4638:
	.byte 0x55, 0x73, 0x65, 0x72, 0x2D, 0x41, 0x67, 0x65
	.byte 0x6E, 0x74, 0x00, 0x00
	.global ov15_020E4644
ov15_020E4644:
	.byte 0x48, 0x54, 0x54, 0x50, 0x5F, 0x58, 0x5F, 0x47, 0x41, 0x4D, 0x45, 0x43
	.byte 0x44, 0x00, 0x00, 0x00
	.global DWCcainfo
DWCcainfo:
	.word ov15_020E5290
	.word ov15_020E5164
	.word ov15_020E5444
	.word ov15_020E5520
	.word ov15_020E4A3C
	.word ov15_020E4B54
	.word ov15_020E4C64
	.word ov15_020E48F0
	.word ov15_020E504C
	.word ov15_020E4F2C
	.word ov15_020E4D2C
	.word ov15_020E4E44
	.global ov15_020E4684
ov15_020E4684:
	.byte 0x43, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x00, 0x00
	.global ov15_020E4690
ov15_020E4690:
	.byte 0x63, 0x6C, 0x6F, 0x73, 0x65, 0x00, 0x00, 0x00
	.global ov15_020E4698
ov15_020E4698:
	.byte 0x0D, 0x0A, 0x0D, 0x0A, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E46A0
ov15_020E46A0:
	.byte 0x25, 0x64, 0x00, 0x00
	.global ov15_020E46A4
ov15_020E46A4:
	.byte 0x43, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x2D, 0x4C, 0x65, 0x6E, 0x67
	.byte 0x74, 0x68, 0x00, 0x00
	.global ov15_020E46B4
ov15_020E46B4:
	.byte 0x43, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x2D, 0x4C, 0x65, 0x6E, 0x67
	.byte 0x74, 0x68, 0x3A, 0x20, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E46C8
ov15_020E46C8:
	.byte 0x0D, 0x0A, 0x00, 0x00
	.global ov15_020E46CC
ov15_020E46CC:
	.byte 0x50, 0x4F, 0x53, 0x54
	.byte 0x20, 0x2F, 0x25, 0x73, 0x20, 0x48, 0x54, 0x54, 0x50, 0x2F, 0x31, 0x2E, 0x30, 0x0D, 0x0A, 0x43
	.byte 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x2D, 0x74, 0x79, 0x70, 0x65, 0x3A, 0x20, 0x61, 0x70, 0x70
	.byte 0x6C, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x2F, 0x78, 0x2D, 0x77, 0x77, 0x77, 0x2D, 0x66
	.byte 0x6F, 0x72, 0x6D, 0x2D, 0x75, 0x72, 0x6C, 0x65, 0x6E, 0x63, 0x6F, 0x64, 0x65, 0x64, 0x0D, 0x0A
	.byte 0x48, 0x6F, 0x73, 0x74, 0x3A, 0x20, 0x25, 0x73, 0x0D, 0x0A, 0x0D, 0x0A, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4720
ov15_020E4720:
	.byte 0x47, 0x45, 0x54, 0x20, 0x2F, 0x25, 0x73, 0x20, 0x48, 0x54, 0x54, 0x50, 0x2F, 0x31, 0x2E, 0x30
	.byte 0x0D, 0x0A, 0x48, 0x6F, 0x73, 0x74, 0x3A, 0x20, 0x25, 0x73, 0x0D, 0x0A, 0x0D, 0x0A, 0x00, 0x00
	.global ov15_020E4740
ov15_020E4740:
	.byte 0x25, 0x73, 0x3A, 0x20, 0x25, 0x73, 0x0D, 0x0A, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E474C
ov15_020E474C:
	.byte 0x25, 0x73, 0x3D, 0x00
	.global ov15_020E4750
ov15_020E4750:
	.byte 0x26, 0x25, 0x73, 0x3D, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4758
ov15_020E4758:
	.byte 0x25, 0x73, 0x00, 0x00
	.global ov15_020E475C
ov15_020E475C:
	.byte 0x68, 0x74, 0x74, 0x70
	.byte 0x3A, 0x2F, 0x2F, 0x00
	.global ov15_020E4764
ov15_020E4764:
	.byte 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4770
ov15_020E4770:
	.byte 0x3A, 0x00, 0x00, 0x00
	.global ov15_020E4774
ov15_020E4774:
	.byte 0x2F, 0x00, 0x00, 0x00
	.global ov15_020E4778
ov15_020E4778:
	.byte 0x20, 0x00, 0x00, 0x00
	.global ov15_020E477C
ov15_020E477C:
	.byte 0x68, 0x74, 0x74, 0x70
	.byte 0x72, 0x65, 0x73, 0x75, 0x6C, 0x74, 0x00, 0x00
	.global ov15_020E4788
ov15_020E4788:
	.byte 0x32, 0x30, 0x30, 0x00
	.global ov15_020E478C
ov15_020E478C:
	.byte 0x3A, 0x20, 0x00, 0x00
	.global ov15_020E4790
ov15_020E4790:
	.byte 0x3D, 0x00, 0x00, 0x00
	.global ov15_020E4794
ov15_020E4794:
	.byte 0x26, 0x00, 0x00, 0x00
	.global _ZZ23DWC_SimpleNetcheckAsynciE6bFirst_0
_ZZ23DWC_SimpleNetcheckAsynciE6bFirst_0:
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov15_020E47A0
	.global ov15_020E47A0
ov15_020E47A0:
	.byte 0x68, 0x74, 0x74, 0x70, 0x3A, 0x2F, 0x2F, 0x63, 0x6F, 0x6E, 0x6E, 0x74, 0x65, 0x73, 0x74, 0x2E
	.byte 0x6E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74
	.byte 0x2F, 0x00, 0x00, 0x00
	.global ov15_020E47C4
ov15_020E47C4:
	.byte 0x68, 0x74, 0x74, 0x70, 0x72, 0x65, 0x73, 0x75, 0x6C, 0x74, 0x00, 0x00
	.global ov15_020E47D0
ov15_020E47D0:
	.byte 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F, 0x6E, 0x61, 0x73, 0x2E, 0x6E, 0x69, 0x6E, 0x74
	.byte 0x65, 0x6E, 0x64, 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74, 0x2F, 0x61, 0x63, 0x00
	.global ov15_020E47F0
ov15_020E47F0:
	.byte 0x61, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x00, 0x00
	.global ov15_020E47F8
ov15_020E47F8:
	.byte 0x6D, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x00
	.global ov15_020E4800
ov15_020E4800:
	.byte 0x48, 0x6F, 0x74, 0x53, 0x70, 0x6F, 0x74, 0x52, 0x65, 0x73, 0x70, 0x6F, 0x6E, 0x73, 0x65, 0x00
	.global ov15_020E4810
ov15_020E4810:
	.byte 0x70, 0x61, 0x72, 0x73, 0x65, 0x00, 0x00, 0x00
	.global ov15_020E4818
ov15_020E4818:
	.byte 0x48, 0x54, 0x4D, 0x4C, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4820
ov15_020E4820:
	.byte 0x72, 0x65, 0x74, 0x75, 0x72, 0x6E, 0x63, 0x64, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E482C
ov15_020E482C:
	.byte 0x75, 0x72, 0x6C, 0x00
	.global ov15_020E4830
ov15_020E4830:
	.byte 0x64, 0x61, 0x74, 0x61, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4838
ov15_020E4838:
	.byte 0x77, 0x61, 0x69, 0x74, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4840
ov15_020E4840:
	.byte 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F, 0x6E, 0x61, 0x73, 0x2E, 0x6E, 0x69, 0x6E, 0x74
	.byte 0x65, 0x6E, 0x64, 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74, 0x2F, 0x61, 0x63, 0x00
	.global ov15_020E4860
ov15_020E4860:
	.byte 0x61, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x00, 0x00
	.global ov15_020E4868
ov15_020E4868:
	.byte 0x53, 0x56, 0x43, 0x4C, 0x4F, 0x43, 0x00, 0x00
	.global ov15_020E4870
ov15_020E4870:
	.byte 0x73, 0x76, 0x63, 0x00
	.global ov15_020E4874
ov15_020E4874:
	.byte 0x44, 0x61, 0x74, 0x65, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E487C
ov15_020E487C:
	.byte 0x68, 0x74, 0x74, 0x70
	.byte 0x72, 0x65, 0x73, 0x75, 0x6C, 0x74, 0x00, 0x00
	.global ov15_020E4888
ov15_020E4888:
	.byte 0x72, 0x65, 0x74, 0x75, 0x72, 0x6E, 0x63, 0x64
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4894
ov15_020E4894:
	.byte 0x73, 0x76, 0x63, 0x68, 0x6F, 0x73, 0x74, 0x00
	.global ov15_020E489C
ov15_020E489C:
	.byte 0x73, 0x65, 0x72, 0x76
	.byte 0x69, 0x63, 0x65, 0x74, 0x6F, 0x6B, 0x65, 0x6E, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E48AC
ov15_020E48AC:
	.byte 0x73, 0x74, 0x61, 0x74
	.byte 0x75, 0x73, 0x64, 0x61, 0x74, 0x61, 0x00, 0x00
	.global ov15_020E48B8
ov15_020E48B8:
	.byte 0x01, 0x00, 0x01
	.global ov15_020E48BB
ov15_020E48BB:
	.byte 0x49, 0x45, 0x2C, 0x20, 0x42
	.byte 0x61, 0x6C, 0x74, 0x69, 0x6D, 0x6F, 0x72, 0x65, 0x2C, 0x20, 0x43, 0x79, 0x62, 0x65, 0x72, 0x54
	.byte 0x72, 0x75, 0x73, 0x74, 0x2C, 0x20, 0x42, 0x61, 0x6C, 0x74, 0x69, 0x6D, 0x6F, 0x72, 0x65, 0x20
	.byte 0x43, 0x79, 0x62, 0x65, 0x72, 0x54, 0x72, 0x75, 0x73, 0x74, 0x20, 0x52, 0x6F, 0x6F, 0x74, 0x00
	.global ov15_020E48F0
ov15_020E48F0:
	.word ov15_020E48BB
	.byte 0x00, 0x01, 0x00, 0x00
	.word ov15_020E4904
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov15_020E48B8
	.global ov15_020E4904
ov15_020E4904:
	.byte 0xA3, 0x04, 0xBB, 0x22, 0xAB, 0x98, 0x3D, 0x57, 0xE8, 0x26, 0x72, 0x9A
	.byte 0xB5, 0x79, 0xD4, 0x29, 0xE2, 0xE1, 0xE8, 0x95, 0x80, 0xB1, 0xB0, 0xE3, 0x5B, 0x8E, 0x2B, 0x29
	.byte 0x9A, 0x64, 0xDF, 0xA1, 0x5D, 0xED, 0xB0, 0x09, 0x05, 0x6D, 0xDB, 0x28, 0x2E, 0xCE, 0x62, 0xA2
	.byte 0x62, 0xFE, 0xB4, 0x88, 0xDA, 0x12, 0xEB, 0x38, 0xEB, 0x21, 0x9D, 0xC0, 0x41, 0x2B, 0x01, 0x52
	.byte 0x7B, 0x88, 0x77, 0xD3, 0x1C, 0x8F, 0xC7, 0xBA, 0xB9, 0x88, 0xB5, 0x6A, 0x09, 0xE7, 0x73, 0xE8
	.byte 0x11, 0x40, 0xA7, 0xD1, 0xCC, 0xCA, 0x62, 0x8D, 0x2D, 0xE5, 0x8F, 0x0B, 0xA6, 0x50, 0xD2, 0xA8
	.byte 0x50, 0xC3, 0x28, 0xEA, 0xF5, 0xAB, 0x25, 0x87, 0x8A, 0x9A, 0x96, 0x1C, 0xA9, 0x67, 0xB8, 0x3F
	.byte 0x0C, 0xD5, 0xF7, 0xF9, 0x52, 0x13, 0x2F, 0xC2, 0x1B, 0xD5, 0x70, 0x70, 0xF0, 0x8F, 0xC0, 0x12
	.byte 0xCA, 0x06, 0xCB, 0x9A, 0xE1, 0xD9, 0xCA, 0x33, 0x7A, 0x77, 0xD6, 0xF8, 0xEC, 0xB9, 0xF1, 0x68
	.byte 0x44, 0x42, 0x48, 0x13, 0xD2, 0xC0, 0xC2, 0xA4, 0xAE, 0x5E, 0x60, 0xFE, 0xB6, 0xA6, 0x05, 0xFC
	.byte 0xB4, 0xDD, 0x07, 0x59, 0x02, 0xD4, 0x59, 0x18, 0x98, 0x63, 0xF5, 0xA5, 0x63, 0xE0, 0x90, 0x0C
	.byte 0x7D, 0x5D, 0xB2, 0x06, 0x7A, 0xF3, 0x85, 0xEA, 0xEB, 0xD4, 0x03, 0xAE, 0x5E, 0x84, 0x3E, 0x5F
	.byte 0xFF, 0x15, 0xED, 0x69, 0xBC, 0xF9, 0x39, 0x36, 0x72, 0x75, 0xCF, 0x77, 0x52, 0x4D, 0xF3, 0xC9
	.byte 0x90, 0x2C, 0xB9, 0x3D, 0xE5, 0xC9, 0x23, 0x53, 0x3F, 0x1F, 0x24, 0x98, 0x21, 0x5C, 0x07, 0x99
	.byte 0x29, 0xBD, 0xC6, 0x3A, 0xEC, 0xE7, 0x6E, 0x86, 0x3A, 0x6B, 0x97, 0x74, 0x63, 0x33, 0xBD, 0x68
	.byte 0x18, 0x31, 0xF0, 0x78, 0x8D, 0x76, 0xBF, 0xFC, 0x9E, 0x8E, 0x5D, 0x2A, 0x86, 0xA7, 0x4D, 0x90
	.byte 0xDC, 0x27, 0x1A, 0x39
	.global ov15_020E4A04
ov15_020E4A04:
	.byte 0x01, 0x00, 0x01
	.global ov15_020E4A07
ov15_020E4A07:
	.byte 0x42, 0x45, 0x2C, 0x20, 0x47, 0x6C, 0x6F, 0x62, 0x61
	.byte 0x6C, 0x53, 0x69, 0x67, 0x6E, 0x20, 0x6E, 0x76, 0x2D, 0x73, 0x61, 0x2C, 0x20, 0x52, 0x6F, 0x6F
	.byte 0x74, 0x20, 0x43, 0x41, 0x2C, 0x20, 0x47, 0x6C, 0x6F, 0x62, 0x61, 0x6C, 0x53, 0x69, 0x67, 0x6E
	.byte 0x20, 0x52, 0x6F, 0x6F, 0x74, 0x20, 0x43, 0x41, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4A3C
ov15_020E4A3C:
	.word ov15_020E4A07
	.byte 0x00, 0x01, 0x00, 0x00
	.word ov15_020E4A50
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov15_020E4A04
	.global ov15_020E4A50
ov15_020E4A50:
	.byte 0xDA, 0x0E, 0xE6, 0x99, 0x8D, 0xCE, 0xA3, 0xE3, 0x4F, 0x8A, 0x7E, 0xFB, 0xF1, 0x8B, 0x83, 0x25
	.byte 0x6B, 0xEA, 0x48, 0x1F, 0xF1, 0x2A, 0xB0, 0xB9, 0x95, 0x11, 0x04, 0xBD, 0xF0, 0x63, 0xD1, 0xE2
	.byte 0x67, 0x66, 0xCF, 0x1C, 0xDD, 0xCF, 0x1B, 0x48, 0x2B, 0xEE, 0x8D, 0x89, 0x8E, 0x9A, 0xAF, 0x29
	.byte 0x80, 0x65, 0xAB, 0xE9, 0xC7, 0x2D, 0x12, 0xCB, 0xAB, 0x1C, 0x4C, 0x70, 0x07, 0xA1, 0x3D, 0x0A
	.byte 0x30, 0xCD, 0x15, 0x8D, 0x4F, 0xF8, 0xDD, 0xD4, 0x8C, 0x50, 0x15, 0x1C, 0xEF, 0x50, 0xEE, 0xC4
	.byte 0x2E, 0xF7, 0xFC, 0xE9, 0x52, 0xF2, 0x91, 0x7D, 0xE0, 0x6D, 0xD5, 0x35, 0x30, 0x8E, 0x5E, 0x43
	.byte 0x73, 0xF2, 0x41, 0xE9, 0xD5, 0x6A, 0xE3, 0xB2, 0x89, 0x3A, 0x56, 0x39, 0x38, 0x6F, 0x06, 0x3C
	.byte 0x88, 0x69, 0x5B, 0x2A, 0x4D, 0xC5, 0xA7, 0x54, 0xB8, 0x6C, 0x89, 0xCC, 0x9B, 0xF9, 0x3C, 0xCA
	.byte 0xE5, 0xFD, 0x89, 0xF5, 0x12, 0x3C, 0x92, 0x78, 0x96, 0xD6, 0xDC, 0x74, 0x6E, 0x93, 0x44, 0x61
	.byte 0xD1, 0x8D, 0xC7, 0x46, 0xB2, 0x75, 0x0E, 0x86, 0xE8, 0x19, 0x8A, 0xD5, 0x6D, 0x6C, 0xD5, 0x78
	.byte 0x16, 0x95, 0xA2, 0xE9, 0xC8, 0x0A, 0x38, 0xEB, 0xF2, 0x24, 0x13, 0x4F, 0x73, 0x54, 0x93, 0x13
	.byte 0x85, 0x3A, 0x1B, 0xBC, 0x1E, 0x34, 0xB5, 0x8B, 0x05, 0x8C, 0xB9, 0x77, 0x8B, 0xB1, 0xDB, 0x1F
	.byte 0x20, 0x91, 0xAB, 0x09, 0x53, 0x6E, 0x90, 0xCE, 0x7B, 0x37, 0x74, 0xB9, 0x70, 0x47, 0x91, 0x22
	.byte 0x51, 0x63, 0x16, 0x79, 0xAE, 0xB1, 0xAE, 0x41, 0x26, 0x08, 0xC8, 0x19, 0x2B, 0xD1, 0x46, 0xAA
	.byte 0x48, 0xD6, 0x64, 0x2A, 0xD7, 0x83, 0x34, 0xFF, 0x2C, 0x2A, 0xC1, 0x6C, 0x19, 0x43, 0x4A, 0x07
	.byte 0x85, 0xE7, 0xD3, 0x7C, 0xF6, 0x21, 0x68, 0xEF, 0xEA, 0xF2, 0x52, 0x9F, 0x7F, 0x93, 0x90, 0xCF
	.global ov15_020E4B50
ov15_020E4B50:
	.byte 0x01, 0x00, 0x01, 0x00
	.global ov15_020E4B54
ov15_020E4B54:
	.word ov15_020E4B68
	.byte 0x80, 0x00, 0x00, 0x00
	.word ov15_020E4BB8
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov15_020E4B50
	.global ov15_020E4B68
ov15_020E4B68:
	.byte 0x55, 0x53, 0x2C, 0x20, 0x47, 0x54, 0x45, 0x20
	.byte 0x43, 0x6F, 0x72, 0x70, 0x6F, 0x72, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x2C, 0x20, 0x47, 0x54, 0x45
	.byte 0x20, 0x43, 0x79, 0x62, 0x65, 0x72, 0x54, 0x72, 0x75, 0x73, 0x74, 0x20, 0x53, 0x6F, 0x6C, 0x75
	.byte 0x74, 0x69, 0x6F, 0x6E, 0x73, 0x2C, 0x20, 0x49, 0x6E, 0x63, 0x2E, 0x2C, 0x20, 0x47, 0x54, 0x45
	.byte 0x20, 0x43, 0x79, 0x62, 0x65, 0x72, 0x54, 0x72, 0x75, 0x73, 0x74, 0x20, 0x47, 0x6C, 0x6F, 0x62
	.byte 0x61, 0x6C, 0x20, 0x52, 0x6F, 0x6F, 0x74, 0x00
	.global ov15_020E4BB8
ov15_020E4BB8:
	.byte 0x95, 0x0F, 0xA0, 0xB6, 0xF0, 0x50, 0x9C, 0xE8
	.byte 0x7A, 0xC7, 0x88, 0xCD, 0xDD, 0x17, 0x0E, 0x2E, 0xB0, 0x94, 0xD0, 0x1B, 0x3D, 0x0E, 0xF6, 0x94
	.byte 0xC0, 0x8A, 0x94, 0xC7, 0x06, 0xC8, 0x90, 0x97, 0xC8, 0xB8, 0x64, 0x1A, 0x7A, 0x7E, 0x6C, 0x3C
	.byte 0x53, 0xE1, 0x37, 0x28, 0x73, 0x60, 0x7F, 0xB2, 0x97, 0x53, 0x07, 0x9F, 0x53, 0xF9, 0x6D, 0x58
	.byte 0x94, 0xD2, 0xAF, 0x8D, 0x6D, 0x88, 0x67, 0x80, 0xE6, 0xED, 0xB2, 0x95, 0xCF, 0x72, 0x31, 0xCA
	.byte 0xA5, 0x1C, 0x72, 0xBA, 0x5C, 0x02, 0xE7, 0x64, 0x42, 0xE7, 0xF9, 0xA9, 0x2C, 0xD6, 0x3A, 0x0D
	.byte 0xAC, 0x8D, 0x42, 0xAA, 0x24, 0x01, 0x39, 0xE6, 0x9C, 0x3F, 0x01, 0x85, 0x57, 0x0D, 0x58, 0x87
	.byte 0x45, 0xF8, 0xD3, 0x85, 0xAA, 0x93, 0x69, 0x26, 0x85, 0x70, 0x48, 0x80, 0x3F, 0x12, 0x15, 0xC7
	.byte 0x79, 0xB4, 0x1F, 0x05, 0x2F, 0x3B, 0x62, 0x99
	.global ov15_020E4C38
ov15_020E4C38:
	.byte 0x01, 0x00, 0x01
	.global ov15_020E4C3B
ov15_020E4C3B:
	.byte 0x55, 0x53, 0x2C, 0x20, 0x47
	.byte 0x54, 0x45, 0x20, 0x43, 0x6F, 0x72, 0x70, 0x6F, 0x72, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x2C, 0x20
	.byte 0x47, 0x54, 0x45, 0x20, 0x43, 0x79, 0x62, 0x65, 0x72, 0x54, 0x72, 0x75, 0x73, 0x74, 0x20, 0x52
	.byte 0x6F, 0x6F, 0x74, 0x00
	.global ov15_020E4C64
ov15_020E4C64:
	.word ov15_020E4C3B
	.byte 0x80, 0x00, 0x00, 0x00
	.word ov15_020E4C78
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov15_020E4C38
	.global ov15_020E4C78
ov15_020E4C78:
	.byte 0xB8, 0xE6, 0x4F, 0xBA, 0xDB, 0x98, 0x7C, 0x71
	.byte 0x7C, 0xAF, 0x44, 0xB7, 0xD3, 0x0F, 0x46, 0xD9, 0x64, 0xE5, 0x93, 0xC1, 0x42, 0x8E, 0xC7, 0xBA
	.byte 0x49, 0x8D, 0x35, 0x2D, 0x7A, 0xE7, 0x8B, 0xBD, 0xE5, 0x05, 0x31, 0x59, 0xC6, 0xB1, 0x2F, 0x0A
	.byte 0x0C, 0xFB, 0x9F, 0xA7, 0x3F, 0xA2, 0x09, 0x66, 0x84, 0x56, 0x1E, 0x37, 0x29, 0x1B, 0x87, 0xE9
	.byte 0x7E, 0x0C, 0xCA, 0x9A, 0x9F, 0xA5, 0x7F, 0xF5, 0x15, 0x94, 0xA3, 0xD5, 0xA2, 0x46, 0x82, 0xD8
	.byte 0x68, 0x4C, 0xD1, 0x37, 0x15, 0x06, 0x68, 0xAF, 0xBD, 0xF8, 0xB0, 0xB3, 0xF0, 0x29, 0xF5, 0x95
	.byte 0x5A, 0x09, 0x16, 0x61, 0x77, 0x0A, 0x22, 0x25, 0xD4, 0x4F, 0x45, 0xAA, 0xC7, 0xBD, 0xE5, 0x96
	.byte 0xDF, 0xF9, 0xD4, 0xA8, 0x8E, 0x42, 0xCC, 0x24, 0xC0, 0x1E, 0x91, 0x27, 0x4A, 0xB5, 0x6D, 0x06
	.byte 0x80, 0x63, 0x39, 0xC4, 0xA2, 0x5E, 0x38, 0x03
	.global ov15_020E4CF8
ov15_020E4CF8:
	.byte 0x01, 0x00, 0x01
	.global ov15_020E4CFB
ov15_020E4CFB:
	.byte 0x47, 0x6C, 0x6F, 0x62, 0x61
	.byte 0x6C, 0x53, 0x69, 0x67, 0x6E, 0x20, 0x52, 0x6F, 0x6F, 0x74, 0x20, 0x43, 0x41, 0x20, 0x2D, 0x20
	.byte 0x52, 0x32, 0x2C, 0x20, 0x47, 0x6C, 0x6F, 0x62, 0x61, 0x6C, 0x53, 0x69, 0x67, 0x6E, 0x2C, 0x20
	.byte 0x47, 0x6C, 0x6F, 0x62, 0x61, 0x6C, 0x53, 0x69, 0x67, 0x6E, 0x00, 0x00
	.global ov15_020E4D2C
ov15_020E4D2C:
	.word ov15_020E4CFB
	.byte 0x00, 0x01, 0x00, 0x00
	.word ov15_020E4D40
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov15_020E4CF8
	.global ov15_020E4D40
ov15_020E4D40:
	.byte 0xA6, 0xCF, 0x24, 0x0E, 0xBE, 0x2E, 0x6F, 0x28, 0x99, 0x45, 0x42, 0xC4, 0xAB, 0x3E, 0x21, 0x54
	.byte 0x9B, 0x0B, 0xD3, 0x7F, 0x84, 0x70, 0xFA, 0x12, 0xB3, 0xCB, 0xBF, 0x87, 0x5F, 0xC6, 0x7F, 0x86
	.byte 0xD3, 0xB2, 0x30, 0x5C, 0xD6, 0xFD, 0xAD, 0xF1, 0x7B, 0xDC, 0xE5, 0xF8, 0x60, 0x96, 0x09, 0x92
	.byte 0x10, 0xF5, 0xD0, 0x53, 0xDE, 0xFB, 0x7B, 0x7E, 0x73, 0x88, 0xAC, 0x52, 0x88, 0x7B, 0x4A, 0xA6
	.byte 0xCA, 0x49, 0xA6, 0x5E, 0xA8, 0xA7, 0x8C, 0x5A, 0x11, 0xBC, 0x7A, 0x82, 0xEB, 0xBE, 0x8C, 0xE9
	.byte 0xB3, 0xAC, 0x96, 0x25, 0x07, 0x97, 0x4A, 0x99, 0x2A, 0x07, 0x2F, 0xB4, 0x1E, 0x77, 0xBF, 0x8A
	.byte 0x0F, 0xB5, 0x02, 0x7C, 0x1B, 0x96, 0xB8, 0xC5, 0xB9, 0x3A, 0x2C, 0xBC, 0xD6, 0x12, 0xB9, 0xEB
	.byte 0x59, 0x7D, 0xE2, 0xD0, 0x06, 0x86, 0x5F, 0x5E, 0x49, 0x6A, 0xB5, 0x39, 0x5E, 0x88, 0x34, 0xEC
	.byte 0xBC, 0x78, 0x0C, 0x08, 0x98, 0x84, 0x6C, 0xA8, 0xCD, 0x4B, 0xB4, 0xA0, 0x7D, 0x0C, 0x79, 0x4D
	.byte 0xF0, 0xB8, 0x2D, 0xCB, 0x21, 0xCA, 0xD5, 0x6C, 0x5B, 0x7D, 0xE1, 0xA0, 0x29, 0x84, 0xA1, 0xF9
	.byte 0xD3, 0x94, 0x49, 0xCB, 0x24, 0x62, 0x91, 0x20, 0xBC, 0xDD, 0x0B, 0xD5, 0xD9, 0xCC, 0xF9, 0xEA
	.byte 0x27, 0x0A, 0x2B, 0x73, 0x91, 0xC6, 0x9D, 0x1B, 0xAC, 0xC8, 0xCB, 0xE8, 0xE0, 0xA0, 0xF4, 0x2F
	.byte 0x90, 0x8B, 0x4D, 0xFB, 0xB0, 0x36, 0x1B, 0xF6, 0x19, 0x7A, 0x85, 0xE0, 0x6D, 0xF2, 0x61, 0x13
	.byte 0x88, 0x5C, 0x9F, 0xE0, 0x93, 0x0A, 0x51, 0x97, 0x8A, 0x5A, 0xCE, 0xAF, 0xAB, 0xD5, 0xF7, 0xAA
	.byte 0x09, 0xAA, 0x60, 0xBD, 0xDC, 0xD9, 0x5F, 0xDF, 0x72, 0xA9, 0x60, 0x13, 0x5E, 0x00, 0x01, 0xC9
	.byte 0x4A, 0xFA, 0x3F, 0xA4, 0xEA, 0x07, 0x03, 0x21, 0x02, 0x8E, 0x82, 0xCA, 0x03, 0xC2, 0x9B, 0x8F	
	.global ov15_020E4E40
ov15_020E4E40:
	.byte 0x01, 0x00, 0x01, 0x00
	.global ov15_020E4E44
ov15_020E4E44:
	.word ov15_020E4E58
	.byte 0x80, 0x00, 0x00, 0x00
	.word ov15_020E4EA8
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov15_020E4E40
	.global ov15_020E4E58
ov15_020E4E58:
	.byte 0x55, 0x53, 0x2C, 0x20, 0x57, 0x61, 0x73, 0x68
	.byte 0x69, 0x6E, 0x67, 0x74, 0x6F, 0x6E, 0x2C, 0x20, 0x4E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F
	.byte 0x20, 0x6F, 0x66, 0x20, 0x41, 0x6D, 0x65, 0x72, 0x69, 0x63, 0x61, 0x20, 0x49, 0x6E, 0x63, 0x2C
	.byte 0x20, 0x4E, 0x4F, 0x41, 0x2C, 0x20, 0x4E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x20, 0x43
	.byte 0x41, 0x2C, 0x20, 0x63, 0x61, 0x40, 0x6E, 0x6F, 0x61, 0x2E, 0x6E, 0x69, 0x6E, 0x74, 0x65, 0x6E
	.byte 0x64, 0x6F, 0x2E, 0x63, 0x6F, 0x6D, 0x00, 0x00
	.global ov15_020E4EA8
ov15_020E4EA8:
	.byte 0xB3, 0xCD, 0x79, 0x97, 0x77, 0x5D, 0x8A, 0xAF
	.byte 0x86, 0xA8, 0xE8, 0xD7, 0x73, 0x1C, 0x77, 0xDF, 0x10, 0x90, 0x1F, 0x81, 0xF8, 0x41, 0x9E, 0x21
	.byte 0x55, 0xDF, 0xBC, 0xFC, 0x63, 0xFB, 0x19, 0x43, 0xF1, 0xF6, 0xC4, 0x72, 0x42, 0x49, 0xBD, 0xAD
	.byte 0x44, 0x68, 0x4E, 0xF3, 0xDA, 0x1D, 0xE6, 0x4D, 0xD8, 0xF9, 0x59, 0x88, 0xDC, 0xAE, 0x3E, 0x9B
	.byte 0x38, 0x09, 0xCA, 0x7F, 0xFF, 0xDC, 0x24, 0xA2, 0x44, 0x78, 0x78, 0x49, 0x93, 0xD4, 0x84, 0x40
	.byte 0x10, 0xB8, 0xEC, 0x3E, 0xDB, 0x2D, 0x93, 0xC8, 0x11, 0xC8, 0xFD, 0x78, 0x2D, 0x61, 0xAD, 0x31
	.byte 0xAE, 0x86, 0x26, 0xB0, 0xFD, 0x5A, 0x3F, 0xA1, 0x3D, 0xBF, 0xE2, 0x4B, 0x49, 0xEC, 0xCE, 0x66
	.byte 0x98, 0x58, 0x26, 0x12, 0xC0, 0xFB, 0xF4, 0x77, 0x65, 0x1B, 0xEA, 0xFB, 0xCB, 0x7F, 0xE0, 0x8C
	.byte 0xCB, 0x02, 0xA3, 0x4E, 0x5E, 0x8C, 0xEA, 0x9B
	.global ov15_020E4F28
ov15_020E4F28:
	.byte 0x01, 0x00, 0x01, 0x00
	.global ov15_020E4F2C
ov15_020E4F2C:
	.word ov15_020E4FC0
	.byte 0x80, 0x00, 0x00, 0x00
	.word ov15_020E4F40
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov15_020E4F28
	.global ov15_020E4F40
ov15_020E4F40:
	.byte 0xD2, 0x36, 0x36, 0x6A, 0x8B, 0xD7, 0xC2, 0x5B, 0x9E, 0xDA, 0x81, 0x41, 0x62, 0x8F, 0x38, 0xEE
	.byte 0x49, 0x04, 0x55, 0xD6, 0xD0, 0xEF, 0x1C, 0x1B, 0x95, 0x16, 0x47, 0xEF, 0x18, 0x48, 0x35, 0x3A
	.byte 0x52, 0xF4, 0x2B, 0x6A, 0x06, 0x8F, 0x3B, 0x2F, 0xEA, 0x56, 0xE3, 0xAF, 0x86, 0x8D, 0x9E, 0x17
	.byte 0xF7, 0x9E, 0xB4, 0x65, 0x75, 0x02, 0x4D, 0xEF, 0xCB, 0x09, 0xA2, 0x21, 0x51, 0xD8, 0x9B, 0xD0
	.byte 0x67, 0xD0, 0xBA, 0x0D, 0x92, 0x06, 0x14, 0x73, 0xD4, 0x93, 0xCB, 0x97, 0x2A, 0x00, 0x9C, 0x5C
	.byte 0x4E, 0x0C, 0xBC, 0xFA, 0x15, 0x52, 0xFC, 0xF2, 0x44, 0x6E, 0xDA, 0x11, 0x4A, 0x6E, 0x08, 0x9F
	.byte 0x2F, 0x2D, 0xE3, 0xF9, 0xAA, 0x3A, 0x86, 0x73, 0xB6, 0x46, 0x53, 0x58, 0xC8, 0x89, 0x05, 0xBD
	.byte 0x83, 0x11, 0xB8, 0x73, 0x3F, 0xAA, 0x07, 0x8D, 0xF4, 0x42, 0x4D, 0xE7, 0x40, 0x9D, 0x1C, 0x37
	.global ov15_020E4FC0
ov15_020E4FC0:
	.byte 0x5A, 0x41, 0x2C, 0x20, 0x57, 0x65, 0x73, 0x74, 0x65, 0x72, 0x6E, 0x20, 0x43, 0x61, 0x70, 0x65
	.byte 0x2C, 0x20, 0x43, 0x61, 0x70, 0x65, 0x20, 0x54, 0x6F, 0x77, 0x6E, 0x2C, 0x20, 0x54, 0x68, 0x61
	.byte 0x77, 0x74, 0x65, 0x20, 0x43, 0x6F, 0x6E, 0x73, 0x75, 0x6C, 0x74, 0x69, 0x6E, 0x67, 0x20, 0x63
	.byte 0x63, 0x2C, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69, 0x66, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6F, 0x6E
	.byte 0x20, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x20, 0x44, 0x69, 0x76, 0x69, 0x73, 0x69
	.byte 0x6F, 0x6E, 0x2C, 0x20, 0x54, 0x68, 0x61, 0x77, 0x74, 0x65, 0x20, 0x50, 0x72, 0x65, 0x6D, 0x69
	.byte 0x75, 0x6D, 0x20, 0x53, 0x65, 0x72, 0x76, 0x65, 0x72, 0x20, 0x43, 0x41, 0x2C, 0x20, 0x70, 0x72
	.byte 0x65, 0x6D, 0x69, 0x75, 0x6D, 0x2D, 0x73, 0x65, 0x72, 0x76, 0x65, 0x72, 0x40, 0x74, 0x68, 0x61
	.byte 0x77, 0x74, 0x65, 0x2E, 0x63, 0x6F, 0x6D, 0x00
	.global ov15_020E5048
ov15_020E5048:
	.byte 0x01, 0x00, 0x01, 0x00
	.global ov15_020E504C
ov15_020E504C:
	.word ov15_020E5060
	.byte 0x80, 0x00, 0x00, 0x00
	.word ov15_020E50E0
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov15_020E5048
	.global ov15_020E5060
ov15_020E5060:
	.byte 0x5A, 0x41, 0x2C, 0x20, 0x57, 0x65, 0x73, 0x74, 0x65, 0x72, 0x6E, 0x20, 0x43, 0x61, 0x70, 0x65
	.byte 0x2C, 0x20, 0x43, 0x61, 0x70, 0x65, 0x20, 0x54, 0x6F, 0x77, 0x6E, 0x2C, 0x20, 0x54, 0x68, 0x61
	.byte 0x77, 0x74, 0x65, 0x20, 0x43, 0x6F, 0x6E, 0x73, 0x75, 0x6C, 0x74, 0x69, 0x6E, 0x67, 0x20, 0x63
	.byte 0x63, 0x2C, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69, 0x66, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6F, 0x6E
	.byte 0x20, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x20, 0x44, 0x69, 0x76, 0x69, 0x73, 0x69
	.byte 0x6F, 0x6E, 0x2C, 0x20, 0x54, 0x68, 0x61, 0x77, 0x74, 0x65, 0x20, 0x53, 0x65, 0x72, 0x76, 0x65
	.byte 0x72, 0x20, 0x43, 0x41, 0x2C, 0x20, 0x73, 0x65, 0x72, 0x76, 0x65, 0x72, 0x2D, 0x63, 0x65, 0x72
	.byte 0x74, 0x73, 0x40, 0x74, 0x68, 0x61, 0x77, 0x74, 0x65, 0x2E, 0x63, 0x6F, 0x6D, 0x00, 0x00, 0x00
	.global ov15_020E50E0
ov15_020E50E0:
	.byte 0xD3, 0xA4, 0x50, 0x6E, 0xC8, 0xFF, 0x56, 0x6B, 0xE6, 0xCF, 0x5D, 0xB6, 0xEA, 0x0C, 0x68, 0x75
	.byte 0x47, 0xA2, 0xAA, 0xC2, 0xDA, 0x84, 0x25, 0xFC, 0xA8, 0xF4, 0x47, 0x51, 0xDA, 0x85, 0xB5, 0x20
	.byte 0x74, 0x94, 0x86, 0x1E, 0x0F, 0x75, 0xC9, 0xE9, 0x08, 0x61, 0xF5, 0x06, 0x6D, 0x30, 0x6E, 0x15
	.byte 0x19, 0x02, 0xE9, 0x52, 0xC0, 0x62, 0xDB, 0x4D, 0x99, 0x9E, 0xE2, 0x6A, 0x0C, 0x44, 0x38, 0xCD
	.byte 0xFE, 0xBE, 0xE3, 0x64, 0x09, 0x70, 0xC5, 0xFE, 0xB1, 0x6B, 0x29, 0xB6, 0x2F, 0x49, 0xC8, 0x3B
	.byte 0xD4, 0x27, 0x04, 0x25, 0x10, 0x97, 0x2F, 0xE7, 0x90, 0x6D, 0xC0, 0x28, 0x42, 0x99, 0xD7, 0x4C
	.byte 0x43, 0xDE, 0xC3, 0xF5, 0x21, 0x6D, 0x54, 0x9F, 0x5D, 0xC3, 0x58, 0xE1, 0xC0, 0xE4, 0xD9, 0x5B
	.byte 0xB0, 0xB8, 0xDC, 0xB4, 0x7B, 0xDF, 0x36, 0x3A, 0xC2, 0xB5, 0x66, 0x22, 0x12, 0xD6, 0x87, 0x0D
	.global ov15_020E5160
ov15_020E5160:
	.byte 0x01, 0x00, 0x01, 0x00
	.global ov15_020E5164
ov15_020E5164:
	.word ov15_020E51F8
	.byte 0x80, 0x00, 0x00, 0x00
	.word ov15_020E5178
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov15_020E5160
	.global ov15_020E5178
ov15_020E5178:
	.byte 0xCC, 0x5E, 0xD1, 0x11, 0x5D, 0x5C, 0x69, 0xD0
	.byte 0xAB, 0xD3, 0xB9, 0x6A, 0x4C, 0x99, 0x1F, 0x59, 0x98, 0x30, 0x8E, 0x16, 0x85, 0x20, 0x46, 0x6D
	.byte 0x47, 0x3F, 0xD4, 0x85, 0x20, 0x84, 0xE1, 0x6D, 0xB3, 0xF8, 0xA4, 0xED, 0x0C, 0xF1, 0x17, 0x0F
	.byte 0x3B, 0xF9, 0xA7, 0xF9, 0x25, 0xD7, 0xC1, 0xCF, 0x84, 0x63, 0xF2, 0x7C, 0x63, 0xCF, 0xA2, 0x47
	.byte 0xF2, 0xC6, 0x5B, 0x33, 0x8E, 0x64, 0x40, 0x04, 0x68, 0xC1, 0x80, 0xB9, 0x64, 0x1C, 0x45, 0x77
	.byte 0xC7, 0xD8, 0x6E, 0xF5, 0x95, 0x29, 0x3C, 0x50, 0xE8, 0x34, 0xD7, 0x78, 0x1F, 0xA8, 0xBA, 0x6D
	.byte 0x43, 0x91, 0x95, 0x8F, 0x45, 0x57, 0x5E, 0x7E, 0xC5, 0xFB, 0xCA, 0xA4, 0x04, 0xEB, 0xEA, 0x97
	.byte 0x37, 0x54, 0x30, 0x6F, 0xBB, 0x01, 0x47, 0x32, 0x33, 0xCD, 0xDC, 0x57, 0x9B, 0x64, 0x69, 0x61
	.byte 0xF8, 0x9B, 0x1D, 0x1C, 0x89, 0x4F, 0x5C, 0x67
	.global ov15_020E51F8
ov15_020E51F8:
	.byte 0x55, 0x53, 0x2C, 0x20, 0x56, 0x65, 0x72, 0x69
	.byte 0x53, 0x69, 0x67, 0x6E, 0x2C, 0x20, 0x49, 0x6E, 0x63, 0x2E, 0x2C, 0x20, 0x43, 0x6C, 0x61, 0x73
	.byte 0x73, 0x20, 0x33, 0x20, 0x50, 0x75, 0x62, 0x6C, 0x69, 0x63, 0x20, 0x50, 0x72, 0x69, 0x6D, 0x61
	.byte 0x72, 0x79, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69, 0x66, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6F, 0x6E
	.byte 0x20, 0x41, 0x75, 0x74, 0x68, 0x6F, 0x72, 0x69, 0x74, 0x79, 0x20, 0x2D, 0x20, 0x47, 0x32, 0x2C
	.byte 0x20, 0x28, 0x63, 0x29, 0x20, 0x31, 0x39, 0x39, 0x38, 0x20, 0x56, 0x65, 0x72, 0x69, 0x53, 0x69
	.byte 0x67, 0x6E, 0x2C, 0x20, 0x49, 0x6E, 0x63, 0x2E, 0x20, 0x2D, 0x20, 0x46, 0x6F, 0x72, 0x20, 0x61
	.byte 0x75, 0x74, 0x68, 0x6F, 0x72, 0x69, 0x7A, 0x65, 0x64, 0x20, 0x75, 0x73, 0x65, 0x20, 0x6F, 0x6E
	.byte 0x6C, 0x79, 0x2C, 0x20, 0x56, 0x65, 0x72, 0x69, 0x53, 0x69, 0x67, 0x6E, 0x20, 0x54, 0x72, 0x75
	.byte 0x73, 0x74, 0x20, 0x4E, 0x65, 0x74, 0x77, 0x6F, 0x72, 0x6B, 0x00, 0x00
	.global ov15_020E528C
ov15_020E528C:
	.byte 0x01, 0x00, 0x01, 0x00
	.global ov15_020E5290
ov15_020E5290:
	.word ov15_020E52A4
	.byte 0x00, 0x01, 0x00, 0x00
	.word ov15_020E5340
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov15_020E528C
	.global ov15_020E52A4
ov15_020E52A4:
	.byte 0x55, 0x53, 0x2C, 0x20, 0x56, 0x65, 0x72, 0x69, 0x53, 0x69, 0x67, 0x6E
	.byte 0x2C, 0x20, 0x49, 0x6E, 0x63, 0x2E, 0x2C, 0x20, 0x56, 0x65, 0x72, 0x69, 0x53, 0x69, 0x67, 0x6E
	.byte 0x20, 0x54, 0x72, 0x75, 0x73, 0x74, 0x20, 0x4E, 0x65, 0x74, 0x77, 0x6F, 0x72, 0x6B, 0x2C, 0x20
	.byte 0x28, 0x63, 0x29, 0x20, 0x31, 0x39, 0x39, 0x39, 0x20, 0x56, 0x65, 0x72, 0x69, 0x53, 0x69, 0x67
	.byte 0x6E, 0x2C, 0x20, 0x49, 0x6E, 0x63, 0x2E, 0x20, 0x2D, 0x20, 0x46, 0x6F, 0x72, 0x20, 0x61, 0x75
	.byte 0x74, 0x68, 0x6F, 0x72, 0x69, 0x7A, 0x65, 0x64, 0x20, 0x75, 0x73, 0x65, 0x20, 0x6F, 0x6E, 0x6C
	.byte 0x79, 0x2C, 0x20, 0x56, 0x65, 0x72, 0x69, 0x53, 0x69, 0x67, 0x6E, 0x20, 0x43, 0x6C, 0x61, 0x73
	.byte 0x73, 0x20, 0x33, 0x20, 0x50, 0x75, 0x62, 0x6C, 0x69, 0x63, 0x20, 0x50, 0x72, 0x69, 0x6D, 0x61
	.byte 0x72, 0x79, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69, 0x66, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6F, 0x6E
	.byte 0x20, 0x41, 0x75, 0x74, 0x68, 0x6F, 0x72, 0x69, 0x74, 0x79, 0x20, 0x2D, 0x20, 0x47, 0x33, 0x00
	.global ov15_020E5340
ov15_020E5340:
	.byte 0xCB, 0xBA, 0x9C, 0x52, 0xFC, 0x78, 0x1F, 0x1A, 0x1E, 0x6F, 0x1B, 0x37, 0x73, 0xBD, 0xF8, 0xC9
	.byte 0x6B, 0x94, 0x12, 0x30, 0x4F, 0xF0, 0x36, 0x47, 0xF5, 0xD0, 0x91, 0x0A, 0xF5, 0x17, 0xC8, 0xA5
	.byte 0x61, 0xC1, 0x16, 0x40, 0x4D, 0xFB, 0x8A, 0x61, 0x90, 0xE5, 0x76, 0x20, 0xC1, 0x11, 0x06, 0x7D
	.byte 0xAB, 0x2C, 0x6E, 0xA6, 0xF5, 0x11, 0x41, 0x8E, 0xFA, 0x2D, 0xAD, 0x2A, 0x61, 0x59, 0xA4, 0x67
	.byte 0x26, 0x4C, 0xD0, 0xE8, 0xBC, 0x52, 0x5B, 0x70, 0x20, 0x04, 0x58, 0xD1, 0x7A, 0xC9, 0xA4, 0x69
	.byte 0xBC, 0x83, 0x17, 0x64, 0xAD, 0x05, 0x8B, 0xBC, 0xD0, 0x58, 0xCE, 0x8D, 0x8C, 0xF5, 0xEB, 0xF0
	.byte 0x42, 0x49, 0x0B, 0x9D, 0x97, 0x27, 0x67, 0x32, 0x6E, 0xE1, 0xAE, 0x93, 0x15, 0x1C, 0x70, 0xBC
	.byte 0x20, 0x4D, 0x2F, 0x18, 0xDE, 0x92, 0x88, 0xE8, 0x6C, 0x85, 0x57, 0x11, 0x1A, 0xE9, 0x7E, 0xE3
	.byte 0x26, 0x11, 0x54, 0xA2, 0x45, 0x96, 0x55, 0x83, 0xCA, 0x30, 0x89, 0xE8, 0xDC, 0xD8, 0xA3, 0xED
	.byte 0x2A, 0x80, 0x3F, 0x7F, 0x79, 0x65, 0x57, 0x3E, 0x15, 0x20, 0x66, 0x08, 0x2F, 0x95, 0x93, 0xBF
	.byte 0xAA, 0x47, 0x2F, 0xA8, 0x46, 0x97, 0xF0, 0x12, 0xE2, 0xFE, 0xC2, 0x0A, 0x2B, 0x51, 0xE6, 0x76
	.byte 0xE6, 0xB7, 0x46, 0xB7, 0xE2, 0x0D, 0xA6, 0xCC, 0xA8, 0xC3, 0x4C, 0x59, 0x55, 0x89, 0xE6, 0xE8
	.byte 0x53, 0x5C, 0x1C, 0xEA, 0x9D, 0xF0, 0x62, 0x16, 0x0B, 0xA7, 0xC9, 0x5F, 0x0C, 0xF0, 0xDE, 0xC2
	.byte 0x76, 0xCE, 0xAF, 0xF7, 0x6A, 0xF2, 0xFA, 0x41, 0xA6, 0xA2, 0x33, 0x14, 0xC9, 0xE5, 0x7A, 0x63
	.byte 0xD3, 0x9E, 0x62, 0x37, 0xD5, 0x85, 0x65, 0x9E, 0x0E, 0xE6, 0x53, 0x24, 0x74, 0x1B, 0x5E, 0x1D
	.byte 0x12, 0x53, 0x5B, 0xC7, 0x2C, 0xE7, 0x83, 0x49, 0x3B, 0x15, 0xAE, 0x8A, 0x68, 0xB9, 0x57, 0x97
	.global ov15_020E5440
ov15_020E5440:
	.byte 0x01, 0x00, 0x01, 0x00
	.global ov15_020E5444
ov15_020E5444:
	.word ov15_020E5458
	.byte 0x80, 0x00, 0x00, 0x00
	.word ov15_020E549C
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov15_020E5440
	.global ov15_020E5458
ov15_020E5458:
	.byte 0x55, 0x53, 0x2C, 0x20, 0x56, 0x65, 0x72, 0x69
	.byte 0x53, 0x69, 0x67, 0x6E, 0x2C, 0x20, 0x49, 0x6E, 0x63, 0x2E, 0x2C, 0x20, 0x43, 0x6C, 0x61, 0x73
	.byte 0x73, 0x20, 0x33, 0x20, 0x50, 0x75, 0x62, 0x6C, 0x69, 0x63, 0x20, 0x50, 0x72, 0x69, 0x6D, 0x61
	.byte 0x72, 0x79, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69, 0x66, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6F, 0x6E
	.byte 0x20, 0x41, 0x75, 0x74, 0x68, 0x6F, 0x72, 0x69, 0x74, 0x79, 0x00, 0x00
	.global ov15_020E549C
ov15_020E549C:
	.byte 0xC9, 0x5C, 0x59, 0x9E
	.byte 0xF2, 0x1B, 0x8A, 0x01, 0x14, 0xB4, 0x10, 0xDF, 0x04, 0x40, 0xDB, 0xE3, 0x57, 0xAF, 0x6A, 0x45
	.byte 0x40, 0x8F, 0x84, 0x0C, 0x0B, 0xD1, 0x33, 0xD9, 0xD9, 0x11, 0xCF, 0xEE, 0x02, 0x58, 0x1F, 0x25
	.byte 0xF7, 0x2A, 0xA8, 0x44, 0x05, 0xAA, 0xEC, 0x03, 0x1F, 0x78, 0x7F, 0x9E, 0x93, 0xB9, 0x9A, 0x00
	.byte 0xAA, 0x23, 0x7D, 0xD6, 0xAC, 0x85, 0xA2, 0x63, 0x45, 0xC7, 0x72, 0x27, 0xCC, 0xF4, 0x4C, 0xC6
	.byte 0x75, 0x71, 0xD2, 0x39, 0xEF, 0x4F, 0x42, 0xF0, 0x75, 0xDF, 0x0A, 0x90, 0xC6, 0x8E, 0x20, 0x6F
	.byte 0x98, 0x0F, 0xF8, 0xAC, 0x23, 0x5F, 0x70, 0x29, 0x36, 0xA4, 0xC9, 0x86, 0xE7, 0xB1, 0x9A, 0x20
	.byte 0xCB, 0x53, 0xA5, 0x85, 0xE7, 0x3D, 0xBE, 0x7D, 0x9A, 0xFE, 0x24, 0x45, 0x33, 0xDC, 0x76, 0x15
	.byte 0xED, 0x0F, 0xA2, 0x71, 0x64, 0x4C, 0x65, 0x2E, 0x81, 0x68, 0x45, 0xA7
	.global ov15_020E551C
ov15_020E551C:
	.byte 0x01, 0x00, 0x01, 0x00
	.global ov15_020E5520
ov15_020E5520:
	.word ov15_020E5534
	.byte 0x7D, 0x00, 0x00, 0x00
	.word ov15_020E5578
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov15_020E551C
	.global ov15_020E5534
ov15_020E5534:
	.byte 0x55, 0x53, 0x2C, 0x20, 0x52, 0x53, 0x41, 0x20, 0x44, 0x61, 0x74, 0x61
	.byte 0x20, 0x53, 0x65, 0x63, 0x75, 0x72, 0x69, 0x74, 0x79, 0x2C, 0x20, 0x49, 0x6E, 0x63, 0x2E, 0x2C
	.byte 0x20, 0x53, 0x65, 0x63, 0x75, 0x72, 0x65, 0x20, 0x53, 0x65, 0x72, 0x76, 0x65, 0x72, 0x20, 0x43
	.byte 0x65, 0x72, 0x74, 0x69, 0x66, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x41, 0x75, 0x74
	.byte 0x68, 0x6F, 0x72, 0x69, 0x74, 0x79, 0x00, 0x00
	.global ov15_020E5578
ov15_020E5578:
	.byte 0x92, 0xCE, 0x7A, 0xC1, 0xAE, 0x83, 0x3E, 0x5A
	.byte 0xAA, 0x89, 0x83, 0x57, 0xAC, 0x25, 0x01, 0x76, 0x0C, 0xAD, 0xAE, 0x8E, 0x2C, 0x37, 0xCE, 0xEB
	.byte 0x35, 0x78, 0x64, 0x54, 0x03, 0xE5, 0x84, 0x40, 0x51, 0xC9, 0xBF, 0x8F, 0x08, 0xE2, 0x8A, 0x82
	.byte 0x08, 0xD2, 0x16, 0x86, 0x37, 0x55, 0xE9, 0xB1, 0x21, 0x02, 0xAD, 0x76, 0x68, 0x81, 0x9A, 0x05
	.byte 0xA2, 0x4B, 0xC9, 0x4B, 0x25, 0x66, 0x22, 0x56, 0x6C, 0x88, 0x07, 0x8F, 0xF7, 0x81, 0x59, 0x6D
	.byte 0x84, 0x07, 0x65, 0x70, 0x13, 0x71, 0x76, 0x3E, 0x9B, 0x77, 0x4C, 0xE3, 0x50, 0x89, 0x56, 0x98
	.byte 0x48, 0xB9, 0x1D, 0xA7, 0x29, 0x1A, 0x13, 0x2E, 0x4A, 0x11, 0x59, 0x9C, 0x1E, 0x15, 0xD5, 0x49
	.byte 0x54, 0x2C, 0x73, 0x3A, 0x69, 0x82, 0xB1, 0x97, 0x39, 0x9C, 0x6D, 0x70, 0x67, 0x48, 0xE5, 0xDD
	.byte 0x2D, 0xD6, 0xC8, 0x1E, 0x7B, 0x00, 0x00, 0x00
	.global DWCi_base64_table
DWCi_base64_table:
	.word ov15_020E55FC
	.global ov15_020E55FC
ov15_020E55FC:
	.byte 0x41, 0x42, 0x43, 0x44
	.byte 0x45, 0x46, 0x47, 0x48, 0x49, 0x4A, 0x4B, 0x4C, 0x4D, 0x4E, 0x4F, 0x50, 0x51, 0x52, 0x53, 0x54
	.byte 0x55, 0x56, 0x57, 0x58, 0x59, 0x5A, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6A
	.byte 0x6B, 0x6C, 0x6D, 0x6E, 0x6F, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7A
	.byte 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x2E, 0x2D, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5640
ov15_020E5640:
	.byte 0x30, 0x30, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5648
ov15_020E5648:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E564C
ov15_020E564C:
	.byte 0x4A, 0x75, 0x6E, 0x00
	.global ov15_020E5650
ov15_020E5650:
	.byte 0x4A, 0x75, 0x6C, 0x00
	.global ov15_020E5654
ov15_020E5654:
	.byte 0x44, 0x65, 0x63, 0x00
	.global ov15_020E5658
ov15_020E5658:
	.byte 0x53, 0x65, 0x70, 0x00
	.global ov15_020E565C
ov15_020E565C:
	.byte 0x41, 0x75, 0x67, 0x00
	.global ov15_020E5660
ov15_020E5660:
	.byte 0x4E, 0x6F, 0x76, 0x00
	.global ov15_020E5664
ov15_020E5664:
	.byte 0x4F, 0x63, 0x74, 0x00
	.global ov15_020E5668
ov15_020E5668:
	.byte 0x4D, 0x61, 0x79, 0x00
	.global ov15_020E566C
ov15_020E566C:
	.byte 0x41, 0x70, 0x72, 0x00
	.global ov15_020E5670
ov15_020E5670:
	.byte 0x4D, 0x61, 0x72, 0x00
	.global ov15_020E5674
ov15_020E5674:
	.byte 0x46, 0x65, 0x62, 0x00
	.global ov15_020E5678
ov15_020E5678:
	.byte 0x4A, 0x61, 0x6E, 0x00
	.global dwcnastime_monthname
dwcnastime_monthname:
	.word ov15_020E5678
	.word ov15_020E5674
	.word ov15_020E5670
	.word ov15_020E566C
	.word ov15_020E5668
	.word ov15_020E564C
	.word ov15_020E5650
	.word ov15_020E565C
	.word ov15_020E5658
	.word ov15_020E5664
	.word ov15_020E5660
	.word ov15_020E5654
	.global ov15_020E56AC
ov15_020E56AC:
	.byte 0x46, 0x72, 0x69, 0x2C
	.byte 0x20, 0x30, 0x33, 0x20, 0x4D, 0x61, 0x72, 0x20, 0x32, 0x30, 0x30, 0x36, 0x20, 0x30, 0x31, 0x3A
	.byte 0x32, 0x38, 0x3A, 0x31, 0x33, 0x20, 0x47, 0x4D, 0x54, 0x00, 0x00, 0x00
	.global ov15_020E56CC
ov15_020E56CC:
	.byte 0x68, 0x74, 0x74, 0x70
	.byte 0x73, 0x3A, 0x2F, 0x2F, 0x2F, 0x64, 0x6F, 0x77, 0x6E, 0x6C, 0x6F, 0x61, 0x64, 0x00, 0x00, 0x00
	.global ov15_020E56E0
ov15_020E56E0:
	.byte 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F, 0x25, 0x73, 0x2F, 0x64, 0x6F, 0x77, 0x6E, 0x6C
	.byte 0x6F, 0x61, 0x64, 0x00
	.global ov15_020E56F4
ov15_020E56F4:
	.byte 0x39, 0x30, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E56FC
ov15_020E56FC:
	.byte 0x01, 0x00, 0x01, 0x00
	.global dwcind_ca_array
dwcind_ca_array:
	.word ov15_020E5704
	.global ov15_020E5704
ov15_020E5704:
	.word ov15_020E5718
	.byte 0x80, 0x00, 0x00, 0x00
	.word ov15_020E5768
	.byte 0x03, 0x00, 0x00, 0x00
	.word ov15_020E56FC
	.global ov15_020E5718
ov15_020E5718:
	.byte 0x55, 0x53, 0x2C, 0x20, 0x57, 0x61, 0x73, 0x68
	.byte 0x69, 0x6E, 0x67, 0x74, 0x6F, 0x6E, 0x2C, 0x20, 0x4E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F
	.byte 0x20, 0x6F, 0x66, 0x20, 0x41, 0x6D, 0x65, 0x72, 0x69, 0x63, 0x61, 0x20, 0x49, 0x6E, 0x63, 0x2C
	.byte 0x20, 0x4E, 0x4F, 0x41, 0x2C, 0x20, 0x4E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x20, 0x43
	.byte 0x41, 0x2C, 0x20, 0x63, 0x61, 0x40, 0x6E, 0x6F, 0x61, 0x2E, 0x6E, 0x69, 0x6E, 0x74, 0x65, 0x6E
	.byte 0x64, 0x6F, 0x2E, 0x63, 0x6F, 0x6D, 0x00, 0x00
	.global ov15_020E5768
ov15_020E5768:
	.byte 0xB3, 0xCD, 0x79, 0x97, 0x77, 0x5D, 0x8A, 0xAF
	.byte 0x86, 0xA8, 0xE8, 0xD7, 0x73, 0x1C, 0x77, 0xDF, 0x10, 0x90, 0x1F, 0x81, 0xF8, 0x41, 0x9E, 0x21
	.byte 0x55, 0xDF, 0xBC, 0xFC, 0x63, 0xFB, 0x19, 0x43, 0xF1, 0xF6, 0xC4, 0x72, 0x42, 0x49, 0xBD, 0xAD
	.byte 0x44, 0x68, 0x4E, 0xF3, 0xDA, 0x1D, 0xE6, 0x4D, 0xD8, 0xF9, 0x59, 0x88, 0xDC, 0xAE, 0x3E, 0x9B
	.byte 0x38, 0x09, 0xCA, 0x7F, 0xFF, 0xDC, 0x24, 0xA2, 0x44, 0x78, 0x78, 0x49, 0x93, 0xD4, 0x84, 0x40
	.byte 0x10, 0xB8, 0xEC, 0x3E, 0xDB, 0x2D, 0x93, 0xC8, 0x11, 0xC8, 0xFD, 0x78, 0x2D, 0x61, 0xAD, 0x31
	.byte 0xAE, 0x86, 0x26, 0xB0, 0xFD, 0x5A, 0x3F, 0xA1, 0x3D, 0xBF, 0xE2, 0x4B, 0x49, 0xEC, 0xCE, 0x66
	.byte 0x98, 0x58, 0x26, 0x12, 0xC0, 0xFB, 0xF4, 0x77, 0x65, 0x1B, 0xEA, 0xFB, 0xCB, 0x7F, 0xE0, 0x8C
	.byte 0xCB, 0x02, 0xA3, 0x4E, 0x5E, 0x8C, 0xEA, 0x9B
	.global ov15_020E57E8
ov15_020E57E8:
	.byte 0x4E, 0x69, 0x74, 0x72, 0x6F, 0x20, 0x57, 0x69
	.byte 0x46, 0x69, 0x20, 0x53, 0x44, 0x4B, 0x2F, 0x25, 0x64, 0x2E, 0x25, 0x64, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5800
ov15_020E5800:
	.byte 0x48, 0x54, 0x54, 0x50, 0x53, 0x54, 0x41, 0x54, 0x55, 0x53, 0x43, 0x4F, 0x44, 0x45, 0x00, 0x00
	.global ov15_020E5810
ov15_020E5810:
	.byte 0x72, 0x65, 0x74, 0x75, 0x72, 0x6E, 0x63, 0x64, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E581C
ov15_020E581C:
	.byte 0x55, 0x73, 0x65, 0x72
	.byte 0x2D, 0x41, 0x67, 0x65, 0x6E, 0x74, 0x00, 0x00
	.global ov15_020E5828
ov15_020E5828:
	.byte 0x67, 0x61, 0x6D, 0x65, 0x63, 0x64, 0x00, 0x00
	.global ov15_020E5830
ov15_020E5830:
	.byte 0x72, 0x68, 0x67, 0x61, 0x6D, 0x65, 0x63, 0x64, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E583C
ov15_020E583C:
	.byte 0x70, 0x61, 0x73, 0x73
	.byte 0x77, 0x64, 0x00, 0x00
	.global ov15_020E5844
ov15_020E5844:
	.byte 0x74, 0x6F, 0x6B, 0x65, 0x6E, 0x00, 0x00, 0x00
	.global ov15_020E584C
ov15_020E584C:
	.byte 0x75, 0x73, 0x65, 0x72
	.byte 0x69, 0x64, 0x00, 0x00
	.global ov15_020E5854
ov15_020E5854:
	.byte 0x6D, 0x61, 0x63, 0x61, 0x64, 0x72, 0x00, 0x00
	.global ov15_020E585C
ov15_020E585C:
	.byte 0x61, 0x63, 0x74, 0x69
	.byte 0x6F, 0x6E, 0x00, 0x00
	.global ov15_020E5864
ov15_020E5864:
	.byte 0x61, 0x74, 0x74, 0x72, 0x31, 0x00, 0x00, 0x00
	.global ov15_020E586C
ov15_020E586C:
	.byte 0x61, 0x74, 0x74, 0x72
	.byte 0x32, 0x00, 0x00, 0x00
	.global ov15_020E5874
ov15_020E5874:
	.byte 0x61, 0x74, 0x74, 0x72, 0x33, 0x00, 0x00, 0x00
	.global ov15_020E587C
ov15_020E587C:
	.byte 0x61, 0x70, 0x69, 0x6E
	.byte 0x66, 0x6F, 0x00, 0x00
	.global ov15_020E5884
ov15_020E5884:
	.byte 0x6F, 0x70, 0x74, 0x69, 0x6F, 0x6E, 0x61, 0x6C, 0x6C, 0x6F, 0x67, 0x64
	.byte 0x61, 0x74, 0x61, 0x00
	.global ov15_020E5894
ov15_020E5894:
	.byte 0x6F, 0x66, 0x66, 0x73, 0x65, 0x74, 0x00, 0x00
	.global ov15_020E589C
ov15_020E589C:
	.byte 0x6E, 0x75, 0x6D, 0x00
	.global ov15_020E58A0
ov15_020E58A0:
	.byte 0x63, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x73, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E58AC
ov15_020E58AC:
	.byte 0x43, 0x6F, 0x6E, 0x74
	.byte 0x65, 0x6E, 0x74, 0x2D, 0x4C, 0x65, 0x6E, 0x67, 0x74, 0x68, 0x00, 0x00
	.global ov15_020E58BC
ov15_020E58BC:
	.byte 0x68, 0x74, 0x74, 0x70
	.byte 0x3A, 0x2F, 0x2F, 0x00
	.global ov15_020E58C4
ov15_020E58C4:
	.byte 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E58D0
ov15_020E58D0:
	.byte 0x48, 0x54, 0x54, 0x50, 0x53, 0x54, 0x41, 0x54, 0x55, 0x53, 0x43, 0x4F, 0x44, 0x45, 0x00, 0x00
	.global ov15_020E58E0
ov15_020E58E0:
	.byte 0x50, 0x72, 0x6F, 0x78, 0x79, 0x2D, 0x41, 0x75, 0x74, 0x68, 0x6F, 0x72, 0x69, 0x7A, 0x61, 0x74
	.byte 0x69, 0x6F, 0x6E, 0x3A, 0x20, 0x42, 0x61, 0x73, 0x69, 0x63, 0x20, 0x00
	.global ov15_020E58FC
ov15_020E58FC:
	.byte 0x0D, 0x0A, 0x00, 0x00
	.global ov15_020E5900
ov15_020E5900:
	.byte 0x41, 0x75, 0x74, 0x68, 0x6F, 0x72, 0x69, 0x7A, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x3A, 0x20, 0x42
	.byte 0x61, 0x73, 0x69, 0x63, 0x20, 0x00, 0x00, 0x00
	.global ov15_020E5918
ov15_020E5918:
	.byte 0x43, 0x4F, 0x4E, 0x4E, 0x45, 0x43, 0x54, 0x20
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5924
ov15_020E5924:
	.byte 0x3A, 0x00, 0x00, 0x00
	.global ov15_020E5928
ov15_020E5928:
	.byte 0x20, 0x48, 0x54, 0x54, 0x50, 0x2F, 0x31, 0x2E
	.byte 0x31, 0x0D, 0x0A, 0x00
	.global ov15_020E5934
ov15_020E5934:
	.byte 0x48, 0x6F, 0x73, 0x74, 0x3A, 0x20, 0x00, 0x00
	.global ov15_020E593C
ov15_020E593C:
	.byte 0x43, 0x6F, 0x6E, 0x74
	.byte 0x65, 0x6E, 0x74, 0x2D, 0x4C, 0x65, 0x6E, 0x67, 0x74, 0x68, 0x3A, 0x20, 0x30, 0x0D, 0x0A, 0x50
	.byte 0x72, 0x61, 0x67, 0x6D, 0x61, 0x3A, 0x20, 0x6E, 0x6F, 0x2D, 0x63, 0x61, 0x63, 0x68, 0x65, 0x0D
	.byte 0x0A, 0x00, 0x00, 0x00
	.global ov15_020E5964
ov15_020E5964:
	.byte 0x48, 0x54, 0x54, 0x50, 0x2F, 0x00, 0x00, 0x00
	.global ov15_020E596C
ov15_020E596C:
	.byte 0x3A, 0x20, 0x00, 0x00
	.global ov15_020E5970
ov15_020E5970:
	.byte 0x43, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x2D, 0x4C, 0x65, 0x6E, 0x67, 0x74, 0x68, 0x3A, 0x20
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5984
ov15_020E5984:
	.byte 0x22, 0x0D, 0x0A, 0x00
	.global ov15_020E5988
ov15_020E5988:
	.byte 0x2D, 0x2D, 0x0D, 0x0A, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5990
ov15_020E5990:
	.byte 0x3D, 0x00, 0x00, 0x00
	.global ov15_020E5994
ov15_020E5994:
	.byte 0x26, 0x00, 0x00, 0x00
	.global ov15_020E5998
ov15_020E5998:
	.byte 0x47, 0x45, 0x54, 0x20, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E59A0
ov15_020E59A0:
	.byte 0x50, 0x4F, 0x53, 0x54, 0x20, 0x00, 0x00, 0x00
	.global ov15_020E59A8
ov15_020E59A8:
	.byte 0x48, 0x45, 0x41, 0x44, 0x20, 0x00, 0x00, 0x00
	.global ov15_020E59B0
ov15_020E59B0:
	.byte 0x2F, 0x00, 0x00, 0x00
	.global ov15_020E59B4
ov15_020E59B4:
	.byte 0x43, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x2D, 0x4C, 0x65, 0x6E, 0x67
	.byte 0x74, 0x68, 0x00, 0x00
	.global ov15_020E59C4
ov15_020E59C4:
	.byte 0x43, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x00, 0x00
	.global ov15_020E59D0
ov15_020E59D0:
	.byte 0x4B, 0x65, 0x65, 0x70, 0x2D, 0x41, 0x6C, 0x69, 0x76, 0x65, 0x00, 0x00
	.global ov15_020E59DC
ov15_020E59DC:
	.byte 0x54, 0x72, 0x61, 0x6E
	.byte 0x73, 0x66, 0x65, 0x72, 0x2D, 0x45, 0x6E, 0x63, 0x6F, 0x64, 0x69, 0x6E, 0x67, 0x00, 0x00, 0x00
	.global ov15_020E59F0
ov15_020E59F0:
	.byte 0x63, 0x68, 0x75, 0x6E, 0x6B, 0x65, 0x64, 0x00
	.global SOCLiConfigPtr
SOCLiConfigPtr:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00
	.global SOCLiResultCodeInConnecting
SOCLiResultCodeInConnecting:
	.byte 0xE6, 0xFF, 0xFF, 0xFF
	.global SOCLSocketParamUDP
SOCLSocketParamUDP:
	.byte 0x01, 0x01, 0xC0, 0x05, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x08, 0x00, 0x08, 0x0C, 0x20, 0x00, 0x00, 0x00, 0x00
	.global SOCLSocketParamTCP
SOCLSocketParamTCP:
	.byte 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x9E, 0x0B, 0x00, 0x00, 0x00, 0x00, 0xD1, 0x16, 0x00, 0x00, 0x00, 0x08, 0x0C, 0x20
	.byte 0x00, 0x08, 0x0D, 0x20
	.global SOCLSocketParamUDPSend
SOCLSocketParamUDPSend:
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEA, 0x05, 0x00, 0x00, 0x00, 0x00
	.byte 0xEB, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x0D, 0x20
	.global ov15_020E5A4C
ov15_020E5A4C:
	.byte 0x55, 0x04, 0x03, 0x00
	.global ov15_020E5A50
ov15_020E5A50:
	.byte 0xFF, 0xFF, 0xFF, 0x00
	.global ov15_020E5A54
ov15_020E5A54:
	.byte 0x04, 0x00, 0x05, 0x00, 0xFF, 0xFF, 0xFF, 0xFF
	.global ov15_020E5A5C
ov15_020E5A5C:
	.word ov15_020E5A50
	.word ov15_020E5A7C
	.word ov15_020E5A74
	.word ov15_020E5A88
	.word ov15_020E5A94
	.word ov15_020E5A4C
	.global ov15_020E5A74
ov15_020E5A74:
	.byte 0x55, 0x08, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5A7C
ov15_020E5A7C:
	.byte 0x2A, 0x86, 0x48, 0x86
	.byte 0xF7, 0x0D, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00
	.global ov15_020E5A88
ov15_020E5A88:
	.byte 0x2A, 0x86, 0x48, 0x86, 0xF7, 0x0D, 0x01, 0x01
	.byte 0x04, 0x00, 0x00, 0x00
	.global ov15_020E5A94
ov15_020E5A94:
	.byte 0x2A, 0x86, 0x48, 0x86, 0xF7, 0x0D, 0x01, 0x01, 0x05, 0x00, 0x00, 0x00
	.global ov15_020E5AA0
ov15_020E5AA0:
	.byte 0x41, 0x00, 0x00, 0x00
	.global ov15_020E5AA4
ov15_020E5AA4:
	.byte 0x42, 0x42, 0x00, 0x00
	.global ov15_020E5AA8
ov15_020E5AA8:
	.byte 0x43, 0x43, 0x43, 0x00
	.global ov15_020E5AAC
ov15_020E5AAC:
	.byte 0x53, 0x52, 0x56, 0x52
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5AB4
ov15_020E5AB4:
	.byte 0x43, 0x4C, 0x4E, 0x54, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5ABC
ov15_020E5ABC:
	.byte 0x00, 0x01, 0x02, 0x03
	.byte 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x01, 0x06, 0x0B, 0x00
	.byte 0x05, 0x0A, 0x0F, 0x04, 0x09, 0x0E, 0x03, 0x08, 0x0D, 0x02, 0x07, 0x0C, 0x05, 0x08, 0x0B, 0x0E
	.byte 0x01, 0x04, 0x07, 0x0A, 0x0D, 0x00, 0x03, 0x06, 0x09, 0x0C, 0x0F, 0x02, 0x00, 0x07, 0x0E, 0x05
	.byte 0x0C, 0x03, 0x0A, 0x01, 0x08, 0x0F, 0x06, 0x0D, 0x04, 0x0B, 0x02, 0x09
	.global ov15_020E5AFC
ov15_020E5AFC:
	.byte 0x80, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5B3C
ov15_020E5B3C:
	.byte 0x78, 0xA4, 0x6A, 0xD7
	.byte 0x56, 0xB7, 0xC7, 0xE8, 0xDB, 0x70, 0x20, 0x24, 0xEE, 0xCE, 0xBD, 0xC1, 0xAF, 0x0F, 0x7C, 0xF5
	.byte 0x2A, 0xC6, 0x87, 0x47, 0x13, 0x46, 0x30, 0xA8, 0x01, 0x95, 0x46, 0xFD, 0xD8, 0x98, 0x80, 0x69
	.byte 0xAF, 0xF7, 0x44, 0x8B, 0xB1, 0x5B, 0xFF, 0xFF, 0xBE, 0xD7, 0x5C, 0x89, 0x22, 0x11, 0x90, 0x6B
	.byte 0x93, 0x71, 0x98, 0xFD, 0x8E, 0x43, 0x79, 0xA6, 0x21, 0x08, 0xB4, 0x49, 0x62, 0x25, 0x1E, 0xF6
	.byte 0x40, 0xB3, 0x40, 0xC0, 0x51, 0x5A, 0x5E, 0x26, 0xAA, 0xC7, 0xB6, 0xE9, 0x5D, 0x10, 0x2F, 0xD6
	.byte 0x53, 0x14, 0x44, 0x02, 0x81, 0xE6, 0xA1, 0xD8, 0xC8, 0xFB, 0xD3, 0xE7, 0xE6, 0xCD, 0xE1, 0x21
	.byte 0xD6, 0x07, 0x37, 0xC3, 0x87, 0x0D, 0xD5, 0xF4, 0xED, 0x14, 0x5A, 0x45, 0x05, 0xE9, 0xE3, 0xA9
	.byte 0xF8, 0xA3, 0xEF, 0xFC, 0xD9, 0x02, 0x6F, 0x67, 0x8A, 0x4C, 0x2A, 0x8D, 0x42, 0x39, 0xFA, 0xFF
	.byte 0x81, 0xF6, 0x71, 0x87, 0x22, 0x61, 0x9D, 0x6D, 0x0C, 0x38, 0xE5, 0xFD, 0x44, 0xEA, 0xBE, 0xA4
	.byte 0xA9, 0xCF, 0xDE, 0x4B, 0x60, 0x4B, 0xBB, 0xF6, 0x70, 0xBC, 0xBF, 0xBE, 0xC6, 0x7E, 0x9B, 0x28
	.byte 0xFA, 0x27, 0xA1, 0xEA, 0x85, 0x30, 0xEF, 0xD4, 0x05, 0x1D, 0x88, 0x04, 0x39, 0xD0, 0xD4, 0xD9
	.byte 0xE5, 0x99, 0xDB, 0xE6, 0xF8, 0x7C, 0xA2, 0x1F, 0x65, 0x56, 0xAC, 0xC4, 0x44, 0x22, 0x29, 0xF4
	.byte 0x97, 0xFF, 0x2A, 0x43, 0xA7, 0x23, 0x94, 0xAB, 0x39, 0xA0, 0x93, 0xFC, 0xC3, 0x59, 0x5B, 0x65
	.byte 0x92, 0xCC, 0x0C, 0x8F, 0x7D, 0xF4, 0xEF, 0xFF, 0xD1, 0x5D, 0x84, 0x85, 0x4F, 0x7E, 0xA8, 0x6F
	.byte 0xE0, 0xE6, 0x2C, 0xFE, 0x14, 0x43, 0x01, 0xA3, 0xA1, 0x11, 0x08, 0x4E, 0x82, 0x7E, 0x53, 0xF7
	.byte 0x35, 0xF2, 0x3A, 0xBD, 0xBB, 0xD2, 0xD7, 0x2A, 0x91, 0xD3, 0x86, 0xEB
	.global ov15_020E5C3C
ov15_020E5C3C:
	.byte 0x80
	.global ov15_020E5C3D
ov15_020E5C3D:
	.byte 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

    .bss
	.global wfailed
wfailed:
	.space 0x0C
	.global CPSDhcpMode
CPSDhcpMode:
	.space 0x04
	.global CPSNetMask
CPSNetMask:
	.space 0x04
	.global CPSiAlloc
CPSiAlloc:
	.space 0x18
	.global CPSGatewayIp
CPSGatewayIp:
	.space 0x18
	.global CPSiFree
CPSiFree:
	.space 0x08
	.global ov15_020E6D8C
ov15_020E6D8C:
	.space 0x04
	.global CPSMyIp
CPSMyIp:
	.space 0x18
	.global CPSMyMac
CPSMyMac:
	.space 0x08
	.global CPSDnsIp
CPSDnsIp:
	.space 0x08
	.global CPSiRand32ctx
CPSiRand32ctx:
	.space 0x18
	.global ov15_020E6DD0
ov15_020E6DD0:
	.space 0x4E
	.global ov15_020E6E1E
ov15_020E6E1E:
	.space 0x3A
	.global ov15_020E6E58
ov15_020E6E58:
	.space 0x0A
	.global ov15_020E6E62
ov15_020E6E62:
	.space 0x56
	.global ov15_020E6EB8
ov15_020E6EB8:
	.space 0xA0
	.global ov15_020E6F58
ov15_020E6F58:
	.space 0xA0
	.global ov15_020E6FF8
ov15_020E6FF8:
	.space 0xC0
	.global ov15_020E70B8
ov15_020E70B8:
	.space 0xC0
	.global tcpip_thread
tcpip_thread:
	.space 0xC0
	.global ov15_020E7238
ov15_020E7238:
	.space 0x2A
	.global ov15_020E7262
ov15_020E7262:
	.space 0x156
	.global ov15_020E73B8
ov15_020E73B8:
	.space 0x180
	.global ov15_020E7538
ov15_020E7538:
	.space 0x9C8
	.global ov15_020E7F00
ov15_020E7F00:
	.space 0x800
	.global ov15_020E8700
ov15_020E8700:
	.space 0x800
	.global gWdsWork
gWdsWork:
	.space 0x04
	.global dwcac_wcmBuffer
dwcac_wcmBuffer:
	.space 0x14
	.global _ZZ17DWC_GetInetStatusvE8stateOld
_ZZ17DWC_GetInetStatusvE8stateOld:
	.space 0x08
	.global gDwcWdsWork
gDwcWdsWork:
	.space 0x0C
	.global DWCiswfcutil
DWCiswfcutil:
	.space 0x04
	.global DWCauth
DWCauth:
	.space 0x08
	.global DWC_auth_wifiinfo
DWC_auth_wifiinfo:
	.space 0x14
	.global DWChttpignoreca
DWChttpignoreca:
	.space 0x04
	.global DWChttp
DWChttp:
	.space 0x14
	.global DWCishotspot
DWCishotspot:
	.space 0x1C
	.global DWCnetcheckhttpparam
DWCnetcheckhttpparam:
	.space 0x1C
	.global DWCnetcheckauthparam
DWCnetcheckauthparam:
	.space 0x48
	.global dwcauth_intwork
dwcauth_intwork:
	.space 0x1C
	.global dwcbm_nv_result
dwcbm_nv_result:
	.space 0x0C
	.global dwcbm_Wifi
dwcbm_Wifi:
	.space 0x05
	.global ov15_020E9011
ov15_020E9011:
	.space 0x01
	.global ov15_020E9012
ov15_020E9012:
	.space 0x04
	.global ov15_020E9016
ov15_020E9016:
	.space 0x02
	.global ov15_020E9018
ov15_020E9018:
	.space 0x08
	.global dwcbm_Work
dwcbm_Work:
	.space 0x20
	.global stDwcLastError
stDwcLastError:
	.space 0x08
	.global dwci_gamecode
dwci_gamecode:
	.space 0x08
	.global dwcmemfunc_s_free
dwcmemfunc_s_free:
	.space 0x08
	.global dwcnasfunc_nalcnt
dwcnasfunc_nalcnt:
	.space 0x04
	.global DWCnastimediffvalid
DWCnastimediffvalid:
	.space 0x14
	.global dwcnd_s_userCallback
dwcnd_s_userCallback:
	.space 0x1C
	.global dwcnd_s_dwcnd_mutexState
dwcnd_s_dwcnd_mutexState:
	.space 0x18
	.global DWCi_Ndi_dlcallback
DWCi_Ndi_dlcallback:
	.space 0x28
	.global DWCi_Ndi_rhGamecd
DWCi_Ndi_rhGamecd:
	.space 0x09
	.global DWCi_Ndi_dwcgamecd
DWCi_Ndi_dwcgamecd:
	.space 0x0B
	.global DWCi_Ndi_dlattr
DWCi_Ndi_dlattr:
	.space 0x0C
	.global DWCi_Ndi_macaddr
DWCi_Ndi_macaddr:
	.space 0x11
	.global DWCi_Ndi_strApinfo
DWCi_Ndi_strApinfo:
	.space 0x15
	.global DWCi_Ndi_userid
DWCi_Ndi_userid:
	.space 0x16
	.global ov15_020E9128
ov15_020E9128:
	.space 0x18
	.global ov15_020E9140
ov15_020E9140:
	.space 0x18
	.global DWCi_Ndi_password
DWCi_Ndi_password:
	.space 0x19
	.global DWCi_Ndi_userAgent
DWCi_Ndi_userAgent:
	.space 0x23
	.global _ZZ18DWCi_Ndi_getApInfoPcE2ap
_ZZ18DWCi_Ndi_getApInfoPcE2ap:
	.space 0x0C
	.global ov15_020E91A0
ov15_020E91A0:
	.space 0x34
	.global DWCi_Ndi_optionaldata
DWCi_Ndi_optionaldata:
	.space 0x5C
	.global dwcind_listnumRecvbuf
dwcind_listnumRecvbuf:
	.space 0x80
	.global ssl_seed
ssl_seed:
	.space 0x20
	.global l_nhttp_connection_list_p
l_nhttp_connection_list_p:
	.space 0x08
	.global NHTTPiStaticResource
NHTTPiStaticResource:
	.space 0x28
	.global sysInfo
sysInfo:
	.space 0x4160
	.global SOCLiYieldWait
SOCLiYieldWait:
	.space 0x04
	.global SOCLiRequestedIP
SOCLiRequestedIP:
	.space 0x04
	.global SOCLiDhcpState
SOCLiDhcpState:
	.space 0x04
	.global SOCLiUDPSendSocket
SOCLiUDPSendSocket:
	.space 0x04
	.global SOCLiCPSConfig
SOCLiCPSConfig:
	.space 0x30
	.global SOCLiCommandPackets
SOCLiCommandPackets:
	.space 0x04
	.global SOCLiCommandPacketQueue
SOCLiCommandPacketQueue:
	.space 0x20
	.global SOCLi_CheckCount
SOCLi_CheckCount:
	.space 0x08
	.global SOCLi_Resource
SOCLi_Resource:
	.space 0x08
	.global SOCLiSocketList
SOCLiSocketList:
	.space 0x04
	.global SOCLiSocketListTrash
SOCLiSocketListTrash:
	.space 0x04
	.global ov15_020ED4DC
ov15_020ED4DC:
	.space 0x18
	.global ov15_020ED4F4
ov15_020ED4F4:
	.space 0x08
	.global ov15_020ED4FC
ov15_020ED4FC:
	.space 0x30
	.global ov15_020ED52C
ov15_020ED52C:
	.space 0x38
	.global ov15_020ED564
ov15_020ED564:
	.space 0x104
	.global ov15_020ED668
ov15_020ED668:
	.space 0x08
	.global ov15_020ED670
ov15_020ED670:
	.space 0x14
	.global session
session:
	.space 0x170
	.global WCMi_OverridedDeviceId
WCMi_OverridedDeviceId:
	.space 0x08
	.global wcmCpsifw
wcmCpsifw:
	.space 0x0C
	.global ov15_020ED808
ov15_020ED808:
	.space 0x24
	.global ov15_020ED82C
ov15_020ED82C:
	.space 0x08
	.global wcmRssiIndex
wcmRssiIndex:
	.space 0x01
	.global wcmRssi
wcmRssi:
	.space 0x13

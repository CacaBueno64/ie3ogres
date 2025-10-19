	.include "asm/macros/function.inc"
	.public CPSi_SslCleanup
	.public CPSi_SslClose
	.public CPSi_SslConnect
	.public CPSi_SslConsume
	.public CPSi_SslGetLength
	.public CPSi_SslPeriodical
	.public CPSi_SslRead
	.public CPSi_SslShutdown
	.public CPSi_SslWrite2
	.public MI_CpuCopy
	.public MI_CpuFill8
	.public MI_CpuMove
	.public OS_CancelAlarm
	.public OS_CreateAlarm
	.public OS_CreateThread
	.public OS_DestroyThread
	.public OS_DisableInterrupts
	.public OS_GetMacAddress
	.public OS_GetTick
	.public OS_IsThreadTerminated
	.public OS_JoinThread
	.public OS_RestoreInterrupts
	.public OS_SetAlarm
	.public OS_SetThreadPriority
	.public OS_Sleep
	.public OS_SleepThread
	.public OS_Terminate
	.public OS_WakeupThreadDirect
	.public OS_YieldThread
	.public OSi_ReferSymbol
	.public OSi_ThreadInfo
	.public WCM_SendDCFDataEx
	.public _version_UBIQUITOUS_CPS

	.text
	arm_func_start CPS_SetCheckNConfigCallback
CPS_SetCheckNConfigCallback: ; 0x020BCB40
	ldr r1, _020BCB4C ; =wfailed
	str r0, [r1, #0x48]
	bx lr
_020BCB4C: .word wfailed
	arm_func_end CPS_SetCheckNConfigCallback

	arm_static_func_start reset_network_vars
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
_020BCC44: .word arpcache
_020BCC48: .word OSi_ThreadInfo
_020BCC4C: .word fragtable
	arm_func_end reset_network_vars

	arm_static_func_start OS_YieldThread__
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

	arm_static_func_start empty_func
empty_func: ; 0x020BCC78
	bx lr
	arm_func_end empty_func

	arm_static_func_start default_link_is_on
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
_020BCE74: .word helper_threads_priority
_020BCE78: .word tcpip
_020BCE7C: .word tcpip_stack+0x800
_020BCE80: .word scavenger_thread
_020BCE84: .word scavenger
_020BCE88: .word scavenger_stack+0x800
_020BCE8C: .word dacktimer_alarm
_020BCE90: .word dacktimer
_020BCE94: .word dacktimer_thread
_020BCE98: .word dacktimer_stack+0x800
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
_020BCEE8: .word scavenger_thread
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
_020BCF74: .word scavenger_thread
_020BCF78: .word tcpip_thread
_020BCF7C: .word dacktimer_alarm
_020BCF80: .word dacktimer_thread
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
_020BCFB4: .word helper_threads_priority
_020BCFB8: .word tcpip_thread
_020BCFBC: .word scavenger_thread
	arm_func_end CPS_SetThreadPriority

	arm_static_func_start calc_checksum_do
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

	arm_static_func_start invert_checksum
invert_checksum: ; 0x020BD0C8
	ldr r1, _020BD0D8 ; =0x0000FFFF
	eors r0, r0, r1
	moveq r0, r1
	bx lr
_020BD0D8: .word 0x0000FFFF
	arm_func_end invert_checksum

	arm_static_func_start calc_checksum
calc_checksum: ; 0x020BD0DC
	stmfd sp!, {r3, lr}
	mov r2, #0
	bl calc_checksum_do
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl invert_checksum
	ldmfd sp!, {r3, pc}
	arm_func_end calc_checksum

	arm_static_func_start check_tcpudpsum
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

	arm_static_func_start ip_islocal
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

	arm_static_func_start get_targetip
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

	arm_static_func_start is_broadcast
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

	arm_static_func_start is_multicast
is_multicast: ; 0x020BD1E8
	and r0, r0, #0xf0000000
	cmp r0, #0xe0000000
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end is_multicast

	arm_static_func_start ip_isme
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

	arm_static_func_start maccmp
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

	arm_static_func_start send_packet
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

	arm_static_func_start put_in_buffer
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

	arm_static_func_start receive_packet
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

	arm_static_func_start throw_packet
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

	arm_static_func_start inq_arpcache
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
_020BD708: .word mac_broadcast
_020BD70C: .word arpcache
_020BD710: .word arpcache+0xa
	arm_func_end inq_arpcache

	arm_static_func_start send_arprequest
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

	arm_static_func_start arprequest
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
_020BD8AC: .word arp_retry_timeout
_020BD8B0: .word 0x51EB851F
_020BD8B4: .word wfailed
	arm_func_end arprequest

	arm_static_func_start reg_arpcache
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
_020BD9EC: .word arpcache
_020BD9F0: .word arpcache+0xa
	arm_func_end reg_arpcache

	arm_static_func_start send_ether
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

	arm_static_func_start send_ip_frag
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

	arm_static_func_start send_ip
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

	arm_static_func_start send_ping
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

	arm_static_func_start send_udp
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

	arm_static_func_start _send_tcp
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
_020BE468: .word tmpbuf
_020BE46C: .word 0x01010500
_020BE470: .word wfailed
_020BE474: .word 0x00000101
	arm_func_end _send_tcp

	arm_static_func_start reply_arp
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

	arm_static_func_start dispatch_arp
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

	arm_static_func_start reply_icmp
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

	arm_static_func_start process_icmp_reply
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

	arm_static_func_start valid_IP
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

	arm_static_func_start dispatch_icmp
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

	arm_static_func_start check_listener
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

	arm_static_func_start check_socket
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

	arm_static_func_start find_socket
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

	arm_static_func_start parse_mss
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

	arm_static_func_start no_need_inq
no_need_inq: ; 0x020BEC4C
	stmfd sp!, {r3, lr}
	bl get_targetip
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl inq_arpcache
	ldmfd sp!, {r3, pc}
	arm_func_end no_need_inq

	arm_static_func_start _tcp_send_handshake
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

	arm_static_func_start _tcp_send_ack
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

	arm_static_func_start _tcp_send_finack
_tcp_send_finack: ; 0x020BED54
	ldr r12, _020BED60 ; =_tcp_send_handshake
	mov r1, #0x11
	bx r12
_020BED60: .word _tcp_send_handshake
	arm_func_end _tcp_send_finack

	arm_static_func_start _tcp_send_rst
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
_020BEE7C: .word tmpsoc
	arm_func_end _tcp_send_rst

	arm_static_func_start dt_syn_LISTEN
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

	arm_static_func_start find_specific_socket
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

	arm_static_func_start dt_syn
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

	arm_static_func_start dt_synack
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

	arm_static_func_start mark_rwin_chunk
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

	arm_static_func_start merge_rwin_chunks
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

	arm_static_func_start pull_rwin_chunks
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

	arm_static_func_start push_rwin_chunks
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

	arm_static_func_start dt_ack
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

	arm_static_func_start dt_fin
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

	arm_static_func_start dt_rst
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

	arm_static_func_start dispatch_tcp
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

	arm_static_func_start dispatch_udp
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

	arm_static_func_start check_frag
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
_020BFF88: .word fragtable
_020BFF8C: .word 0x00001FFF
_020BFF90: .word wfailed
	arm_func_end check_frag

	arm_static_func_start dispatch_ip
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

	arm_static_func_start tcpip
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

	arm_static_func_start get_seqno
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

	arm_static_func_start udp_read_raw
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

	arm_static_func_start tcp_write_do
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

	arm_static_func_start tcp_write_do2
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

	arm_static_func_start garprequest
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

	arm_static_func_start set_fixed_ip
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

	arm_static_func_start scavenger
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
_020C1318: .word scavenger_soc
_020C131C: .word wfailed
_020C1320: .word scavenger_rcvbuf
_020C1324: .word scavenger_sndbuf
_020C1328: .word arpcache
_020C132C: .word 0x000003BD
_020C1330: .word OSi_ThreadInfo
_020C1334: .word fragtable
	arm_func_end scavenger

	arm_static_func_start dacktimer_reschedule
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
_020C1420: .word dacktimer_alarm
_020C1424: .word dacktimer_alarmhandler
	arm_func_end dacktimer_reschedule

	arm_static_func_start dacktimer
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
_020C1464: .word scavenger_thread
	arm_func_end dacktimer

	arm_static_func_start dacktimer_alarmhandler
dacktimer_alarmhandler: ; 0x020C1468
	ldr r0, _020C1474 ; =0x020E6FF8
	ldr r12, _020C1478 ; =OS_WakeupThreadDirect
	bx r12
_020C1474: .word dacktimer_thread
_020C1478: .word OS_WakeupThreadDirect
	arm_func_end dacktimer_alarmhandler

	arm_static_func_start dhcp_setcommon
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

	arm_static_func_start pad_mem
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

	arm_static_func_start dhcp_send_discover
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
_020C16E8: .word scavenger_sndbuf+0x2a
	arm_func_end dhcp_send_discover

	arm_static_func_start dhcp_send_request
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
_020C17EC: .word scavenger_sndbuf+0x2a
_020C17F0: .word wfailed
	arm_func_end dhcp_send_request

	arm_static_func_start dhcp_analyze_response
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
_020C1B58: .word dhcp_retry_timeout_rate
_020C1B5C: .word CPSMyMac
_020C1B60: .word wfailed
	arm_func_end dhcp_analyze_response

	arm_static_func_start dhcp_discover_server
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

	arm_static_func_start dhcp_request_server
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

	arm_static_func_start dhcp_release_server
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
_020C1D1C: .word scavenger_sndbuf+0x2a
	arm_func_end dhcp_release_server

	arm_static_func_start dns_skipname
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

	arm_static_func_start resolve_common
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

	arm_static_func_start strtol10
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

	arm_static_func_start rawip
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

	arm_static_func_start resolve_sub
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

    .data
helper_threads_priority:
	.word 0x10
dhcp_retry_timeout_rate:
	.byte 0x02, 0x02, 0x03, 0x05, 0x08
mac_broadcast:
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00
arp_retry_timeout:
	.word 0x3E8, 0x5DC, 0x7D0, 0x9C4, 0xBB8, 0xDAC
ov15_020E4368:
	.byte 0xAA, 0xAA, 0x03, 0x00, 0x00, 0x00, 0x08, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
ov15_020E4374:
	.asciz "NintendoDS"

    .bss
wfailed:
	.space 0x01
ip_conflict:
	.space 0x01
ipid:
	.space 0x02
mymss:
	.space 0x02
eport:
	.space 0x02
_ZZ9send_pingPhmP7_CPSSocE7pingseq:
	.space 0x4
	.global CPSDhcpMode
CPSDhcpMode:
	.space 0x04
	.global CPSNetMask
CPSNetMask:
	.space 0x04
	.global CPSiAlloc
CPSiAlloc:
	.space 0x04
link_is_on:
	.space 0x04
	.global CPSDhcpServerIp
CPSDhcpServerIp:
	.space 0x04
wlan_buf:
	.space 0x04
yield_wait:
	.space 0x04
dhcp_callback:
	.space 0x04
	.global CPSGatewayIp
CPSGatewayIp:
	.space 0x04
xid:
	.space 0x04
scavenger_callback:
	.space 0x04
offered_myip:
	.space 0x04
lease_time:
	.space 0x04
ZZ19dhcp_request_serverPmiE10sleep_save:
	.space 0x04
	.global CPSiFree
CPSiFree:
	.space 0x04
checkNConfig_callback:
	.space 0x04
	.global CPSNoIpReason
CPSNoIpReason:
	.space 0x04
	.global CPSMyIp
CPSMyIp:
	.space 0x04
receiver_thread:
	.space 0x04
scavenger_force_exit:
	.space 0x04
wlan_buflen:
	.space 0x04
wlan_putpnt:
	.space 0x04
wlan_getpnt:
	.space 0x04
	.global CPSMyMac
CPSMyMac:
	.space 0x08
	.global CPSDnsIp
CPSDnsIp:
	.space 0x08
	.global CPSiRand32ctx
CPSiRand32ctx:
	.space 0x18
dacktimer_alarm:
	.space 0x4E
tmpbuf:
	.space 0x3A
arpcache:
	.space 0x60
scavenger_soc:
	.space 0xA0
tmpsoc:
	.space 0xA0
dacktimer_thread:
	.space 0xC0
scavenger_thread:
	.space 0xC0
tcpip_thread:
	.space 0xC0
scavenger_sndbuf:
	.space 0x180
scavenger_rcvbuf:
	.space 0x180
fragtable:
	.space 0x1C8
dacktimer_stack:
	.space 0x800
scavenger_stack:
	.space 0x800
tcpip_stack:
	.space 0x800
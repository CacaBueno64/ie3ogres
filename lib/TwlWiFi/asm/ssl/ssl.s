
	.include "asm/macros/function.inc"
	.public CPSiAlloc
	.public CPSiFree
	.public CPSiRand32ctx
	.public CPSi_SocConsumeRaw
	.public CPSi_TcpConnectRaw
	.public CPSi_TcpReadRaw
	.public CPSi_TcpWrite2Raw
	.public CPSi_big_add
	.public CPSi_big_div
	.public CPSi_big_from_char
	.public CPSi_big_montpower
	.public CPSi_big_mult
	.public CPSi_big_negate
	.public CPSi_big_power
	.public CPSi_big_sign
	.public CPSi_big_sub
	.public CPSi_char_from_big
	.public CPSi_md5_calc
	.public CPSi_md5_init
	.public CPSi_md5_result
	.public CPSi_rc4_crypt
	.public CPSi_rc4_init
	.public CPSi_sha1_calc
	.public CPSi_sha1_init
	.public CPSi_sha1_result
	.public CPSi_sha1_result_prng
	.public MI_CpuCopy8
	.public MI_CpuFill8
	.public OS_DisableInterrupts
	.public OS_GetThreadPriority
	.public OS_GetTick
	.public OS_RestoreInterrupts
	.public OS_SetThreadPriority
	.public OS_WakeupThreadDirect
	.public OSi_ReferSymbol
	.public OSi_ThreadInfo
	.public RTC_ConvertDateTimeToSecond
	.public RTC_GetDate
	.public RTC_GetTime
	.public _version_UBIQUITOUS_SSL
	.public memcmp
	.public strcmp
	.public strlen

	.text
	arm_static_func_start find_session_from_id
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

	arm_static_func_start find_session_from_IP
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

	arm_static_func_start cache_session
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

	arm_static_func_start purge_session
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

	arm_static_func_start date2sec
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
_020D78C8: .word pairlist
	arm_func_end CPS_GetSslHandshakePriority

	arm_func_start CPS_SetSslHandshakePriority
CPS_SetSslHandshakePriority: ; 0x020D78CC
	ldr r1, _020D78D8 ; =0x020E5A54
	str r0, [r1, #4]
	bx lr
_020D78D8: .word pairlist
	arm_func_end CPS_SetSslHandshakePriority

	arm_static_func_start enter_computebound
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
_020D791C: .word pairlist
_020D7920: .word OSi_ThreadInfo
	arm_func_end enter_computebound

	arm_static_func_start exit_computebound
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

	arm_static_func_start get_rootCA
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

	arm_static_func_start cert_item_len
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

	arm_static_func_start make_dn
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

	arm_static_func_start parse_time
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

	arm_static_func_start cert_item
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
_020D7FA0: .word object
	arm_func_end cert_item

	arm_static_func_start validate_signature
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

	arm_static_func_start auth_cert
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

	arm_static_func_start chars_till_end
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

	arm_static_func_start compare_fqdn
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

	arm_static_func_start rcv_certificate
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

	arm_static_func_start rcv_server_hello
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

	arm_static_func_start has_method
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

	arm_static_func_start select_method
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
_020D8648: .word pairlist
	arm_func_end select_method

	arm_static_func_start version_ok
version_ok: ; 0x020D864C
	cmp r0, #3
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end version_ok

	arm_static_func_start client_hello_v2
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

	arm_static_func_start client_hello
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

	arm_static_func_start decrypt_premaster_secret
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

	arm_static_func_start create_ms_sub
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

	arm_static_func_start create_master_secret
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

	arm_static_func_start create_key_block
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

	arm_static_func_start rcv_client_key_exchange
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

	arm_static_func_start finished_md5
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

	arm_static_func_start finished_sha1
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

	arm_static_func_start rcv_finished
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

	arm_static_func_start add1_be8
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

	arm_static_func_start decrypt
decrypt: ; 0x020D8FAC
	stmfd sp!, {r4, lr}
	add r0, r0, #0x1e0
	mov r4, r2
	bl CPSi_rc4_crypt
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end decrypt

	arm_static_func_start make_plaintext
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

	arm_static_func_start make_ciphertext
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

	arm_static_func_start tcp_read_raw_nbytes
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

	arm_static_func_start update_digest
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

	arm_static_func_start parse_record_in_buf
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

	arm_static_func_start parse_record
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

	arm_static_func_start set_random
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
_020D9A7C: .word pool_initialized
_020D9A80: .word CPSiRand32ctx
_020D9A84: .word pool
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
_020D9AF8: .word pool
_020D9AFC: .word pool_initialized
	arm_func_end CPS_SslAddRandomSeed

	arm_static_func_start send_change_cipher_spec_and_finished
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

	arm_static_func_start send_client_hello
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
_020D9DF0: .word pairlist
_020D9DF4: .word CPSiFree
	arm_func_end send_client_hello

	arm_static_func_start send_client_key_exchange
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
_020DA0A0: .word alert_nocert
_020DA0A4: .word CPSiAlloc
_020DA0A8: .word CPSiFree
	arm_func_end send_client_key_exchange

	arm_static_func_start mustget_change_cipher_spec_and_finished
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

	arm_static_func_start ssl_connect_try
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

	arm_static_func_start try_fill_record
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

	.rodata
alert_nocert:
	.byte 0x15, 0x03, 0x00, 0x00, 0x02, 0x01, 0x29, 0x00

	.data
ov15_020E5A4C:
	.byte 0x55, 0x04, 0x03, 0x00
ov15_020E5A50:
	.byte 0xFF, 0xFF, 0xFF, 0x00
pairlist:
	.byte 0x04, 0x00, 0x05, 0x00
ssl_handshake_priority:
	.byte 0xFF, 0xFF, 0xFF, 0xFF
object:
	.word ov15_020E5A50
	.word ov15_020E5A7C
	.word ov15_020E5A74
	.word ov15_020E5A88
	.word ov15_020E5A94
	.word ov15_020E5A4C
ov15_020E5A74:
	.byte 0x55, 0x08, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00
ov15_020E5A7C:
	.byte 0x2A, 0x86, 0x48, 0x86
	.byte 0xF7, 0x0D, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00
ov15_020E5A88:
	.byte 0x2A, 0x86, 0x48, 0x86, 0xF7, 0x0D, 0x01, 0x01
	.byte 0x04, 0x00, 0x00, 0x00
ov15_020E5A94:
	.byte 0x2A, 0x86, 0x48, 0x86, 0xF7, 0x0D, 0x01, 0x01, 0x05, 0x00, 0x00, 0x00
ov15_020E5AA0:
	.byte 0x41, 0x00, 0x00, 0x00
ov15_020E5AA4:
	.byte 0x42, 0x42, 0x00, 0x00
ov15_020E5AA8:
	.byte 0x43, 0x43, 0x43, 0x00
ov15_020E5AAC:
	.byte 0x53, 0x52, 0x56, 0x52
	.byte 0x00, 0x00, 0x00, 0x00
ov15_020E5AB4:
	.byte 0x43, 0x4C, 0x4E, 0x54, 0x00, 0x00, 0x00, 0x00

	.bss
	.global pool_initialized
pool_initialized:
	.space 0x04
	.global cnt
cnt:
	.space 0x04
	.global pool
pool:
	.space 0x14
	.global session
session:
	.space 0x170

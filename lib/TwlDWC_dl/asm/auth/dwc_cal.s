
	.include "asm/macros/function.inc"
	.public DC_InvalidateRange
	.public DWC_AC_GetApSpotInfo
	.public DWC_AC_GetApType
	.public DWC_Http_Add_HeaderItem
	.public DWC_Http_Add_PostBase64Item
	.public DWCi_BM_GetWiFiInfo
	.public MI_CpuCopy8
	.public MI_CpuFill8
	.public OS_DisableInterrupts
	.public OS_GetMacAddress
	.public OS_GetOwnerInfo
	.public OS_RestoreInterrupts
	.public OS_SNPrintf
	.public OS_SPrintf
	.public OS_Terminate
	.public RTC_GetDateTime
	.public WCM_GetApEssid
	.public WCM_GetApMacAddress
	.public strlen
	.public wcslen

	.text
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

	.data
ov15_020E4554:
	.asciz "%013llu"
	.balign 4, 0
ov15_020E455C:
	.asciz "%03u"
	.balign 4, 0
ov15_020E4564:
	.asciz "%02x"
	.balign 4, 0
ov15_020E456C:
	.asciz "%02x%02x"
	.balign 4, 0
ov15_020E4578:
	.asciz "%02d%02d%02d%02d%02d%02d"
	.balign 4, 0
ov15_020E4594:
	.asciz "%02d:0000000-00"
	.balign 4, 0
ov15_020E45A4:
	.asciz "%03d%03d"
	.balign 4, 0
ov15_020E45B0:
	.asciz "sdkver"
	.balign 4, 0
ov15_020E45B8:
	.asciz "userid"
	.balign 4, 0
ov15_020E45C0:
	.asciz "passwd"
	.balign 4, 0
ov15_020E45C8:
	.asciz "bssid"
	.balign 4, 0
ov15_020E45D0:
	.asciz "apinfo"
	.balign 4, 0
ov15_020E45D8:
	.asciz "gamecd"
	.balign 4, 0
ov15_020E45E0:
	.asciz "makercd"
	.balign 4, 0
ov15_020E45E8:
	.asciz "unitcd"
	.balign 4, 0
ov15_020E45F0:
	.asciz "macadr"
	.balign 4, 0
ov15_020E45F8:
	.asciz "lang"
	.balign 4, 0
ov15_020E4600:
	.asciz "birth"
	.balign 4, 0
ov15_020E4608:
	.asciz "devtime"
	.balign 4, 0
ov15_020E4610:
	.asciz "devname"
	.balign 4, 0
ov15_020E4618:
	.asciz "ssid"
	.balign 4, 0
ov15_020E4620:
	.asciz "Nitro WiFi SDK/%d.%d"
	.balign 4, 0
ov15_020E4638:
	.asciz "User-Agent"
	.balign 4, 0
ov15_020E4644:
	.asciz "HTTP_X_GAMECD"
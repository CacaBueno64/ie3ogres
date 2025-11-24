#include "ov116.hpp"

const UnkStruct_ov116_02124EA0 ov116_02124EA0 = UnkStruct_ov116_02124EA0(0x840800, 0x4e2000, 0x0000EA3C, 0x800, 0x00009CCD, 0x2000);

#ifdef __cplusplus
extern "C" {
#endif

extern void FUN_0204f02c(void);
extern void FUN_ov16_020efa80(void);
extern void FUN_ov16_020f07f4(void);
extern void FUN_ov126_021375d4(void);
extern void FUN_ov132_02141568(void);

extern void *unk_02099EF0;
extern void *unk_0209BA20;

asm void FUN_ov116_02124d00(void *ptr)
{
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r3, #1
	mov r5, #0
	mov r1, r5
	add r0, r4, #0x1c
	mov r2, #0xa8
	strb r3, [r4, #0x19]
	strb r3, [r4, #0x1a]
	bl MI_CpuFill8
	mvn r1, #0
	mov r0, #0x1c
_02124D30:
	mla r2, r5, r0, r4
	strh r1, [r2, #0x1c]
	add r5, r5, #1
	strh r1, [r2, #0x70]
	cmp r5, #3
	blt _02124D30
	ldr r0, =unk_02099EF0
	ldr r0, [r0]
	bl FUN_ov126_021375d4
	movs r5, r0
	beq _02124D88
	ldrsb r0, [r5, #0xc]
	bl FUN_ov16_020f07f4
	cmp r0, #0
	ldreqsb r0, [r5, #0xc]
	streqh r0, [r4, #0x1c]
	ldreqsb r0, [r5, #0xd]
	streqh r0, [r4, #0x70]
	ldrnesb r0, [r5, #0xd]
	strneh r0, [r4, #0x1c]
	ldrnesb r0, [r5, #0xc]
	strneh r0, [r4, #0x70]
_02124D88:
	ldrsh r0, [r4, #0x1c]
	mvn r5, #0
	mov r6, r5
	bl FUN_ov16_020efa80
	movs r1, r0
	beq _02124DB4
	ldr r0, =unk_0209BA20
	mov r2, #0xf
	mov r3, #0
	bl FUN_0204f02c
	mov r5, r0
_02124DB4:
	ldrsh r0, [r4, #0x70]
	bl FUN_ov16_020efa80
	movs r1, r0
	beq _02124DD8
	ldr r0, =unk_0209BA20
	mov r2, #0xf
	mov r3, #0
	bl FUN_0204f02c
	mov r6, r0
_02124DD8:
	ldr r0, =unk_02099EF0
	mov r1, r5
	ldr r0, [r0]
	mov r2, r6
	bl FUN_ov132_02141568
	cmp r0, #0
	movne r0, #1
	strneb r0, [r4, #0x8b]
	ldr r0, =unk_02099EF0
	mov r1, r6
	ldr r0, [r0]
	mov r2, r5
	bl FUN_ov132_02141568
	cmp r0, #0
	movne r0, #1
	strneb r0, [r4, #0x37]
	ldmfd sp!, {r4, r5, r6, pc}
}

extern void _ZdlPv(void *ptr);

void *FUN_ov116_02124e24(void *ptr)
{
    _ZdlPv(ptr);
    return ptr;
}

void FUN_ov116_02124e38(void) { }

#ifdef __cplusplus
} /* extern "C" */
#endif

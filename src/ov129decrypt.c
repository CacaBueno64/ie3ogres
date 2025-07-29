#include <nitro.h>

#ifdef __cplusplus
extern "C" {
#endif

#define ENCRYPTION_KEY      0xf0b9a2ea
#define BIT_MASK            0xfffffbfe
#define PATCH_VALUE         0x00000000

u32 GetInsnType(u32 value) {
    u8 highByte = (value >> 24) & 0xFF;
    if ((highByte & 0xE) == 0xA) {
        if ((highByte & 0xF0) == 0xF0)
            return 1;
        else if (highByte & 1)
            return 2;
        else
            return 3;
    }
    return 0;
}

static inline asm void ClearCache(void) {
    mov r12, #0
	mov r1, #0
_0212B5AC:
	mov r0, #0
_0212B5B0:
	orr r2, r1, r0
	mcr p15, 0, r12, c7, c10, 4
	mcr p15, 0, r2, c7, c14, 2
	add r0, r0, #0x20
	cmp r0, #0x400
	blt _0212B5B0
	add r1, r1, #0x40000000
	cmp r1, #0
	bne _0212B5AC
	mov r0, #0
	mcr p15, 0, r0, c7, c5, 0
	mcr p15, 0, r12, c7, c10, 4
}

u8 ov129_0212C5A0[0x20];

// non matching
// see https://decomp.me/scratch/DYRjF
void ov129_0212B4E0(u32 *ctx)
{
    ctx[-1] = 0;
    ctx[-2] = 0;
    ctx[-3] = 0;

    do {
        u32 endAddr = ctx[1];
        u32 startAddr = ctx[0];
    
        u32 bssAddr = (u32)&ov129_0212C5A0;
    
        u32 offsetWords = ((endAddr - bssAddr) - 0x1000) >> 2;
        u32 startPtr = startAddr - 0x1000; //r4
        u32 endPtr = (startPtr + offsetWords); //r5

        u32 bitmask = BIT_MASK; // r6
        u32 encKey = ENCRYPTION_KEY; // r8

        for (; startPtr < endPtr; startPtr++) {
            switch (GetInsType(*(u32 *)startPtr)) {
                case 1:
                case 3:
                    u32 r0 = *(u32 *)startPtr;
                    u32 r1 = (r0 & 0x0FFFFFFF);
                    r1 += encKey;
                    r0 = r0 & 0xF0000000;
                    r1 = r1 & 0x0FFFFFFF;
                    r0 = r0 ^ 0x01000000;
                    r1 = r0 | r1;
                    r0 = bitmask ^ (r1 >> 24);
                    *(u32 *)startPtr = r1;
                    bitmask = r0 & 0x00FFFFFF;
                    break;
                case 2:
                    *(u32 *)startPtr ^= 0x01000000;
                default:
                    u32 x1 = *(u32 *)startPtr;
                    u32 x2 = x1 ^ encKey;
                    u32 result = encKey ^ x2 ^ (x2 >> 8);
                    *(u32 *)startPtr = x2;
                    encKey = result & 0x00FFFFFF;
            }
        }

        ClearCache();

        ctx[1] = PATCH_VALUE;
        ctx[0] = PATCH_VALUE;
        
        ctx += 2;
    } while (ctx[0] != 0);
}

#ifdef __cplusplus
} /* extern "C" */
#endif

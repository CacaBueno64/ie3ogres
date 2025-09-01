#include "l5movie.hpp"

L5Movie::L5Movie()
{
    this->flags = 0;
}

L5Movie::~L5Movie()
{
    if (this->flags) {
        this->flags |= 0x20;
        this->stopMovie(1);
    }
}

void L5Movie::FUN_0202e4ac(void *allocator)
{
    if (allocator == NULL) {
        return;
    }

    unk_020B5B80.allocator = allocator;
    OS_InitTick();
}

void L5Movie::FUN_0202e4cc(u16 *ofbPtr0, u16 *ofbPtr1, u16 *ofbPtr2, u16 *ofbPtr3)
{
    unk_020B5B80.unk8[0] = ofbPtr0;
    unk_020B5B80.unk8[1] = ofbPtr1;
    unk_020B5B80.unk10[0] = ofbPtr2;
    unk_020B5B80.unk10[1] = ofbPtr3;
}

u32 L5Movie::FUN_0202e4ec()
{
    if (!unk_020B5B80.unk6) {
        unk_020B5B80.unk6 = 1;
        unk_020B5B80.unk4 ^= 1;
    }

    return unk_020B5B80.unk4 ^ 1;
}

BOOL L5Movie::playMovie(char *name, u32 param2, u32 hasSound, u8 param4)
{
    char filepath[64];

    if (param4) {
        FS_UnloadOverlay(MI_PROCESSOR_ARM9, FS_OVERLAY_ID(overlay126));
        FS_LoadOverlay(MI_PROCESSOR_ARM9, FS_OVERLAY_ID(overlay127));
    }

    this->handle_98 = NULL;
    this->handle_94 = NULL;
    this->handle = NULL;

    if (name) {
        STD_TSPrintf(filepath, "/data_iz/movie/%s.mods", name);
        FS_InitFile(&this->file);
        if (!FS_OpenFile(&this->file, filepath)) {
            return FALSE;
        }
    }

    if (param2) {
        OS_Terminate();
    }

    if (name) {
        this->handle = MO_OpenMovie(&this->file, MO_NB_BUFFERED_FRAME_MIN);
    }
    if (this->handle == MO_INVALID_HANDLE) {
        return FALSE;
    }

    this->handle_98 = this->handle;
    this->flags = 0;
    if (hasSound) {
        this->flags |= MOVIE_HAS_SOUND;
    }
    this->unk194 = 0;
    this->unk198 = 0;
    this->unk19C = 0;
    this->unk1A0 = 0;
    this->unk1A4 = MO_GetNbFrame(this->handle_98);

    unk_020B5B80.unk4 = 1;
    unk_020B5B80.unk6 = 1;

    STD_TSPrintf(filepath, "%s.sad", name);
    if (((this->flags & MOVIE_HAS_SOUND) == 0) && (gL5Sound.playSAD(NULL, filepath, 0))) {
        this->flags |= 0x100;
    }

    OS_CreateAlarm(&this->alarm);
    OS_SetPeriodicAlarm(
        &this->alarm,
        OS_GetTick() + ALARM_COUNT( 10 ),
        ALARM_COUNT( (u64)16777216000000 / (u64)MO_GetVideoFps(this->handle_98) ),
        &Movie_AlarmIntr,
        NULL
    );

    int i = 0;
    do {
        (void)this->FUN_0202ea50();
        i++;
    } while (i < 6);

    this->unk188 = MO_Malloc(STACK_SIZE);

    OS_CreateThread(
        &this->thread,
        &FUN_0202ec08,
        this,
        (void *)((int)this->unk188 + STACK_SIZE),
        STACK_SIZE,
        27
    );

    if ((this->flags & 0x200) == 0) {
        gL5Sound.FUN_0202c4a0(0);
    }

    this->flags |= 1;

    return TRUE;
}

u32 L5Movie::FUN_0202e784(void)
{
    return this->flags;
}

// https://decomp.me/scratch/OeIac
#ifdef NONMATCHING
BOOL L5Movie::FUN_0202e78c(void)
{
    if ((this->flags & 1) == 0) {
        return FALSE;
    }
    if (this->handle_98 == MO_INVALID_HANDLE) {
        return FALSE;
    }
    if ((this->flags & 4) != 0) {
        return FALSE;
    }
    if ((this->flags & 0x20) != 0) {
        if ((this->flags & 0x8000) != 0) {
            return TRUE;
        } else {
            return FALSE;
        }
    }
    if ((this->flags & 0x10) != 0) {
        return FALSE;
    }
    if ((this->flags & 2) == 0) {
        unk_020B5B80.unk5 = 1;
    }
    if ((this->flags & 0x100) != 0) {
        if ((this->flags & 8) == 0) {
            gL5Sound.FUN_0202d594(0, 0);
            this->flags |= 0x408;
        }
        if (!gL5Sound.FUN_0202d6c4(0)) {
            if ((this->flags & 0x400) != 0) {
                unk_020B5B80.unk5 = 0;
                return TRUE;
            } else {
                this->flags &= ~0x108;
            }
        } else {
            this->flags &= ~0x400;
        }
    }
    this->flags |= 2;
    this->unk198 += unk_020B5B80.unk5;
    unk_020B5B80.unk5 = 0;
    if (this->unk198) {
        while ((this->unk198 > 1) && (this->unk194 > 1)) {
            (void)MO_SkipFrameImage(this->handle);
            (void)MO_SkipFrameImage(this->handle_94);
            this->unk1A0++;
            this->unk194--;
            this->unk198--;
        }
        if (this->unk194) {
            if (FUN_0202ec4c(this->handle, this->handle_94)) {
                this->unk1A0++;
                this->unk194--;
                this->unk198--;
            }
        }
    }

    OS_WakeupThreadDirect(&this->thread);

    if (this->unk1A0 >= this->unk1A4) {
        this->flags |= 4;
        return FALSE;
    }
    return TRUE;
}
#else
extern "C" {
    extern void _ZN7L5Sound12FUN_0202d594Emm(void);
    extern void _ZN7L5Sound12FUN_0202d6c4Em(void);
}
asm BOOL L5Movie::FUN_0202e78c(void)
{
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0x18c]
	mov r4, #0
	tst r2, #1
	mov r1, #1
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x98]
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	tst r2, #4
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, pc}
	tst r2, #0x20
	beq _0202E7E0
	tst r2, #0x8000
	movne r0, r1
	moveq r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_0202E7E0:
	tst r2, #0x10
	movne r0, r1
	ldmnefd sp!, {r3, r4, r5, pc}
	tst r2, #2
	ldreq r0, =unk_020B5B80
	streqb r1, [r0, #5]
	ldr r0, [r5, #0x18c]
	tst r0, #0x100
	beq _0202E868
	tst r0, #8
	bne _0202E82C
	mov r1, #0
	ldr r0, =gL5Sound
	mov r2, r1
	bl _ZN7L5Sound12FUN_0202d594Emm
	ldr r0, [r5, #0x18c]
	orr r0, r0, #8
	orr r0, r0, #0x400
	str r0, [r5, #0x18c]
_0202E82C:
	ldr r0, =gL5Sound
	mov r1, r4
	bl _ZN7L5Sound12FUN_0202d6c4Em
	cmp r0, #0
	ldr r0, [r5, #0x18c]
	bne _0202E860
	tst r0, #0x400
	ldrne r1, =unk_020B5B80
	movne r0, #1
	strneb r4, [r1, #5]
	ldmnefd sp!, {r3, r4, r5, pc}
	bic r0, r0, #0x108
	b _0202E864
_0202E860:
	bic r0, r0, #0x400
_0202E864:
	str r0, [r5, #0x18c]
_0202E868:
	ldr r1, [r5, #0x18c]
	ldr r0, =unk_020B5B80
	orr r1, r1, #2
	str r1, [r5, #0x18c]
	ldrsb r1, [r0, #5]
	ldr r2, [r5, #0x198]
	adds r1, r2, r1
	str r1, [r5, #0x198]
	strb r4, [r0, #5]
	beq _0202E924
	b _0202E8C8
_0202E894:
	ldr r0, [r5, #0x90]
	bl MO_SkipFrameImage
	ldr r0, [r5, #0x94]
	bl MO_SkipFrameImage
	ldr r2, [r5, #0x1a0]
	ldr r1, [r5, #0x194]
	ldr r0, [r5, #0x198]
	add r2, r2, #1
	sub r1, r1, #1
	sub r0, r0, #1
	str r2, [r5, #0x1a0]
	str r1, [r5, #0x194]
	str r0, [r5, #0x198]
_0202E8C8:
	ldr r0, [r5, #0x198]
	cmp r0, #1
	ble _0202E8E0
	ldr r0, [r5, #0x194]
	cmp r0, #1
	bgt _0202E894
_0202E8E0:
	ldr r0, [r5, #0x194]
	cmp r0, #0
	beq _0202E924
	ldr r0, [r5, #0x90]
	ldr r1, [r5, #0x94]
	bl FUN_0202ec4c
	cmp r0, #0
	beq _0202E924
	ldr r2, [r5, #0x1a0]
	ldr r1, [r5, #0x194]
	ldr r0, [r5, #0x198]
	add r2, r2, #1
	sub r1, r1, #1
	sub r0, r0, #1
	str r2, [r5, #0x1a0]
	str r1, [r5, #0x194]
	str r0, [r5, #0x198]
_0202E924:
	add r0, r5, #0xc8
	bl OS_WakeupThreadDirect
	ldr r1, [r5, #0x1a0]
	ldr r0, [r5, #0x1a4]
	cmp r1, r0
	ldrge r1, [r5, #0x18c]
	movge r0, #0
	orrge r1, r1, #4
	strge r1, [r5, #0x18c]
	movlt r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
}
#endif

void L5Movie::FUN_0202e958(void)
{
    if ((this->flags & 2) == 0) {
        return;
    }
    this->flags |= 0x20;
    this->FUN_0202e978();
}

void L5Movie::FUN_0202e978(void)
{
    if ((this->flags & 2) == 0) {
        return;
    }
    this->flags |= 0x10;
    this->unk198 += unk_020B5B80.unk5;
    if ((this->flags & 8) == 0) {
        return;
    }
    gL5Sound.FUN_0202d774(0, 0x12C);
}

void L5Movie::FUN_0202e9c8(void)
{
    if ((this->flags & 0x10) == 0) {
        return;
    }
    u32 flag = this->flags & ~0x10;
    this->flags = flag;
    unk_020B5B80.unk5 = 0;
    if ((flag & 8) == 0) {
        return;
    }

    gL5Sound.FUN_0202d5d4(0, ((u64)16777216000 / (u64)MO_GetVideoFps(this->handle_98)) * (this->unk1A0 + this->unk198 + 1));

    this->flags |= 0x400;
}

BOOL L5Movie::FUN_0202ea50(void)
{
    if (this->unk194 >= 6) {
        return FALSE;
    }
    if ((this->flags & 0x20) != 0) {
        return FALSE;
    }
    this->flags |= 0x8000;

    (void)OS_GetTick();

    if ((this->handle) && ((this->flags & 0x1000) == 0)) {
        if (!MO_ReadFrame(this->handle)) {
            this->flags |= 0x1000;
        } else {
            (void)MO_UnpackFrameImage(this->handle);
        }
    }

    (void)OS_GetTick();

    this->flags &= ~0x8000;
    if (((this->flags & 0x1000) != 0) && ((this->flags & 0x2000) != 0)) {
        return FALSE;
    }

    this->unk19C++;
    this->unk194++;

    return TRUE;
}

void L5Movie::stopMovie(u32 param1)
{
    if (!this->flags) {
        return;
    }
    if ((this->flags & 0x8000) != 0) {
        do {
            OS_Sleep(50);
        } while ((this->flags & 0x8000) != 0);
    }
    if ((this->flags & 0x20) == 0) {
        s32 i = 0;
        if (this->unk194 > 0) {  
            do {
                MO_SkipFrameImage(this->handle);
                MO_SkipFrameImage(this->handle_94);
                i++;
            } while (i < this->unk194);
        }
    }
    if ((this->flags & 0x08) != 0) {
        gL5Sound.FUN_0202d578(0);
    }
    
    OS_CancelAlarm(&this->alarm);
    
    MO_Free(unk_020B5B80.unk20);
    MO_Free(unk_020B5B80.unk24);

    if (this->handle != MO_INVALID_HANDLE) {
        MO_CloseMovie(this->handle);
        (void)FS_CloseFile(&this->file);
    }

    OS_DestroyThread(&this->thread);

    MO_Free(this->unk188);

    this->flags = 0;

    if (!param1) {
        return;
    }

    FS_UnloadOverlay(MI_PROCESSOR_ARM9, FS_OVERLAY_ID(overlay127));
    FS_LoadOverlay(MI_PROCESSOR_ARM9, FS_OVERLAY_ID(overlay126));
}

extern "C" {
void FUN_0202ec08(void *arg)
{
    L5Movie *l5movie = (L5Movie *)arg;
    while (TRUE) {
        if (l5movie->FUN_0202ea50()) {
            continue;
        }
        OS_SleepThread(NULL);
    }
}

u32 Movie_GetVideoFps(L5Movie *arg)
{
    if (!arg->handle_98) {
        return 0;
    }

    return MO_GetVideoFps(arg->handle_98);
}

BOOL FUN_0202ec4c(MOHandle handle0, MOHandle handle1)
{
    if (unk_020B5B80.unk6 == 0) {
        return FALSE;
    }
    if (handle0) {
        u16 *outFrameBufferPtr = unk_020B5B80.unk8[unk_020B5B80.unk4];
        if (outFrameBufferPtr != NULL) {
            (void)MO_BlitFrameImage(handle0, outFrameBufferPtr, 0x100, 0);
        }
    }
    if (handle1) {
        u16 *outFrameBufferPtr = unk_020B5B80.unk10[unk_020B5B80.unk4];
        if (outFrameBufferPtr != NULL) {
            (void)MO_BlitFrameImage(handle1, outFrameBufferPtr, 0x100, 0);
        }
    }
    unk_020B5B80.unk6 = 0;

    return TRUE;
}

void Movie_AlarmIntr(void *arg)
{
    #pragma unused(arg)

    unk_020B5B80.unk5++;
}

extern void *FUN_0202de58(void *allocator, u32 size, u32 type, u32 strategy);
extern void FUN_0202e1c0(void *allocator, void *ptr);
void *Movie_Malloc(u32 size)
{
    return FUN_0202de58(unk_020B5B80.allocator, size, 5, 0);
}

void Movie_Free(void *ptr)
{
    FUN_0202e1c0(unk_020B5B80.allocator, ptr);
}

void *MO_Malloc(u32 size)
{
    return Movie_Malloc(size);
}

void MO_Free(void *mem_p)
{
    Movie_Free(mem_p);
}
}

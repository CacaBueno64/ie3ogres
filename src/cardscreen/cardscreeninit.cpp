#include "cardscreen.hpp"

const ov3_Init_020BD390 ov3_020BD390 = ov3_Init_020BD390(0x4e2000, 0x0000EA3C, 0x800, 0x00009CCD, 0x2000, 0x840800);

void CMainCardScreenInit::initGraphics(void)
{
    MI_CpuClear8(&this->file, sizeof(this->file));
    FUN_ov16_020f316c("/data_iz/pic2d/menu/sfdn_i09.pac_", &this->file.data);
    MI_CpuClearFast(&unk_020A6C40, sizeof(unk_020A6C40));
    MI_CpuClearFast(&unk_020A7C40, sizeof(unk_020A7C40));
    MI_CpuClearFast(&unk_020A7440, sizeof(unk_020A7440));
    DC_FlushRange(&unk_020A6C40, sizeof(unk_020A6C40));
    DC_FlushRange(&unk_020A7C40, sizeof(unk_020A7C40));
    DC_FlushRange(&unk_020A7440, sizeof(unk_020A7440));
    this->state = 1;
}

void CMainCardScreenInit::deallocateFile(void)
{
    FUN_ov16_020f33fc(&this->file);
}

#ifdef NONMATCHING
// https://decomp.me/scratch/qUjbS
void CMainCardScreenInit::displayGraphics(void)
{
    MI_CpuClearFast(G2_GetBG3CharPtr(), 0x20);
    DC_FlushRange(G2_GetBG3CharPtr(), 0x20);
    GX_LoadBG3Bmp(&unk_020A6C40, 0, sizeof(unk_020A6C40));
    GX_LoadBG3Char(ImagePAC_GetCharacterPtr(unk_0209A144.data), 0, ImagePAC_GetCharacterSize(unk_0209A144.data));
    MI_CpuClearFast(G2_GetBG1CharPtr(), 0x20);
    DC_FlushRange(G2_GetBG1CharPtr(), 0x20);
    GX_LoadBG1Scr(&unk_020A7440, 0, sizeof(unk_020A7440));
    ImagePAC *img = static_cast<ImagePAC *>(this->file.data);
    if (img != NULL) {
        FUN_ov16_020f1868(ImagePAC_GetScreenPtr(img), ImagePAC_GetScreenSize(img), 1, 1);
        FUN_ov16_020f1138(img, ENGINE_MAIN, 1);
        GX_LoadBG1Char(ImagePAC_GetCharacterPtr(img), 0x20, ImagePAC_GetCharacterSize(img));
    }
    MI_CpuClearFast(G2_GetBG2CharPtr(), 0x20);
    DC_FlushRange(G2_GetBG2CharPtr(), 0x20);
    GX_LoadBG2Scr(&unk_020A7C40, 0, sizeof(unk_020A7C40));
    FUN_ov16_020f10ac();
}
#else //NONMATCHING
asm void CMainCardScreenInit::displayGraphics(void)
{
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl G2_GetBG3CharPtr
	mov r4, #0x20
	mov r5, #0
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2_GetBG3CharPtr
	mov r1, r4
	bl DC_FlushRange
	ldr r0, =unk_020A6C40
	mov r1, r5
	mov r6, #0x800
	mov r2, r6
	bl GX_LoadBG3Scr
	ldr r0, =unk_0209A144
	mov r1, r5
	ldr r3, [r0]
	ldr r2, [r3, #0x18]
	ldr r0, [r3, #0x14]
	add r0, r3, r0
	bl GX_LoadBG3Char
	bl G2_GetBG1CharPtr
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2_GetBG1CharPtr
	mov r1, r4
	bl DC_FlushRange
	mov r2, r6
	ldr r0, =unk_020A7440
	mov r1, r5
	bl GX_LoadBG1Scr
	ldr r7, [r7, #0xc]
	cmp r7, #0
	beq _020BD034
	ldr r0, [r7, #0xc]
	mov r6, #1
	ldr r1, [r7, #0x10]
	mov r3, r6
	add r0, r7, r0
	add r2, r5, #1
	bl FUN_ov16_020f1868
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020f1138
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x18]
	mov r1, r4
	add r0, r7, r0
	bl GX_LoadBG1Char
_020BD034:
	bl G2_GetBG2CharPtr
	mov r4, #0x20
	mov r5, #0
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl MIi_CpuClearFast
	bl G2_GetBG2CharPtr
	mov r1, r4
	bl DC_FlushRange
	ldr r0, =unk_020A7C40
	mov r1, r5
	mov r2, #0x800
	bl GX_LoadBG2Scr
	bl FUN_ov16_020f10ac
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
}
#endif //NONMATCHING

void CMainCardScreenInit::FUN_ov3_020bd084(void)
{
    UnkStruct_ov3_020bd084 stack;
    ImagePAC *img = static_cast<ImagePAC *>(this->file.data);
    
    if (img != NULL) {
        void *pScreen = ImagePAC_GetScreenPtr(img);
        
        stack.unk14 = 4;
        stack.unk16 = 8;
        stack.unk18 = 0x18;
        stack.unk1A = 8;
        stack.unk1C = 0;
        stack.unk1E = 0;
        stack.unk20 = 0;
        stack.unk22 = 0;
        stack.unk24 = 0;
        stack.unk28 = pScreen;

        FUN_ov16_020f5c34(&gBgMenuManager, 0, 1, 1, 1, &stack, 0, 0, 0);
    }
}

void CMainCardScreenInit::init(void)
{
    this->state = 0;
    FUN_ov16_020f5a58(&gBgMenuManager);
    this->initGraphics();
}

void CMainCardScreenInit::update(int arg)
{
    switch (this->state) {
        case 1:
            if (FUN_ov16_020f330c(&this->file, 1)) {
                this->state = 2;
            }
            break;
        case 3:
            this->state = 4;
            this->FUN_ov3_020bd084();
            this->fadeIn();
        case 4:
            FUN_ov16_020f672c(&gBgMenuManager, 0);
            break;
    }
}

void CMainCardScreenInit::updateLate(void)
{
    switch (this->state) {
        case 2:
            this->displayGraphics();
            this->state = 3;
            break;
        case 4:
            FUN_ov16_020f6a9c(&gBgMenuManager, 0);
            break;
    }
}

void CMainCardScreenInit::close(void)
{
    FUN_ov16_020f5af0(&gBgMenuManager, 0);
    FUN_ov16_020f338c(&this->file, 1);
    this->deallocateFile();
}

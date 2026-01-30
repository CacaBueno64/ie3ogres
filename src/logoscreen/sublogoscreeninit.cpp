#include "logoscreen.hpp"

const ov5_Init ov5_020BDAB4 = ov5_Init(0x4e2000, 0x0000EA3C, 0x800, 0x00009CCD, 0x2000, 0x840800);

int CSubLogoScreenInit::signal(int arg)
{
    this->image = arg;
    this->uploadComplete = FALSE;
    return 1;
}

void CSubLogoScreenInit::openArchives(void)
{
    gAllocator.setNextArena(1);
    Archive::ReadNewUncompress("/data_iz/pic2d/title/cesa_00.pac_", &this->data[0]);
    Archive::ReadNewUncompress("/data_iz/pic2d/title/level5_bottom.pac_", &this->data[1]);
    Archive::ReadNewUncompress("/data_iz/pic2d/title/Nintendo.pac_", &this->data[2]);
}

void CSubLogoScreenInit::closeArchive(int idx)
{
    if ((this->data[idx].data != NULL) && (this->data[idx].unk_9)) {
        gAllocator.deallocate(this->data[idx].data);
        this->data[idx].data = NULL;
    }
}

void CSubLogoScreenInit::closeArchives(void)
{
    for (int i = 0; i < 3; i++) {
        this->closeArchive(i);
    }
}

void CSubLogoScreenInit::loadSceneImage(void)
{
    void *img;
    switch (this->image) {
        case 0:
            img = this->data[0].data;
            break;
        case 1:
            img = this->data[1].data;
            break;
        case 2:
            img = this->data[2].data;
            break;
    }
    if (img != NULL) {
        GXS_LoadBG2Bmp(Archive::ImagePAC::GetScreenPtr(img), 0, Archive::ImagePAC::GetScreenSize(img));
        GXS_LoadBG2Char(Archive::ImagePAC::GetCharacterPtr(img), 0, Archive::ImagePAC::GetCharacterSize(img));
        GXS_BeginLoadBGExtPltt();
        GXS_LoadBGExtPltt(Archive::ImagePAC::GetPalettePtr(img), 0x4000, Archive::ImagePAC::GetPaletteSize(img));
        GXS_EndLoadBGExtPltt();
    }
    Graphics::LoadBGPaletteSub();
}

void CSubLogoScreenInit::updateKeys(u16 pressed, u16 held)
{
    if ((this->uploadComplete == TRUE) && (!Graphics::IsSubFading()) && (this->dummy_14 == 0) && ((pressed & (PAD_BUTTON_A | PAD_BUTTON_START))) && (this->image == 0)) {
        this->manager->signalMain(1);
    }
}

void CSubLogoScreenInit::updateTP(TPData *tp)
{
    if (this->uploadComplete != TRUE) {
        return;
    }
    if (Graphics::IsSubFading()) {
        return;
    }
    if (tp->touch == TRUE) {
        if (tp->validity) {
            return;
        }
        if (!this->tpTouch) {
            this->tpTouch = TRUE;
        }
        this->tpX = tp->x;
        this->tpY = tp->y;
        return;
    }
    if ((this->tpTouch) && (this->dummy_14 == 0) && (this->image == 0)) {
        this->manager->signalMain(1);
    }
    this->tpTouch = FALSE;
}


void CSubLogoScreenInit::init(void)
{
    this->uploadComplete = FALSE;
    this->image = 0;
    this->tpTouch = FALSE;
    this->dummy_14 = 0;
    this->openArchives();
}

void CSubLogoScreenInit::update(BOOL param1)
{
    if (!this->uploadComplete) {
        this->loadSceneImage();
        this->uploadComplete = TRUE;
    }
}

void CSubLogoScreenInit::updateLate(void) { }

void CSubLogoScreenInit::close(void)
{
    this->closeArchives();
}

#include "endrollscreen.hpp"
#include "init/arm9_init.hpp"

BOOL CSubEndrollScreenInit::readOptions(void)
{
    size_t size;
    char *filename;
    
    switch (gConfig.getParam("IZ_TYPE")) {
        default:
        case 0:
            filename = "/data_iz/logic/ed_option_f.dat";
            if (gAllocator.fileIO) {
                size = gAllocator.fileIO->readDirect(filename, reinterpret_cast<void **>(&this->options), &gAllocator, 0, 0, FALSE, 1);
            } else {
                size = 0;
            }
            if (!size) {
                return FALSE;
            }
            break;
        case 1:
            filename = "/data_iz/logic/ed_option_b.dat";
            if (gAllocator.fileIO) {
                size = gAllocator.fileIO->readDirect(filename, reinterpret_cast<void **>(&this->options), &gAllocator, 0, 0, FALSE, 1);
            } else {
                size = 0;
            }
            if (!size) {
                return FALSE;
            }
            break;
    }

    for (int i = 0; i < this->CREDIT_IMAGE_COUNT; i++) {
        this->options[i].duration++;
    }

    return TRUE;
}

void CSubEndrollScreenInit::freeOptions(void)
{
    gAllocator.deallocate(this->options);
    this->options = NULL;
}

void CSubEndrollScreenInit::resetGraphics(void)
{
    void *ptr = gAllocator.allocate(0x200);
    
    if (ptr) {
        MI_CpuClearFast(ptr, 0x200);
        DC_FlushRange(ptr, 0x200);
        
        GXS_BeginLoadBGExtPltt();
        GXS_LoadBGExtPltt(ptr, 0x4000, 0x200);
        GXS_EndLoadBGExtPltt();
        Graphics::LoadBGPaletteSub();
    
        gAllocator.deallocate(ptr);
    }
}

int CSubEndrollScreenInit::signal(int arg)
{
    return 1;
}

void CSubEndrollScreenInit::readFin(const char *path)
{
    Archive::ReadNewUncompress(path, &this->creditImages[this->CREDIT_IMAGE_FIN]);
}

void CSubEndrollScreenInit::readImage(int idx)
{
    char path[256];

    MI_CpuClear8(path, sizeof(path));
    sprintf(path, "/data_iz/pic2d/ending/%s.pac_", this->options[idx].name);
    Archive::ReadNewUncompress(path, &this->creditImages[idx]);
}

void CSubEndrollScreenInit::freeImage(int idx)
{
    if ((this->creditImages[idx].data != 0) && (this->creditImages[idx].unk_9 != 0)) {
        gAllocator.deallocate(this->creditImages[idx].data);
        this->creditImages[idx].data = NULL;
    }
}

void CSubEndrollScreenInit::freeImages(void)
{
    for (int i = 0; i < this->CREDIT_IMAGE_COUNT + 2; i++) {
        this->freeImage(i);
    }
}

void CSubEndrollScreenInit::displayImage(int idx)
{
    void *data = this->creditImages[idx].data;

    if (data) {
        GXS_LoadBG2Scr(Archive::ImagePAC::GetScreenPtr(data), 0, Archive::ImagePAC::GetScreenSize(data));
        GXS_LoadBG2Char(Archive::ImagePAC::GetCharacterPtr(data), 0, Archive::ImagePAC::GetCharacterSize(data));
        GXS_BeginLoadBGExtPltt();
        GXS_LoadBGExtPltt(Archive::ImagePAC::GetPalettePtr(data), 0x4000, Archive::ImagePAC::GetPaletteSize(data));
        GXS_EndLoadBGExtPltt();
    }
    
    Graphics::LoadBGPaletteSub();
}

void CSubEndrollScreenInit::init(void)
{
    this->options = NULL;
    this->dummy208 = 0;
    this->duration = 0;
    this->imageIdx = 0;
    this->readOptions();
    MI_CpuClear8(&this->creditImages, sizeof(this->creditImages));
    this->readImage(0);
    this->displayImage(this->imageIdx);
    Graphics::FadeInScreen(ENGINE_SUB, 8);
    this->state = STATE_INIT;
    this->shared = NULL;
}

int CSubEndrollScreenInit::transfer(void *arg)
{
    this->shared = static_cast<SEndrollScreenShared *>(arg);
    if (static_cast<SEndrollScreenShared *>(arg)->mainFinished) {
        this->state = STATE_FIN;
    }

    return TRUE;
}

void CSubEndrollScreenInit::update(BOOL param1)
{
    u16 dur;
    
    switch (this->state) {
        case STATE_INIT:
            this->shared->subInitialized = TRUE;
            this->dummy208 = 0;
            this->state = STATE_UPDATE;
            break;
        case STATE_UPDATE:
            this->duration++;

            dur = this->options[this->imageIdx].duration;
            if (this->duration == dur) {
                Graphics::FadeSubBlack(6);
                if (this->imageIdx + 1 < this->CREDIT_IMAGE_COUNT) {
                    this->readImage(this->imageIdx + 1);
                }
                break;
            } else if (this->duration <= dur) {
                break;
            }

            if (!Graphics::IsScreenBrightAdjusted(ENGINE_SUB)) {
                break;
            }
            if (Graphics::IsScreenFading(ENGINE_SUB)) {
                break;
            }

            this->imageIdx++;

            if (this->imageIdx < this->CREDIT_IMAGE_COUNT) {
                this->displayImage(this->imageIdx);
                this->freeImage(this->imageIdx - 1);
                Graphics::FadeInScreen(ENGINE_SUB, 8);
                this->duration = 0;
                break;
            }

            this->resetGraphics();

            this->shared->subFinished = TRUE;
            break;
        case STATE_FIN:
            switch (gConfig.getParam("IZ_TYPE")) {
                default:
                case 0:
                    this->readFin("/data_iz/pic2d/ending/edufin.pac_");
                    break;
                case 1:
                    this->readFin("/data_iz/pic2d/ending/edufin.pac_");
                    break;
            }

            this->displayImage(this->CREDIT_IMAGE_FIN);

            this->state = STATE_END;
            break;
        case STATE_END:
            break;
    }
}

void CSubEndrollScreenInit::updateLate(void) { }

void CSubEndrollScreenInit::close(void)
{
    this->freeOptions();
    this->freeImages();
}

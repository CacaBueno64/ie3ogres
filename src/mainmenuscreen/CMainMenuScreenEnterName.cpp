#include "CMainMenuScreenEnterName.hpp"

#include "init/arm9_init.hpp"

/* TODO: Create header */ extern "C" u16 gKeysRepeated;
/* TODO: Create header */ extern "C" int FUN_ov16_020f081c(void);
/* TODO: Create header */ extern "C" void FUN_ov16_020f2f20(SCanvas *);
/* TODO: Create header */ extern "C" void FUN_ov16_020f2f7c(SCanvas *, int);
/* TODO: Create header */ extern "C" void FUN_ov16_020f2fa8(SCanvas *, int, int);
/* TODO: Create header */ extern "C" void FUN_ov16_020f2fe4(SCanvas *, int);

bool CMainMenuScreenEnterName::isPasswordUnit(int unitNo)
{
    SLogicThink_7EC *v0 = gLogicThink.unk7EC;
    int v1 = gLogicThink.unk86A;

    for (int i = 0; i < v1; i++) {
        if ((v0->unitNo == unitNo) && (v0->unk26 == 253)) {
            return true;
        }

        v0++;
    }

    return false;
}

CFontManager::CharType CMainMenuScreenEnterName::getCharType(char *text)
{
    if (text == NULL) {
        return CFontManager::CHAR_TYPE_NULL;
    }

    char c = *text;

    if ((c >= 0 && c <= 0x7E) || (c >= 0xA1 && c <= 0xDF)) {
        return CFontManager::CHAR_TYPE_HALFWIDTH;
    } else {
        return CFontManager::CHAR_TYPE_FULLWIDTH;
    }
}

u16 CMainMenuScreenEnterName::decodeChar(char *text, CFontManager::CharType type)
{
    if (type == CFontManager::CHAR_TYPE_NULL) {
        return 0;
    } else if (type == CFontManager::CHAR_TYPE_HALFWIDTH) {
        return *reinterpret_cast<unsigned char *>(text);
    } else { // CFontManager::CHAR_TYPE_HALFWIDTH
        unsigned char c0 = *reinterpret_cast<unsigned char *>(text);
        unsigned char c1 = *reinterpret_cast<unsigned char *>(text + 1);
        return ((c1 << 8) | (c0));
    }
}

u16 CMainMenuScreenEnterName::normalizeChar(u16 c, u16 *fcodeck, size_t fcodeckSize)
{
    int count = (int)fcodeckSize / 4;

    for (int i = 0; i < count; i++) {
        if (c == fcodeck[i * 2]) {
            return fcodeck[(i * 2) + 1];
        }
    }

    return 0;
}

void CMainMenuScreenEnterName::normalizeNgWordString(char *dst, char *src, u16 *fcodeck, size_t fcodeckSize)
{
    if ((!src) || (!fcodeck)) {
        *dst = '\0';
        return;
    }

    char *end = &src[STD_GetStringLength(src)];

    while (src < end) {
        CFontManager::CharType type = CMainMenuScreenEnterName::getCharType(src);
        u16 c0 = CMainMenuScreenEnterName::decodeChar(src, type);

        if (type == CFontManager::CHAR_TYPE_FULLWIDTH) {
            if (c0 != 0x4081) {
                u16 c1 = CMainMenuScreenEnterName::normalizeChar(c0, fcodeck, fcodeckSize);
                if (c1 != 0) {
                    *dst++ = c1;
                    *dst++ = c1 >> 8;
                }
            }
            src += 2;
        } else if (type == CFontManager::CHAR_TYPE_HALFWIDTH) {
            *dst++ = *src++;
        } else { // CFontManager::CHAR_TYPE_NULL
            break;
        }
    }

    *dst = '\0';
}

bool CMainMenuScreenEnterName::containsNgWord(char *src, u16 *fcodeck, size_t fcodeckSize, char **ngLines, int ngLineCount)
{
    if ((!src) || (!fcodeck) || (!ngLines)) {
        return false;
    }

    char normalized[20];
    CMainMenuScreenEnterName::normalizeNgWordString(normalized, src, fcodeck, fcodeckSize);
    
    int len = STD_GetStringLength(normalized);

    for (int i = 0; i < len; i += 2) {
        for (int j = 0; j < ngLineCount; j++) {
            if (STD_CompareNString(&normalized[i], ngLines[j], STD_GetStringLength(ngLines[j])) == 0) {
                return true;
            }
        }
    }

    return false;
}

void CMainMenuScreenEnterName::setFlashButton(int button)
{
    this->flashButton = button;

    switch (button) {
    case 1:
        gBgMenuManager.setFlash(ENGINE_MAIN, 7, 5);
        break;
    case 2:
        gBgMenuManager.setFlash(ENGINE_MAIN, 8, 6);
        break;
    case 3:
        gBgMenuManager.setFlash(ENGINE_MAIN, 0, 11);
        break;
    }
}

void CMainMenuScreenEnterName::confirmEntry(void)
{
    int unitNo;
    bool correct;

    bool hasNgWord = false;

    switch (unk_0209A454.unk4) {
    case 0:
    case 2:
    case 3:
        hasNgWord = CMainMenuScreenEnterName::containsNgWord(
            unk_0209A454.entry,
            static_cast<u16 *>(this->files[FILE_FCODECK].data),
            this->files[FILE_FCODECK].size,
            this->ngWordLines,
            this->ngWordLineCount
        );
        break;
    }

    switch (unk_0209A454.unk4) {
    case 5:
    {
        char unused[17] = {0};
        SRecordHeader recordHeader;
        gRecordManager.getRecordHeader(&recordHeader);

        unitNo = this->phonePassword.decode(recordHeader.username, unk_0209A454.entry);
        
        if (CMainMenuScreenEnterName::isPasswordUnit(unitNo)) {
            unk_020A9C40.FUN_02045b40(unitNo, 5);
            this->setFlashButton(1);
            gAudioPlayer.playEffect(6);
            unk_020A9C40.FUN_020460a8(0, 1);
            this->exitScreen(1);
        } else {
            this->setFlashButton(1);
            gAudioPlayer.playEffect(AudioPlayer::SE_SELECT_FAIL);
            this->nextMode = MODE_WRONG_PASSWORD;
        }
        break;
    }
    case 6:
        correct = false;
        if (STD_CompareString("ゆうきがあれば", unk_0209A454.entry) == 0) {
            correct = true;
        }
        if (correct) {
            this->setFlashButton(1);
            gAudioPlayer.playEffect(6);
            this->nextMode = MODE_CORRECT_PASSWORD;
            unk_020A0640.saveGameData.movieLinkDownloadFlag |= 2;
        } else {
            this->setFlashButton(1);
            gAudioPlayer.playEffect(AudioPlayer::SE_SELECT_FAIL);
            this->nextMode = MODE_WRONG_PASSWORD;
        }
        break;
    default:
        if (hasNgWord) {
            this->setFlashButton(1);
            gAudioPlayer.playEffect(AudioPlayer::SE_SELECT_FAIL);
            this->nextMode = MODE_NGWORD;
        } else {
            this->setFlashButton(1);
            gAudioPlayer.playEffect(6);
            unk_020A9C40.FUN_020460a8(0, 1);
            this->exitScreen(1);
        }
        break;
    }
}

void CMainMenuScreenEnterName::exitScreen(int param1)
{
    this->state = 5;

    if ((unk_0209A454.unk4 == 6) && (unk_020A0640.saveGameData.movieLinkDownloadFlag & 2)) {
        Graphics::FadeScreensBlack(6);
    } else {
        this->fadeBlack();
    }

    if (unk_0209A454.unk4 == 5) {
        if (param1) {
            this->manager->setNextScene(ENGINE_MAIN, SCENE_TITLE_PHONE);
        } else {
            this->manager->setNextScene(ENGINE_MAIN, SCENE_TITLE_OPTION);
            this->manager->setNextScene(ENGINE_SUB, SCENE_TITLE_INIT);
        }
    } else {
        this->manager->popScene(ENGINE_MAIN);
    }
}

void CMainMenuScreenEnterName::cancelEntry(void)
{
    if (!unk_0209A454.unk1F) {
        STD_CopyString(unk_0209A454.entry, this->prevEntry);
    } else {
        unk_0209A454.entryLen = 0;
        unk_0209A454.entry[0] = '\0';
    }

    this->setFlashButton(2);
    gAudioPlayer.playEffect(AudioPlayer::SE_DENY);
    unk_020A9C40.FUN_020460a8(0, 0);
    this->exitScreen(0);
}

u16 CMainMenuScreenEnterName::getChara(int x, u32 y)
{
    u16 *fcode = static_cast<u16 *>(this->files[FILE_FCODE_BASE + this->keyboardLayout].data);

    if (!fcode) {
        return 0;
    }

    if ((x < 0) || (x >= ENTER_NAME_WIDTH) || (y >= ENTER_NAME_HEIGHT)) {
        return 0;
    }

    int row_off = y * ENTER_NAME_WIDTH;
    return *(fcode + row_off + x);
}

void CMainMenuScreenEnterName::setKey(int x, u32 y, SKey *key)
{
    u16 chara = this->getChara(x, y);

    while ((x > 0) && (this->getChara(x - 1, y) == chara)) {
        x--;
    }

    key->type = KEY_TYPE_CHAR;
    key->x = x;
    key->y = y;
    key->chara = chara;
}

void CMainMenuScreenEnterName::typeCharacter(void)
{
    if (strlen(unk_0209A454.entry) >= ENTER_NAME_MAX) {
        if ((this->keyActive.chara != KEYCODE_HANDAKU) && 
            (this->keyActive.chara != KEYCODE_DAKUTEN) && 
            (this->keyActive.chara != KEYCODE_DELETE) && 
            (this->keyActive.chara != KEYCODE_KANA)
        ) {
            gAudioPlayer.playEffect(AudioPlayer::SE_SELECT_FAIL);
            return;
        }
    }

    switch (this->keyActive.chara) {
    case 0:
    case KEYCODE_EMPTY:
        break;
    case KEYCODE_KANA: // Swap Hiragana/Katakana
        gAudioPlayer.playEffect(AudioPlayer::SE_SELECT);
        if (this->keyboardLayout == 0) {
            this->keyboardLayout = 1;
            gBgMenuManager.hideID(ENGINE_MAIN, 1);
            gBgMenuManager.showID(ENGINE_MAIN, 2);
        } else {
            this->keyboardLayout = 0;
            gBgMenuManager.showID(ENGINE_MAIN, 1);
            gBgMenuManager.hideID(ENGINE_MAIN, 2);
        }
        break;
    case KEYCODE_HANDAKU: // Add Handakuten Mark
    {
        if (unk_0209A454.entryLen < 2) {
            break;
        }

        int i;
        bool addedMark = false;
        u16 last_chara = ((u8)unk_0209A454.entry[unk_0209A454.entryLen - 2] | (unk_0209A454.entry[unk_0209A454.entryLen - 1] << 8));

        u8 *daku = static_cast<u8 *>(this->files[FILE_HANDAKU].data);
        if (!daku) {
            break;
        }

        i = 0;
        while ((daku[0]) && (daku[0] >= 0x20)) {
            u16 daku_chara = read_u16(daku);
            if (daku_chara == u16(last_chara)) {
                gAudioPlayer.playEffect(AudioPlayer::SE_SELECT);
                if (i & 1) {
                    daku -= 2;
                } else {
                    daku += 2;
                }
                u16 marked = read_u16(daku);
                unk_0209A454.entry[unk_0209A454.entryLen - 2] = (char)(marked);
                unk_0209A454.entry[unk_0209A454.entryLen - 1] = (char)(marked >> 8);

                this->drawText();

                addedMark = true;
                break;
            }
            i++;
            daku += 2;
        }
        if ((strlen(unk_0209A454.entry) >= ENTER_NAME_MAX) && (!addedMark)) {
            gAudioPlayer.playEffect(AudioPlayer::SE_SELECT_FAIL);
        }
        break;
    }
    case KEYCODE_DAKUTEN: // Add Dakuten Mark
    {
        if (unk_0209A454.entryLen < 2) {
            break;
        }

        int i;
        bool addedMark = false;
        u16 last_chara = ((u8)unk_0209A454.entry[unk_0209A454.entryLen - 2] | (unk_0209A454.entry[unk_0209A454.entryLen - 1] << 8));

        u8 *daku = static_cast<u8 *>(this->files[FILE_DAKUTEN].data);
        if (!daku) {
            break;
        }

        i = 0;
        while ((daku[0]) && (daku[0]) >= 0x20) {
            u16 daku_chara = read_u16(daku);
            if (daku_chara == u16(last_chara)) {
                gAudioPlayer.playEffect(AudioPlayer::SE_SELECT);
                if (i & 1) {
                    daku -= 2;
                } else {
                    daku += 2;
                }
                u16 marked = read_u16(daku);
                unk_0209A454.entry[unk_0209A454.entryLen - 2] = (char)(marked);
                unk_0209A454.entry[unk_0209A454.entryLen - 1] = (char)(marked >> 8);

                this->drawText();

                addedMark = true;
                break;
            }
            i++;
            daku += 2;
        }
        if ((strlen(unk_0209A454.entry) >= ENTER_NAME_MAX) && (!addedMark)) {
            gAudioPlayer.playEffect(AudioPlayer::SE_SELECT_FAIL);
        }
        break;
    }
    case KEYCODE_DELETE: // Delete Character
        if (unk_0209A454.entryLen > 0) {
            gAudioPlayer.playEffect(AudioPlayer::SE_DENY);
            unk_0209A454.entryLen -= 2; 
            unk_0209A454.entry[unk_0209A454.entryLen] = '\0';
            this->drawText();
        }
        break;
    default:
        if (unk_0209A454.entryLen < ENTER_NAME_MAX) {
            gAudioPlayer.playEffect(AudioPlayer::SE_SELECT);
            unk_0209A454.entry[unk_0209A454.entryLen++] = this->keyActive.chara;
            unk_0209A454.entry[unk_0209A454.entryLen++] = this->keyActive.chara >> 8;
            unk_0209A454.entry[unk_0209A454.entryLen] = '\0';
            this->drawText();
        }
        break;
    }

    if (strlen(unk_0209A454.entry) >= ENTER_NAME_MAX) {
        // Automatically move selection to confirm?
        if ((this->keyActive.chara != KEYCODE_DAKUTEN) &&
            (this->keyActive.chara != KEYCODE_HANDAKU) &&
            (this->keyActive.chara != KEYCODE_KANA)
        ) {
            this->keyActive.type = KEY_TYPE_CONFIRM;
        }
    }
}

void CMainMenuScreenEnterName::updateKeys(u16 pressed, u16 held)
{
    if ((this->state != 4) || (this->tpTouch != TP_TOUCH_OFF)) {
        return;
    }

    if ((gBgMenuManager.isFlashActive(ENGINE_MAIN)) || (this->mode != this->nextMode)) {
        return;
    }

    u16 trg = gKeysRepeated | pressed;

    if (this->mode == MODE_INPUT) {
        int x = this->keyActive.x;
        u32 y = this->keyActive.y;

        if (trg & PAD_KEY_DOWN) {
            if (this->keyActive.type == 1) {
                u16 c;
                do {
                    y++;
                    c = this->getChara(x, y);
                } while (c == KEYCODE_EMPTY);
                if (c == 0) {
                    if ((x < 11) || (unk_0209A454.unk4 == 2)) {
                        this->keyActive.type = KEY_TYPE_CONFIRM;
                    } else {
                        this->keyActive.type = KEY_TYPE_CANCEL;
                    }
                } else {
                    this->setKey(x, y, &this->keyActive);
                }
            } else if ((this->keyActive.type == 3) || (this->keyActive.type == 4)) {
                u32 row = -1;
                do {
                    row++;
                } while (this->getChara(x, row) == KEYCODE_EMPTY);
                this->setKey(x, row, &this->keyActive);
            } 
            gAudioPlayer.playEffect(AudioPlayer::SE_CURSOR);
        } else if (trg & PAD_KEY_UP) {
            if (this->keyActive.type == 3) {
                y = 6;
            } else if (this->keyActive.type == 4) {
                y = 6;
            }
            u16 c;
            do {
                y--;
                c = this->getChara(x, y);
            } while (c == KEYCODE_EMPTY);
            if ((c == 0) && (this->keyActive.type == 1)) {
                if ((x < 11) || (unk_0209A454.unk4 == 2)) {
                    this->keyActive.type = KEY_TYPE_CONFIRM;
                } else {
                    this->keyActive.type = KEY_TYPE_CANCEL;
                }
            } else {
                this->setKey(x, y, &this->keyActive);
            }
            gAudioPlayer.playEffect(AudioPlayer::SE_CURSOR);
        } else if (trg & PAD_KEY_LEFT) {
            if (this->keyActive.type == 1) {
                u16 c;
                do {
                    x = (x + (ENTER_NAME_WIDTH-1)) % ENTER_NAME_WIDTH;
                    c = this->getChara(x, y);
                } while ((c == KEYCODE_EMPTY) || (c == this->keyActive.chara));
                gAudioPlayer.playEffect(AudioPlayer::SE_CURSOR);
                this->setKey(x, y, &this->keyActive);
            } else if (this->keyActive.type == 3) {
                if (unk_0209A454.unk4 != 2) {
                    gAudioPlayer.playEffect(AudioPlayer::SE_CURSOR);
                    this->keyActive.type = KEY_TYPE_CANCEL;
                }
            } else if (this->keyActive.type == 4) {
                gAudioPlayer.playEffect(AudioPlayer::SE_CURSOR);
                this->keyActive.type = KEY_TYPE_CONFIRM;
            }
        } else if (trg & PAD_KEY_RIGHT) {
            if (this->keyActive.type == 1) {
                u16 c;
                do {
                    x = (x + 1) % ENTER_NAME_WIDTH;
                    c = this->getChara(x, y);
                } while((c == KEYCODE_EMPTY) || (c == this->keyActive.chara));
                gAudioPlayer.playEffect(AudioPlayer::SE_CURSOR);
                this->setKey(x, y, &this->keyActive);
            } else if (this->keyActive.type == 3) {
                if (unk_0209A454.unk4 != 2) {
                    gAudioPlayer.playEffect(AudioPlayer::SE_CURSOR);
                    this->keyActive.type = KEY_TYPE_CANCEL;
                }
            } else if (this->keyActive.type == 4) {
                gAudioPlayer.playEffect(AudioPlayer::SE_CURSOR);
                this->keyActive.type = KEY_TYPE_CONFIRM;
            }
        } else if (pressed & PAD_BUTTON_A) {
            switch (this->keyActive.type) {
            case 1:
                this->typeCharacter();
                break;
            case 3:
                if (STD_GetStringLength(unk_0209A454.entry) <= 0) {
                    gAudioPlayer.playEffect(AudioPlayer::SE_SELECT_FAIL);
                } else if ((unk_0209A454.entryLen > 0) || (unk_0209A454.unk1E != 0)) {
                    this->confirmEntry();
                }
                break;
            case 4:
                this->cancelEntry();
                break;
            }
        } else if (pressed & PAD_BUTTON_B) {
            u16 prev = this->keyActive.chara;
            this->keyActive.chara = KEYCODE_DELETE;
            this->typeCharacter();
            this->keyActive.chara = prev;
        } else if (pressed & PAD_BUTTON_START) {
            gAudioPlayer.playEffect(AudioPlayer::SE_CURSOR);
            this->keyActive.type = KEY_TYPE_CONFIRM;
        }
    } else if (this->mode == MODE_CORRECT_PASSWORD) {
        if (pressed & PAD_BUTTON_A) {
            unk_020A9C40.FUN_020460a8(0, 1);
            this->exitScreen(1);
            this->setFlashButton(3);
            this->keyActive.type = KEY_TYPE_CONFIRM;
            gAudioPlayer.playEffect(AudioPlayer::SE_DENY);
        }
    } else if (pressed & PAD_BUTTON_A) {
        this->nextMode = MODE_INPUT;
        this->setFlashButton(3);
        this->keyActive.type = KEY_TYPE_CONFIRM;
        gAudioPlayer.playEffect(AudioPlayer::SE_DENY);
    }
}

void CMainMenuScreenEnterName::getKeyAt(int x, int y, SKey *key)
{
    EKeyType type = static_cast<EKeyType>(gBgMenuManager.getHit(ENGINE_MAIN, x, y));

    if ((this->mode == MODE_NGWORD) || (this->mode == MODE_WRONG_PASSWORD) || ((this->mode == MODE_CORRECT_PASSWORD))) {
        if ((x >= 104) && (x < 152) && (y >= 104) && (y < 128)) {
            type = KEY_TYPE_SPECIAL;
        } else {
            type = KEY_TYPE_NONE;
        }
    }
    
    if (type == KEY_TYPE_CHAR) {
        /* Screen to keyboard coordinates */
        int cx = (x / 8) - 3;
        int cy = ((y / 8) - 7) / 2;

        if (this->getChara(cx, cy) == KEYCODE_EMPTY) {
            key->type = KEY_TYPE_NONE;
            key->x = 0;
            key->y = 0;
            key->chara = 0;
        } else {
            this->setKey(cx, cy, key);
        }
    } else {
        key->type = type;
    }
}

void CMainMenuScreenEnterName::drawText(void)
{
    switch (this->mode) {
    case MODE_INPUT:
    {
        int indentation;

        if (!this->nameChars) {
            break;
        }

        MI_CpuClearFast(this->nameChars, 0x540);

        gFont12Manager->setSpacing(2, 1);
        switch (unk_0209A454.unk4) {
        case 4:
        case 5:
        case 6:
            indentation = 5;
            break;
        default:
            indentation = 0;
            break;
        }
        gFont12Manager->drawTextTile4bpp(
            indentation,
            6,
            unk_0209A454.entry,
            3,
            CFontManager::ALIGNEMENT_LEFT,
            this->nameChars,
            112,
            24,
            NULL,
            0
        );

        DC_FlushRange(this->nameChars, 0x540);
        
        this->nameDirty = true;
        break;
    }
    case MODE_NGWORD:
        FUN_ov16_020f2f20(&this->canvas);

        gFont12Manager->setSpacing(1, 4);
        Graphics::DrawTextTileWithRuby(
            "もうしわけありませんが\nその[名前/なまえ]は[入力/にゅうりょく]できません。",
            this->canvas.tile,
            this->canvas.width * 8,
            this->canvas.height * 8,
            3,
            3,
            2,
            1,
            0,
            6,
            CFontManager::ALIGNEMENT_CENTER
        );
        gFont12Manager->resetSpacing(); 

        this->canvas.dirty = true;

        DC_FlushRange(this->canvas.tile, this->canvas.width * this->canvas.height * 32);
        break;
    case MODE_WRONG_PASSWORD:
        FUN_ov16_020f2f20(&this->canvas);

        gFont12Manager->setSpacing(1, 4);
        Graphics::DrawTextTileWithRuby(
            "パスワードがちがいます。\n",
            this->canvas.tile,
            this->canvas.width * 8,
            this->canvas.height * 8,
            3,
            3,
            2,
            1,
            0,
            13,
            CFontManager::ALIGNEMENT_CENTER
        );
        gFont12Manager->resetSpacing();

        this->canvas.dirty = true;

        DC_FlushRange(this->canvas.tile, this->canvas.width * this->canvas.height * 32);
        break;
    case MODE_CORRECT_PASSWORD:
        FUN_ov16_020f2f20(&this->canvas);

        gFont12Manager->setSpacing(1, 4);
        Graphics::DrawTextTileWithRuby(
            "せいかい！！\n[新/あたら]しいコースをお[楽/たの]しみください。",
            this->canvas.tile,
            this->canvas.width * 8,
            this->canvas.height * 8,
            3,
            3,
            2,
            1,
            0,
            4,
            CFontManager::ALIGNEMENT_CENTER
        );
        gFont12Manager->resetSpacing();

        this->canvas.dirty = true;

        DC_FlushRange(this->canvas.tile, this->canvas.width * this->canvas.height * 32);
        break;
    }
}

void CMainMenuScreenEnterName::onTouchRelease(void)
{
    if (this->mode == MODE_INPUT) {
        if (this->keyActive.type != this->keyStart.type) {
            this->keyActive = this->keyStart;
            gAudioPlayer.playEffect(AudioPlayer::SE_CURSOR);
        } else {
            switch (this->keyStart.type) {
            case 1:
                if ((this->keyStart.x != this->keyActive.x) ||
                    (this->keyStart.y != this->keyActive.y))
                {
                    this->keyActive = this->keyStart;
                    gAudioPlayer.playEffect(AudioPlayer::SE_CURSOR);
                } else if ((this->keyStart.x == this->keyCur.x) &&
                           (this->keyStart.y == this->keyCur.y) &&
                           (this->keyStart.chara == this->keyCur.chara))
                {
                    this->typeCharacter();
                }
                break;
            case 3:
                if (STD_GetStringLength(unk_0209A454.entry) <= 0) {
                    gAudioPlayer.playEffect(AudioPlayer::SE_SELECT_FAIL);
                } else if ((unk_0209A454.entryLen > 0) || (unk_0209A454.unk1E != 0)) {
                    this->confirmEntry();
                }
                break;
            case 4:
                this->cancelEntry();
                break;
            }
        }
    } else if (this->keyActive.type != this->keyStart.type) {
        this->keyActive = this->keyStart;
        gAudioPlayer.playEffect(AudioPlayer::SE_CURSOR);
    } else if (this->keyStart.type == 11) {
        if (this->mode == MODE_CORRECT_PASSWORD) {
            unk_020A9C40.FUN_020460a8(0, 1);
            this->exitScreen(1);
            this->setFlashButton(3);
            this->keyActive.type = KEY_TYPE_CONFIRM;
            gAudioPlayer.playEffect(AudioPlayer::SE_DENY);
        } else {
            this->nextMode = MODE_INPUT;
            this->setFlashButton(3);
            this->keyActive.type = KEY_TYPE_CONFIRM;
            gAudioPlayer.playEffect(AudioPlayer::SE_DENY);
        }
    }
}

void CMainMenuScreenEnterName::onTouchHold(void)
{
    switch (this->keyStart.type) {
    case 1:
        if ((this->keyActive.type != this->keyStart.type) || (this->keyActive.x != this->keyStart.x) || (this->keyActive.y != this->keyStart.y)) {
            gAudioPlayer.playEffect(AudioPlayer::SE_CURSOR);
            this->keyActive = this->keyStart;
        }
        break;
    case 3:
    case 4:
    case 11:
        if ((this->keyActive.type != this->keyStart.type) || (this->keyActive.x != this->keyStart.x) || (this->keyActive.y != this->keyStart.y)) {
            gAudioPlayer.playEffect(AudioPlayer::SE_CURSOR);
        }
        this->keyActive = this->keyStart;
        break;
    }
}

void CMainMenuScreenEnterName::updateTP(TPData *tp)
{
    if (this->state != 4) {
        return;
    }

    if ((gBgMenuManager.isFlashActive(ENGINE_MAIN)) || (this->mode != this->nextMode)) {
        return;
    }

    if (tp->touch == TP_TOUCH_ON) {
        if (tp->validity != TP_VALIDITY_VALID) {
            return;
        }

        if (this->tpTouch == TP_TOUCH_OFF) {
            this->tpTouch = TP_TOUCH_ON;
            this->getKeyAt(tp->x, tp->y, &this->keyStart);
        }

        this->tpX = tp->x;
        this->tpY = tp->y;

        this->getKeyAt(this->tpX, this->tpY, &this->keyCur);
        this->onTouchHold();

        return;
    }
    
    if ((this->tpTouch != TP_TOUCH_OFF) && (this->keyStart.type != 0)) {
        this->getKeyAt(this->tpX, this->tpY, &this->keyCur);
        
        if (this->keyStart.type == this->keyCur.type) {
            this->onTouchRelease();
        }
    }

    this->keyCur.type = KEY_TYPE_NONE;
    this->keyCur.x = 0;
    this->keyCur.y = 0;
    this->keyCur.chara = 0;
    this->keyStart.type = KEY_TYPE_NONE;
    this->keyStart.x = 0;
    this->keyStart.y = 0;
    this->keyStart.chara = 0;
    this->tpTouch = 0;
}

void CMainMenuScreenEnterName::requestFiles(void)
{
    MI_CpuClear8(this->files, sizeof(this->files));

    Archive::RequestNewRead("/data_iz/pic2d/menu/MMName.SPF_", &this->files[FILE_ARCHIVE]);
    
    switch (unk_0209A454.unk4) {
    case 1:
        Archive::RequestNewRead("/data_iz/pic2d/menu/scdn_bg00.pac_", &this->files[FILE_XXDN_BG]);
        break;
    case 2:
    case 3:
        Archive::RequestNewRead("/data_iz/pic2d/menu/nedn_bg05.pac_", &this->files[FILE_XXDN_BG]);
        break;
    default:
    case 0:
        Archive::RequestNewRead("/data_iz/pic2d/menu/nedn_bg00.pac_", &this->files[FILE_XXDN_BG]);
        break;
    case 4:
        Archive::RequestNewRead("/data_iz/pic2d/menu/nedn_bg04.pac_", &this->files[FILE_XXDN_BG]);
        break;
    case 5:
        Archive::RequestNewRead("/data_iz/pic2d/menu/nedn_bg08.pac_", &this->files[FILE_XXDN_BG]);
        break;
    case 6:
        Archive::RequestNewRead("/data_iz/pic2d/menu/nedn_bg10.pac_", &this->files[FILE_XXDN_BG]);
        break;
    }

    if (this->nameChars) {
        MI_CpuClearFast(this->nameChars, 0x540);
        DC_FlushRange(this->nameChars, 0x540);
    }

    if (this->screen) {
        for (int i = 0; i < 42; i++) {
            this->screen[i] = i;
        }
    }

    this->state = 1;
}

void CMainMenuScreenEnterName::readFiles(void)
{
    char filename[32];

    MI_CpuClearFast(filename, sizeof(filename));

    switch (unk_0209A454.unk4) {
    case 4:
    case 5:
    case 6:
        __memcpy(filename, "nedn_bg09.pac", 14);
        break;
    default:
        __memcpy(filename, "nedn_bg01.pac", 14);
        break;
    }
    static const Archive::SFPFileEntry file_table[] = {
        {filename, 2},
        {"nedn_bg02.pac", FILE_BG02},
        {"nedn_bg03.pac", FILE_BG03},
        {"nedn_bg06.pac", FILE_BG06},
        {"nedn_c00.pac", FILE_C00},
        {"nedn_i00.pac", FILE_I00},
        {"nedn_i01.pac", FILE_I01},
        {"nedn_i02.pac", FILE_I02},
        {"srd_w70.pac", FILE_W70},
        {"srd_b70.pac", FILE_B70},
        {"nedn_w10.pac", FILE_W10},
        {"fcode0.txt", FILE_FCODE0},
        {"fcode1.txt", FILE_FCODE1},
        {"fcode2.txt", FILE_FCODE2},
        {"handaku.txt", FILE_HANDAKU},
        {"dakuten.txt", FILE_DAKUTEN},
        {"ngword.txt", FILE_NGWORD},
        {"fcodeck.txt", FILE_FCODECK},
        {0, 0},
    };
    void *arc = this->files[FILE_ARCHIVE].data;
    const Archive::SFPFileEntry *file = &file_table[0];
    while (file->name) {
        Archive::ReadFromSFP(file->name, this->files + file->idx, static_cast<char *>(arc));
        file++;
    }

    char *end;
    int lineIdx;
    int linePos;
    char *cur;

    cur = static_cast<char *>(this->files[FILE_NGWORD].data);
    if ((!cur) || (this->ngWordData)) {
        return;
    }

    lineIdx = 0;
    linePos = 0;
    this->ngWordDataSize = this->files[FILE_NGWORD].size;
    end = cur + this->files[FILE_NGWORD].size;
    while (cur < end) {
        CFontManager::CharType type = this->getCharType(cur);
        if (type == CFontManager::CHAR_TYPE_FULLWIDTH) {
            linePos++;
            cur = cur + 2;
        } else if (type == CFontManager::CHAR_TYPE_HALFWIDTH) {
            if (((*cur == '\r') || (*cur == '\n')) && (linePos != 0)) {
                linePos = 0;
                lineIdx++;
            }
            cur++;
        } else { // CFontManager::CHAR_TYPE_NULL
            break;
        }
    }
    this->ngWordLineCount = lineIdx;
    this->ngWordData = static_cast<char *>(gAllocator.allocate(this->ngWordDataSize));
    this->ngWordLines = static_cast<char **>(gAllocator.allocate(lineIdx * sizeof(char *)));
    memcpy(this->ngWordData, this->files[FILE_NGWORD].data, this->ngWordDataSize);

    {
        int lineIdx2 = 0;
        int linePos2 = 0;
        char *cur2 = this->ngWordData;
        char *curLine2 = cur2;
        char *end2 = this->ngWordData + this->ngWordDataSize;
        while (cur2 < end2) {
            CFontManager::CharType type = this->getCharType(cur2);
            if (type == CFontManager::CHAR_TYPE_FULLWIDTH) {
                if (linePos2 == 0) {
                    curLine2 = cur2;
                }
                u16 c = this->normalizeChar(
                    this->decodeChar(cur2, type),
                    static_cast<u16 *>(this->files[FILE_FCODECK].data),
                    this->files[FILE_FCODECK].size
                );
                if (c != 0) {
                    cur2[0] = c;
                    cur2[1] = c >> 8;
                }
                linePos2 += 1;
                cur2 += 2;
            } else if (type == CFontManager::CHAR_TYPE_HALFWIDTH) {
                if ((*cur2 == '\r' || *cur2 == '\n') && (linePos2 != 0)) {
                    linePos2 = 0;
                    this->ngWordLines[lineIdx2] = curLine2;
                    lineIdx2++;
                }
                *cur2 = '\0';
                cur2++;
            } else { // CFontManager::CHAR_TYPE_NULL
                break;
            }
        }
    }
}

void CMainMenuScreenEnterName::deallocateFiles(void)
{
    for (int i = 0; i < FILE_COUNT; i++) {
        this->deallocateFile(i);
    }
}

void CMainMenuScreenEnterName::deallocateFile(int idx)
{
    return Archive::Deallocate(&this->files[idx]);
}

void CMainMenuScreenEnterName::loadGraphics(void)
{

    MI_CpuClearFast(G2_GetBG3CharPtr(), 0x20);
    DC_FlushRange(G2_GetBG3CharPtr(), 0x20);

    int BG3TileIdx = 0;
    int BG3CharOffset = 0x20;

    void *c00 = this->files[FILE_C00].data;
    if (c00) {
        BG3TileIdx = Graphics::SetupScreen(PAC_PSC_GetScreenPtr(c00), PAC_PSC_GetScreenSize(c00), 1, 3);
        Graphics::LoadTempPaletteFromPac(c00, ENGINE_MAIN, 3);
        GX_LoadBG3Char(PAC_PSC_GetCharacterPtr(c00), 0x20, PAC_PSC_GetCharacterSize(c00));
        BG3CharOffset += PAC_PSC_GetCharacterSize(c00);
    }

    if (this->screen) {
        BG3TileIdx = Graphics::SetupScreen(this->screen, 0x54, BG3TileIdx + 1, 0);
    }

    if (this->nameChars) {
        this->nameCharOffset = BG3CharOffset;
        GX_LoadBG3Char(this->nameChars, this->nameCharOffset, 0x540);
        BG3CharOffset += 0x540;
    }

    bool hasCanvas;
    if ((this->canvas.screen) && (this->canvas.tile)) {
        hasCanvas = true;
    } else {
        hasCanvas = false;
    }
    if (hasCanvas) {
        this->canvas.offset = BG3CharOffset;
        Graphics::SetupScreen(this->canvas.screen, this->canvas.width * this->canvas.height * 2, BG3TileIdx + 1, 0);
    }

    MI_CpuClearFast(G2_GetBG1CharPtr(), 0x20);
    DC_FlushRange(G2_GetBG1CharPtr(), 0x20);

    int BG1TileIdx = 0;
    int BG1CharOffset = 0x20;

    void *bg01 = this->files[FILE_BG01].data;
    if (bg01) {
        BG1TileIdx = Graphics::SetupScreen(PAC_PSC_GetScreenPtr(bg01), PAC_PSC_GetScreenSize(bg01), 1, 2);
        Graphics::LoadTempPaletteFromPac(bg01, ENGINE_MAIN, 2);
        GX_LoadBG1Char(PAC_PSC_GetCharacterPtr(bg01), 0x20, PAC_PSC_GetCharacterSize(bg01));
        BG1CharOffset += PAC_PSC_GetCharacterSize(bg01);
    }

    void *bg02 = this->files[FILE_BG02].data;
    if (bg02) {
        BG1TileIdx = Graphics::SetupScreen(PAC_PSC_GetScreenPtr(bg02), PAC_PSC_GetScreenSize(bg02), BG1TileIdx + 1, 2);
        Graphics::LoadTempPaletteFromPac(bg02, ENGINE_MAIN, 2);
        GX_LoadBG1Char(PAC_PSC_GetCharacterPtr(bg02), BG1CharOffset, PAC_PSC_GetCharacterSize(bg02));
        BG1CharOffset += PAC_PSC_GetCharacterSize(bg02);
    }

    int idx;
    if ((unk_0209A454.unk4 == 2) || (unk_0209A454.unk4 == 3)) {
        idx = FILE_BG06;
    } else {
        idx = FILE_BG03;
    }

    void *bgxx = this->files[idx].data;
    if (bgxx) {
        BG1TileIdx = Graphics::SetupScreen(PAC_PSC_GetScreenPtr(bgxx), PAC_PSC_GetScreenSize(bgxx), BG1TileIdx + 1, 2);
        Graphics::LoadTempPaletteFromPac(bgxx, ENGINE_MAIN, 2);
        GX_LoadBG1Char(PAC_PSC_GetCharacterPtr(bgxx), BG1CharOffset, PAC_PSC_GetCharacterSize(bgxx));
        BG1CharOffset += PAC_PSC_GetCharacterSize(bgxx);
    }

    void *i00 = this->files[FILE_I00].data;
    if (i00) {
        BG1TileIdx = Graphics::SetupScreen(PAC_PSC_GetScreenPtr(i00), PAC_PSC_GetScreenSize(i00), BG1TileIdx + 1, 2);
        Graphics::LoadTempPaletteFromPac(i00, ENGINE_MAIN, 2);
        GX_LoadBG1Char(PAC_PSC_GetCharacterPtr(i00), BG1CharOffset, PAC_PSC_GetCharacterSize(i00));
        BG1CharOffset += PAC_PSC_GetCharacterSize(i00);
    }

    void *i01 = this->files[FILE_I01].data;
    if (i01) {
        BG1TileIdx = Graphics::SetupScreen(PAC_PSC_GetScreenPtr(i01), PAC_PSC_GetScreenSize(i01), BG1TileIdx + 1, 2);
        Graphics::LoadTempPaletteFromPac(i01, ENGINE_MAIN, 2);
        GX_LoadBG1Char(PAC_PSC_GetCharacterPtr(i01), BG1CharOffset, PAC_PSC_GetCharacterSize(i01));
        BG1CharOffset += PAC_PSC_GetCharacterSize(i01);
    }

    void *w70 = this->files[FILE_W70].data;
    if (w70) {
        BG1TileIdx = Graphics::SetupScreen(PAC_PSC_GetScreenPtr(w70), PAC_PSC_GetScreenSize(w70), BG1TileIdx + 1, 4);
        Graphics::LoadTempPaletteFromPac(w70, ENGINE_MAIN, 4);
        GX_LoadBG1Char(PAC_PSC_GetCharacterPtr(w70), BG1CharOffset, PAC_PSC_GetCharacterSize(w70));
        BG1CharOffset += PAC_PSC_GetCharacterSize(w70);
    }

    void *b70 = this->files[FILE_B70].data;
    if (b70) {
        BG1TileIdx = Graphics::SetupScreen(PAC_PSC_GetScreenPtr(b70), PAC_PSC_GetScreenSize(b70), BG1TileIdx + 1, 5);
        Graphics::LoadTempPaletteFromPac(b70, ENGINE_MAIN, 5);
        GX_LoadBG1Char(PAC_PSC_GetCharacterPtr(b70), BG1CharOffset, PAC_PSC_GetCharacterSize(b70));
        BG1CharOffset += PAC_PSC_GetCharacterSize(b70);
    }

    void *i02 = this->files[FILE_I02].data;
    if (i02) {
        BG1TileIdx = Graphics::SetupScreen(PAC_PSC_GetScreenPtr(i02), PAC_PSC_GetScreenSize(i02), BG1TileIdx + 1, 2);
        Graphics::LoadTempPaletteFromPac(i02, ENGINE_MAIN, 2);
        GX_LoadBG1Char(PAC_PSC_GetCharacterPtr(i02), BG1CharOffset, PAC_PSC_GetCharacterSize(i02));
        BG1CharOffset += PAC_PSC_GetCharacterSize(i02);
    }

    void *w10 = this->files[FILE_W10].data;
    if (w10) {
        Graphics::SetupScreen(PAC_PSC_GetScreenPtr(w10), PAC_PSC_GetScreenSize(w10), BG1TileIdx + 1, 4);
        Graphics::LoadTempPaletteFromPac(w10, ENGINE_MAIN, 4);
        GX_LoadBG1Char(PAC_PSC_GetCharacterPtr(w10), BG1CharOffset, PAC_PSC_GetCharacterSize(w10));
    }

    void *xxdn = this->files[FILE_XXDN_BG].data;
    if (xxdn) {
        Graphics::LoadTempPaletteFromPac(xxdn, ENGINE_MAIN, 1);
        Graphics::SetupScreen(PAC_PSC_GetScreenPtr(xxdn), PAC_PSC_GetScreenSize(xxdn), 0, 1);
        GX_LoadBG2Char(PAC_PSC_GetCharacterPtr(xxdn), 0, PAC_PSC_GetCharacterSize(xxdn));
        GX_LoadBG2Scr(PAC_PSC_GetScreenPtr(xxdn), 0, PAC_PSC_GetScreenSize(xxdn));
    }

    Graphics::LoadBGPaletteMain();
}

void CMainMenuScreenEnterName::transferText(void)
{
    if (this->mode == MODE_INPUT) {
        if ((!this->nameDirty) || (!this->nameChars)) {
            return;
        }
        this->nameDirty = false;
        GX_LoadBG3Char(this->nameChars, this->nameCharOffset, 0x540);
        return;
    }

    bool hasCanvas;
    if ((this->canvas.screen) && (this->canvas.tile)) {
        hasCanvas = true;
    } else {
        hasCanvas = false;
    }

    if ((hasCanvas) && (this->canvas.dirty != 0)) {
        this->canvas.dirty = false;
        GX_LoadBG3Char(this->canvas.tile, this->canvas.offset, this->canvas.width * this->canvas.height * 0x20);
    }
}

void CMainMenuScreenEnterName::showButtons(int param1)
{
    gBgMenuManager.hideGroup(ENGINE_MAIN, 1);

    switch (param1) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
        break;
    case 5:
        gBgMenuManager.showID(ENGINE_MAIN, 4);
        gBgMenuManager.showID(ENGINE_MAIN, 5);
        break;
    case 6:
        gBgMenuManager.showID(ENGINE_MAIN, 3);
        gBgMenuManager.showID(ENGINE_MAIN, 6);
        break;
    case 7:
        gBgMenuManager.showID(ENGINE_MAIN, 4);
        gBgMenuManager.showID(ENGINE_MAIN, 7);
        break;
    case 8:
        gBgMenuManager.showID(ENGINE_MAIN, 3);
        gBgMenuManager.showID(ENGINE_MAIN, 8);
        break;
    case 9:
        gBgMenuManager.showID(ENGINE_MAIN, 3);
        gBgMenuManager.showID(ENGINE_MAIN, 4);
        gBgMenuManager.showID(ENGINE_MAIN, 9);
        break;
    }
}

void CMainMenuScreenEnterName::showFlashPressed(void)
{
    switch (this->flashButton) {
    case 1:
        this->showButtons(5);
        break;
    case 2:
        this->showButtons(6);
        break;
    }
}

void CMainMenuScreenEnterName::showFlashSelected(void)
{
    switch (this->flashButton) {
    case 1:
        this->showButtons(7);
        break;
    case 2:
        this->showButtons(8);
        break;
    }
}

void CMainMenuScreenEnterName::updateTouchButtons(void)
{
    if (this->mode == MODE_INPUT) {
        gBgMenuManager.showID(ENGINE_MAIN, 3);
        gBgMenuManager.showID(ENGINE_MAIN, 4);
        gBgMenuManager.hideID(ENGINE_MAIN, 5);
        gBgMenuManager.hideID(ENGINE_MAIN, 6);
    } else {
        gBgMenuManager.hideID(ENGINE_MAIN, 11);
    }

    if (this->keyStart.type == 0) {
        return;
    }
    if (this->keyStart.type != this->keyCur.type) {
        return;
    }

    switch (this->keyActive.type) {
    case 3:
        this->showButtons(5);
        break;
    case 4:
        this->showButtons(6);
        break;
    case 11:
        gBgMenuManager.showID(ENGINE_MAIN, 11);
        break;
    }
}

void CMainMenuScreenEnterName::updateMenu(void)
{
    if ((this->mode != this->nextMode) && (!gBgMenuManager.isFlashActive(ENGINE_MAIN))) {
        this->mode = this->nextMode;
        gBgMenuManager.finalize(ENGINE_MAIN);
        gBgMenuManager.init(ENGINE_MAIN);
        this->setupMenu();
        this->drawText();
    }

    if (this->mode == MODE_INPUT) {
        switch (this->keyActive.type) {
        case 1:
            this->showButtons(9);
            gBgMenuManager.setPos(ENGINE_MAIN, 9, this->keyActive.x + 2, (this->keyActive.y * 2) + 6);
            break;
        case 3:
            this->showButtons(7);
            break;
        case 4:
            this->showButtons(8);
            break;
        }
    }

    if (!gBgMenuManager.isFlashing(ENGINE_MAIN)) {
        if (this->flashButton != 0) {
            this->setFlashButton(0);
        }
        this->updateTouchButtons();
    }
}

void CMainMenuScreenEnterName::setupMenu(void)
{
    SBgMenuElementInit init;
    
    bool singleButton;
    if (unk_0209A454.unk4 == 2) {
        singleButton = true;
    } else {
        singleButton = false;
    }

    int x = singleButton ? 12 : 5;

    if (this->mode == MODE_INPUT) {
        void *i00 = this->files[FILE_I00].data;
        if (i00) {
            char *screen = static_cast<char *>(PAC_PSC_GetScreenPtr(i00));
            init.y = 20;
            init.w = 10;
            init.h = 4;
            init.x = x;
            init.boundW = 80;
            init.boundH = 32;
            init.boundX = 0;
            init.boundY = 0;
            init.palette = 0;
            init.screen = screen;
            gBgMenuManager.addDynamic(ENGINE_MAIN, 1, 3, 1, &init, 0, 0, 0);

            if (!singleButton) {
                init.screen = screen + 0x50;
                init.x = 17;
                init.y = 20;
                init.w = 10;
                init.h = 4;
                init.boundW = 80;
                init.boundH = 32;
                init.boundX = 0;
                init.boundY = 0;
                init.palette = 0;
                gBgMenuManager.addDynamic(ENGINE_MAIN, 1, 4, 1, &init, 0, 0, 0);
            }
        }

        void *i01 = this->files[FILE_I01].data;
        if (i01) {
            char *screen = static_cast<char *>(PAC_PSC_GetScreenPtr(i01));
            init.x = x;
            init.y = 20;
            init.w = 10;
            init.h = 4;
            init.boundX = 0;
            init.boundY = 0;
            init.boundW = 80;
            init.boundH = 32;
            init.palette = 0;
            init.screen = screen;
            gBgMenuManager.addDynamic(ENGINE_MAIN, 1, 5, 1, &init, 0, 0, 0);
            gBgMenuManager.hideID(ENGINE_MAIN, 5);

            if (!singleButton) {
                init.screen = screen + 0x50;
                init.x = 17;
                init.y = 20;
                init.w = 10;
                init.h = 4;
                init.boundW = 80;
                init.boundH = 32;
                init.boundX = 0;
                init.boundY = 0;
                init.palette = 0;
                gBgMenuManager.addDynamic(ENGINE_MAIN, 1, 6, 1, &init, 0, 0, 0);
                gBgMenuManager.hideID(ENGINE_MAIN, 6);
            }
        }

        void *i02 = this->files[FILE_I02].data;
        if (i02) {
            char *screen = static_cast<char *>(PAC_PSC_GetScreenPtr(i02));
            init.x = x;
            init.y = 20;
            init.w = 10;
            init.h = 4;
            init.boundX = 0;
            init.boundY = 0;
            init.boundW = 80;
            init.boundH = 32;
            init.palette = 0;
            init.screen = screen;
            gBgMenuManager.addDynamic(ENGINE_MAIN, 1, 7, 1, &init, 0, 0, 0);
            gBgMenuManager.hideID(ENGINE_MAIN, 7);

            if (!singleButton) {
                init.x = 17;
                init.y = 20;
                init.w = 10;
                init.h = 4;
                init.boundX = 0;
                init.boundY = 0;
                init.boundW = 80;
                init.boundH = 32;
                init.palette = 0;
                init.screen = screen + 0x50;
                gBgMenuManager.addDynamic(ENGINE_MAIN, 1, 8, 1, &init, 0, 0, 0);
                gBgMenuManager.hideID(ENGINE_MAIN, 8);
            }
        }

        void *file2 = this->files[FILE_BG01].data;
        if (file2) {
            char *screen = static_cast<char *>(PAC_PSC_GetScreenPtr(file2));
            init.x = 1;
            init.y = 3;
            init.w = 30;
            init.h = 17;
            init.boundX = 0;
            init.boundY = 0;
            init.boundW = 0;
            init.boundH = 0;
            init.palette = 0;
            init.screen = screen;
            gBgMenuManager.addDynamic(ENGINE_MAIN, 1, 13, 0, &init, 0, 0, 0);
        }

        if ((singleButton) || (unk_0209A454.unk4 == 3)) {
            void *bg06 = this->files[FILE_BG06].data;
            if (bg06) {
                char *screen = static_cast<char *>(PAC_PSC_GetScreenPtr(bg06));
                init.x = 3;
                init.y = 7;
                init.w = 26;
                init.h = 12;
                init.boundX = 0;
                init.boundY = 0;
                init.boundW = 208;
                init.boundH = 96;
                init.palette = 0;
                init.screen = screen;
                gBgMenuManager.addDynamic(ENGINE_MAIN, 1, 1, 0, &init, 0, 0, 0);
            }
        } else {
            void *bg02 = this->files[FILE_BG02].data;
            if (bg02) {
                char *screen = static_cast<char *>(PAC_PSC_GetScreenPtr(bg02));
                init.x = 3;
                init.y = 7;
                init.w = 26;
                init.h = 12;
                init.boundX = 0;
                init.boundY = 0;
                init.boundW = 208;
                init.boundH = 96;
                init.palette = 0;
                init.screen = screen;
                gBgMenuManager.addDynamic(ENGINE_MAIN, 1, 1, 0, &init, 0, 0, 0);
            }

            void *bg03 = this->files[FILE_BG03].data;
            if (bg03) {
                char *screen = static_cast<char *>(PAC_PSC_GetScreenPtr(bg03));
                init.x = 3;
                init.y = 7;
                init.w = 26;
                init.h = 12;
                init.boundX = 0;
                init.boundY = 0;
                init.boundW = 0;
                init.boundH = 0;
                init.palette = 0;
                init.screen = screen;
                gBgMenuManager.addDynamic(ENGINE_MAIN, 1, 2, 0, &init, 0, 0, 0);
            }

            if (this->keyboardLayout == 0) {
                gBgMenuManager.hideID(ENGINE_MAIN, 2);
            } else {
                gBgMenuManager.hideID(ENGINE_MAIN, 1);
            }
        }

        void *c00 = this->files[FILE_C00].data;
        if (c00) {
            char *screen = static_cast<char *>(PAC_PSC_GetScreenPtr(c00));
            int x = this->keyActive.x + 2;
            int y = (this->keyActive.y * 2) + 6;
            init.x = x;
            init.y = y;
            init.w = 4;
            init.h = 4;
            init.boundX = 0;
            init.boundY = 0;
            init.boundW = 0;
            init.boundH = 0;
            init.palette = 0;
            init.screen = screen;
            gBgMenuManager.addDynamic(ENGINE_MAIN, 0, 9, 1, &init, 0, 0, 0);
        }

        if (this->screen) {
            int x;
            switch (unk_0209A454.unk4) {
            case 4:
            case 5:
            case 6:
                x = 9;
                break;
            default:
                x = 12;
                break;
            }
            init.screen = this->screen;
            init.x = x;
            init.y = 3;
            init.w = 14;
            init.h = 3;
            init.boundX = 0;
            init.boundY = 0;
            init.boundW = 0;
            init.boundH = 0;
            init.palette = 0;
            gBgMenuManager.addDynamic(ENGINE_MAIN, 0, 13, 0, &init, 0, 0, 0);
        }
        return;
    }

    int idx = FILE_W70;
    if (this->mode == MODE_CORRECT_PASSWORD) {
        idx = FILE_W10;
    }

    void *wxx = this->files[idx].data;
    if (wxx) {
        char *screen = static_cast<char *>(PAC_PSC_GetScreenPtr(wxx));
        init.x = 1;
        init.y = 7;
        init.w = 30;
        init.h = 10;
        init.boundX = 0;
        init.boundY = 0;
        init.boundW = 0;
        init.boundH = 0;
        init.palette = 0;
        init.screen = screen;
        gBgMenuManager.addDynamic(ENGINE_MAIN, 1, 10, 2, &init, 0, 0, 0);
    }

    void *b70 = this->files[FILE_B70].data;
    if (b70) {
        char *screen = static_cast<char *>(PAC_PSC_GetScreenPtr(b70));
        init.x = 13;
        init.y = 13;
        init.w = 6;
        init.h = 3;
        init.boundX = 0;
        init.boundY = 0;
        init.boundW = 0;
        init.boundH = 0;
        init.palette = 0;
        init.screen = screen;
        gBgMenuManager.addDynamic(ENGINE_MAIN, 1, 11, 2, &init, 0, 0, 0);
        gBgMenuManager.hideID(ENGINE_MAIN, 11);
    }

    bool hasCanvas = false;
    if ((this->canvas.screen) && (this->canvas.tile)) {
        hasCanvas = true;
    }
    if (hasCanvas) {
        gBgMenuManager.addStatic(ENGINE_MAIN, 0, 0, 12, 2, 1, 7, 30, 7, 0, this->canvas.screen);
    }
}

void CMainMenuScreenEnterName::init(void)
{
    gLogicThink.FUN_0204eba0();

    this->state = 0;
    this->mode = MODE_INPUT;
    this->nextMode = MODE_INPUT;
    this->unk14 = 0;
    
    this->tpTouch = TP_TOUCH_OFF;
    this->tpX = -1;
    this->tpY = -1;

    this->keyStart.type = KEY_TYPE_NONE;
    this->keyStart.x = 0;
    this->keyStart.y = 0;
    this->keyStart.chara = 0;
    this->keyCur.type = KEY_TYPE_NONE;
    this->keyCur.x = 0;
    this->keyCur.y = 0;
    this->keyCur.chara = 0;

    if ((unk_0209A454.unk4 == 2) || (unk_0209A454.unk4 == 3)) {
        this->keyboardLayout = 2;
    } else {
        this->keyboardLayout = 0;
    }

    this->setFlashButton(0);

    this->nameDirty = false;
    this->nameCharOffset = 0;

    STD_CopyString(this->prevEntry, unk_0209A454.entry);

    this->nameChars = static_cast<u8 *>(gAllocator.allocate(0x540));
    this->screen = static_cast<u16 *>(gAllocator.allocate(0x54));

    this->ngWordData = NULL;
    this->ngWordLines = NULL;
    this->ngWordLineCount = 0;
    this->ngWordDataSize = 0;

    this->phonePassword.readFile(123456);
    
    if (unk_0209A454.unk4 == 3) {
        STD_CopyString(unk_0209A454.entry, gLogicThink.getTeamInfo(FUN_ov16_020f081c())->tir.nameWC);
        unk_0209A454.entryLen = strlen(unk_0209A454.entry);
    }

    gBgMenuManager.init(ENGINE_MAIN);
    gBgMenuManager.setScreens(ENGINE_MAIN, G2_GetBG3ScrPtr(), G2_GetBG1ScrPtr(), NULL);

    FUN_ov16_020f2f7c(&this->canvas, 1);
    FUN_ov16_020f2fa8(&this->canvas, 30, 7);

    this->requestFiles();
}

void CMainMenuScreenEnterName::update(BOOL param1)
{
    switch (this->state) {
    case 0:
        break;
    case 1:
        if (this->tryFinalize()) {
            this->readFiles();
            this->setKey(0, 0, &this->keyActive);
            
            this->state = 2;
        }
        break;
    case 2:
        break;
    case 3:
        gBgMenuManager.finalize(ENGINE_MAIN);
        gBgMenuManager.init(ENGINE_MAIN);
        this->setupMenu();
        this->drawText();
        gBgMenuManager.updateGraphics(ENGINE_MAIN);
        this->fadeIn();

        this->state = 4;
        break;
    case 4:
    case 5:
        this->updateMenu();
        gBgMenuManager.updateGraphics(ENGINE_MAIN);
        break;
    }
}

BOOL CMainMenuScreenEnterName::tryFinalize(void)
{
    return Archive::TryFinalize(this->files, FILE_COUNT);
}

void CMainMenuScreenEnterName::updateLate(void)
{
    switch (this->state) {
    case 2:
        this->loadGraphics();

        this->state = 3;
        break;
    case 4:
    case 5:
        this->transferText();
        gBgMenuManager.draw(ENGINE_MAIN);
        break;
    }
}

void CMainMenuScreenEnterName::close(void)
{
    gLogicThink.FUN_0204ec3c();

    gBgMenuManager.setScreens(ENGINE_MAIN, G2_GetBG3ScrPtr(), G2_GetBG1ScrPtr(), G2_GetBG2ScrPtr());
    gBgMenuManager.finalize(ENGINE_MAIN);

    if (this->nameChars) {
        gAllocator.deallocate(this->nameChars);
        this->nameChars = NULL;
    }
    if (this->screen) {
        gAllocator.deallocate(this->screen);
        this->screen = NULL;
    }
    if (this->ngWordData) {
        gAllocator.deallocate(this->ngWordData);
        this->ngWordData = NULL;
    }
    if (this->ngWordLines) {
        gAllocator.deallocate(this->ngWordLines);
        this->ngWordLines = NULL;
    }

    FUN_ov16_020f2fe4(&this->canvas, 1);
    this->closeFiles();
    this->deallocateFiles();

    Graphics::ClearBGXMain(1, CHAR_FORMAT_16);
    Graphics::ClearBGXMain(2, CHAR_FORMAT_16);
    Graphics::ClearBGXMain(3, CHAR_FORMAT_16);
}

void CMainMenuScreenEnterName::closeFiles(void)
{
    Archive::Close(this->files, FILE_COUNT);
}

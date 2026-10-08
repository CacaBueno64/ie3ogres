#include "CMainMenuScreenEnterName.hpp"
#include "init/arm9_init.hpp"

bool CMainMenuScreenEnterName::FUN_ov55_02119f00(int param0)
{
    SLogicThink_7EC *v0 = gLogicThink.unk7EC;
    int v1 = gLogicThink.unk86A;

    for (int i = 0; i < v1; i++) {
        if ((v0->unitNo == param0) && (v0->unk26 == 253)) {
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

u16 CMainMenuScreenEnterName::normalizeChar(u16 c, u16 *str, int size)
{
    int v0 = size /= 4;

    for (int i = 0; i < v0; i++) {
        if (c == str[i * 2]) {
            return str[(i * 2) + 1];
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

    char v0[20];
    CMainMenuScreenEnterName::normalizeNgWordString(v0, src, fcodeck, fcodeckSize);
    
    int len = STD_GetStringLength(v0);

    for (int i = 0; i < len; i += 2) {
        for (int j = 0; j < ngLineCount; j++) {
            if (STD_CompareNString(&v0[i], ngLines[j], STD_GetStringLength(ngLines[j])) == 0) {
                return true;
            }
        }
    }

    return false;
}

void CMainMenuScreenEnterName::vFUN_A4(int param1)
{
    this->unk58 = param1;

    switch (param1) {
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

void CMainMenuScreenEnterName::vFUN_C0(void)
{
    int unitNo;
    bool cmp;

    bool hasNgWord = false;

    switch (unk_0209A454.unk4) {
    case 0:
    case 2:
    case 3:
        hasNgWord = CMainMenuScreenEnterName::containsNgWord(unk_0209A454.entry,
                                                      static_cast<u16 *>(this->files[FILE_FCODECK].data),
                                                      this->files[FILE_FCODECK].size,
                                                      this->ngWordLines,
                                                      this->ngWordLineCount);
        break;
    }

    switch (unk_0209A454.unk4) {
    case 5: {
        char tmp[17] = {0};
        SRecordHeader recordHeader;
        gRecordManager.getRecordHeader(&recordHeader);

        unitNo = this->phonePassword.decode(recordHeader.username, unk_0209A454.entry);
        
        if (CMainMenuScreenEnterName::FUN_ov55_02119f00(unitNo)) {
            unk_020A9C40.FUN_02045b40(unitNo, 5);
            this->vFUN_A4(1);
            gAudioPlayer.playEffect(6);
            unk_020A9C40.FUN_020460a8(0, 1);
            this->vFUN_C4(1);
        } else {
            this->vFUN_A4(1);
            gAudioPlayer.playEffect(AudioPlayer::SE_SELECT_FAIL);
            this->unk10 = 2;
        }
        break;
    }
    case 6:
        cmp = false;
        if (STD_CompareString("ゆうきがあれば", unk_0209A454.entry) == 0) {
            cmp = true;
        }
        if (cmp) {
            this->vFUN_A4(1);
            gAudioPlayer.playEffect(6);
            this->unk10 = 3;
            unk_020A0640.saveGameData.movieLinkDownloadFlag |= 2;
        } else {
            this->vFUN_A4(1);
            gAudioPlayer.playEffect(AudioPlayer::SE_SELECT_FAIL);
            this->unk10 = 2;
        }
        break;
    default:
        if (hasNgWord) {
            this->vFUN_A4(1);
            gAudioPlayer.playEffect(AudioPlayer::SE_SELECT_FAIL);
            this->unk10 = 1;
        } else {
            this->vFUN_A4(1);
            gAudioPlayer.playEffect(6);
            unk_020A9C40.FUN_020460a8(0, 1);
            this->vFUN_C4(1);
        }
        break;
    }
}

void CMainMenuScreenEnterName::vFUN_C4(int param1)
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

void CMainMenuScreenEnterName::vFUN_C8(void)
{
    if (!unk_0209A454.unk1F) {
        STD_CopyString(unk_0209A454.entry, this->unk6C);
    } else {
        unk_0209A454.entryLen = 0;
        unk_0209A454.entry[0] = '\0';
    }

    this->vFUN_A4(2);
    gAudioPlayer.playEffect(AudioPlayer::SE_DENY);
    unk_020A9C40.FUN_020460a8(0, 0);
    this->vFUN_C4(0);
}

u16 CMainMenuScreenEnterName::getChara(int x, u32 y)
{
    u16 *fcode = static_cast<u16 *>(this->files[FILE_FCODE_BASE + this->keyboardLayout].data);

    if (!fcode) {
        return 0;
    }

    if ((x < 0) || (x >= this->ENTER_NAME_WIDTH) || (y >= this->ENTER_NAME_HEIGHT)) {
        return 0;
    }

    int row_off = y * this->ENTER_NAME_WIDTH;
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
    if (strlen(unk_0209A454.entry) >= this->ENTER_NAME_MAX) {
        if ((this->keyActive.chara != this->KEYCODE_HANDAKU) && 
            (this->keyActive.chara != this->KEYCODE_DAKUTEN) && 
            (this->keyActive.chara != this->KEYCODE_DELETE) && 
            (this->keyActive.chara != this->KEYCODE_KANA)
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
                u16 v4 = read_u16(daku);
                unk_0209A454.entry[unk_0209A454.entryLen - 2] = (char)(v4);
                unk_0209A454.entry[unk_0209A454.entryLen - 1] = (char)(v4 >> 8);

                this->drawText();

                addedMark = true;
                break;
            }
            i += 1;
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
                u16 v4 = read_u16(daku);
                unk_0209A454.entry[unk_0209A454.entryLen - 2] = (char)(v4);
                unk_0209A454.entry[unk_0209A454.entryLen - 1] = (char)(v4 >> 8);

                this->drawText();

                addedMark = true;
                break;
            }
            i += 1;
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

    if ((gBgMenuManager.isFlashActive(ENGINE_MAIN)) || (this->unkC != this->unk10)) {
        return;
    }

    u16 v0 = gKeysRepeated | pressed;

    if (this->unkC == 0) {
        int x = this->keyActive.x;
        u32 y = this->keyActive.y;

        if (v0 & PAD_KEY_DOWN) {
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
                u32 v3 = -1;
                do {
                    v3++;
                } while (this->getChara(x, v3) == KEYCODE_EMPTY);
                this->setKey(x, v3, &this->keyActive);
            } 
            gAudioPlayer.playEffect(8);
        } else if (v0 & PAD_KEY_UP) {
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
            gAudioPlayer.playEffect(8);
        } else if (v0 & PAD_KEY_LEFT) {
            if (this->keyActive.type == 1) {
                u16 c;
                do {
                    x = (x + (this->ENTER_NAME_WIDTH-1)) % this->ENTER_NAME_WIDTH;
                    c = this->getChara(x, y);
                } while ((c == this->KEYCODE_EMPTY) || (c == this->keyActive.chara));
                gAudioPlayer.playEffect(8);
                this->setKey(x, y, &this->keyActive);
            } else if (this->keyActive.type == 3) {
                if (unk_0209A454.unk4 != 2) {
                    gAudioPlayer.playEffect(8);
                    this->keyActive.type = KEY_TYPE_CANCEL;
                }
            } else if (this->keyActive.type == 4) {
                gAudioPlayer.playEffect(8);
                this->keyActive.type = KEY_TYPE_CONFIRM;
            }
        } else if (v0 & PAD_KEY_RIGHT) {
            if (this->keyActive.type == 1) {
                u16 c;
                do {
                    x = (x + 1) % this->ENTER_NAME_WIDTH;
                    c = this->getChara(x, y);
                } while((c == this->KEYCODE_EMPTY) || (c == this->keyActive.chara));
                gAudioPlayer.playEffect(8);
                this->setKey(x, y, &this->keyActive);
            } else if (this->keyActive.type == 3) {
                if (unk_0209A454.unk4 != 2) {
                    gAudioPlayer.playEffect(8);
                    this->keyActive.type = KEY_TYPE_CANCEL;
                }
            } else if (this->keyActive.type == 4) {
                gAudioPlayer.playEffect(8);
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
                    this->vFUN_C0();
                }
                break;
            case 4:
                this->vFUN_C8();
                break;
            }
        } else if (pressed & PAD_BUTTON_B) {
            u16 prev = this->keyActive.chara;
            this->keyActive.chara = KEYCODE_DELETE;
            this->typeCharacter();
            this->keyActive.chara = prev;
        } else if (pressed & PAD_BUTTON_START) {
            gAudioPlayer.playEffect(8);
            this->keyActive.type = KEY_TYPE_CONFIRM;
        }
    } else if (this->unkC == 3) {
        if (pressed & PAD_BUTTON_A) {
            unk_020A9C40.FUN_020460a8(0, 1);
            this->vFUN_C4(1);
            this->vFUN_A4(3);
            this->keyActive.type = KEY_TYPE_CONFIRM;
            gAudioPlayer.playEffect(AudioPlayer::SE_DENY);
        }
    } else if (pressed & PAD_BUTTON_A) {
        this->unk10 = 0;
        this->vFUN_A4(3);
        this->keyActive.type = KEY_TYPE_CONFIRM;
        gAudioPlayer.playEffect(AudioPlayer::SE_DENY);
    }
}

void CMainMenuScreenEnterName::vFUN_B0(int x, int y, SKey *key)
{
    EKeyType type = static_cast<EKeyType>(gBgMenuManager.getHit(ENGINE_MAIN, x, y));

    if ((this->unkC == 1) || (this->unkC == 2) || ((this->unkC == 3))) {
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

        if (this->getChara(cx, cy) == this->KEYCODE_EMPTY) {
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
    switch (this->unkC) {
    case 0:
    {
        int indentation;

        if (!this->unk64) {
            break;
        }

        MI_CpuClearFast(this->unk64, 0x540);

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
        gFont12Manager->drawTextTile4bpp(indentation,
                                         6,
                                         unk_0209A454.entry,
                                         3,
                                         CFontManager::ALIGNEMENT_LEFT,
                                         this->unk64,
                                         112,
                                         24,
                                         NULL,
                                         0);

        DC_FlushRange(this->unk64, 0x540);
        
        this->unk5C = 1;
        break;
    }
    case 1:
        FUN_ov16_020f2f20(&this->canvas);

        gFont12Manager->setSpacing(1, 4);
        FUN_ov16_020f2184("もうしわけありませんが\nその[名前/なまえ]は[入力/にゅうりょく]できません。",
                          this->canvas.unk4,
                          this->canvas.unkC * 8,
                          this->canvas.unkE * 8,
                          3,
                          3,
                          2,
                          1,
                          0,
                          6,
                          CFontManager::ALIGNEMENT_CENTER);
        gFont12Manager->resetSpacing(); 

        this->canvas.unk10 = 1;

        DC_FlushRange(this->canvas.unk4, this->canvas.unkC * this->canvas.unkE * 32);
        break;
    case 2:
        FUN_ov16_020f2f20(&this->canvas);

        gFont12Manager->setSpacing(1, 4);
        FUN_ov16_020f2184("パスワードがちがいます。\n",
                          this->canvas.unk4,
                          this->canvas.unkC * 8,
                          this->canvas.unkE * 8,
                          3,
                          3,
                          2,
                          1,
                          0,
                          13,
                          CFontManager::ALIGNEMENT_CENTER);
        gFont12Manager->resetSpacing();

        this->canvas.unk10 = 1;

        DC_FlushRange(this->canvas.unk4, this->canvas.unkC * this->canvas.unkE * 32);
        break;
    case 3:
        FUN_ov16_020f2f20(&this->canvas);

        gFont12Manager->setSpacing(1, 4);
        FUN_ov16_020f2184("せいかい！！\n[新/あたら]しいコースをお[楽/たの]しみください。",
                          this->canvas.unk4,
                          this->canvas.unkC * 8,
                          this->canvas.unkE * 8,
                          3,
                          3,
                          2,
                          1,
                          0,
                          4,
                          CFontManager::ALIGNEMENT_CENTER);
        gFont12Manager->resetSpacing();

        this->canvas.unk10 = 1;

        DC_FlushRange(this->canvas.unk4, this->canvas.unkC * this->canvas.unkE * 32);
        break;
    }
}

void CMainMenuScreenEnterName::vFUN_BC(void)
{
    if (this->unkC == 0) {
        if (this->keyActive.type != this->unk20.type) {
            this->keyActive = this->unk20;
            gAudioPlayer.playEffect(8);
        } else {
            switch (this->unk20.type) {
            case 1:
                if ((this->unk20.x != this->keyActive.x) ||
                    (this->unk20.y != this->keyActive.y)
                ) {
                    this->keyActive = this->unk20;
                    gAudioPlayer.playEffect(8);
                } else if ((this->unk20.x == this->unk30.x) &&
                           (this->unk20.y == this->unk30.y) &&
                           (this->unk20.chara == this->unk30.chara)
                ) {
                    this->typeCharacter();
                }
                break;
            case 3:
                if (STD_GetStringLength(unk_0209A454.entry) <= 0) {
                    gAudioPlayer.playEffect(AudioPlayer::SE_SELECT_FAIL);
                } else if ((unk_0209A454.entryLen > 0) || (unk_0209A454.unk1E != 0)) {
                    this->vFUN_C0();
                }
                break;
            case 4:
                this->vFUN_C8();
                break;
            }
        }
    } else if (this->keyActive.type != this->unk20.type) {
        this->keyActive = this->unk20;
        gAudioPlayer.playEffect(8);
    } else if (this->unk20.type == 11) {
        if (this->unkC == 3) {
            unk_020A9C40.FUN_020460a8(0, 1);
            this->vFUN_C4(1);
            this->vFUN_A4(3);
            this->keyActive.type = KEY_TYPE_CONFIRM;
            gAudioPlayer.playEffect(AudioPlayer::SE_DENY);
        } else {
            this->unk10 = 0;
            this->vFUN_A4(3);
            this->keyActive.type = KEY_TYPE_CONFIRM;
            gAudioPlayer.playEffect(AudioPlayer::SE_DENY);
        }
    }
}

void CMainMenuScreenEnterName::vFUN_B8(void)
{
    switch (this->unk20.type) {
    case 1:
        if ((this->keyActive.type != this->unk20.type) || (this->keyActive.x != this->unk20.x) || (this->keyActive.y != this->unk20.y)) {
            gAudioPlayer.playEffect(8);
            this->keyActive = this->unk20;
        }
        break;
    case 3:
    case 4:
    case 11:
        if ((this->keyActive.type != this->unk20.type) || (this->keyActive.x != this->unk20.x) || (this->keyActive.y != this->unk20.y)) {
            gAudioPlayer.playEffect(8);
        }
        this->keyActive = this->unk20;
        break;
    }
}

void CMainMenuScreenEnterName::updateTP(TPData *tp)
{
    if (this->state != 4) {
        return;
    }

    if ((gBgMenuManager.isFlashActive(ENGINE_MAIN)) || (this->unkC != this->unk10)) {
        return;
    }

    if (tp->touch == TP_TOUCH_ON) {
        if (tp->validity != TP_VALIDITY_VALID) {
            return;
        }

        if (this->tpTouch == TP_TOUCH_OFF) {
            this->tpTouch = TP_TOUCH_ON;
            this->vFUN_B0(tp->x, tp->y, &this->unk20);
        }

        this->tpX = tp->x;
        this->tpY = tp->y;

        this->vFUN_B0(this->tpX, this->tpY, &this->unk30);
        this->vFUN_B8();

        return;
    }
    
    if ((this->tpTouch != TP_TOUCH_OFF) && (this->unk20.type != 0)) {
        this->vFUN_B0(this->tpX, this->tpY, &this->unk30);
        
        if (this->unk20.type == this->unk30.type) {
            this->vFUN_BC();
        }
    }

    this->unk30.type = KEY_TYPE_NONE;
    this->unk30.x = 0;
    this->unk30.y = 0;
    this->unk30.chara = 0;
    this->unk20.type = KEY_TYPE_NONE;
    this->unk20.x = 0;
    this->unk20.y = 0;
    this->unk20.chara = 0;
    this->tpTouch = 0;
}

void CMainMenuScreenEnterName::vFUN_70(void)
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

    if (this->unk64) {
        MI_CpuClearFast(this->unk64, 0x540);
        DC_FlushRange(this->unk64, 0x540);
    }

    if (this->screen) {
        for (int i = 0; i < 42; i++) {
            this->screen[i] = i;
        }
    }

    this->state = 1;
}

void CMainMenuScreenEnterName::vFUN_6C(void)
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
                int c = this->normalizeChar(this->decodeChar(cur2, type), static_cast<u16 *>(this->files[FILE_FCODECK].data), this->files[FILE_FCODECK].size);
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
    for (int i = 0; i < FILE_MAX; i++) {
        this->deallocateFile(i);
    }
}

void CMainMenuScreenEnterName::deallocateFile(int idx)
{
    return Archive::Deallocate(&this->files[idx]);
}

void CMainMenuScreenEnterName::vFUN_94(void)
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

    if (this->unk64) {
        this->unk60 = BG3CharOffset;
        GX_LoadBG3Char(this->unk64, this->unk60, 0x540);
        BG3CharOffset += 0x540;
    }

    bool cmp;
    if ((this->canvas.unk0) && (this->canvas.unk4)) {
        cmp = true;
    } else {
        cmp = false;
    }
    if (cmp) {
        this->canvas.unk8 = BG3CharOffset;
        Graphics::SetupScreen(this->canvas.unk0, this->canvas.unkC * this->canvas.unkE * 2, BG3TileIdx + 1, 0);
    }

    MI_CpuClearFast(G2_GetBG1CharPtr(), 0x20);
    DC_FlushRange(G2_GetBG1CharPtr(), 0x20);

    int BG1TileIdx = 0;
    int BG1CharOffset = 0x20;

    void *file2 = this->files[FILE_2].data;
    if (file2) {
        BG1TileIdx = Graphics::SetupScreen(PAC_PSC_GetScreenPtr(file2), PAC_PSC_GetScreenSize(file2), 1, 2);
        Graphics::LoadTempPaletteFromPac(file2, ENGINE_MAIN, 2);
        GX_LoadBG1Char(PAC_PSC_GetCharacterPtr(file2), 0x20, PAC_PSC_GetCharacterSize(file2));
        BG1CharOffset += PAC_PSC_GetCharacterSize(file2);
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

void CMainMenuScreenEnterName::vFUN_98(void)
{
    if (this->unkC == 0) {
        if ((this->unk5C == 0) || (!this->unk64)) {
            return;
        }
        this->unk5C = 0;
        GX_LoadBG3Char(this->unk64, this->unk60, 0x540);
        return;
    }

    bool cmp;
    if ((this->canvas.unk0) && (this->canvas.unk4)) {
        cmp = true;
    } else {
        cmp = false;
    }

    if ((cmp) && (this->canvas.unk10 != 0)) {
        this->canvas.unk10 = 0;
        GX_LoadBG3Char(this->canvas.unk4, this->canvas.unk8, this->canvas.unkC * this->canvas.unkE * 0x20);
    }
}

void CMainMenuScreenEnterName::vFUN_CC(int param1)
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

void CMainMenuScreenEnterName::vFUN_D4(void)
{
    switch (this->unk58) {
    case 1:
        this->vFUN_CC(5);
        break;
    case 2:
        this->vFUN_CC(6);
        break;
    }
}

void CMainMenuScreenEnterName::vFUN_D8(void)
{
    switch (this->unk58) {
    case 1:
        this->vFUN_CC(7);
        break;
    case 2:
        this->vFUN_CC(8);
        break;
    }
}

void CMainMenuScreenEnterName::vFUN_DC(void)
{
    if (this->unkC == 0) {
        gBgMenuManager.showID(ENGINE_MAIN, 3);
        gBgMenuManager.showID(ENGINE_MAIN, 4);
        gBgMenuManager.hideID(ENGINE_MAIN, 5);
        gBgMenuManager.hideID(ENGINE_MAIN, 6);
    } else {
        gBgMenuManager.hideID(ENGINE_MAIN, 11);
    }

    if (this->unk20.type == 0) {
        return;
    }
    if (this->unk20.type != this->unk30.type) {
        return;
    }

    switch (this->keyActive.type) {
    case 3:
        this->vFUN_CC(5);
        break;
    case 4:
        this->vFUN_CC(6);
        break;
    case 11:
        gBgMenuManager.showID(ENGINE_MAIN, 11);
        break;
    }
}

void CMainMenuScreenEnterName::vFUN_E0(void)
{
    if ((this->unkC != this->unk10) && (!gBgMenuManager.isFlashActive(ENGINE_MAIN))) {
        this->unkC = this->unk10;
        gBgMenuManager.finalize(ENGINE_MAIN);
        gBgMenuManager.init(ENGINE_MAIN);
        this->vFUN_E4();
        this->drawText();
    }

    if (this->unkC == 0) {
        switch (this->keyActive.type) {
        case 1:
            this->vFUN_CC(9);
            gBgMenuManager.setPos(ENGINE_MAIN, 9, this->keyActive.x + 2, (this->keyActive.y * 2) + 6);
            break;
        case 3:
            this->vFUN_CC(7);
            break;
        case 4:
            this->vFUN_CC(8);
            break;
        }
    }

    if (!gBgMenuManager.isFlashing(ENGINE_MAIN)) {
        if (this->unk58 != 0) {
            this->vFUN_A4(0);
        }
        this->vFUN_DC();
    }
}

void CMainMenuScreenEnterName::vFUN_E4(void)
{
    SBgMenuElementInit init;
    
    bool cmp0;
    if (unk_0209A454.unk4 == 2) {
        cmp0 = true;
    } else {
        cmp0 = false;
    }

    int v0 = cmp0 ? 12 : 5;

    if (this->unkC == 0) {
        void *i00 = this->files[FILE_I00].data;
        if (i00) {
            char *screen = static_cast<char *>(PAC_PSC_GetScreenPtr(i00));
            init.y = 20;
            init.w = 10;
            init.h = 4;
            init.x = v0;
            init.boundW = 80;
            init.boundH = 32;
            init.boundX = 0;
            init.boundY = 0;
            init.palette = 0;
            init.screen = screen;
            gBgMenuManager.addDynamic(ENGINE_MAIN, 1, 3, 1, &init, 0, 0, 0);

            if (!cmp0) {
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
            init.x = v0;
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

            if (!cmp0) {
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
            init.x = v0;
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

            if (!cmp0) {
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

        void *file2 = this->files[FILE_2].data;
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

        if ((cmp0) || (unk_0209A454.unk4 == 3)) {
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
    if (this->unkC == 3) {
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

    bool cmp1 = false;
    if ((this->canvas.unk0) && (this->canvas.unk4)) {
        cmp1 = true;
    }
    if (cmp1) {
        gBgMenuManager.addStatic(ENGINE_MAIN, 0, 0, 12, 2, 1, 7, 30, 7, 0, this->canvas.unk0);
    }
}

void CMainMenuScreenEnterName::init(void)
{
    gLogicThink.FUN_0204eba0();

    this->state = 0;
    this->unkC = 0;
    this->unk10 = 0;
    this->unk14 = 0;
    
    this->tpTouch = TP_TOUCH_OFF;
    this->tpX = -1;
    this->tpY = -1;

    this->unk20.type = KEY_TYPE_NONE;
    this->unk20.x = 0;
    this->unk20.y = 0;
    this->unk20.chara = 0;
    this->unk30.type = KEY_TYPE_NONE;
    this->unk30.x = 0;
    this->unk30.y = 0;
    this->unk30.chara = 0;

    if ((unk_0209A454.unk4 == 2) || (unk_0209A454.unk4 == 3)) {
        this->keyboardLayout = 2;
    } else {
        this->keyboardLayout = 0;
    }

    this->vFUN_A4(0);

    this->unk5C = 0;
    this->unk60 = 0;

    STD_CopyString(this->unk6C, unk_0209A454.entry);

    this->unk64 = static_cast<u8 *>(gAllocator.allocate(0x540));
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

    this->vFUN_70();
}

void CMainMenuScreenEnterName::update(BOOL param1)
{
    switch (this->state) {
    case 0:
        break;
    case 1:
        if (this->tryFinalize()) {
            this->vFUN_6C();
            this->setKey(0, 0, &this->keyActive);
            
            this->state = 2;
        }
        break;
    case 2:
        break;
    case 3:
        gBgMenuManager.finalize(ENGINE_MAIN);
        gBgMenuManager.init(ENGINE_MAIN);
        this->vFUN_E4();
        this->drawText();
        gBgMenuManager.updateGraphics(ENGINE_MAIN);
        this->fadeIn();

        this->state = 4;
        break;
    case 4:
    case 5:
        this->vFUN_E0();
        gBgMenuManager.updateGraphics(ENGINE_MAIN);
        break;
    }
}

BOOL CMainMenuScreenEnterName::tryFinalize(void)
{
    return Archive::TryFinalize(this->files, FILE_MAX);
}

void CMainMenuScreenEnterName::updateLate(void)
{
    switch (this->state) {
    case 2:
        this->vFUN_94();

        this->state = 3;
        break;
    case 4:
    case 5:
        this->vFUN_98();
        gBgMenuManager.draw(ENGINE_MAIN);
        break;
    }
}

void CMainMenuScreenEnterName::close(void)
{
    gLogicThink.FUN_0204ec3c();

    gBgMenuManager.setScreens(ENGINE_MAIN, G2_GetBG3ScrPtr(), G2_GetBG1ScrPtr(), G2_GetBG2ScrPtr());
    gBgMenuManager.finalize(ENGINE_MAIN);

    if (this->unk64) {
        gAllocator.deallocate(this->unk64);
        this->unk64 = NULL;
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
    Archive::Close(this->files, FILE_MAX);
}

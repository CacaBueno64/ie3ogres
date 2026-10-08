// clang-format off
#include "CPhonePassword.hpp"

#include "init/arm9_init.hpp"
// clang-format on

CPhonePassword::CPhonePassword()
{
    MI_CpuClearFast(&this->ctx, sizeof(this->ctx));
    this->key = 0;
}

CPhonePassword::~CPhonePassword()
{
    this->closeFile();
}

void CPhonePassword::readFile(u32 key)
{
    this->key = key;
    Archive::ReadNewUncompress("/data_iz/logic/phone_password.txt", &this->file);
}

void CPhonePassword::closeFile(void)
{
    Archive::Deallocate(&this->file);
    this->file.data = NULL;
    this->file.size = 0;
    this->file.available = 0;
    this->file.unk_9 = 0;
    this->file.unk_a = 0;
}

#define countof(x) (sizeof(x) / sizeof(*x))
u16 CPhonePassword::decode(char *username, char *password)
{
    char kana[3];
    u64 data = 0;

    for (int i = 0; i < 8; i++) {
        memset(kana, 0, sizeof(kana));
        int offset = 14 - i * 2;
        memcpy(kana, &password[offset], 2);
        if (i != 0) {
            data <<= 7;
        }
        data |= this->getKanaIdx(kana) & 0x7F;
    }

    MATH_InitRand32(&this->ctx, this->key);

    char name[16];
    u32 rand[3];
    for (int i = 0; i < countof(rand); i++) {
        rand[i] = MATH_Rand32(&this->ctx, 0);
    }

    u64 key = rand[0];
    key <<= 32;
    key |= rand[1];
    data ^= key;

    int i;
    u8 *cur = reinterpret_cast<u8 *>(&data);
    cur++;
    for (i = 0; i < 6; i++, cur++) {
        u8 byte_bit = *cur & 1;
        *cur = (*cur & ~(1)) | ((data >> i) & 1);
        data = (data & ~(1 << i)) | (byte_bit << i);
    }

    u16 dataCrc = data & 0xFFFF;
    data >>= 0x10;
    if (dataCrc != gLogicThink.calcCRC16(&data, 5)) {
        return 0;
    }
    data >>= 0x8;
    u16 unitNo = data & 0xFFFF;
    data >>= 0x10;

    memset(name, 0, sizeof(name));
    __memcpy(name, username, sizeof(name));

    u16 nameCrc = data & 0xFFFF;
    if (nameCrc != gLogicThink.calcCRC16(name, 16)) {
        return 0;
    }
    return unitNo;
}

u8 CPhonePassword::getKanaIdx(char *str)
{
    u16 *txt = static_cast<u16 *>(this->file.data);

    for (u8 i = 0; i < (this->file.size / sizeof(*txt)); i++) {
        if (strncmp(reinterpret_cast<char *>(&txt[i]), str, sizeof(txt[i])) == 0) {
            return i;
        }
    }

    return 0;
}

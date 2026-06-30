#pragma once

#include <nitro/types.h>

typedef unsigned char rbkey_char_t;
typedef int rbkey_t;

enum {
    RADIO_STATE_IDLE,
    RADIO_STATE_ACTIVE,
    RADIO_STATE_SELECTED, /* This highlights whatever button was most recently clicked */
};

typedef struct {
    u8 gxIdle;
    u8 gxActive;
    u8 gxSelected;
    u8 group;
    u8 state;
} SRadioButton;

class CBgMenuRadioButton
{
public:
    virtual ~CBgMenuRadioButton();
    void init(int size);
    void reset();
    void finalize();
    rbkey_t create(u8 gxIdle, u8 gxActive, u8 gxSelected, int group);
    SRadioButton *get(rbkey_t key);
    s32 count();
    void deactivateButton(rbkey_t key);
    int deactivateGx(u8 gx);
    void activateButton(rbkey_t key);
    int activateGx(u8 gx);
    bool releaseButton(rbkey_t key, bool param_2);
    int getSelectedIdx(int group);

private:
    s32 cap;
    s32 cur;
    SRadioButton *list;
};

extern CBgMenuRadioButton gBgMenuRadioButton;
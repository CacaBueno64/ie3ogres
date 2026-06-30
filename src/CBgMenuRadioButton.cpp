#include "CBgMenuRadioButton.hpp"

#include <nitro/types.h>

#include "allocator.hpp"
#include "init/arm9_init.hpp" // IWYU pragma: keep

void CBgMenuRadioButton::init(int size)
{
    this->cap = size;
    this->cur = 0;
    this->list = static_cast<SRadioButton *>(gAllocator.allocate(size * sizeof(SRadioButton)));
}

void CBgMenuRadioButton::reset()
{
    this->cur = 0;
}

void CBgMenuRadioButton::finalize()
{
    this->cur = 0;
    this->cap = 0;
    if (this->list == NULL) {
        return;
    }
    gAllocator.deallocate(this->list);
    this->list = NULL;
}

rbkey_t CBgMenuRadioButton::create(u8 gxIdle, u8 gxActive, u8 gxSelected, int group)
{
    if (!this->list) return -1;
    if (this->cur >= this->cap) return -1;
    SRadioButton *btn = &this->list[this->cur];
    btn->gxIdle = gxIdle;
    btn->gxActive = gxActive;
    btn->gxSelected = gxSelected;
    btn->group = group;
    btn->state = RADIO_STATE_IDLE;
    return this->cur++;
}

SRadioButton *CBgMenuRadioButton::get(rbkey_t key)
{
    if (!this->list) return NULL;
    if (key >= this->cur) return NULL;
    return this->list + key;
}

s32 CBgMenuRadioButton::count()
{
    return this->cur;
}

void CBgMenuRadioButton::deactivateButton(rbkey_t key)
{
    if (!this->list) return;
    if (key >= this->cur) return;
    this->list[key].state = RADIO_STATE_IDLE;
}

int CBgMenuRadioButton::deactivateGx(u8 gx)
{
    if (!this->list) return -1;
    SRadioButton *btn = this->list;
    for (int i = 0; i < this->cur; ++i) {
        if (btn->gxIdle == gx || btn->gxActive == gx) {
            this->deactivateButton(i);
            return i;
        }
        ++btn;
    }
    return -1;
}

void CBgMenuRadioButton::activateButton(rbkey_t key)
{
    if (!this->list) return;
    u8 group = this->list[key].group;
    SRadioButton *btn = this->list;
    int i = 0;
    if (this->cur > 0) { // Double comparison in asm
        for (; i < this->cur; ++i) {
            if (btn->group == group || btn->gxSelected == 0 || btn->state != RADIO_STATE_SELECTED) {
                btn->state = RADIO_STATE_IDLE;
            } else {
                btn->state = RADIO_STATE_SELECTED;
            }
            ++btn;
        }
    }
    if (key < this->cur) {
        this->list[key].state = RADIO_STATE_ACTIVE;
    }
}

int CBgMenuRadioButton::activateGx(u8 gx)
{
    if (!this->list) return -1;
    SRadioButton *btn = this->list;
    for (int i = 0; i < this->cur; ++i) {
        if (btn->gxIdle == gx || btn->gxActive == gx) {
            this->activateButton(i);
            return i;
        }
        ++btn;
    }
    return -1;
}

bool CBgMenuRadioButton::releaseButton(rbkey_t key, bool exclusive)
{
    if (!this->list) return false;
    if (key < 0 || key >= this->cur) return false;
    if (exclusive) {
        u8 group = this->list[key].group;
        SRadioButton *btn = this->list;
        int i = 0;
        if (this->cur > 0) { // Double comparison in asm
            for (; i < this->cur; ++i) {
                if (btn->group == group) {
                    btn->state = RADIO_STATE_IDLE;
                }
                ++btn;
            }
        }
        if (this->list[key].gxSelected == 0) {
            this->list[key].state = RADIO_STATE_IDLE;
        } else {
            this->list[key].state = RADIO_STATE_SELECTED;
        }
    } else {
        this->list[key].state = RADIO_STATE_IDLE;
    }
    return true;
}

int CBgMenuRadioButton::getSelectedIdx(int group)
{
    SRadioButton *btn = this->list;
    int groupIdx = 0;
    for (int i = 0; i < this->cur; ++i) {
        if (btn->group == group) {
            if (btn->state == RADIO_STATE_SELECTED) {
                return groupIdx;
            }
            ++groupIdx;
        }
        ++btn;
    }
    return -1;
}

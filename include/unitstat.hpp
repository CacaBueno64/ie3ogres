#ifndef IE3OGRES_UNITSTAT_H
#define IE3OGRES_UNITSTAT_H

#include <nitro.h>

typedef struct {
    u16 min;
    u16 max;
    u32 freedom;
} Unitstat_FpTpEntry;

typedef struct {
    u8  min;
    u8  max;
    u16 freedom;
} Unitstat_StatEntry;

typedef struct {
    u16 Id;
    u16 Level;
} Unitstat_WazaEntry;

typedef struct {
    Unitstat_FpTpEntry FP;
    Unitstat_FpTpEntry TP;
    
    Unitstat_StatEntry Kick;
    Unitstat_StatEntry Body;
    Unitstat_StatEntry Guard;
    Unitstat_StatEntry Control;
    Unitstat_StatEntry Speed;
    Unitstat_StatEntry Guts;
    Unitstat_StatEntry Stamina;
    
    Unitstat_WazaEntry Waza_Slot0;
    Unitstat_WazaEntry Waza_Slot1;
    Unitstat_WazaEntry Waza_Slot2;
    Unitstat_WazaEntry Waza_Slot3;
} Unitstat_FileEntry;

#endif //IE3OGRES_UNITSTAT_H
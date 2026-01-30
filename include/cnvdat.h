#ifndef IE3OGRES_CNVDAT_H
#define IE3OGRES_CNVDAT_H

#include <nitro.h>

// These are the structs dumped from "data_iz/bfmt/cnvdat.bin"

typedef struct {
    s32 x;
    s32 y;
} st_pos;

typedef struct {
    u32 exp;
    u16 unitNo;
    u16 goal;
    u16 assist;
    u16 game;
    u16 heatupFlg;
    u16 wearNo;
    u16 itemid[4];
    s16 stmax_adjust_;
    s16 tpmax_adjust_;
    u16 partnerno_[12];
    s16 st_current_;
    s16 tp_current_;
    u16 spCmd_[6];
    u8 spCmdCnt[6];
    u8 lv;
    u8 schoolNo;
    u8 costumeNo;
    u8 remainYellowCard;
    u8 suspention;
    s8 shoot_adjust_;
    s8 dribble_adjust_;
    s8 defense_adjust_;
    s8 pass_adjust_;
    s8 speed_adjust_;
    s8 guts_adjust_;
    s8 luck_adjust_;
    u8 teamIdx_;
    u8 positionIdx_;
    u8 uniformno;
    u16 lockFlg;
    u8 blogNo;
    u8 training_count;
    u8 status_;
    u8 rate_flag_;
    u8 shoot_percent_;
    u8 pass_percent_;
    u8 skill_percent_;
    u8 move_percent_;
    u8 _dummy[7];
} st_unit_save;

typedef struct {
    s8 nameWC[31];
    u8 _dummy1_;
    u16 teamNo;
    u16 fmtNormal;
    u16 fmtMini;
    u16 wearNo_;
    u16 wearNoNext_;
    u16 teamNameNoNext_;
    u8 homeUniformFlg;
    u8 emblemNo;
    u16 unitno_captain;
    u16 defaultShoes;
    u16 defaultShoes_GK;
    u16 defaultGlove;
    s8 shoot_rate_correct;
    s8 pass_rate_correct;
    s8 skill_rate_correct;
    s8 move_rate_correct;
    u8 dummy2_[6];
} st_team_info_read;

typedef struct {
    st_team_info_read tir;
    u16 wearNoForWC;
    u8 operations;
    u8 tp_current_;
    u16 cmd_btl_win_;
    u16 cmd_btl_lose_;
    u16 fmtWc;
    u16 glove;
} st_team_info;

typedef struct {
    u16 unitno_[16];
} st_team_member;

typedef struct {
    u16 unitno_[4];
    u16 guestno;
    u8 position_[4];
    u8 _dummy[2];
} st_party_member;

typedef struct {
    u8 itemSlot[1024];
} st_save_item;

typedef struct {
    s8 userName[20];
    u32 money_;
    u32 friendlyPoint_;
    u32 playTime;
    u32 wcPlayGames;
    u32 wcWinGames;
    u32 wcPkWinGames;
    s8 rpgTitleIdx;
    u8 searchLV;
    u16 nextFieldNo;
    u16 nextEnemyTeamNo;
    u16 itemLevel;
    u64 scout_table_ScoolFlg;
    u64 binder_open_ScoolFlg;
    u8 nextRuleIdx;
    u8 nextEnemyLVType;
    s8 nextEnemyLV;
    u8 rightHand;
    u8 saveSlotIdx;
    u8 _dummy;
    u8 chapterNo;
    u8 clearTeamLevel;
    u8 usableFieldFlg_[32];
    u8 usableFieldFlgWC_[32];
    u8 aggressiveLevel[2];
    u16 gameOverCount;
    s32 miniGameTotal;
    s32 miniGameWin;
    s32 miniGameLose;
    s32 miniGameRunAway;
    s32 niceIconCount;
    u8 binderComplete;
    u8 minnaSortType;
    u8 partyMemberMax;
    u16 unitMemberCount;
    u64 userID;
    s8 message[128];
    u16 routeBattleCount;
    u16 capsule_coin[3];
} st_save_user;

typedef struct {
    u32 crc[4];
    u8 dataCheckPass;
    u8 dataCheckResult;
} st_save_datacheck;

typedef struct {
    u8 name[32];
    u8 position;
    u8 trait;
    u8 club;
    u8 school;
    u8 searchFlg;
    u8 element;
    u8 wifidl;
    u8 _dummy;
} st_save_search;

typedef struct {
    u8 school;
    u8 searchFlg;
    u8 _dummy[2];
} st_save_search_enemy;

typedef struct {
    u8 flgs[328];
} st_save_unit_app_flg;

typedef struct {
    u8 flgs[328];
} st_save_unit_ally_flg;

typedef struct {
    u8 flgs[328];
} st_save_unit_win_flg;

typedef struct {
    u8 flgs[328];
    u8 jpLineNewFlg[10];
    u8 teamNewFlg[64];
} st_save_unit_new_flg;

typedef struct {
    u8 soundMode;
    u8 RunningMode;
    u16 volume_bgm;
    u16 volume_se;
    u8 _dummy_[2];
} st_save_setting;

typedef struct {
    s16 itemNo;
    s8 password[4];
} st_save_item_pw_info;

typedef struct {
    u16 wifiItem;
    u8 wifiChara;
    u8 adChara;
    u8 adItem;
    u32 seed;
    st_save_item_pw_info saveItemPwWifiInfo[16];
    st_save_item_pw_info saveItemPwAdhocInfo[8];
} st_save_dl_flg;

typedef struct {
    u8 lock_flg[8];
    u8 route_flg[30];
    u8 current_pos;
    u8 getTreasure[16];
    u16 blog_page;
} st_save_connection;

typedef struct {
    u16 scoutNum:3;
    u16 scoutPracticeFlag:10;
    u16 dummy:3;
    u16 scoutUnitNo[5];
} st_save_scout_data;

typedef struct {
    struct {
        u16 battleData;
    } result_ary[33];
    u8 opened;
    u8 _dummy;
    u64 gameOK[2];
} st_save_match_result;

typedef struct {
    u8 flgs[4];
} st_save_premium_item_flg;

typedef struct {
    u16 flg;
} st_save_unit_limit_flg;

typedef struct {
    u8 rankAndNameAndRefresh;
    u8 index[7];
    u8 itemNo[3];
    s8 userName[17];
} st_save_tournament;

typedef struct {
    st_save_item itemData;
    st_save_user userData;
    st_save_search allySearchData;
    st_save_search_enemy enemySearchData;
    st_save_unit_app_flg unitAppearFlg;
    st_save_unit_ally_flg unitAllyFlg;
    st_save_unit_new_flg unitNewFlg;
    st_save_unit_win_flg unitWinFlg;
    st_save_setting settingData;
    st_save_dl_flg downloadFlg;
    st_save_connection connectionData;
    st_save_scout_data scoutData;
    st_save_match_result matchResultData[10];
    st_save_premium_item_flg premiumItemFlg;
    st_save_premium_item_flg premiumItemFlg_hurri;
    st_save_unit_limit_flg unitLimitFlg;
    u8 cmd_binder[60];
    u16 vs_ground;
    u16 vs_com;
    u8 movieLinkDownloadFlag;
    u8 _dummy;
    u16 tournamentWinCount;
    u16 team_fmt_connect[3];
    u16 keymanUnitNo_connect[3];
    u8 wcTeamNo;
    u8 superLink_hideUnitValid;
    st_unit_save unit_save_temp[3];
    st_save_datacheck dataCheck;
} st_save_game_data;

typedef struct {
    st_unit_save unit_save[100];
} st_save_team_units;

typedef struct {
    st_team_info team_info;
    st_team_member team_member[2];
    st_party_member party_member;
    st_team_member team_member_connect[3];
} st_save_team;

typedef struct {
    s32 x0;
    s32 z0;
    s32 x1;
    s32 z1;
} stRectFx32;

typedef struct {
    u16 unitNo;
    u8 modelNo;
    u8 thinkCategory;
    VecFx32 basePos;
    VecFx32 pos;
    stRectFx32 moveArea;
    u16 rotRadIdx;
    u16 attr;
    s32 hitScale;
    s32 actIdx;
    u8 anmType;
    u8 motionPackNo;
    u16 wearNo;
    u8 approachIcon;
    u8 _dummy2_[3];
} stRPGUnitSave;

typedef struct {
    s32 unitKey[4];
    s32 guestKey;
    s8 partyCount;
    u8 _dummy_[3];
} stRPGPartySave;

typedef struct {
    s32 headMax;
    s32 bodyMax;
} stRPGGCharSave;

typedef struct {
    stRPGUnitSave unit[24];
    stRPGPartySave party;
    stRPGGCharSave gchar;
} stRPGSaveData;

typedef struct {
    s16 objNo;
    s16 motNo;
    u8 motionType;
    u8 flags;
    s16 motionIdx;
    s32 lastFrame;
    VecFx32 pos;
    VecFx32 rotate;
    VecFx32 scale;
} stGMapObjSaveWork;

typedef struct {
    stGMapObjSaveWork work[32];
} stGMapObjSave;

typedef struct {
    u16 currentAreaNo;
    u16 enterPlaceNo;
    struct {
        u8 areaNo;
        u8 _dummy_[2];
        u32 scriptId;
    } placeTbl[128];
} SGlobalMapInfo;

typedef struct {
    VecFx32 pos;
    u16 rot;
    s8 renewFlag;
    s8 dispFlag;
    s8 type;
    s8 _dummy[3];
} SMiniMapMarkInfo;

typedef struct {
    u8 iconNo;
    s16 x;
    s16 y;
} SMiniMapShopIconInfo;

typedef struct {
    struct {
        s8 renewFlag;
        s8 dispFlag;
        s8 scrollFlag;
        s8 iconDispFlag;
        s8 mapfile[32];
        s8 tilefile[32];
        s8 mapname[32];
        st_pos center;
        s32 scaleX;
        s32 scaleY;
    } base;
    struct {
        s8 renewFlag;
        s8 dispFlag;
        s8 caption[16];
        s8 string[64];
    } topix;
    struct {
        s8 renewFlag;
        s8 dispFlag;
        s8 type;
        s8 _dummy;
    } cursor;
    SMiniMapMarkInfo target[2];
    SMiniMapShopIconInfo shopIcon[8];
} SMiniMapInfo;

typedef struct {
    SGlobalMapInfo GlobalMapInfo;
    SMiniMapInfo MiniMapInfo;
    s8 mapinfoFile[32];
    s32 mapinfoBackNo;
    s32 defaultCamRotX;
    s32 defaultCamDist;
    u8 eventAreaAttr[64];
    u32 miniMapFilter;
    u8 mapCamLRRotFlag;
    u8 chaosFlag;
    u32 charPerspectiveValid;
    s8 encountSw;
    u8 encountProb;
    u8 encountNo;
    s8 eventHookSw;
    s32 eventHook[8];
    u32 menuFlag;
    struct {
        struct {
            u8 no;
            u8 attr;
            u16 unitNo;
        } aPost[188];
    } BlogData;
    s16 Menu_x;
    s16 Menu_y;
} SAdventureData;

typedef struct {
    s32 no;
    s32 idx;
    s32 map;
    s32 treasure;
} SObjRecordData;

typedef struct {
    SObjRecordData objdata[32];
} SDirectorRecordData;

typedef struct {
    s32 type;
    s32 code;
    s32 variable[16];
} SScriptFileRecordData;

typedef struct {
    s32 variable[64];
    SScriptFileRecordData file[16];
    s32 LoopCount[3];
} SScriptRecordData;

typedef struct {
    u8 treasureBoxFlag[128];
    SDirectorRecordData director;
    SScriptRecordData script;
} SEventRecordData;

typedef struct {
    s16 effidx[2];
    s16 bgmidx;
    s16 resume;
    s32 fade;
} SSoundRecordData;

typedef struct {
    s16 clearCondition;
    s16 matchNo;
    u8 placeNo;
    u8 _dummy[43];
} st_save_practice;

typedef struct {
    u8 enable;
    s8 chapterNo;
    u8 teamLv;
    s8 titleIdx;
    u32 playTime;
    u32 money;
    u16 winNum;
    u16 winRank;
    u16 passNum;
    u16 binderNum;
    u64 userID;
    s8 userName[24];
    s8 senderName[24];
    s8 message[128];
    u16 itemIdNormal;
    u16 itemIdRare;
    u8 itemGetFlag;
    u8 hurriFlag;
    st_save_unit_limit_flg unitLimitFlg;
    st_unit_save unitSave[16];
    st_team_info teamInfo;
    st_team_member teamMember;
    u8 tacticsCmdBits[8];
} st_save_pass_team;

typedef struct {
    u8 enable;
    s8 chapterNo;
    u8 teamLv;
    s8 titleIdx;
    u32 playTime;
    u32 money;
    u16 winNum;
    u16 winRank;
    u16 passNum;
    u16 binderNum;
    u64 userID;
    s8 userName[24];
    s8 senderName[24];
    s8 message[64];
    u16 itemIdNormal;
    u16 itemIdRare;
    u8 itemGetFlag;
    u8 hurriFlag;
    st_save_unit_limit_flg unitLimitFlg;
    st_unit_save unitSave[16];
    st_team_info teamInfo;
    st_team_member teamMember;
    u8 tacticsCmdBits[8];
} st_save_pass_team_short;

typedef struct {
    u16 unitno;
    u16 count;
} st_pass_rank_info;

typedef struct {
    u16 hour;
    u16 minute;
    u16 miniGameTotal;
    u16 rootGameTotal;
    u16 unitAllOld;
    u8 unitAllNow;
    u8 cmdBattleWin;
    u8 binderComplete;
    u8 uniformComplete;
    u8 _dummy[2];
} st_pass_score_info;

typedef struct {
    st_pass_rank_info goal[3];
    st_pass_rank_info game[3];
    st_pass_score_info score;
} st_save_pass_play_info;

typedef struct {
    st_save_pass_team team;
    st_save_pass_play_info play_info;
    st_save_tournament tournamentData;
} st_save_pass_team_hurri;

typedef struct {
    u32 version;
    u16 passNum;
    u16 _dummy;
    st_save_pass_team passTeam[10];
    st_save_pass_play_info play_info[10];
    st_save_tournament tournamentData[4];
} st_save_pass;

typedef struct {
    u32 version;
    u16 passNum;
    u16 _dummy;
    st_save_pass_team_short passTeam[10];
    st_save_pass_play_info play_info[10];
    st_save_tournament tournamentData[4];
} st_save_pass_short;

typedef struct {
    u32 headCrc;
    u32 dataCrc;
    u32 version;
    u32 size;
    u32 playTime;
    s8 chapterNo;
    u8 Lv;
    u8 teamMems;
    u8 stockMems;
    u32 money;
    s8 username[24];
    s8 teamname[17];
    s8 titleIdx;
    u8 _dummy1[2];
    u32 winNum;
    u32 passCRC;
    u32 passSize;
    u32 loadCounter;
    u16 PartyUnitNo[4];
    u8 _dummy3[32];
} SRecordHeader;

typedef struct {
    st_save_game_data saveGameData;
    st_save_team_units UnitData;
    st_save_team TeamData;
    stRPGSaveData rpgData;
    stGMapObjSave rpgObjData;
    SAdventureData AdventureData;
    SEventRecordData EventData;
    SSoundRecordData SoundData;
    st_save_practice savePractice;
} SRecordData;

typedef struct {
    st_save_pass_short savePassData;
} SRecordPass;

typedef struct {
    u32 crc;
    s8 magicnumber[16];
    u32 cnt;
    u32 version;
    u32 size;
    u32 wifiSeed;
    u8 slot;
    u8 passDataErase;
    u64 movie_flag;
    u8 _dummy[16];
} SRecordInfo;

typedef struct {
    SRecordHeader head;
    SRecordData data;
    SRecordPass pass;
} SRecordWork;

typedef struct {
    SRecordInfo info;
    SRecordHeader head;
    SRecordData data;
    SRecordPass pass;
} st_all;

typedef struct {
    SRecordHeader head;
    SRecordData data;
} st_data;

#endif //IE3OGRES_CNVDAT_H

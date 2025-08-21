GAME_LANGUAGE      ?= JAPANESE

buildname     := ie3ojp
shortname     := ie3o
TITLE_NAME    := INAZUMA11
GAME_CODE     := BOEJ

BUILD_DIR         := build/$(buildname)
ELFNAME           := main

GLB_DEFINES := -DSDK_ARM9 -DSDK_CODE_ARM -DSDK_FINALROM -DSDK_NITRO -DSDK_CW_FORCE_EXPORT_SUPPORT -DSDK_TS -DSDK_NO_MESSAGE

# CLI_DEFINES="-DMY_DEFINE=1 -DMY_OTHER_DEFINE=2 ..."
DEFINES = $(GLB_DEFINES) $(CLI_DEFINES)

SECURE_CRC := 0x9277

SUPPORTED_ROMS   := ie3ojp
ifneq ($(filter $(buildname),$(SUPPORTED_ROMS)),$(buildname))
$(error $(buildname) is not supported, choose from: $(SUPPORTED_ROMS))
endif

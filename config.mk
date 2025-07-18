GAME_LANGUAGE      ?= JAPANESE

buildname     := ie3ojp
shortname     := ie3o
TITLE_NAME    := INAZUMA11
GAME_CODE     := BOEJ

BUILD_DIR         := build/$(buildname)
ELFNAME           := main

GLB_DEFINES := -DSDK_ARM9 -DSDK_CODE_ARM -DSDK_FINALROM -DSDK_NITRO

# CLI_DEFINES="-DMY_DEFINE=1 -DMY_OTHER_DEFINE=2 ..."
DEFINES = $(GLB_DEFINES) $(CLI_DEFINES)

SECURE_CRC := 0x9277

# At present this repository only supports the 1.0 US ROMs
SUPPORTED_ROMS   := ie3ojp
ifneq ($(filter $(buildname),$(SUPPORTED_ROMS)),$(buildname))
$(error $(buildname) is not supported, choose from: $(SUPPORTED_ROMS))
endif

MWCCVER        := dsi/1.2p1
PROC           := arm946e
PROC_S         := arm5te
PROC_LD        := v5te
LCF_TEMPLATE   := ARM9-TS.lcf.template
LIBS           := -Llib -lsyscall -nostdlib
OPTFLAGS       := -O4,p
RTTIFLAG       := -RTTI off
EXCCFLAGS      := -Cpp_exceptions off

include config.mk

ALL_BUILDDIRS  := $(BUILD_DIR)/lib
include common.mk
include filesystem.mk

$(ASM_OBJS): $(WORK_DIR)/include/config.h
$(C_OBJS):   $(WORK_DIR)/include/global.h

ROM             := $(BUILD_DIR)/$(buildname).nds
BANNER          := $(ROM:%.nds=%.bnr)
BANNER_SPEC     := $(buildname)/banner.bsf
ICON_PNG        := $(buildname)/icon.png
HEADER_TEMPLATE := $(buildname)/rom_header_template.sbin

.PHONY: main sub libsyscall dsprot sdk sdk9 sdk7
.PRECIOUS: $(ROM)

MAKEFLAGS += --no-print-directory

all:
	$(MAKE) tools
	$(MAKE) patch_mwasmarm
	$(MAKE) $(ROM)

tidy:
	@$(MAKE) -C lib/syscall tidy
	@$(MAKE) -C lib/dsprot tidy
	$(RM) -r build
	$(RM) -r $(PROJECT_CLEAN_TARGETS)
	$(RM) $(ROM)

clean: tidy clean-tools
	@$(MAKE) -C lib/syscall clean
	@$(MAKE) -C lib/dsprot clean
	$(RM) $(foreach bn,$(SUPPORTED_ROMS),$(bn)/icon.nbf[pc])

SBIN_LZ := $(SBIN)_LZ
.PHONY: main_lz

sdk9 sdk7: sdk
main files_for_compile: | sdk9

main: $(SBIN) $(ELF)
main_lz: $(SBIN_LZ)

ROMSPEC        := rom.rsf
MAKEROM_FLAGS  := $(DEFINES)

$(ALL_OBJS): files_for_compile
$(ELF): files_for_compile libsyscall dsprot

libsyscall: files_for_compile
	$(MAKE) -C lib/syscall all install INSTALL_PREFIX=$(abspath $(WORK_DIR)/$(BUILD_DIR)) GAME_CODE=$(GAME_CODE)

dsprot:
	$(MAKE) -C lib/dsprot all install INSTALL_PREFIX=$(abspath $(WORK_DIR)/$(BUILD_DIR))

$(SBIN_LZ): $(BUILD_DIR)/component.files
	$(COMPSTATIC) -9 -c -f $<

$(BUILD_DIR)/component.files: main ;

$(HEADER_TEMPLATE): ;

$(ROM): $(ROMSPEC) filesystem main_lz $(BANNER)
	$(WINE) $(MAKEROM) $(MAKEROM_FLAGS) -DBUILD_DIR=$(BUILD_DIR) -M$(NITROFS_FILES_FILE) -DTITLE_NAME="$(TITLE_NAME)" -DBNR="$(BANNER)" -DHEADER_TEMPLATE="$(HEADER_TEMPLATE)" $< $@
	$(FIXROM) $@ --secure-crc $(SECURE_CRC) --game-code $(GAME_CODE)
ifeq ($(COMPARE),1)
	$(SHA1SUM) -c $(buildname)/rom.sha1
endif

$(BANNER): $(BANNER_SPEC) $(ICON_PNG:%.png=%.nbfp) $(ICON_PNG:%.png=%.nbfc)
	$(WINE) $(MAKEBNR) $< $@

# TODO: move to NitroSDK makefile
FX_CONST_H := $(WORK_DIR)/lib/TwlSDK/include/nitro/fx/fx_const.h
PROJECT_CLEAN_TARGETS += $(FX_CONST_H)
$(FX_CONST_H): $(MKFXCONST) $(TOOLSDIR)/gen_fx_consts/fx_const.csv
	$(MKFXCONST) $@
sdk: $(FX_CONST_H)
$(WORK_DIR)/include/global.h: $(FX_CONST_H) ;

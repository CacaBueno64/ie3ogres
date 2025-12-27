# ===================================================================
# See doc/BUILD_OVERVIEW.TXT for a clearer outline of this build process
# ===================================================================

# Need GLB_DEFINES and CLI_DEFINES from config
include ../../config.mk

# Undef this from config.mk so common.mk knows this is not building a linked elf
ELFNAME :=

MWCCVER := 2.0/sp2p3

# Relevant directories
BUILD_DIR   :=  build
C_OBJ_DIR   :=  $(BUILD_DIR)#/src
SRC_DIR     :=  ./src
INC_DIR     :=  ./include
SYSINC_DIR  :=  ../include

include ../../common.mk

LIB_INC := -i $(WORK_DIR)/lib/TwlSDK/include -i $(WORK_DIR)/lib/MSL_C/MSL_ARM/include -i $(WORK_DIR)/lib/MSL_C/MSL_Common/include -i $(WORK_DIR)/lib/MSL_C/MSL_Common_Embedded/include

ifeq ($(NODEP),)
  DEP_PARAM := -gccdep -MD
  include $(wildcard $(C_OBJ_DIR)/*.d)
endif

INSTALL_PREFIX ?= ./install
INSTALL_LIBDIR := $(INSTALL_PREFIX)/lib/dsprot

# C / ASM compilation parameters
CC_PARAM   :=  -O4,p -enum int -proc arm946E -gccext,on -fp soft -lang c99 -char signed -inline on,noauto -Cpp_exceptions off -interworking -ipa file -gccinc -i $(INC_DIR) -I$(SYSINC_DIR) $(LIB_INC) -c $(GLB_DEFINES) $(CLI_DEFINES)
CC_PARAM   +=  -W all -W pedantic -W noimpl_signedunsigned -W noimplicitconv -W nounusedarg -W nomissingreturn -W error

ASM_PARAM  :=  -proc arm5TE -i $(INC_DIR)

LIB_PARAM  := -nostdlib -library

# Output library file
LIBRARY_NAME  :=  dsprot.a
LIBRARY       :=  $(BUILD_DIR)/$(LIBRARY_NAME)

# Files that will go into the library, to be copied to INSTALL_LIBDIR
LIBRARY_FILES := \
	$(BUILD_DIR)/dsprot_main_encrypted.o          \
	$(BUILD_DIR)/dsprot_main_decrypter_encoded.o  \
	$(BUILD_DIR)/dsprot_main_decrypter_decoder.o  \
	$(C_OBJ_DIR)/extra.o                          \
	$(BUILD_DIR)/integrity_encrypted.o            \
	$(BUILD_DIR)/integrity_decrypter_encoded.o    \
	$(BUILD_DIR)/integrity_decrypter_decoder.o    \
	$(BUILD_DIR)/encryptor_encoded.o              \
	$(BUILD_DIR)/encryptor_decoder.o              \
	$(BUILD_DIR)/mac_owner_encrypted.o            \
	$(BUILD_DIR)/mac_owner_decrypter_encoded.o    \
	$(BUILD_DIR)/rom_util_encrypted.o             \
	$(BUILD_DIR)/rom_util_decrypter_encoded.o     \
	$(BUILD_DIR)/rom_test_encrypted.o             \
	$(BUILD_DIR)/rom_test_decrypter_encoded.o     \
	$(BUILD_DIR)/dummy_encrypted.o                \
	$(BUILD_DIR)/dummy_decrypter_encoded.o        \
	$(BUILD_DIR)/coretests_decrypter_decoder.o    \
	$(BUILD_DIR)/rc4_encoded.o                    \
	$(BUILD_DIR)/rc4_decoder.o

# Encryption keys
KEY_DSPROT_MAIN := 175F2
KEY_INTEGRITY   := 17DCC
KEY_MAC_OWNER   := 7B95
KEY_ROM_UTIL    := 7F25
KEY_ROM_TEST    := 7F25
KEY_DUMMY       := 8645


.PHONY: all clean tidy tools dsprot install
.DELETE_ON_ERROR: 
.NOTPARALLEL: 
.SECONDARY: none

all: dsprot

clean:
	$(RM) -r $(BUILD_DIR)

tidy: clean

dsprot: $(LIBRARY)

install: all
	$(shell mkdir -p $(INSTALL_LIBDIR))
	cp $(LIBRARY) $(INSTALL_LIBDIR)


# Assembly assembling
$(BUILD_DIR)/%.o: $(BUILD_DIR)/%.s
	$(WINE) $(MWAS) $(ASM_PARAM) $< -o $@


# C compilation
$(C_OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(WINE) $(MWCC) $(CC_PARAM) $(DEP_PARAM) $< -o $@
	@$(call fixdep,$(@:.o=.d))


# Library output
$(LIBRARY): $(LIBRARY_FILES)
	$(WINE) $(MWLD) $(LIB_PARAM) $^ -o $@

# Main module function encoding
$(BUILD_DIR)/dsprot_main_decrypter_encoded.o \
$(BUILD_DIR)/dsprot_main_decrypter_decoder.s: $(BUILD_DIR)/dsprot_main_decrypter.o $(ELFCODER)
	cp $(BUILD_DIR)/dsprot_main_decrypter.o $(BUILD_DIR)/dsprot_main_decrypter_encoded.o
	$(ELFCODER) -e -i $(BUILD_DIR)/dsprot_main_decrypter_encoded.o -o $(BUILD_DIR)/dsprot_main_decrypter_decoder.s -g Garbage -f \
		__DSProt_DetectFlashcart     \
		__DSProt_DetectNotFlashcart  \
		__DSProt_DetectEmulator      \
		__DSProt_DetectNotEmulator   \
		__DSProt_DetectDummy         \
		__DSProt_DetectNotDummy

$(BUILD_DIR)/dsprot_main_encrypted.o \
$(BUILD_DIR)/dsprot_main_decrypter.s: $(C_OBJ_DIR)/dsprot_main.o $(ELFCODER)
	cp $(C_OBJ_DIR)/dsprot_main.o $(BUILD_DIR)/dsprot_main_encrypted.o
	$(ELFCODER) -e -i $(BUILD_DIR)/dsprot_main_encrypted.o -o $(BUILD_DIR)/dsprot_main_decrypter.s -k $(KEY_DSPROT_MAIN) -p __DSProt_ -f \
		DetectFlashcart     \
		DetectNotFlashcart  \
		DetectEmulator      \
		DetectNotEmulator   \
		DetectDummy         \
		DetectNotDummy


# Integrity module function encoding
$(BUILD_DIR)/integrity_decrypter_encoded.o \
$(BUILD_DIR)/integrity_decrypter_decoder.s: $(BUILD_DIR)/integrity_decrypter.o $(ELFCODER)
	cp $(BUILD_DIR)/integrity_decrypter.o $(BUILD_DIR)/integrity_decrypter_encoded.o
	$(ELFCODER) -e -i $(BUILD_DIR)/integrity_decrypter_encoded.o -o $(BUILD_DIR)/integrity_decrypter_decoder.s -f \
		RunEncrypted_Integrity_MACOwner_IsBad   \
		RunEncrypted_Integrity_MACOwner_IsGood  \
		RunEncrypted_Integrity_ROMTest_IsBad    \
		RunEncrypted_Integrity_ROMTest_IsGood

$(BUILD_DIR)/integrity_encrypted.o \
$(BUILD_DIR)/integrity_decrypter.s: $(C_OBJ_DIR)/integrity.o $(ELFCODER)
	cp $(C_OBJ_DIR)/integrity.o $(BUILD_DIR)/integrity_encrypted.o
	$(ELFCODER) -e -i $(BUILD_DIR)/integrity_encrypted.o -o $(BUILD_DIR)/integrity_decrypter.s -k $(KEY_INTEGRITY) -f \
		Integrity_MACOwner_IsBad   \
		Integrity_MACOwner_IsGood  \
		Integrity_ROMTest_IsBad    \
		Integrity_ROMTest_IsGood


# Encryptor module function encoding
$(BUILD_DIR)/encryptor_encoded.o \
$(BUILD_DIR)/encryptor_decoder.s: $(C_OBJ_DIR)/encryptor.o $(ELFCODER)
	cp $(C_OBJ_DIR)/encryptor.o $(BUILD_DIR)/encryptor_encoded.o
	$(ELFCODER) -e -i $(BUILD_DIR)/encryptor_encoded.o -o $(BUILD_DIR)/encryptor_decoder.s -f \
		Encryptor_EncryptFunction            \
		Encryptor_DecryptFunction            \
		Encryptor_DecryptionWrapperFragment


# Core tests module: MAC/Owner, ROM utilities, ROM tests, dummy function encoding
$(BUILD_DIR)/mac_owner_decrypter_encoded.o \
$(BUILD_DIR)/rom_util_decrypter_encoded.o  \
$(BUILD_DIR)/rom_test_decrypter_encoded.o  \
$(BUILD_DIR)/dummy_decrypter_encoded.o     \
$(BUILD_DIR)/coretests_decrypter_decoder.s: $(BUILD_DIR)/mac_owner_decrypter.o $(BUILD_DIR)/rom_util_decrypter.o $(BUILD_DIR)/rom_test_decrypter.o $(BUILD_DIR)/dummy_decrypter.o $(ELFCODER)
	cp $(BUILD_DIR)/mac_owner_decrypter.o $(BUILD_DIR)/mac_owner_decrypter_encoded.o
	cp $(BUILD_DIR)/rom_util_decrypter.o $(BUILD_DIR)/rom_util_decrypter_encoded.o
	cp $(BUILD_DIR)/rom_test_decrypter.o $(BUILD_DIR)/rom_test_decrypter_encoded.o
	cp $(BUILD_DIR)/dummy_decrypter.o $(BUILD_DIR)/dummy_decrypter_encoded.o
	$(ELFCODER) -e -i $(BUILD_DIR)/mac_owner_decrypter_encoded.o $(BUILD_DIR)/rom_util_decrypter_encoded.o $(BUILD_DIR)/rom_test_decrypter_encoded.o $(BUILD_DIR)/dummy_decrypter_encoded.o -o $(BUILD_DIR)/coretests_decrypter_decoder.s -f \
		RunEncrypted_ROMTest_IsBad    \
		RunEncrypted_ROMTest_IsGood   \
		RunEncrypted_MACOwner_IsBad   \
		RunEncrypted_MACOwner_IsGood  \
		RunEncrypted_ROMUtil_CRC32    \
		RunEncrypted_Dummy_IsBad      \
		RunEncrypted_Dummy_IsGood

$(BUILD_DIR)/mac_owner_encrypted.o \
$(BUILD_DIR)/mac_owner_decrypter.s: $(C_OBJ_DIR)/mac_owner.o $(ELFCODER)
	cp $(C_OBJ_DIR)/mac_owner.o $(BUILD_DIR)/mac_owner_encrypted.o
	$(ELFCODER) -e -i $(BUILD_DIR)/mac_owner_encrypted.o -o $(BUILD_DIR)/mac_owner_decrypter.s -k $(KEY_MAC_OWNER) -f \
		MACOwner_IsBad   \
		MACOwner_IsGood

$(BUILD_DIR)/rom_util_encrypted.o \
$(BUILD_DIR)/rom_util_decrypter.s: $(C_OBJ_DIR)/rom_util.o $(ELFCODER)
	cp $(C_OBJ_DIR)/rom_util.o $(BUILD_DIR)/rom_util_encrypted.o
	$(ELFCODER) -e -i $(BUILD_DIR)/rom_util_encrypted.o -o $(BUILD_DIR)/rom_util_decrypter.s -k $(KEY_ROM_UTIL) -f \
		ROMUtil_CRC32

$(BUILD_DIR)/rom_test_encrypted.o \
$(BUILD_DIR)/rom_test_decrypter.s: $(C_OBJ_DIR)/rom_test.o $(ELFCODER)
	cp $(C_OBJ_DIR)/rom_test.o $(BUILD_DIR)/rom_test_encrypted.o
	$(ELFCODER) -e -i $(BUILD_DIR)/rom_test_encrypted.o -o $(BUILD_DIR)/rom_test_decrypter.s -k $(KEY_ROM_TEST) -f \
		ROMTest_IsBad   \
		ROMTest_IsGood

$(BUILD_DIR)/dummy_encrypted.o \
$(BUILD_DIR)/dummy_decrypter.s: $(C_OBJ_DIR)/dummy.o $(ELFCODER)
	cp $(C_OBJ_DIR)/dummy.o $(BUILD_DIR)/dummy_encrypted.o
	$(ELFCODER) -e -i $(BUILD_DIR)/dummy_encrypted.o -o $(BUILD_DIR)/dummy_decrypter.s -k $(KEY_DUMMY) -f \
		Dummy_IsBad   \
		Dummy_IsGood


# RC4 module function encoding
$(BUILD_DIR)/rc4_encoded.o \
$(BUILD_DIR)/rc4_decoder.s: $(C_OBJ_DIR)/rc4.o $(ELFCODER)
	cp $(C_OBJ_DIR)/rc4.o $(BUILD_DIR)/rc4_encoded.o
	$(ELFCODER) -e -i $(BUILD_DIR)/rc4_encoded.o -o $(BUILD_DIR)/rc4_decoder.s -f \
		RC4_Init                        \
		RC4_InitSBox                    \
		RC4_EncryptInstructions         \
		RC4_DecryptInstructions         \
		RC4_InitAndEncryptInstructions  \
		RC4_InitAndDecryptInstructions  \
		RC4_Byte


-include $(DEPS)

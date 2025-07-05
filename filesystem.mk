include graphics_files_rules.mk

NITROFS_FILES_FILE := nitrofs_files.txt

NITROFS_FILES := $(tail -c +15 ${NITROFS_FILES_FILE})

.PHONY: filesystem
filesystem: $(NITROFS_FILES)

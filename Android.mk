LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := src/zip.c src/zipfile.c src/zipup.c src/fileio.c src/util.c src/globals.c \
                   src/crypt.c src/ttyio.c src/crc32.c src/zbz2err.c src/deflate.c \
                   src/trees.c src/unix/unix.c 

LOCAL_C_INCLUDES := src src/unix

LOCAL_CFLAGS := -O2 -Wall -DUNIX -D__BIONIC__ -DNO_LARGE_FILE_SUPPORT \
                -DHAVE_DIRENT_H -DHAVE_TERMIOS_H

LOCAL_CFLAGS += \
    -Wno-self-assign \
    -Wno-unused-const-variable \
    -Wno-unused-function \
    -Wno-unused-parameter

LOCAL_ARM_MODE := arm

LOCAL_MODULE := zip
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_PATH := $(TARGET_OUT_SYSTEM_EXT_OPTIONAL_EXECUTABLES)
LOCAL_SYSTEM_EXT_MODULE := true

include $(BUILD_EXECUTABLE)


#
# Copyright (C) 2020 Vaisakh Murali (mvaisakh)
# Copyright (C) 2020 Maik Stratemeyer (kiam001)
# Copyright (C) 2020 Luka Panio (luka177)
# Copyright (C) 2020 nift4
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/wiko/jerry

TARGET_BOARD_PLATFORM := mt6580
TARGET_BOOTLOADER_BOARD_NAME := wiko
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
BOARD_USES_MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true

# Kernel
TARGET_KERNEL_HEADER_ARCH := arm
TARGET_KERNEL_ARCH := arm
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-linux-androideabi-4.9/bin
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androideabi-
TARGET_KERNEL_CONFIG := v2800_defconfig
TARGET_KERNEL_SOURCE := kernel/wiko/jerry
LZMA_RAMDISK_TARGETS := recovery

# Boot packing
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x04000000 --tags_offset 0x0e000000

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8486188
BOARD_FLASH_BLOCK_SIZE := 0
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_SWIPE := true
BOARD_USES_MMCUTILS := true
BOARD_SUPPRESS_EMMC_WIPE := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_INCLUDE_CRYPTO := false
TW_INCLUDE_SUPERSU := false
TW_EXCLUDE_TWRPAPP := true
TW_USE_TOOLBOX := true
TW_NO_EXFAT := true
TW_EXCLUDE_TZDATA := true
TW_EXCLUDE_NANO := true
TW_THEME := portrait_mdpi
TW_EXCLUDE_ENCRYPTED_BACKUPS := true
TW_EXTRA_LANGUAGES := false

include device/generic/twrpbuilder/BoardConfig32.mk


# HACK: TO REMOVE LATER
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 18486188

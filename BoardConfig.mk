USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/sharp/deckard/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/sharp/deckard/include

# Hardware configuration
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_QCOM_LIBS := true
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := false
BOARD_HAVE_FM_RADIO := true
BOARD_CAMERA_USE_GETBUFFERINFO := true
BOARD_VENDOR_QCOM_AMSS_VERSION := 3200

BOARD_VENDOR_USE_AKMD := akm8973

# wlan
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_5_X
# BOARD_WLAN_DEVICE := sdio
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/unifi_sdio.ko"
WIFI_DRIVER_FW_STA_PATH := "/system/etc/firmware/unifi-sdio-1/a05/sta.xbv"
# WIFI_DRIVER_MODULE_ARG := ""
WIFI_DRIVER_MODULE_NAME := "unifi_sdio"

TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true
TARGET_NO_RADIOIMAGE := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_BOARD_PLATFORM := qsd8k
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_USE_NON_NEON_MEMCPY := true

# kernel configuration
BOARD_KERNEL_CMDLINE := console=ttyMSM2,115200n8 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x20000000
BOARD_KERNEL_PAGESIZE := 4096

BOARD_PAGE_SIZE := 0x00001000
BOARD_EGL_CFG := vendor/deckard/proprietary/lib/egl/egl.cfg

#
TARGET_HARDWARE_3D := false
TARGET_BOARD_PLATFORM := qsd8k
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME := deckard

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_SYSTEMIMAGES_USE_EXT2 := false
TARGET_USERIMAGES_USE_EXT2 := false
#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true

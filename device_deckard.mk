$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/sharp/deckard/deckard-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/sharp/deckard/overlay

LOCAL_PATH := device/sharp/deckard
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

# Recovery
PRODUCT_COPY_FILES += \
    device/sharp/deckard/tools/arm/strace:recovery/root/sbin/strace


PRODUCT_COPY_FILES += \
    device/sharp/deckard/tools/arm/strace:system/xbin/strace

#Proprietary files on dt by now,but it will migrate to vendor/sharp/deckard
PRODUCT_COPY_FILES += \
    device/sharp/deckard/libaudio.so:system/lib/libaudio.so
		device/sharp/deckard/libloc_api.so:system/lib/libloc_api.so

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_deckard
PRODUCT_DEVICE := deckard

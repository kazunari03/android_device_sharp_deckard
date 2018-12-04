$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/sharp/is01/is01-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/sharp/is01/overlay

LOCAL_PATH := device/sharp/is01
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
    device/sharp/is01/tools/arm/strace:recovery/root/sbin/strace


PRODUCT_COPY_FILES += \
    device/sharp/is01/tools/arm/strace:system/xbin/strace


PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_is01
PRODUCT_DEVICE := is01

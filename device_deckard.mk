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

# Define Prelink
PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/renax/prelink-linux-arm.map

# Enabling Ring Tones
include frameworks/base/data/sounds/OriginalAudio.mk

# Recovery
PRODUCT_COPY_FILES += \
    device/sharp/deckard/tools/arm/strace:recovery/root/sbin/strace

# Publish that we support the live wallpaper feature and more hardware.
		PRODUCT_COPY_FILES += \
		frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
		frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
		frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
		frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
		frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
		frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
		frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
		frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
		frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
		frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml

# Overrides
		PRODUCT_BRAND := SHARP
		PRODUCT_NAME := IS01
		PRODUCT_DEVICE := IS01
		PRODUCT_MODEL := IS01
		PRODUCT_MANUFACTURER := SHARP

# Additional build prop settings
PRODUCT_PROPERTY_OVERRIDES += \
		keyguard.no_require_sim=true \
		ro.com.android.dateformat=MM-dd-yyyy \
		ro.com.android.dataroaming=false \
		ro.sf.lcd_density=240 \
		ro.product.locale.language=ja \
		ro.product.locale.region=JP

#hardware revision
PRODUCT_PROPERTY_OVERRIDES += \
		ro.hw_version=2

PRODUCT_COPY_FILES += \
    device/sharp/deckard/tools/arm/strace:system/xbin/strace

#Proprietary files on dt by now,but it will migrate to vendor/sharp/deckard
PRODUCT_COPY_FILES += \
    device/sharp/deckard/libaudio.so:system/lib/libaudio.so
		device/sharp/deckard/libloc_api.so:system/lib/libloc_api.so

# WiFi configuration
PRODUCT_PROPERTY_OVERRIDES += \
		wifi.interface=wlan0 \
		wifi.supplicant_scan_interval=15

# The OpenGL ES API level that is natively supported by this device.
# Enable cache on Google Maps
PRODUCT_PROPERTY_OVERRIDES += \
		ro.opengles.version=131072

# This is a high density device with more memory, so larger vm heaps for it.
PRODUCT_PROPERTY_OVERRIDES += \
		dalvik.vm.heapsize=32m

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_deckard
PRODUCT_DEVICE := deckard

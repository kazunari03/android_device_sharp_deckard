## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := is01

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/sharp/is01/device_is01.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := is01
PRODUCT_NAME := cm_is01
PRODUCT_BRAND := sharp
PRODUCT_MODEL := is01
PRODUCT_MANUFACTURER := sharp

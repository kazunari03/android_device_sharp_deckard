## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := is01

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/sharp/deckard/device_is01.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := deckard
PRODUCT_NAME := aosp_deckard
PRODUCT_BRAND := sharp
PRODUCT_MODEL := deckard
PRODUCT_MANUFACTURER := sharp

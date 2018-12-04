# Release name
PRODUCT_RELEASE_NAME := deckard

# Inherit device configuration
$(call inherit-product, device/sharp/deckard/device_deckard.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := deckard
PRODUCT_NAME := aosp_deckard
PRODUCT_BRAND := sharp
PRODUCT_MODEL := deckard
PRODUCT_MANUFACTURER := sharp

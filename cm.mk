# Release name
PRODUCT_RELEASE_NAME := harmony

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/mediatek/harmony/device_harmony.mk)

# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 400
TARGET_SCREEN_WIDTH := 400

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_harmony
PRODUCT_DEVICE := harmony
PRODUCT_BRAND := mediatek
PRODUCT_MANUFACTURER := MediaTek
PRODUCT_MODEL := harmony
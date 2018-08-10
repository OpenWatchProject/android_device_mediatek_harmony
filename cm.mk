# Release name
PRODUCT_RELEASE_NAME := whisper

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/mediatek/whisper/device_whisper.mk)

# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 240
TARGET_SCREEN_WIDTH := 320

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_whisper
PRODUCT_DEVICE := whisper
PRODUCT_BRAND := mediatek
PRODUCT_MANUFACTURER := MediaTek
PRODUCT_MODEL := Whisper
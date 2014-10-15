# Inherit some common liquid stuff.
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/e610/full_e610.mk)

# Enhanced NFC
$(call inherit-product, vendor/liquid/config/nfc_enhanced.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 320

# Release name
PRODUCT_RELEASE_NAME := OptimusL5

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := e610
PRODUCT_NAME := liquid_e610
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-E610
PRODUCT_MANUFACTURER := LGE
PRODUCT_CHARACTERISTICS := phone

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_NUMBER=000001 \
    PRODUCT_NAME=m4_open_eu \
    PRIVATE_BUILD_DESC="e610-userdebug 4.4.2 KVT49L 000001 release-keys" \
    BUILD_FINGERPRINT="lge/e610/4.4.2/KVT49L/000001:userdebug/release-keys"
    
  # Enable Torch
PRODUCT_PACKAGES += \
    Torch

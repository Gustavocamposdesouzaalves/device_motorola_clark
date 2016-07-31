# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/motorola/clark/device.mk)

# Inherit some common ZOS stuff.
$(call inherit-product, vendor/zos/common.mk)

# Enhanced NFC
$(call inherit-product, vendor/zos/config/nfc_enhanced.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/clark/overlay

## Device identifier. This must come after all inclusions
PRODUCT_NAME := zos_clark
PRODUCT_BRAND := Android
PRODUCT_DEVICE := clark
PRODUCT_MODEL := XT1575
PRODUCT_MANUFACTURER := motorola
PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += DEVICE_MAINTAINERS="Birdman (lifestyle)"

# Release name
PRODUCT_RELEASE_NAME := serranovelte

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/serranovelte/device_serranovelte.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := serranovelte
PRODUCT_NAME := cm_serranovelte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := serranovelte
PRODUCT_MANUFACTURER := samsung

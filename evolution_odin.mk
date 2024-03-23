# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit some common EvoX stuff
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)
EVO_BUILD_TYPE := COMMUNITY

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from odin device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := odin
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := evolution_odin
PRODUCT_MODEL := M2102K1G
PRODUCT_SHIPPING_API_LEVEL := 30

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := odin
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="missi-user 13 TKQ1.220829.002 V14.0.8.0.TKMCNXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Xiaomi/odin/odin:13/TKQ1.220829.002/V14.0.8.0.TKMCNXM:user/release-keys

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

# For less system partition reservation
WITH_GMS := true


# Include UDFPS Animations
EXTRA_UDFPS_ANIMATIONS := true

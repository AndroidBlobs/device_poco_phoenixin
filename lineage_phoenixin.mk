# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from phoenixin device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := poco
PRODUCT_DEVICE := phoenixin
PRODUCT_MANUFACTURER := poco
PRODUCT_NAME := lineage_phoenixin
PRODUCT_MODEL := POCO X2

PRODUCT_GMS_CLIENTID_BASE := android-poco
TARGET_VENDOR := poco
TARGET_VENDOR_PRODUCT_NAME := phoenixin
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="phoenixin-user 10 QKQ1.190825.002 V11.0.4.0.QGHINXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := POCO/phoenixin/phoenixin:10/QKQ1.190825.002/V11.0.4.0.QGHINXM:user/release-keys

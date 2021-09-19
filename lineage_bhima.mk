# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from bhima device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := poco
PRODUCT_DEVICE := bhima
PRODUCT_MANUFACTURER := poco
PRODUCT_NAME := lineage_bhima
PRODUCT_MODEL := M2102J20SG

PRODUCT_GMS_CLIENTID_BASE := android-poco
TARGET_VENDOR := poco
TARGET_VENDOR_PRODUCT_NAME := bhima
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC=" 11 RKQ1.200826.002 V12.5.4.0.RJUMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := POCO/bhima_global/bhima:11/RKQ1.200826.002/V12.5.4.0.RJUMIXM:user/release-keys

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from olivelite device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := olivelite
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_olivelite
PRODUCT_MODEL := Redmi 8A

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := olivelite
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="olivelite-user 10 QKQ1.191014.001 V12.5.2.0.QCPINXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Xiaomi/olivelite/olivelite:10/QKQ1.191014.001/V12.5.2.0.QCPINXM:user/release-keys

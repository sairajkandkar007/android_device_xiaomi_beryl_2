#
# Omni/OrangeFox product for Xiaomi beryl
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, device/xiaomi/beryl/device.mk)

PRODUCT_DEVICE := beryl
PRODUCT_NAME := omni_beryl
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := beryl
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Keep the real stock boot metadata. Do not advertise the tree as Android 16.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="beryl-user 12 SP1A.210812.016 V816.0.4.0.UOQINXM release-keys"

BUILD_FINGERPRINT := Redmi/beryl/beryl:12/SP1A.210812.016/V816.0.4.0.UOQINXM:user/release-keys

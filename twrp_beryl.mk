# Copyright (C) 2025-2026 OrangeFox Recovery Project
# SPDX-License-Identifier: GPL-3.0-only

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, device/xiaomi/beryl/device.mk)
$(call inherit-product, vendor/twrp/config/common.mk)
$(call inherit-product, device/xiaomi/beryl/fox_beryl.mk)

PRODUCT_DEVICE := beryl
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO M7 PRO 5G
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := twrp_$(PRODUCT_DEVICE)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="beryl-user 12 SP1A.210812.016 V816.0.4.0.UOQINXM release-keys"

BUILD_FINGERPRINT := Redmi/beryl/beryl:12/SP1A.210812.016/V816.0.4.0.UOQINXM:user/release-keys

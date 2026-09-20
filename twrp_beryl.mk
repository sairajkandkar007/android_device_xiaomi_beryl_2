# Copyright (C) 2025-2026 OrangeFox Recovery Project
# SPDX-License-Identifier: GPL-3.0-only

# Base Android product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Device configuration
$(call inherit-product, device/xiaomi/beryl/device.mk)

# TWRP/OrangeFox common configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# OrangeFox device-specific configuration
$(call inherit-product, device/xiaomi/beryl/fox_beryl.mk)

# Device identifiers
PRODUCT_DEVICE := beryl
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO M7 PRO 5G
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := twrp_$(PRODUCT_DEVICE)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="beryl-user 12 SP1A.210812.016 V816.0.4.0.UOQINXM release-keys"

BUILD_FINGERPRINT := Redmi/beryl/beryl:12/SP1A.210812.016/V816.0.4.0.UOQINXM:user/release-keys

#
# OrangeFox device configuration for beryl
#

LOCAL_PATH := device/xiaomi/beryl

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    bootctrl.mt6855

PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    bootctrl.mt6855 \
    libgptutils \
    libz \
    libcutils

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# Vendor firmware is exposed through both paths used by the MTK stack.
BOARD_ROOT_EXTRA_SYMLINKS += \
    /vendor/firmware:/vendor/odm/firmware

# Stock touch stack from vendor_dlkm.
# Dependency order is intentional.
TW_LOAD_VENDOR_MODULES := \
    mtk-mbox.ko \
    mtk_rpmsg_mbox.ko \
    mtk_tinysys_ipi.ko \
    scp.ko \
    mtk-afe-external.ko \
    xiaomi_tp.ko \
    lct_tp.ko \
    fts_touch_i2c.ko

TW_LOAD_VENDOR_BOOT_MODULES := true

LOCAL_PATH := device/xiaomi/beryl

# A/B postinstall
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL and update tools
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    bootctrl.mt6855 \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# Vendor firmware path
BOARD_ROOT_EXTRA_SYMLINKS += \
    /vendor/firmware:/vendor/odm/firmware

# Stock touch modules; order follows the verified vendor_dlkm dependency chain.
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

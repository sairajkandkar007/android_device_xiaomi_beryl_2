LOCAL_PATH := device/xiaomi/beryl

# A/B postinstall
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL and Update tools
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

# Stock touch modules
TW_LOAD_VENDOR_MODULES := \
    fts_touch_i2c.ko \
    lct_tp.ko \
    xiaomi_tp.ko \
    scp.ko \
    mtk-afe-external.ko \
    mtk_tinysys_ipi.ko \
    mtk_rpmsg_mbox.ko \
    mtk-mbox.ko

TW_LOAD_VENDOR_BOOT_MODULES := true

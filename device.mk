LOCAL_PATH := device/xiaomi/beryl

# A/B postinstall
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Recovery-side update/boot control support
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    bootctrl.mt6855 \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# Stock beryl firmware is exposed through /odm/firmware.
# On this device ODM firmware is merged with the vendor image.
# The build copies the two verified FT3519T files into the recovery ramdisk.
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/firmware/Conf_MultipleTest_ft3519t.ini:$(TARGET_COPY_OUT_RECOVERY)/odm/firmware/Conf_MultipleTest_ft3519t.ini \
    $(LOCAL_PATH)/prebuilt/firmware/focaltech_ts_fw_samsung_ft3519t.bin:$(TARGET_COPY_OUT_RECOVERY)/odm/firmware/focaltech_ts_fw_samsung_ft3519t.bin

# Keep the stock vendor firmware path available for code that resolves the
# merged ODM/vendor layout.
BOARD_ROOT_EXTRA_SYMLINKS += \
    /vendor/firmware:/vendor/odm/firmware

# Exact stock touch dependency chain from beryl vendor_dlkm.
# Keep this as one quoted value: OrangeFox consumes it as a single definition.
TW_LOAD_VENDOR_MODULES := "fts_touch_i2c.ko xiaomi_tp.ko lct_tp.ko scp.ko mtk-afe-external.ko mtk_tinysys_ipi.ko mtk_rpmsg_mbox.ko mtk-mbox.ko"

TW_LOAD_VENDOR_BOOT_MODULES := true

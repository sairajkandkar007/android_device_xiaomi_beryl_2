# beryl OrangeFox 14.1 replacement set

Target:
- Xiaomi/Redmi beryl
- MT6855
- vendor_boot recovery
- stock kernel/DTB preserved
- boot/display/touch bring-up only
- FBE/decryption intentionally not configured

## Files

- `device/xiaomi/beryl/BoardConfig.mk`
- `device/xiaomi/beryl/device.mk`
- `device/xiaomi/beryl/omni_beryl.mk`
- `device/xiaomi/beryl/AndroidProducts.mk`
- `device/xiaomi/beryl/vendorsetup.sh`
- `device/xiaomi/beryl/recovery.fstab`
- `device/xiaomi/beryl/recovery/root/init.recovery.mt6855.rc`
- `.github/workflows/main.yml`

## Lunch

The workflow discovers available targets and prefers:

1. `omni_beryl-eng`
2. `twrp_beryl-eng`
3. `fox_beryl-eng`

The supplied tree currently defines `omni_beryl-eng`, so that should be selected.

## API audit

The workflow prints:
- PLATFORM_VERSION
- PLATFORM_SDK_VERSION
- PLATFORM_VERSION_CODENAME
- PLATFORM_SECURITY_PATCH
- PRODUCT_SHIPPING_API_LEVEL
- TARGET_PLATFORM_VERSION
- TARGET_PLATFORM_VERSION_CODENAME

It does not force an Android 16 platform version. OrangeFox 14.1 is the source/manifest branch, while the stock beryl boot image carries Android-12 boot metadata and the stock userspace is Android 14.

## Vendor_boot

The build is configured with `FOX_VENDOR_BOOT_RECOVERY=1`. The workflow checks whether the current OrangeFox source exposes a `vendorbootimage` target. If it does not, it uses `recoveryimage`, which is the normal OrangeFox build target for vendor_boot-recovery trees.

## Touch

The tree requests the verified stock vendor_dlkm modules:
- mtk-mbox.ko
- mtk_rpmsg_mbox.ko
- mtk_tinysys_ipi.ko
- scp.ko
- mtk-afe-external.ko
- xiaomi_tp.ko
- lct_tp.ko
- fts_touch_i2c.ko

Exact touch firmware filename has not been added because it was not yet verified from the stock ROM archive.

## Important

This replacement set has not itself been run through a complete OrangeFox build. The workflow intentionally prints the API/lunch/build diagnostics so the first 14.1 run gives an actionable failure log instead of hiding the error.

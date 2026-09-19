#!/bin/bash
#
# OrangeFox build settings for Xiaomi beryl
#

export FOX_BUILD_DEVICE="beryl"
export FOX_AB_DEVICE=1
export FOX_VIRTUAL_AB_DEVICE=1
export FOX_VENDOR_BOOT_RECOVERY=1

export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL="C"

# Stock kernel/DTB are supplied from device/xiaomi/beryl/prebuilt.
export OF_FORCE_PREBUILT_KERNEL=1

# Stock device uses Keymaster 4.1 era interfaces.
export OF_DEFAULT_KEYMASTER_VERSION=4.1

# Bring-up target: do not attempt data decryption yet.
export OF_DONT_PATCH_ENCRYPTED_DEVICE=1

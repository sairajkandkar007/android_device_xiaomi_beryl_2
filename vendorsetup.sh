#!/bin/bash

export FOX_BUILD_DEVICE="beryl"

# A/B
export FOX_AB_DEVICE=1

# Virtual A/B
export FOX_VIRTUAL_AB_DEVICE=1

# Recovery is stored in vendor_boot
export FOX_VENDOR_BOOT_RECOVERY=1

# Allow missing Android dependencies
export ALLOW_MISSING_DEPENDENCIES=true

# Build environment
export LC_ALL="C"

# Use stock/prebuilt kernel
export OF_FORCE_PREBUILT_KERNEL=1

# Keymaster
export OF_DEFAULT_KEYMASTER_VERSION=4.0

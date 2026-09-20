# Copyright (C) 2025-2026 OrangeFox Recovery Project
# SPDX-License-Identifier: GPL-3.0-only

# OrangeFox maintainer/device settings
OF_MAINTAINER := beryl

# Display: POCO M7 Pro 5G / Redmi Note 14 5G
OF_SCREEN_H := 2400
OF_STATUS_H := 100
OF_STATUS_INDENT_LEFT := 48
OF_STATUS_INDENT_RIGHT := 48
OF_ALLOW_DISABLE_NAVBAR := 0
OF_CLOCK_POS := 1
OF_OPTIONS_LIST_NUM := 9

# A/B partition tools
OF_ENABLE_ALL_PARTITION_TOOLS := 1

# Vendor boot recovery
FOX_VENDOR_BOOT_RECOVERY := 1

# Development goal: boot/display/touch first.
# Do not attempt FBE decryption in this build.
OF_SKIP_FBE_DECRYPTION := 1

# Useful recovery behavior
OF_NO_TREBLE_COMPATIBILITY_CHECK := 1
OF_USE_LZ4_COMPRESSION := 1
OF_USE_DMCTL := 1
OF_USE_LEGACY_TIME_FIXUP := 1
OF_LOOP_DEVICE_ERRORS_TO_LOG := 1
OF_ENABLE_FRP_ADDON := 1

# Keep recovery usable on this device without adding encryption-specific work.
OF_ADVANCED_SECURITY := 0

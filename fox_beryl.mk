# Copyright (C) 2025-2026 OrangeFox Recovery Project
# SPDX-License-Identifier: GPL-3.0-only

OF_MAINTAINER := beryl

# Display
OF_SCREEN_H := 2400
OF_STATUS_H := 100
OF_STATUS_INDENT_LEFT := 48
OF_STATUS_INDENT_RIGHT := 48
OF_ALLOW_DISABLE_NAVBAR := 0
OF_CLOCK_POS := 1
OF_OPTIONS_LIST_NUM := 9

# Vendor_boot recovery
FOX_VENDOR_BOOT_RECOVERY := 1

# Bring-up scope: boot + display + touch only.
# Do not attempt FBE/decryption in this build.

OF_NO_TREBLE_COMPATIBILITY_CHECK := 1
OF_USE_LZ4_COMPRESSION := 1
OF_USE_DMCTL := 1
OF_USE_LEGACY_TIME_FIXUP := 1
OF_LOOP_DEVICE_ERRORS_TO_LOG := 1

# Intentionally disabled for initial bring-up.
# OrangeFox currently aborts at its dynamic-partition feature gate when this
# variable is enabled with the present 14.1 build configuration.
# OF_ENABLE_ALL_PARTITION_TOOLS := 1

OF_ADVANCED_SECURITY := 0

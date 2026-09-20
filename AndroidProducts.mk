# AndroidProducts.mk
#
# OrangeFox/TWRP-style product definition for beryl.

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/twrp_beryl.mk

COMMON_LUNCH_CHOICES := \
    twrp_beryl-user \
    twrp_beryl-userdebug \
    twrp_beryl-eng

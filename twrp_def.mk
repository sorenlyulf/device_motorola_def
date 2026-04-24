#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from def device
$(call inherit-product, device/motorola/def/device.mk)

PRODUCT_DEVICE := def
PRODUCT_NAME := twrp_def
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola one hyper
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="def_retail-user 11 RPFS31.Q1-21-20-10 e2d81 release-keys"

BUILD_FINGERPRINT := motorola/def_retail/def:11/RPFS31.Q1-21-20-10/e2d81:user/release-keys

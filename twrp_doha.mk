#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from doha device
$(call inherit-product, device/motorola/doha/device.mk)

PRODUCT_DEVICE := doha
PRODUCT_NAME := twrp_doha
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(8) plus
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="doha_retail-user 10 QPIS30.28-Q3-28-26-4-1-7 f0f57 release-keys"

BUILD_FINGERPRINT := motorola/doha_retail/doha:10/QPIS30.28-Q3-28-26-4-1-7/f0f57:user/release-keys

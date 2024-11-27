#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from LD_C18_TFT64 device
$(call inherit-product, device/unisoc/LD_C18_TFT64/device.mk)

PRODUCT_DEVICE := LD_C18_TFT64
PRODUCT_NAME := omni_LD_C18_TFT64
PRODUCT_BRAND := UNISOC
PRODUCT_MODEL := LEM16
PRODUCT_MANUFACTURER := unisoc

PRODUCT_GMS_CLIENTID_BASE := android-unisoc

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="LD_C18_TFT64_Natv-user 11 RP1A.201005.001 2918 release-keys"

BUILD_FINGERPRINT := UNISOC/LD_C18_TFT64_Natv/LD_C18_TFT64:11/RP1A.201005.001/2918:user/release-keys

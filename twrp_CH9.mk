#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from CH9 device
$(call inherit-product, device/tecno/CH9/device.mk)

PRODUCT_DEVICE := CH9
PRODUCT_NAME := twrp_CH9
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO CH9
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_ch9n_h811-user 12 SP1A.210812.016 147916 release-keys"

BUILD_FINGERPRINT := TECNO/CH9-GL/TECNO-CH9:12/SP1A.210812.016/221105V297:user/release-keys

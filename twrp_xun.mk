#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from xun device
$(call inherit-product, device/xiaomi/xun/device.mk)

PRODUCT_DEVICE := xun
PRODUCT_NAME := twrp_xun
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Pad SE
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="xun-user 13 TKQ1.221114.001 V14.0.2.0.TMUTWXM release-keys"

BUILD_FINGERPRINT := Redmi/xun/xun:13/TKQ1.221114.001/V14.0.2.0.TMUTWXM:user/release-keys

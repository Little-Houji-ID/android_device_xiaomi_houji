#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common voltage stuff.
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

# Inherit from houji device.
$(call inherit-product, device/xiaomi/houji/device.mk)

## Device identifier
PRODUCT_DEVICE := houji
PRODUCT_NAME := voltage_houji
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 23127PN0CG
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc=$(call normalize-path-list, "houji houji 15 AQ3A.240627.003 OS2.0.212.0.VNCCNXM release-keys")

BUILD_FINGERPRINT := Xiaomi/houji/houji:15/AQ3A.240627.003/OS2.0.212.0.VNCCNXM:user/release-keys

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true

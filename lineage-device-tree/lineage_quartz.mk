#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from quartz device
$(call inherit-product, device/amazon/quartz/device.mk)

PRODUCT_DEVICE := quartz
PRODUCT_NAME := lineage_quartz
PRODUCT_BRAND := Amazon
PRODUCT_MODEL := KFQUWI
PRODUCT_MANUFACTURER := amazon

PRODUCT_GMS_CLIENTID_BASE := android-amazon

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="quartz-user 11 RS8314.1401N 0021139650816 amz-p,release-keys"

BUILD_FINGERPRINT := Amazon/quartz/quartz:11/RS8314.1401N/0021139650816:user/amz-p,release-keys

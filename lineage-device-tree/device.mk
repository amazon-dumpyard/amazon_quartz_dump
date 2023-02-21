#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := tablet

# Rootdir
PRODUCT_PACKAGES += \
    dump-ramdump.sh \
    wifi_metrics_common.sh \
    install-recovery.sh \

PRODUCT_PACKAGES += \
    fstab.mount_keys.rw \
    meta_init.rc \
    init.mt8168.usb.rc \
    init.connectivity.rc \
    init.mdump.rc \
    init.ago.rc \
    multi_init.rc \
    meta_init.connectivity.rc \
    init.project.rc \
    factory_init.project.rc \
    init.sensor_1_0.rc \
    meta_init.modem.rc \
    meta_init.project.rc \
    init.mt8168.rc \
    init.modem.rc \
    factory_init.rc \
    factory_init.connectivity.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.mount_keys.rw:$(TARGET_COPY_OUT_RAMDISK)/fstab.mount_keys.rw

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 30

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/amazon/quartz/quartz-vendor.mk)

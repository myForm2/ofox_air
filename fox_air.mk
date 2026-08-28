# Copyright (C) 2017-2023 The Android Open Source Project
# Copyright (C) 2014-2023 The Team Win LLC
# SPDX-License-Identifier: Apache-2.0

# Release name (automatically taken from this file's suffix)

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our custom product configuration
$(call inherit-product-if-exists, vendor/fox/config/common.mk)
$(call inherit-product-if-exists, vendor/orangefox/config/common.mk)
$(call inherit-product-if-exists, vendor/omni/config/common.mk)
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

# Device path for OEM device tree
DEVICE_PATH := device/xiaomi/air

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Device identifier
PRODUCT_DEVICE := air
PRODUCT_NAME := fox_air
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO M6 5G
PRODUCT_MANUFACTURER := Xiaomi

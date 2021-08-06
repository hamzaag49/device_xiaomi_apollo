#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/pixys/config/common_full_phone.mk)

# Inherit from apollon device
$(call inherit-product, device/xiaomi/apollo/device.mk)

PRODUCT_NAME := pixys_apollo
PRODUCT_DEVICE := apollo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi Mi 10T

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

#Pixel offline charge animation
TARGET_INCLUDE_PIXEL_CHARGER := true

#Enabled Carrier Settings
TARGET_USES_CARRIERSETTINGS := true

#Building TWRP By Dfault
WITH_TWRP := true

#Build with Gapps
BUILD_WITH_GAPPS := true
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="apollo-user 11 RKQ1.200826.002 V12.5.1.0.RJDMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/apollo_global/apollo:11/RKQ1.200826.002/V12.5.1.0.RJDMIXM:user/release-keys
TARGET_BOOT_ANIMATION_RES := 1440
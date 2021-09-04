#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/surya/device.mk)

# Inherit some common Xtended stuff.
$(call inherit-product, vendor/xtended/config/common_full_phone.mk)

# GApps
TARGET_GAPPS_ARCH := arm64

# Boot animation resolution
TARGET_BOOT_ANIMATION_RES := 1080

# ANX Camera
$(call inherit-product, vendor/ANXCamera/config.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := xtended_surya
PRODUCT_DEVICE := surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X3
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := "google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRIVATE_BUILD_DESC="walleye-user 8.1.0 OPM1.171019 011 4448085 release-keys" \

PRODUCT_PROPERTY_OVERRIDES += \
   ro.build.fingerprint=$(BUILD_FINGERPRINT)


XTENDED_MAINTAINER := FabricioSc

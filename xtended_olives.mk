#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/xtended/config/common_full_phone.mk)

# Inherit from olives device
$(call inherit-product, device/xiaomi/olives/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := olives
PRODUCT_NAME := xtended_olives
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 8 Series
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

# Some build flags
TARGET_BOOT_ANIMATION_RES := 720
TARGET_FACE_UNLOCK := true
TARGET_USES_BLUR := true
TARGET_USES_AOSP_CHARGER := true
IS_PHONE := true
WITH_GAPPS := false

# Xtended stuff
XTENDED_BUILD_MAINTAINER := skittels15
XTENDED_BUILD_TYPE := OFFICIAL
XTENDED_BUILD_SUPPORT_URL := https://t.me/redmi8gsi
XTENDED_BUILD_DONATE_URL := https://ko-fi.com/beerdman

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/olive/olive:10/QKQ1.191014.001/V12.0.3.0.QCNMIXM:user/release-keys"

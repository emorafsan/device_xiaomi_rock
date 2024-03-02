#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from Lineage device
$(call inherit-product, device/xiaomi/rock/device.mk)

# Bootanimation Res
TARGET_BOOT_ANIMATION_RES := 1080

#Product Info
PRODUCT_DEVICE := rock
PRODUCT_NAME := lineage_rock
PRODUCT_BRAND := Android
PRODUCT_MODEL := 22071219AI
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Fingerprints
PRODUCT_BUILD_PROP_OVERRIDES += \
PRIVATE_BUILD_DESC="missi_phone_global_ext4-user 14 UP1A.231005.007 V816.0.3.0.ULUINXM release-keys"
BUILD_FINGERPRINT := Redmi/rock_in/rock:13/TP1A.220624.014/V816.0.3.0.ULUINXM:user/release-keys
PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

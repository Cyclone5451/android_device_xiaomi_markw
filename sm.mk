#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Define platform before including any common things
$(call inherit-product, $(LOCAL_PATH)/PlatformConfig.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from markw device
$(call inherit-product, device/xiaomi/markw/device.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/sm/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := sm_markw
PRODUCT_DEVICE := markw
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 4
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR := Xiaomi
TARGET_VENDOR_PRODUCT_NAME := markw
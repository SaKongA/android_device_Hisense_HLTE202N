#
# Copyright 2012 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := HLTE202N

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

#Treble Support
#$(call inherit-product, $(SRC_TARGET_DIR)/product/treble_common_64.mk)


# Device identifier. This must come after all inclusions.

#PRODUCT_COPY_FILES += \
#	$(LOCAL_PATH)/prebuilt/kernel:kernel \
#	$(LOCAL_PATH)/recovery.fstab:recovery.fstab

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := HLTE202N
PRODUCT_NAME := omni_HLTE202N
PRODUCT_BRAND := Hisense
PRODUCT_MODEL := HLTE202N
PRODUCT_MANUFACTURER := Hisense

#Add treble compatibility
#PRODUCT_FULL_TREBLE_OVERRIDE := true 

#PRODUCT_PROPERTY_OVERRIDES := ro.treble.enabled=true

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.device \
    ro.product.name \
    ro.build.product

PRODUCT_PROPERTY_OVERRIDES += \
	ro.secure=1 \
	ro.adb.secure=0

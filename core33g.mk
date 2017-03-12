# Copyright (C) 2017 The Lineage Project
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

LOCAL_PATH := device/samsung/core33g

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Inherit from vendor tree
$(call inherit-product-if-exists, vendor/samsung/core33g/core33g-vendor.mk)

# Inherit from scx30g-common device configuration
$(call inherit-product, device/samsung/scx30g-common/common.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Keylayouts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keylayout/ist30xx_ts_input.kl:system/usr/keylayout/ist30xx_ts_input.kl

# Media config
PRODUCT_PACKAGES += \
	media_profiles.xml

# Rootdir files
PRODUCT_PACKAGES += \
	init.sc8830.rc \
	init.sc8830.usb.rc \
	init.core33g_base.rc \
	ueventd.sc8830.rc

# WiFi
$(call inherit-product, hardware/broadcom/wlan/bcmdhd/firmware/bcm4343/device-bcm.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_core33g
PRODUCT_DEVICE := core33g
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-G360H

# Copyright 2014 The Android Open Source Project
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

# Device path
DEVICE_PATH := device/sony/suzu

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay

# Audio Configuration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(DEVICE_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Camera Configuration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/camera/camera_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/camera_config.xml \
    $(DEVICE_PATH)/camera/imx214_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/imx214_chromatix.xml \
    $(DEVICE_PATH)/camera/imx300_chromatix.xml:$(TARGET_COPY_OUT_VENDOR)/etc/camera/imx300_chromatix.xml

# NFC Configuration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/nfc/libnfc-brcm.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-brcm.conf \
    $(DEVICE_PATH)/nfc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=480 \
    ro.usb.pid_suffix=1E0

# Sensors
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/sensors/sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev.conf

# Telephony Packages (AOSP)
PRODUCT_PACKAGES += \
    InCallUI

# Thermal Configuration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/thermal/thermanager.xml:$(TARGET_COPY_OUT_VENDOR)/etc/thermanager.xml

# Inherit from those products. Most specific first.
$(call inherit-product, device/sony/msm8956-common/msm8956.mk)

# include board vendor blobs
$(call inherit-product-if-exists, vendor/sony/suzu/suzu-vendor.mk)

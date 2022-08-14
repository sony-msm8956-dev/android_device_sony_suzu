#
# Copyright (C) 2018 The LineageOS Project
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

include device/sony/loire-common/BoardConfigCommon.mk

# Kernel
TARGET_KERNEL_CONFIG := aosp_loire_suzu_defconfig

# Partition sizes
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 7843348480
# Reserve space for data encryption (22225616896-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 22225600512

# Platform
PRODUCT_PLATFORM := loire

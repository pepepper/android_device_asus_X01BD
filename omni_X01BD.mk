#
# Copyright (C) 2017 The Android Open Source Project
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

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

# Release name
PRODUCT_RELEASE_NAME := X01BD

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := X01BD
PRODUCT_NAME := omni_X01BD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M2
PRODUCT_MANUFACTURER := asus
TARGET_VENDOR_PRODUCT_NAME := X01BD
TARGET_VENDOR_DEVICE_NAME := X01BD

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=sdm660 \
    ro.hardware.gatekeeper=sdm660 \
    sys.usb.controller=a800000.dwc3 \
    sys.usb.rndis.func.name=rndis_bam \
    sys.usb.rmnet.func.name=rmnet_bam
PLATFORM_SECURITY_PATCH_OVERRIDE := ro.build.version.security_patch=2020-02-05

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sdm660_64-user 9 PKQ1 1457 release-keys"

BUILD_FINGERPRINT := asus/WW_X01BD/ASUS_X01BD_1:9/PKQ1/16.2017.1905.065-20190507:user/release-keys

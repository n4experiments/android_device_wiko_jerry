#
# Copyright (C) 2020 Vaisakh Murali (mvaisakh)
# Copyright (C) 2020 Maik Stratemeyer (kiam001)
# Copyright (C) 2020 nift4
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Device Specification
PRODUCT_DEVICE := jerry
PRODUCT_NAME := omni_jerry
PRODUCT_BRAND := WIKO
PRODUCT_MODEL := JERRY
PRODUCT_MANUFACTURER := WIKO

PROJECT_NAME := JerryTWRP_CedricClubEmbedded

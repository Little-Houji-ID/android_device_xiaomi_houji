#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifneq ($(filter houji shennong aurora ruyi goku manet zorn,$(TARGET_DEVICE)),)
	include $(call all-makefiles-under,$(LOCAL_PATH))
	include $(CLEAR_VARS)

MODEM_FIRMWARE_MOUNT_POINT := $(TARGET_OUT_VENDOR)/modem_firmware
$(MODEM_FIRMWARE_MOUNT_POINT): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating $(MODEM_FIRMWARE_MOUNT_POINT)"
	@mkdir -p $(TARGET_OUT_VENDOR)/modem_firmware

ALL_DEFAULT_INSTALLED_MODULES += \
	$(MODEM_FIRMWARE_MOUNT_POINT)

endif

LOCAL_PATH := $(call my-dir)
KERNEL_VER := $(word 2,$(subst -, ,$(LINUX_KERNEL_VERSION)))

ifneq (,$(filter $(KERNEL_VER),$(subst /, ,$(LOCAL_PATH))))
ifeq (,$(wildcard $(LOCAL_PATH)/../../fpsgo_int/$(KERNEL_VER)))

include $(CLEAR_VARS)
LOCAL_MODULE := fpsgo.ko
include $(MTK_KERNEL_MODULE)

endif
endif # Kernel version matches current path

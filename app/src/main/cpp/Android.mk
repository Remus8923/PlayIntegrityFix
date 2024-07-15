LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := dobby
LOCAL_SRC_FILES := $(LOCAL_PATH)/dobby/$(TARGET_ARCH_ABI)/libdobby.a
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/dobby
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := playintegrityfix
LOCAL_SRC_FILES := main.cpp
LOCAL_STATIC_LIBRARIES := libcxx dobby
LOCAL_LDLIBS := -llog
LOCAL_ARM_MODE := arm
include $(BUILD_SHARED_LIBRARY)

include $(LOCAL_PATH)/libcxx/Android.mk
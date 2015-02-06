LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

ifeq ($(BUILD_MTK_LDVT),true)
    LOCAL_CFLAGS += -DUSING_MTK_LDVT
endif

LOCAL_SRC_FILES:= \
  aaa_hal_base.cpp \

ifneq ($(BUILD_MTK_LDVT),true)
LOCAL_SRC_FILES += \
  aaa_hal_yuv.cpp
endif



LOCAL_C_INCLUDES:= \
    $(TOP)/external/stlport/stlport \
    $(MTK_PATH_CUSTOM)/kernel/imgsensor/inc \
    $(MTK_PATH_CUSTOM)/hal/inc/aaa \
    $(MTK_PATH_CUSTOM)/hal/inc/isp_tuning \
    $(MTK_PATH_CUSTOM)/hal/inc/camera_feature \
    $(MTK_PATH_CUSTOM)/hal/inc/debug_exif/aaa \
    $(MTK_PATH_CUSTOM)/hal/inc/debug_exif/cam \
    $(MTK_PATH_CUSTOM)/hal/inc \
    $(MTK_PATH_CUSTOM)/hal/camera \
    $(TOP)/$(MTK_PATH_SOURCE)/hardware/camera/inc \
    $(TOP)/$(MTK_PATH_SOURCE)/hardware/camera/inc/drv \
    $(MTK_PATH_PLATFORM)/hardware/camera/inc/drv \
    $(MTK_PATH_PLATFORM)/hardware/camera/inc/featureio \
    $(MTK_PATH_PLATFORM)/hardware/camera/inc \
    $(MTK_PATH_PLATFORM)/hardware/camera/inc/common \
    $(MTK_PATH_PLATFORM)/hardware/camera/inc/drv \
    $(MTK_PATH_PLATFORM)/hardware/camera/core/featureio/inc \
    $(MTK_PATH_PLATFORM)/hardware/camera/core/featureio/drv/inc \
    $(MTK_PATH_PLATFORM)/hardware/camera/core/featureio/drv/cam_cal \
    $(MTK_PATH_PLATFORM)/hardware/camera/core/featureio/pipe/aaa \
    $(MTK_PATH_PLATFORM)/hardware/camera/core/featureio/pipe/aaa/state_mgr \
    $(MTK_PATH_PLATFORM)/hardware/camera/core/featureio/pipe/aaa/awb_mgr \
    $(MTK_PATH_PLATFORM)/hardware/camera/core/featureio/pipe/aaa/flash_mgr \
    $(MTK_PATH_PLATFORM)/hardware/camera/core/featureio/pipe/aaa/nvram_mgr \
    $(MTK_PATH_PLATFORM)/hardware/camera/core/featureio/pipe/aaa/isp_mgr \
    $(MTK_PATH_PLATFORM)/hardware/camera/core/featureio/pipe/aaa/buf_mgr \
    $(MTK_PATH_PLATFORM)/hardware/camera/core/featureio/pipe/aaa/ispdrv_mgr \
    $(MTK_PATH_PLATFORM)/hardware/camera/core/featureio/pipe/aaa/isp_tuning \
    $(MTK_PATH_PLATFORM)/hardware/camera/core/featureio/pipe/aaa/isp_tuning/paramctrl/inc \
    $(MTK_PATH_PLATFORM)/hardware/camera/core/featureio/pipe/aaa/isp_tuning/paramctrl/pca_mgr/ \
    $(MTK_PATH_PLATFORM)/hardware/camera/core/featureio/pipe/aaa/isp_tuning/paramctrl/ccm_mgr/ \
    $(MTK_PATH_PLATFORM)/hardware/camera/core/featureio/pipe/aaa/lsc_mgr \
    $(MTK_PATH_PLATFORM)/hardware/camera/inc/algorithm/lib3a \
    $(MTK_PATH_PLATFORM)/hardware/camera/inc/algorithm/liblsctrans \
    $(MTK_PATH_PLATFORM)/hardware/camera/inc/algorithm/libtsf\
    $(MTK_PATH_PLATFORM)/hardware/m4u \
    $(MTK_PATH_PLATFORM)/hardware/camera/core/featureio/pipe/aaa/af_mgr \
    $(MTK_PATH_PLATFORM)/hardware/camera/core/featureio/pipe/aaa/ae_mgr \
    $(MTK_PATH_PLATFORM)/hardware/camera/core/featureio/pipe/aaa/sensor_mgr \
    $(MTK_PATH_PLATFORM)/hardware/camera/inc/acdk \
    $(MTK_PATH_PLATFORM)/hardware/camera/core/drv/imgsensor \    

LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_SOURCE)/hardware/camera/inc
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_SOURCE)/hardware/camera/inc/drv
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_SOURCE)/hardware/camera/inc/featureio
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_SOURCE)/hardware/camera/inc/common
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_SOURCE)/hardware/camera/inc/common/camexif

LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_SOURCE)/external
LOCAL_C_INCLUDES += $(TOP)/$(MTK_PATH_PLATFORM)/hardware/camera/inc/common/camutils
LOCAL_C_INCLUDES += $(TOP)/bionic

PLATFORM_VERSION_MAJOR := $(word 1,$(subst .,$(space),$(PLATFORM_VERSION)))
LOCAL_CFLAGS += -DPLATFORM_VERSION_MAJOR=$(PLATFORM_VERSION_MAJOR)

LOCAL_STATIC_LIBRARIES += \

LOCAL_WHOLE_STATIC_LIBRARIES := \

LOCAL_MODULE := libfeatureiopipe_aaa

include $(BUILD_STATIC_LIBRARY)

include $(call all-makefiles-under,$(LOCAL_PATH))

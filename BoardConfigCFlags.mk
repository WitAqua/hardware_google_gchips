# *************************************************************
# Vendor libs in hardware/google/gchips refer to this make file
# *************************************************************

#for Build Split
LOCAL_HEADER_LIBRARIES += libnativebase_headers

ifeq ($(BOARD_USES_VENDORIMAGE), true)
LOCAL_PROPRIETARY_MODULE := true
endif

ifeq ($(BOARD_USES_FIMGAPI_V5X), true)
    LOCAL_CFLAGS += -DFIMGAPI_V5X
    LOCAL_CFLAGS += -DFIMG2D_USE_M2M1SHOT2
endif

ifeq ($(BOARD_G2D_NEAREST_UNSUPPORT), true)
    LOCAL_CFLAGS += -DFIMGAPI_G2D_NEAREST_UNSUPPORT
endif

ifeq ($(BOARD_DYNAMIC_RECOMPOSITION_DISABLED), true)
	LOCAL_CFLAGS += -DDYNAMIC_RECOMPOSITION_DISABLED
endif

ifeq ($(TARGET_USES_UNIVERSAL_LIBHWJPEG), true)
	LOCAL_CFLAGS += -DUSES_UNIVERSAL_LIBHWJPEG
endif

ifeq ($(BOARD_USES_FIMC), true)
	LOCAL_CFLAGS += -DUSES_FIMC
else
	LOCAL_CFLAGS += -DUSES_GSCALER
endif

ifeq ($(BOARD_USES_IP_SERVICE), true)
	LOCAL_CFLAGS += -DIP_SERVICE
endif

ifeq ($(BOARD_USES_HWC_SERVICES),true)
	LOCAL_CFLAGS += -DHWC_SERVICES
ifeq ($(BOARD_USE_S3D_SUPPORT),true)
	LOCAL_CFLAGS += -DS3D_SUPPORT
endif
endif

ifeq ($(BOARD_USES_WFD),true)
	LOCAL_CFLAGS += -DUSES_WFD
endif

ifeq ($(BOARD_USES_VIRTUAL_DISPLAY), true)
	LOCAL_CFLAGS += -DUSES_VIRTUAL_DISPLAY
endif

ifeq ($(BOARD_USES_TSMUX), true)
	LOCAL_CFLAGS += -DUSES_TSMUX
endif

ifeq ($(BOARD_USES_DISABLE_COMPOSITIONTYPE_GLES), true)
	LOCAL_CFLAGS += -DUSES_DISABLE_COMPOSITIONTYPE_GLES
endif

ifeq ($(BOARD_USES_VDS_YUV420SPM), true)
	LOCAL_CFLAGS += -DUSES_VDS_YUV420SPM
endif

ifeq ($(BOARD_USES_VIRTUAL_DISPLAY_DECON_EXT_WB), true)
	LOCAL_CFLAGS += -DUSES_VIRTUAL_DISPLAY_DECON_EXT_WB
endif

ifeq ($(BOARD_USES_OVERLAY_FOR_WFD_UI_MIRROR), true)
        LOCAL_CFLAGS += -DUSES_OVERLAY_FOR_WFD_UI_MIRROR
endif

ifeq ($(BOARD_USES_3MSC_FOR_WFD), true)
        LOCAL_CFLAGS += -DUSES_3MSC_FOR_WFD
endif

ifeq ($(BOARD_USES_2MSC_FOR_WFD), true)
        LOCAL_CFLAGS += -DUSES_2MSC_FOR_WFD
endif

ifeq ($(BOARD_USES_VDS_BGRA8888), true)
	LOCAL_CFLAGS += -DUSES_VDS_BGRA8888
endif

ifeq ($(BOARD_VIRTUAL_DISPLAY_VIDEO_IS_OVERLAY), true)
     LOCAL_CFLAGS += -DVIRTUAL_DISPLAY_VIDEO_IS_OVERLAY
endif

ifeq ($(BOARD_USES_VDS_OTHERFORMAT), true)
     LOCAL_CFLAGS += -DUSES_VDS_OTHERFORMAT
endif

ifeq ($(BOARD_USES_FB_PHY_LINEAR),true)
	LOCAL_CFLAGS += -DUSE_FB_PHY_LINEAR
endif

ifeq ($(BOARD_TV_PRIMARY),true)
	LOCAL_CFLAGS += -DTV_PRIMARY
endif
ifeq ($(BOARD_HDMI_INCAPABLE), true)
	LOCAL_CFLAGS += -DHDMI_INCAPABLE
else
ifeq ($(BOARD_USES_NEW_HDMI), true)
	LOCAL_CFLAGS += -DUSES_NEW_HDMI
endif
ifeq ($(BOARD_USES_GSC_VIDEO), true)
	LOCAL_CFLAGS += -DGSC_VIDEO
endif
ifeq ($(BOARD_USES_VP_VIDEO),true)
	LOCAL_CFLAGS += -DVP_VIDEO
endif
ifeq ($(BOARD_USES_CEC),true)
	LOCAL_CFLAGS += -DUSES_CEC
endif
endif

ifeq ($(BOARD_SUPPORT_DQ_Q_SEQUENCE), true)
	LOCAL_CFLAGS += -DSUPPORT_DQ_Q_SEQUENCE
endif

ifeq ($(BOARD_USES_ONLY_GSC0_GSC1),true)
	LOCAL_CFLAGS += -DUSES_ONLY_GSC0_GSC1
endif

ifeq ($(BOARD_USES_DT), true)
	LOCAL_CFLAGS += -DUSES_DT
endif

ifeq ($(BOARD_USES_U4A),true)
	LOCAL_CFLAGS += -DUSES_U4A
endif

ifeq ($(BOARD_USES_WINDOW_UPDATE), true)
	LOCAL_CFLAGS += -DUSES_WINDOW_UPDATE
endif

ifeq ($(BOARD_USES_DPU), true)
	LOCAL_CFLAGS += -DUSES_DPU
endif

ifeq ($(BOARD_USES_HWC2_TINY), true)
LOCAL_CFLAGS += -DUSES_HWC2_TINY
endif

ifeq ($(TARGET_USES_HWC2), true)
	LOCAL_CFLAGS += -DTARGET_USES_HWC2
endif

ifeq ($(BOARD_USES_HWC2), true)
	LOCAL_CFLAGS += -DUSES_HWC2
endif

ifeq ($(BOARD_USES_VPP), true)
	LOCAL_CFLAGS += -DUSES_VPP
endif

ifeq ($(BOARD_USES_VPP_V2), true)
	LOCAL_CFLAGS += -DUSES_VPP_V2
endif

ifeq ($(TARGET_SOC), exynos8890)
	LOCAL_CFLAGS += -DUSES_DECON_AFBC_DECODER
endif

ifeq ($(BOARD_USE_GRALLOC_FLAG_FOR_HDMI), true)
	LOCAL_CFLAGS += -DUSE_GRALLOC_FLAG_FOR_HDMI
endif

ifeq ($(BOARD_USE_HDMI_ON_IN_SUSPEND), true)
	LOCAL_CFLAGS += -DHDMI_ON_IN_SUSPEND
endif

ifeq ($(TARGET_ARCH), arm64)
	LOCAL_CFLAGS += -DUSES_ARCH_ARM64
endif

ifeq ($(BOARD_USES_DECON_64BIT_ADDRESS), true)
	LOCAL_CFLAGS += -DUSES_DECON_64BIT_ADDRESS
endif

ifeq ($(BOARD_USES_EXYNOS_AFBC_FEATURE), true)
	LOCAL_CFLAGS += -DUSES_AFBC_FEATURE
endif

ifeq ($(BOARD_CAMERA_USES_EXYNOS_GDC), true)
LOCAL_CFLAGS += -DUSES_CAMERA_EXYNOS_GDC
endif
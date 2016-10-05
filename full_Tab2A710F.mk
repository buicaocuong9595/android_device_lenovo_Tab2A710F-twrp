# Inherit from those products. Most specific first.
$(call inherit-product, device/lenovo/Tab2A710F/device.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

PRODUCT_CHARACTERISTICS := tablet

TARGET_BUILD_VARIANT := eng
TARGET_BUILD_TYPE := debug

# init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/init.mt8127.rc:root/init.mt8127.rc \
    $(LOCAL_PATH)/ramdisk/init.mt8127usb.rc:root/init.mt8127usb.rc \
    $(LOCAL_PATH)/ramdisk/init.aee.rc:root/init.aee.rc \
    $(LOCAL_PATH)/ramdisk/init.ssd.rc:root/init.ssd.rc \
    $(LOCAL_PATH)/ramdisk/init.project.rc:root/init.project.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.mt8127.rc:root/ueventd.mt8127.rc \
    $(LOCAL_PATH)/ramdisk/factory_init.project.rc:root/factory_init.project.rc \
    $(LOCAL_PATH)/ramdisk/meta_init.rc:root/meta_init.rc \
    $(LOCAL_PATH)/ramdisk/meta_init.project.rc:root/meta_init.project.rc \
    $(LOCAL_PATH)/ramdisk/factory_init.rc:root/factory_init.rc 

# fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/fstab:root/fstab \
    $(LOCAL_PATH)/ramdisk/fstab.mt8127:root/fstab.mt8127

# sh	# Is there an other way to avoid "- exec '/system/bin/sh' failed: No such file or directory (2) -" ?
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/system/bin/sh:root/system/bin/sh

# libxlog
PRODUCT_PACKAGES += \
    libxlog

# libbt-vendor
PRODUCT_PACKAGES += \
    libbt-vendor

# libdashplayer # ?
#PRODUCT_PACKAGES += \
#    libdashplayer

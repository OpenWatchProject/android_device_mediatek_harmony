# mt6580 platform boardconfig
LOCAL_PATH := device/mediatek/harmony

# HWC1
TARGET_USES_HWC1 := true

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

USE_CAMERA_STUB := true

# Platform
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOARD_PLATFORM := mt6580
TARGET_NO_BOOTLOADER := true
TARGET_NO_FACTORYIMAGE := true

# CPU
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7

TARGET_BOOTLOADER_BOARD_NAME := mt6580

# MTK Hardware
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL -DDISABLE_ASHMEM_TRACKING
COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

BOARD_USES_MTK_HARDWARE := true

# Recovery
TARGET_RECOVERY_FSTAB := device/mediatek/harmony/rootdir/recovery.fstab

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32S1,32S1 androidboot.selinux=permissive
BOARD_KERNEL_BASE = 0x80000000
BOARD_KERNEL_OFFSET = 0x00008000
BOARD_RAMDISK_OFFSET = 0x04000000
BOARD_TAGS_OFFSET = 0xE000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET)
TARGET_KERNEL_SOURCE := kernel/mediatek/mt6580
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_HEADER_ARCH := arm
TARGET_KERNEL_CONFIG := sf6580_weg_l_defconfig
#KERNEL_TOOLCHAIN := $(TOPDIR)/$(TARGET_KERNEL_SOURCE)/toolchain/arm-eabi-4.8/bin/
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-eabi-
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androideabi-
MTK_APPENDED_DTB_SUPPORT := yes
BOARD_KERNEL_IMAGE_NAME := zImage-dtb

# suspend mode
TARGET_USES_EARLY_SUSPEND := true

# Display
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/mediatek/harmony/configs/etc/egl.cfg
TARGET_SCREEN_HEIGHT := 400
TARGET_SCREEN_WIDTH := 400
BOARD_EGL_WORKAROUND_BUG_10194508 := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Audio
USE_XML_AUDIO_POLICY_CONF := 0

# Memory Config
MALLOC_SVELTE := true

# LightHAL
TARGET_PROVIDES_LIBLIGHT := true

# SensorHAL
TARGET_SENSORS_DEVICE_API_VERSION := SENSORS_DEVICE_API_VERSION_1_3

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true

# Zygote whitelist extra paths
ZYGOTE_WHITELIST_PATH_EXTRA := \"/proc/ged\",

# Fonts
EXTENDED_FONT_FOOTPRINT := true

TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Wifi
BOARD_WLAN_DEVICE := MediaTek
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := "/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA := STA
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_P2P := P2P

# make_ext4fs requires numbers in dec format
BOARD_BOOTIMAGE_PARTITION_SIZE      := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE  := 16777216
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 1610612736
BOARD_SYSTEMIMAGE_PARTITION_SIZE    := 998244352
BOARD_CACHEIMAGE_PARTITION_SIZE     := 268435456
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE   := ext4
BOARD_FLASH_BLOCK_SIZE              := 131072

BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun/file

# Boot animation
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true

# Charger
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness

# Include symbols
TARGET_LD_SHIM_LIBS :=  /system/lib/liblog.so|libmtkshim_log.so:/system/lib64/liblog.so|libmtkshim_log.so:/system/vendor/lib/hw/audio.primary.$(TARGET_BOARD_PLATFORM).so|libmtkshim_audio.so:/system/lib/libui.so|libmtkshim_ui.so:/system/lib64/libui.so|libmtkshim_ui.so:/system/lib/libgui.so|libmtkshim_gui.so:/system/lib64/libgui.so|libmtkshim_gui.so:/system/lib/libMtkOmxVdec.so|libmtkshim_omx.so:/system/vendor/lib/libJpgDecPipe.so|libmtkshim_atomic.so

# DEXPREOPT
WITH_DEXPREOPT := true
DONT_DEXPREOPT_PREBUILTS := true

# Inherit from proprietary files
include vendor/mediatek/harmony/BoardConfigVendor.mk

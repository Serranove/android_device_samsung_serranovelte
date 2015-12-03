# inherit from qcom-common
-include device/samsung/qcom-common/BoardConfigCommon.mk

TARGET_GLOBAL_CFLAGS := -fuse-ld=bfd
TARGET_GLOBAL_CPPFLAGS := -fuse-ld=bfd

TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306
TARGET_CPU_VARIANT := generic
TARGET_CPU_SMP := true
TARGET_CPU_CORTEX_A53 := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := serranovelte

BOARD_CUSTOM_BOOTIMG_MK      	:= device/samsung/serranoveltexx/mkbootimg.mk
BOARD_KERNEL_SEPARATED_DT    	:= true
BOARD_KERNEL_CMDLINE 		:= console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET         := 0x02000000
BOARD_KERNEL_TAGS_OFFSET     := 0x01e00000

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE 		:= 0x00D00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE 	:= 0x00F00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE 	:= 0x08c60000
#BOARD_SYSTEMIMAGE_PARTITION_SIZE 	:= 0x6CF00000
BOARD_USERDATAIMAGE_PARTITION_SIZE 	:= 0x105c0000
#BOARD_USERDATAIMAGE_PARTITION_SIZE 	:= 0x138A00000
BOARD_FLASH_BLOCK_SIZE := 131072

#TARGET_PREBUILT_KERNEL := device/samsung/serranovelte/kernel
TARGET_KERNEL_SOURCE := kernel/samsung/serranovelte
TARGET_KERNEL_CONFIG := msm8916_sec_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
TARGET_KERNEL_VARIANT_CONFIG := msm8916_sec_serranovelte_eur_defconfig

BOARD_HAS_NO_SELECT_BUTTON := true

#FIXMES
USE_CAMERA_STUB := true
#TARGET_ENABLE_QC_AV_ENHANCEMENTS := false

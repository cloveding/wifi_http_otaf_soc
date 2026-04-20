####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 21                                              #
####################################################################

BASE_SDK_PATH = /Users/dingdang/.silabs/slt/installs/conan/p/simplfa179856e7001/p
BASE_PKG_PATH = /Users/dingdang/.silabs/slt/installs
UNAME:=$(shell $(POSIX_TOOL_PATH)uname -s | $(POSIX_TOOL_PATH)sed -e 's/^\(CYGWIN\).*/\1/' | $(POSIX_TOOL_PATH)sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_SDK_PATH) | sed s/://)
PKG_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_PKG_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
PKG_PATH ?= $(BASE_PKG_PATH)
COPIED_SDK_PATH ?= simplicity_sdk_2025.6.3

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DAWS_ENABLE=1' \
 '-DSLI_SI91X_MCU_FW_UPGRADE_OTA_DUAL_FLASH=1' \
 '-DSL_SI91X_PRINT_DBG_LOG=1' \
 '-DSIWG917Y111MGABA=1' \
 '-DSLI_SI917=1' \
 '-DSLI_SI917B0=1' \
 '-DSLI_SI91X_MCU_ENABLE_FLASH_BASED_EXECUTION=1' \
 '-DSLI_SI91X_MCU_EXTERNAL_LDO_FOR_PSRAM=1' \
 '-DSL_SI91X_ACX_MODULE=1' \
 '-DSI917Y_DEVKIT=1' \
 '-DSLI_SI91X_MCU_COMMON_FLASH_MODE=1' \
 '-DSLI_SI91X_MCU_CONFIG_RADIO_BOARD_BASE_VER=1' \
 '-DSLI_SI91X_MCU_CONFIG_RADIO_BOARD_VER2=1' \
 '-DSL_BOARD_NAME="BRD2708A"' \
 '-DSL_BOARD_REV="A02"' \
 '-DSLI_SI91X_MCU_ENABLE_RAM_BASED_EXECUTION=1' \
 '-D__FREERTOS_OS_WISECONNECT=1' \
 '-DSLI_SI91X_EMBEDDED_MQTT_CLIENT=1' \
 '-DSL_NET_COMPONENT_INCLUDED=1' \
 '-D__STATIC_INLINE=static inline' \
 '-DCLOCK_ROMDRIVER_PRESENT=1' \
 '-DULPSS_CLOCK_ROMDRIVER_PRESENT=1' \
 '-DSL_SI91X_BOARD_INIT=1' \
 '-DSRAM_BASE=0x0cUL' \
 '-DSRAM_SIZE=0x2fc00UL' \
 '-DSLI_CODE_CLASSIFICATION_DISABLE=1' \
 '-DSLI_SI91X_MCU_ENABLE_IPMU_APIS=1' \
 '-DSL_SI91X_SOC_MODE=1' \
 '-DCRC_ROMDRIVER_PRESENT=1' \
 '-DSI91X_32kHz_EXTERNAL_OSCILLATOR=1' \
 '-DDEBUG_ENABLE=1' \
 '-DDEBUG_UART=1' \
 '-DENABLE_DEBUG_MODULE=1' \
 '-DSL_SI91X_SI917_RAM_MEM_CONFIG=1' \
 '-DUDMA_ROMDRIVER_PRESENT=1' \
 '-DSLI_SI91X_OFFLOAD_NETWORK_STACK=1' \
 '-DSI917=1' \
 '-DSLI_SI91X_ENABLE_OS=1' \
 '-DSLI_SI91X_MCU_INTERFACE=1' \
 '-DTA_DEEP_SLEEP_COMMON_FLASH=1' \
 '-DSLI_SI91X_SOCKETS=1' \
 '-DPLL_ROMDRIVER_PRESENT=1' \
 '-DSL_WIFI_COMPONENT_INCLUDED=1' \
 '-DconfigNUM_SDK_THREAD_LOCAL_STORAGE_POINTERS=2' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DSL_CODE_COMPONENT_FREERTOS_KERNEL=freertos_kernel' \
 '-DSL_CODE_COMPONENT_CORE=core'

ASM_DEFS += \
 '-DAWS_ENABLE=1' \
 '-DSLI_SI91X_MCU_FW_UPGRADE_OTA_DUAL_FLASH=1' \
 '-DSL_SI91X_PRINT_DBG_LOG=1' \
 '-DSIWG917Y111MGABA=1' \
 '-DSLI_SI917=1' \
 '-DSLI_SI917B0=1' \
 '-DSLI_SI91X_MCU_ENABLE_FLASH_BASED_EXECUTION=1' \
 '-DSLI_SI91X_MCU_EXTERNAL_LDO_FOR_PSRAM=1' \
 '-DSL_SI91X_ACX_MODULE=1' \
 '-DSI917Y_DEVKIT=1' \
 '-DSLI_SI91X_MCU_COMMON_FLASH_MODE=1' \
 '-DSLI_SI91X_MCU_CONFIG_RADIO_BOARD_BASE_VER=1' \
 '-DSLI_SI91X_MCU_CONFIG_RADIO_BOARD_VER2=1' \
 '-DSL_BOARD_NAME="BRD2708A"' \
 '-DSL_BOARD_REV="A02"' \
 '-DSLI_SI91X_MCU_ENABLE_RAM_BASED_EXECUTION=1' \
 '-D__FREERTOS_OS_WISECONNECT=1' \
 '-DSLI_SI91X_EMBEDDED_MQTT_CLIENT=1' \
 '-DSL_NET_COMPONENT_INCLUDED=1' \
 '-D__STATIC_INLINE=static inline' \
 '-DCLOCK_ROMDRIVER_PRESENT=1' \
 '-DULPSS_CLOCK_ROMDRIVER_PRESENT=1' \
 '-DSL_SI91X_BOARD_INIT=1' \
 '-DSRAM_BASE=0x0cUL' \
 '-DSRAM_SIZE=0x2fc00UL' \
 '-DSLI_CODE_CLASSIFICATION_DISABLE=1' \
 '-DSLI_SI91X_MCU_ENABLE_IPMU_APIS=1' \
 '-DSL_SI91X_SOC_MODE=1' \
 '-DCRC_ROMDRIVER_PRESENT=1' \
 '-DSI91X_32kHz_EXTERNAL_OSCILLATOR=1' \
 '-DDEBUG_ENABLE=1' \
 '-DDEBUG_UART=1' \
 '-DENABLE_DEBUG_MODULE=1' \
 '-DSL_SI91X_SI917_RAM_MEM_CONFIG=1' \
 '-DUDMA_ROMDRIVER_PRESENT=1' \
 '-DSLI_SI91X_OFFLOAD_NETWORK_STACK=1' \
 '-DSI917=1' \
 '-DSLI_SI91X_ENABLE_OS=1' \
 '-DSLI_SI91X_MCU_INTERFACE=1' \
 '-DTA_DEEP_SLEEP_COMMON_FLASH=1' \
 '-DSLI_SI91X_SOCKETS=1' \
 '-DPLL_ROMDRIVER_PRESENT=1' \
 '-DSL_WIFI_COMPONENT_INCLUDED=1' \
 '-DconfigNUM_SDK_THREAD_LOCAL_STORAGE_POINTERS=2' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DSL_CODE_COMPONENT_FREERTOS_KERNEL=freertos_kernel' \
 '-DSL_CODE_COMPONENT_CORE=core'

INCLUDES += \
 -Iconfig \
 -Iautogen \
 -I. \
 -Iwiseconnect3_sdk_3.5.2/components/protocol/wifi/inc \
 -Iwiseconnect3_sdk_3.5.2/components/service/bsd_socket/inc \
 -Iwiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/CMSIS/Driver/Include \
 -Iwiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver \
 -Iwiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/inc \
 -Iwiseconnect3_sdk_3.5.2/components/service/mqtt/inc \
 -Iwiseconnect3_sdk_3.5.2/components/service/network_manager/inc \
 -Iwiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/rom_driver/inc \
 -Iwiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/inc \
 -Iwiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/inc \
 -Iwiseconnect3_sdk_3.5.2/components/board/silabs/inc \
 -Iwiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/config \
 -Iwiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/inc \
 -Iwiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/service/clock_manager/inc \
 -Iwiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_peripheral_drivers/inc \
 -Iwiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/errno/inc \
 -Iwiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/firmware_upgrade \
 -Iwiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/inc \
 -Iwiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/icmp \
 -Iwiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/inc/mqtt/inc \
 -Iwiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/hardware_drivers/led/inc \
 -Iwiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/hal/inc \
 -Iwiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/socket/inc \
 -Iwiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/inc \
 -Iwiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/inc \
 -Iwiseconnect3_sdk_3.5.2/components/sli_wifi_command_engine/inc \
 -Iwiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/inc \
 -Iwiseconnect3_sdk_3.5.2/resources/defaults \
 -Iwiseconnect3_sdk_3.5.2/resources/certificates \
 -Iwiseconnect3_sdk_3.5.2/resources/html \
 -Iwiseconnect3_sdk_3.5.2/resources/other \
 -Iwiseconnect3_sdk_3.5.2/components/common/inc \
 -I$(COPIED_SDK_PATH)/platform/common/inc \
 -I$(COPIED_SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(COPIED_SDK_PATH)/platform/CMSIS/RTOS2/Include \
 -I$(COPIED_SDK_PATH)/platform/emlib/inc \
 -I$(COPIED_SDK_PATH)/util/third_party/freertos/kernel/include \
 -I$(COPIED_SDK_PATH)/util/third_party/freertos/cmsis/Include \
 -I$(COPIED_SDK_PATH)/util/third_party/freertos/kernel/portable/GCC/ARM_CM4F \
 -I$(COPIED_SDK_PATH)/platform/service/mem_pool/inc \
 -I$(COPIED_SDK_PATH)/platform/service/sl_main/inc \
 -I$(COPIED_SDK_PATH)/platform/service/sl_main/src

GROUP_START =-Wl,--start-group
GROUP_END =-Wl,--end-group

PROJECT_LIBS = \
 -lgcc \
 -lnosys \
 -lc \
 -lm

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

LIB_FILES += $(filter %.a, $(PROJECT_LIBS))

C_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -std=c18 \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -g \
 -Wall -Werror \
 -Wno-error=deprecated-declarations \
 -Wall -Werror -Wno-error=deprecated-declarations \
 -mcpu=cortex-m4 \
 -fno-lto \
 --specs=nano.specs

CXX_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -std=c++17 \
 -fno-rtti \
 -fno-exceptions \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -g \
 -Wall -Werror \
 -Wno-error=deprecated-declarations \
 -Wall -Werror -Wno-error=deprecated-declarations \
 -mcpu=cortex-m4 \
 -fno-lto \
 --specs=nano.specs

ASM_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -x assembler-with-cpp

LD_FLAGS += \
 -mcpu=cortex-m4 \
 -mthumb \
 -mfpu=fpv4-sp-d16 \
 -mfloat-abi=softfp \
 -T"autogen/linkerfile_SoC.ld" \
 --specs=nano.specs \
 -Xlinker -Map=$(OUTPUT_DIR)/$(PROJECTNAME).map \
 -u _printf_float \
 -Wl,--wrap=main \
 -fno-lto \
 -Wl,--gc-sections


####################################################################
# Pre/Post Build Rules                                             #
####################################################################
pre-build:
	# No pre-build defined

post-build: $(OUTPUT_DIR)/$(PROJECTNAME).out
ifeq ($(POST_BUILD_EXE),)
		$(error POST_BUILD_EXE is not defined. Post-Build cannot run. Please set the STUDIO_ADAPTER_PACK_PATH to the post-build tool when generating or override the variable for this makefile)
endif
	@$(POSIX_TOOL_PATH)echo 'Running Project Post-Build'
	$(ECHO) @"$(POST_BUILD_EXE)" postbuild "./wifi_http_otaf_soc_2708A.slpb" --parameter build_dir:"$(OUTPUT_DIR)"

####################################################################
# SDK Build Rules                                                  #
####################################################################
$(OUTPUT_DIR)/sdk/platform/CMSIS/RTOS2/Source/os_systick.o: $(COPIED_SDK_PATH)/platform/CMSIS/RTOS2/Source/os_systick.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/CMSIS/RTOS2/Source/os_systick.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/CMSIS/RTOS2/Source/os_systick.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/CMSIS/RTOS2/Source/os_systick.d
OBJS += $(OUTPUT_DIR)/sdk/platform/CMSIS/RTOS2/Source/os_systick.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o: $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_cmsis_os2_common.o: $(COPIED_SDK_PATH)/platform/common/src/sl_cmsis_os2_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_cmsis_os2_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_cmsis_os2_common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_cmsis_os2_common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_cmsis_os2_common.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_core_cortexm.o: $(COPIED_SDK_PATH)/platform/common/src/sl_core_cortexm.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_core_cortexm.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_core_cortexm.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_core_cortexm.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_core_cortexm.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o: $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_slist.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o: $(COPIED_SDK_PATH)/platform/common/src/sl_string.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_string.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_string.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_syscalls.o: $(COPIED_SDK_PATH)/platform/common/src/sl_syscalls.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sl_syscalls.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sl_syscalls.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_syscalls.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_syscalls.o

$(OUTPUT_DIR)/sdk/platform/common/src/sli_cmsis_os2_ext_task_register.o: $(COPIED_SDK_PATH)/platform/common/src/sli_cmsis_os2_ext_task_register.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/common/src/sli_cmsis_os2_ext_task_register.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/common/src/sli_cmsis_os2_ext_task_register.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sli_cmsis_os2_ext_task_register.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sli_cmsis_os2_ext_task_register.o

$(OUTPUT_DIR)/sdk/platform/service/mem_pool/src/sl_mem_pool.o: $(COPIED_SDK_PATH)/platform/service/mem_pool/src/sl_mem_pool.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/mem_pool/src/sl_mem_pool.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/mem_pool/src/sl_mem_pool.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/mem_pool/src/sl_mem_pool.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/mem_pool/src/sl_mem_pool.o

$(OUTPUT_DIR)/sdk/platform/service/sl_main/src/rtos/main_retarget.o: $(COPIED_SDK_PATH)/platform/service/sl_main/src/rtos/main_retarget.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/sl_main/src/rtos/main_retarget.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/sl_main/src/rtos/main_retarget.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sl_main/src/rtos/main_retarget.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sl_main/src/rtos/main_retarget.o

$(OUTPUT_DIR)/sdk/platform/service/sl_main/src/sl_main_init.o: $(COPIED_SDK_PATH)/platform/service/sl_main/src/sl_main_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/sl_main/src/sl_main_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/sl_main/src/sl_main_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sl_main/src/sl_main_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sl_main/src/sl_main_init.o

$(OUTPUT_DIR)/sdk/platform/service/sl_main/src/sl_main_init_memory.o: $(COPIED_SDK_PATH)/platform/service/sl_main/src/sl_main_init_memory.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/sl_main/src/sl_main_init_memory.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/sl_main/src/sl_main_init_memory.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sl_main/src/sl_main_init_memory.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sl_main/src/sl_main_init_memory.o

$(OUTPUT_DIR)/sdk/platform/service/sl_main/src/sl_main_kernel.o: $(COPIED_SDK_PATH)/platform/service/sl_main/src/sl_main_kernel.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/platform/service/sl_main/src/sl_main_kernel.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/platform/service/sl_main/src/sl_main_kernel.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sl_main/src/sl_main_kernel.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sl_main/src/sl_main_kernel.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/cmsis/Source/cmsis_os2.o: $(COPIED_SDK_PATH)/util/third_party/freertos/cmsis/Source/cmsis_os2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/freertos/cmsis/Source/cmsis_os2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/freertos/cmsis/Source/cmsis_os2.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/cmsis/Source/cmsis_os2.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/cmsis/Source/cmsis_os2.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/croutine.o: $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/croutine.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/croutine.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/croutine.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/croutine.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/croutine.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/event_groups.o: $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/event_groups.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/event_groups.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/event_groups.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/event_groups.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/event_groups.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/list.o: $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/list.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/list.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/list.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/list.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/list.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/portable/GCC/ARM_CM4F/port.o: $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/portable/GCC/ARM_CM4F/port.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/portable/GCC/ARM_CM4F/port.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/portable/GCC/ARM_CM4F/port.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/portable/GCC/ARM_CM4F/port.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/portable/GCC/ARM_CM4F/port.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/portable/MemMang/heap_4.o: $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/portable/MemMang/heap_4.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/portable/MemMang/heap_4.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/portable/MemMang/heap_4.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/portable/MemMang/heap_4.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/portable/MemMang/heap_4.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/queue.o: $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/queue.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/queue.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/queue.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/queue.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/queue.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/stream_buffer.o: $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/stream_buffer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/stream_buffer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/stream_buffer.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/stream_buffer.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/stream_buffer.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/tasks.o: $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/tasks.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/tasks.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/tasks.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/tasks.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/tasks.o

$(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/timers.o: $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/timers.c
	@$(POSIX_TOOL_PATH)echo 'Building $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/timers.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(COPIED_SDK_PATH)/util/third_party/freertos/kernel/timers.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/timers.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/freertos/kernel/timers.o

$(OUTPUT_DIR)/project/app.o: app.c
	@$(POSIX_TOOL_PATH)echo 'Building app.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ app.c
CDEPS += $(OUTPUT_DIR)/project/app.d
OBJS += $(OUTPUT_DIR)/project/app.o

$(OUTPUT_DIR)/project/autogen/sl_event_handler.o: autogen/sl_event_handler.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_event_handler.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_event_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.o

$(OUTPUT_DIR)/project/autogen/sl_si91x_led_instances.o: autogen/sl_si91x_led_instances.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_si91x_led_instances.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_si91x_led_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_si91x_led_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_si91x_led_instances.o

$(OUTPUT_DIR)/project/main.o: main.c
	@$(POSIX_TOOL_PATH)echo 'Building main.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ main.c
CDEPS += $(OUTPUT_DIR)/project/main.d
OBJS += $(OUTPUT_DIR)/project/main.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/board/silabs/src/rsi_board.o: wiseconnect3_sdk_3.5.2/components/board/silabs/src/rsi_board.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/board/silabs/src/rsi_board.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/board/silabs/src/rsi_board.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/board/silabs/src/rsi_board.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/board/silabs/src/rsi_board.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/common/src/sl_utility.o: wiseconnect3_sdk_3.5.2/components/common/src/sl_utility.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/common/src/sl_utility.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/common/src/sl_utility.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/common/src/sl_utility.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/common/src/sl_utility.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/iPMU_prog/iPMU_dotc/ipmu_apis.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/iPMU_prog/iPMU_dotc/ipmu_apis.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/iPMU_prog/iPMU_dotc/ipmu_apis.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/iPMU_prog/iPMU_dotc/ipmu_apis.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/iPMU_prog/iPMU_dotc/ipmu_apis.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/iPMU_prog/iPMU_dotc/ipmu_apis.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/iPMU_prog/iPMU_dotc/rsi_system_config_917.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/iPMU_prog/iPMU_dotc/rsi_system_config_917.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/iPMU_prog/iPMU_dotc/rsi_system_config_917.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/iPMU_prog/iPMU_dotc/rsi_system_config_917.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/iPMU_prog/iPMU_dotc/rsi_system_config_917.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/iPMU_prog/iPMU_dotc/rsi_system_config_917.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/rsi_deepsleep_soc.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/rsi_deepsleep_soc.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/rsi_deepsleep_soc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/rsi_deepsleep_soc.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/rsi_deepsleep_soc.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/rsi_deepsleep_soc.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/rsi_ps_ram_func.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/rsi_ps_ram_func.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/rsi_ps_ram_func.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/rsi_ps_ram_func.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/rsi_ps_ram_func.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/rsi_ps_ram_func.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/startup_si91x.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/startup_si91x.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/startup_si91x.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/startup_si91x.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/startup_si91x.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/startup_si91x.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/system_si91x.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/system_si91x.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/system_si91x.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/system_si91x.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/system_si91x.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/system_si91x.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/malloc_thread_safety.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/malloc_thread_safety.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/malloc_thread_safety.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/malloc_thread_safety.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/malloc_thread_safety.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/malloc_thread_safety.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/rsi_debug.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/rsi_debug.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/rsi_debug.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/rsi_debug.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/rsi_debug.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/rsi_debug.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/sl_si91x_stack_object_declare.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/sl_si91x_stack_object_declare.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/sl_si91x_stack_object_declare.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/sl_si91x_stack_object_declare.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/sl_si91x_stack_object_declare.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/sl_si91x_stack_object_declare.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/syscalls.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/syscalls.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/syscalls.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/syscalls.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/syscalls.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/syscalls.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/config/src/rsi_nvic_priorities_config.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/config/src/rsi_nvic_priorities_config.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/config/src/rsi_nvic_priorities_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/config/src/rsi_nvic_priorities_config.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/config/src/rsi_nvic_priorities_config.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/config/src/rsi_nvic_priorities_config.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/UDMA.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/UDMA.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/UDMA.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/UDMA.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/UDMA.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/UDMA.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/USART.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/USART.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/USART.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/USART.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/USART.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/USART.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/hardware_drivers/led/src/sl_si91x_led.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/hardware_drivers/led/src/sl_si91x_led.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/hardware_drivers/led/src/sl_si91x_led.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/hardware_drivers/led/src/sl_si91x_led.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/hardware_drivers/led/src/sl_si91x_led.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/hardware_drivers/led/src/sl_si91x_led.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/aux_reference_volt_config.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/aux_reference_volt_config.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/aux_reference_volt_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/aux_reference_volt_config.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/aux_reference_volt_config.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/aux_reference_volt_config.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/clock_update.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/clock_update.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/clock_update.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/clock_update.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/clock_update.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/clock_update.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_adc.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_adc.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_adc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_adc.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_adc.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_adc.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_crc.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_crc.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_crc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_crc.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_crc.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_crc.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_dac.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_dac.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_dac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_dac.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_dac.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_dac.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_egpio.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_egpio.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_egpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_egpio.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_egpio.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_egpio.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_opamp.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_opamp.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_opamp.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_opamp.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_opamp.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_opamp.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_udma.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_udma.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_udma.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_udma.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_udma.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_udma.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_udma_wrapper.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_udma_wrapper.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_udma_wrapper.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_udma_wrapper.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_udma_wrapper.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_udma_wrapper.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_usart.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_usart.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_usart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_usart.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_usart.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_usart.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/service/clock_manager/src/sl_si91x_clock_manager.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/service/clock_manager/src/sl_si91x_clock_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/service/clock_manager/src/sl_si91x_clock_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/service/clock_manager/src/sl_si91x_clock_manager.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/service/clock_manager/src/sl_si91x_clock_manager.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/service/clock_manager/src/sl_si91x_clock_manager.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_bod.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_bod.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_bod.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_bod.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_bod.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_bod.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_ipmu.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_ipmu.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_ipmu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_ipmu.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_ipmu.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_ipmu.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_pll.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_pll.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_pll.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_pll.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_pll.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_pll.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_power_save.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_power_save.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_power_save.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_power_save.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_power_save.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_power_save.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_rtc.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_rtc.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_rtc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_rtc.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_rtc.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_rtc.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_temp_sensor.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_temp_sensor.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_temp_sensor.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_temp_sensor.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_temp_sensor.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_temp_sensor.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_time_period.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_time_period.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_time_period.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_time_period.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_time_period.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_time_period.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_ulpss_clk.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_ulpss_clk.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_ulpss_clk.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_ulpss_clk.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_ulpss_clk.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_ulpss_clk.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_wwdt.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_wwdt.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_wwdt.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_wwdt.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_wwdt.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_wwdt.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_adc.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_adc.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_adc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_adc.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_adc.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_adc.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_bjt_temperature_sensor.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_bjt_temperature_sensor.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_bjt_temperature_sensor.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_bjt_temperature_sensor.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_bjt_temperature_sensor.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_bjt_temperature_sensor.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_dma.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_dma.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_dma.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_dma.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_dma.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_dma.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_driver_gpio.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_driver_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_driver_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_driver_gpio.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_driver_gpio.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_driver_gpio.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_peripheral_drivers/src/sl_si91x_peripheral_gpio.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_peripheral_drivers/src/sl_si91x_peripheral_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_peripheral_drivers/src/sl_si91x_peripheral_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_peripheral_drivers/src/sl_si91x_peripheral_gpio.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_peripheral_drivers/src/sl_si91x_peripheral_gpio.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_peripheral_drivers/src/sl_si91x_peripheral_gpio.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/hal/src/sl_si91x_hal_soc_soft_reset.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/hal/src/sl_si91x_hal_soc_soft_reset.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/hal/src/sl_si91x_hal_soc_soft_reset.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/hal/src/sl_si91x_hal_soc_soft_reset.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/hal/src/sl_si91x_hal_soc_soft_reset.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/hal/src/sl_si91x_hal_soc_soft_reset.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/rsi_hal_mcu_m4_ram.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/rsi_hal_mcu_m4_ram.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/rsi_hal_mcu_m4_ram.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/rsi_hal_mcu_m4_ram.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/rsi_hal_mcu_m4_ram.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/rsi_hal_mcu_m4_ram.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/rsi_hal_mcu_m4_rom.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/rsi_hal_mcu_m4_rom.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/rsi_hal_mcu_m4_rom.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/rsi_hal_mcu_m4_rom.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/rsi_hal_mcu_m4_rom.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/rsi_hal_mcu_m4_rom.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_platform.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_platform.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_platform.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_platform.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_platform.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_platform.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_platform_wireless.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_platform_wireless.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_platform_wireless.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_platform_wireless.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_platform_wireless.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_platform_wireless.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_si91x_bus.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_si91x_bus.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_si91x_bus.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_si91x_bus.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_si91x_bus.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_si91x_bus.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_si91x_timer.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_si91x_timer.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_si91x_timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_si91x_timer.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_si91x_timer.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_si91x_timer.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sli_siwx917_soc.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sli_siwx917_soc.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sli_siwx917_soc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sli_siwx917_soc.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sli_siwx917_soc.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sli_siwx917_soc.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/errno/src/sl_si91x_errno.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/errno/src/sl_si91x_errno.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/errno/src/sl_si91x_errno.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/errno/src/sl_si91x_errno.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/errno/src/sl_si91x_errno.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/errno/src/sl_si91x_errno.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/firmware_upgrade/firmware_upgradation.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/firmware_upgrade/firmware_upgradation.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/firmware_upgrade/firmware_upgradation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/firmware_upgrade/firmware_upgradation.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/firmware_upgrade/firmware_upgradation.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/firmware_upgrade/firmware_upgradation.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/host_mcu/si91x/siwx917_soc_ncp_host.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/host_mcu/si91x/siwx917_soc_ncp_host.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/host_mcu/si91x/siwx917_soc_ncp_host.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/host_mcu/si91x/siwx917_soc_ncp_host.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/host_mcu/si91x/siwx917_soc_ncp_host.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/host_mcu/si91x/siwx917_soc_ncp_host.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/icmp/sl_net_ping.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/icmp/sl_net_ping.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/icmp/sl_net_ping.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/icmp/sl_net_ping.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/icmp/sl_net_ping.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/icmp/sl_net_ping.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/memory/mem_pool_buffer_quota.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/memory/mem_pool_buffer_quota.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/memory/mem_pool_buffer_quota.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/memory/mem_pool_buffer_quota.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/memory/mem_pool_buffer_quota.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/memory/mem_pool_buffer_quota.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_rsi_utility.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_rsi_utility.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_rsi_utility.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_rsi_utility.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_rsi_utility.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_rsi_utility.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_si91x.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_si91x.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_si91x.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_si91x.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_si91x.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_si91x.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_si91x_callback_framework.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_si91x_callback_framework.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_si91x_callback_framework.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_si91x_callback_framework.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_si91x_callback_framework.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_si91x_callback_framework.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_si91x_integration_handler.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_si91x_integration_handler.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_si91x_integration_handler.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_si91x_integration_handler.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_si91x_integration_handler.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_si91x_integration_handler.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_si91x_net_internal_stack.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_si91x_net_internal_stack.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_si91x_net_internal_stack.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_si91x_net_internal_stack.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_si91x_net_internal_stack.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_si91x_net_internal_stack.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sli_net_si91x_utility.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sli_net_si91x_utility.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sli_net_si91x_utility.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sli_net_si91x_utility.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sli_net_si91x_utility.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sli_net_si91x_utility.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/socket/src/sl_si91x_socket_utility.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/socket/src/sl_si91x_socket_utility.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/socket/src/sl_si91x_socket_utility.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/socket/src/sl_si91x_socket_utility.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/socket/src/sl_si91x_socket_utility.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/socket/src/sl_si91x_socket_utility.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/src/sl_rsi_utility.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/src/sl_rsi_utility.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/src/sl_rsi_utility.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/src/sl_rsi_utility.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/src/sl_rsi_utility.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/src/sl_rsi_utility.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/src/sl_si91x_driver.o: wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/src/sl_si91x_driver.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/src/sl_si91x_driver.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/src/sl_si91x_driver.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/src/sl_si91x_driver.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/src/sl_si91x_driver.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/protocol/wifi/si91x/sl_wifi.o: wiseconnect3_sdk_3.5.2/components/protocol/wifi/si91x/sl_wifi.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/protocol/wifi/si91x/sl_wifi.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/protocol/wifi/si91x/sl_wifi.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/protocol/wifi/si91x/sl_wifi.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/protocol/wifi/si91x/sl_wifi.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/protocol/wifi/src/sl_wifi_basic_credentials.o: wiseconnect3_sdk_3.5.2/components/protocol/wifi/src/sl_wifi_basic_credentials.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/protocol/wifi/src/sl_wifi_basic_credentials.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/protocol/wifi/src/sl_wifi_basic_credentials.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/protocol/wifi/src/sl_wifi_basic_credentials.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/protocol/wifi/src/sl_wifi_basic_credentials.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/protocol/wifi/src/sl_wifi_callback_framework.o: wiseconnect3_sdk_3.5.2/components/protocol/wifi/src/sl_wifi_callback_framework.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/protocol/wifi/src/sl_wifi_callback_framework.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/protocol/wifi/src/sl_wifi_callback_framework.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/protocol/wifi/src/sl_wifi_callback_framework.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/protocol/wifi/src/sl_wifi_callback_framework.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/service/mqtt/si91x/sl_mqtt_client.o: wiseconnect3_sdk_3.5.2/components/service/mqtt/si91x/sl_mqtt_client.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/service/mqtt/si91x/sl_mqtt_client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/service/mqtt/si91x/sl_mqtt_client.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/service/mqtt/si91x/sl_mqtt_client.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/service/mqtt/si91x/sl_mqtt_client.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net.o: wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net_basic_certificate_store.o: wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net_basic_certificate_store.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net_basic_certificate_store.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net_basic_certificate_store.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net_basic_certificate_store.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net_basic_certificate_store.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net_basic_profiles.o: wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net_basic_profiles.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net_basic_profiles.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net_basic_profiles.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net_basic_profiles.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net_basic_profiles.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net_credentials.o: wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net_credentials.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net_credentials.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net_credentials.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net_credentials.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net_credentials.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sli_net_common_utility.o: wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sli_net_common_utility.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sli_net_common_utility.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sli_net_common_utility.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sli_net_common_utility.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sli_net_common_utility.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/sli_si91x_wifi_event_handler/src/sli_si91x_wifi_event_handler.o: wiseconnect3_sdk_3.5.2/components/sli_si91x_wifi_event_handler/src/sli_si91x_wifi_event_handler.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/sli_si91x_wifi_event_handler/src/sli_si91x_wifi_event_handler.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/sli_si91x_wifi_event_handler/src/sli_si91x_wifi_event_handler.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/sli_si91x_wifi_event_handler/src/sli_si91x_wifi_event_handler.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/sli_si91x_wifi_event_handler/src/sli_si91x_wifi_event_handler.o

$(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/sli_wifi_command_engine/src/sli_wifi_command_engine.o: wiseconnect3_sdk_3.5.2/components/sli_wifi_command_engine/src/sli_wifi_command_engine.c
	@$(POSIX_TOOL_PATH)echo 'Building wiseconnect3_sdk_3.5.2/components/sli_wifi_command_engine/src/sli_wifi_command_engine.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ wiseconnect3_sdk_3.5.2/components/sli_wifi_command_engine/src/sli_wifi_command_engine.c
CDEPS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/sli_wifi_command_engine/src/sli_wifi_command_engine.d
OBJS += $(OUTPUT_DIR)/project/wiseconnect3_sdk_3.5.2/components/sli_wifi_command_engine/src/sli_wifi_command_engine.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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=END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA
####################################################################
# Automatically-generated file. Do not edit!                       #
####################################################################

set(SDK_PATH "/Users/dingdang/.silabs/slt/installs/conan/p/simplfa179856e7001/p")
set(COPIED_SDK_PATH "simplicity_sdk_2025.6.3")
set(PKG_PATH "/Users/dingdang/.silabs/slt/installs")

add_library(slc OBJECT
    "../${COPIED_SDK_PATH}/platform/CMSIS/RTOS2/Source/os_systick.c"
    "../${COPIED_SDK_PATH}/platform/common/src/sl_assert.c"
    "../${COPIED_SDK_PATH}/platform/common/src/sl_cmsis_os2_common.c"
    "../${COPIED_SDK_PATH}/platform/common/src/sl_core_cortexm.c"
    "../${COPIED_SDK_PATH}/platform/common/src/sl_slist.c"
    "../${COPIED_SDK_PATH}/platform/common/src/sl_string.c"
    "../${COPIED_SDK_PATH}/platform/common/src/sl_syscalls.c"
    "../${COPIED_SDK_PATH}/platform/common/src/sli_cmsis_os2_ext_task_register.c"
    "../${COPIED_SDK_PATH}/platform/service/mem_pool/src/sl_mem_pool.c"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/src/rtos/main_retarget.c"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/src/sl_main_init.c"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/src/sl_main_init_memory.c"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/src/sl_main_kernel.c"
    "../${COPIED_SDK_PATH}/util/third_party/freertos/cmsis/Source/cmsis_os2.c"
    "../${COPIED_SDK_PATH}/util/third_party/freertos/kernel/croutine.c"
    "../${COPIED_SDK_PATH}/util/third_party/freertos/kernel/event_groups.c"
    "../${COPIED_SDK_PATH}/util/third_party/freertos/kernel/list.c"
    "../${COPIED_SDK_PATH}/util/third_party/freertos/kernel/portable/GCC/ARM_CM4F/port.c"
    "../${COPIED_SDK_PATH}/util/third_party/freertos/kernel/portable/MemMang/heap_4.c"
    "../${COPIED_SDK_PATH}/util/third_party/freertos/kernel/queue.c"
    "../${COPIED_SDK_PATH}/util/third_party/freertos/kernel/stream_buffer.c"
    "../${COPIED_SDK_PATH}/util/third_party/freertos/kernel/tasks.c"
    "../${COPIED_SDK_PATH}/util/third_party/freertos/kernel/timers.c"
    "../app.c"
    "../autogen/sl_event_handler.c"
    "../main.c"
    "../wiseconnect3_sdk_3.5.2/components/common/src/sl_utility.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/iPMU_prog/iPMU_dotc/ipmu_apis.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/iPMU_prog/iPMU_dotc/rsi_system_config_917.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/rsi_deepsleep_soc.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/rsi_ps_ram_func.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/startup_si91x.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/system_si91x.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/malloc_thread_safety.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/rsi_debug.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/sl_si91x_stack_object_declare.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/syscalls.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/config/src/rsi_nvic_priorities_config.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/UDMA.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/USART.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/aux_reference_volt_config.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/clock_update.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_adc.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_crc.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_dac.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_egpio.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_opamp.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_udma.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_udma_wrapper.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_usart.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/service/clock_manager/src/sl_si91x_clock_manager.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_bod.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_ipmu.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_pll.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_power_save.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_rtc.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_temp_sensor.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_time_period.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_ulpss_clk.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_wwdt.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_adc.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_bjt_temperature_sensor.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_dma.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/hal/src/sl_si91x_hal_soc_soft_reset.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/rsi_hal_mcu_m4_ram.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/rsi_hal_mcu_m4_rom.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_platform.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_platform_wireless.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_si91x_bus.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sl_si91x_timer.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/src/sli_siwx917_soc.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/errno/src/sl_si91x_errno.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/firmware_upgrade/firmware_upgradation.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/host_mcu/si91x/siwx917_soc_ncp_host.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/icmp/sl_net_ping.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/memory/mem_pool_buffer_quota.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_rsi_utility.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_si91x.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_si91x_callback_framework.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_net_si91x_integration_handler.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sl_si91x_net_internal_stack.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/src/sli_net_si91x_utility.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/socket/src/sl_si91x_socket_utility.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/src/sl_rsi_utility.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/src/sl_si91x_driver.c"
    "../wiseconnect3_sdk_3.5.2/components/protocol/wifi/si91x/sl_wifi.c"
    "../wiseconnect3_sdk_3.5.2/components/protocol/wifi/src/sl_wifi_basic_credentials.c"
    "../wiseconnect3_sdk_3.5.2/components/protocol/wifi/src/sl_wifi_callback_framework.c"
    "../wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net.c"
    "../wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net_basic_certificate_store.c"
    "../wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net_basic_profiles.c"
    "../wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sl_net_credentials.c"
    "../wiseconnect3_sdk_3.5.2/components/service/network_manager/src/sli_net_common_utility.c"
    "../wiseconnect3_sdk_3.5.2/components/sli_si91x_wifi_event_handler/src/sli_si91x_wifi_event_handler.c"
    "../wiseconnect3_sdk_3.5.2/components/sli_wifi_command_engine/src/sli_wifi_command_engine.c"
)

target_include_directories(slc PUBLIC
   "../config"
   "../autogen"
   "../."
   "../wiseconnect3_sdk_3.5.2/components/protocol/wifi/inc"
   "../wiseconnect3_sdk_3.5.2/components/service/bsd_socket/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/CMSIS/Driver/Include"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/inc"
   "../wiseconnect3_sdk_3.5.2/components/service/network_manager/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/rom_driver/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/config"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/service/clock_manager/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/errno/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/firmware_upgrade"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/icmp"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/hal/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/socket/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/inc/mqtt/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/ahb_interface/inc"
   "../wiseconnect3_sdk_3.5.2/components/sli_wifi_command_engine/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/inc"
   "../wiseconnect3_sdk_3.5.2/resources/defaults"
   "../wiseconnect3_sdk_3.5.2/resources/certificates"
   "../wiseconnect3_sdk_3.5.2/resources/html"
   "../wiseconnect3_sdk_3.5.2/resources/other"
   "../wiseconnect3_sdk_3.5.2/components/common/inc"
    "../${COPIED_SDK_PATH}/platform/common/inc"
    "../${COPIED_SDK_PATH}/platform/CMSIS/Core/Include"
    "../${COPIED_SDK_PATH}/platform/CMSIS/RTOS2/Include"
    "../${COPIED_SDK_PATH}/platform/emlib/inc"
    "../${COPIED_SDK_PATH}/util/third_party/freertos/kernel/include"
    "../${COPIED_SDK_PATH}/util/third_party/freertos/cmsis/Include"
    "../${COPIED_SDK_PATH}/util/third_party/freertos/kernel/portable/GCC/ARM_CM4F"
    "../${COPIED_SDK_PATH}/platform/service/mem_pool/inc"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/inc"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/src"
)

target_compile_definitions(slc PUBLIC
    "AWS_ENABLE=1"
    "SLI_SI91X_MCU_FW_UPGRADE_OTA_DUAL_FLASH=1"
    "SL_SI91X_PRINT_DBG_LOG=1"
    "SIWG917Y111MGABA=1"
    "SLI_SI917=1"
    "SLI_SI917B0=1"
    "SLI_SI91X_MCU_CONFIG_RADIO_BOARD_BASE_VER=1"
    "SLI_SI91X_MCU_CONFIG_RADIO_BOARD_VER2=1"
    "SLI_SI91X_MCU_ENABLE_FLASH_BASED_EXECUTION=1"
    "SLI_SI91X_MCU_EXTERNAL_LDO_FOR_PSRAM=1"
    "SL_SI91X_ACX_MODULE=1"
    "SRAM_BASE=0x0cUL"
    "SRAM_SIZE=0x2fc00UL"
    "__FREERTOS_OS_WISECONNECT=1"
    "SL_NET_COMPONENT_INCLUDED=1"
    "__STATIC_INLINE=static inline"
    "CLOCK_ROMDRIVER_PRESENT=1"
    "ULPSS_CLOCK_ROMDRIVER_PRESENT=1"
    "SLI_CODE_CLASSIFICATION_DISABLE=1"
    "SLI_SI91X_MCU_ENABLE_IPMU_APIS=1"
    "SL_SI91X_SOC_MODE=1"
    "CRC_ROMDRIVER_PRESENT=1"
    "SI91X_32kHz_EXTERNAL_OSCILLATOR=1"
    "DEBUG_ENABLE=1"
    "DEBUG_UART=1"
    "ENABLE_DEBUG_MODULE=1"
    "SL_SI91X_SI917_RAM_MEM_CONFIG=1"
    "UDMA_ROMDRIVER_PRESENT=1"
    "SLI_SI91X_OFFLOAD_NETWORK_STACK=1"
    "SI917=1"
    "SLI_SI91X_ENABLE_OS=1"
    "SLI_SI91X_MCU_INTERFACE=1"
    "TA_DEEP_SLEEP_COMMON_FLASH=1"
    "SLI_SI91X_SOCKETS=1"
    "PLL_ROMDRIVER_PRESENT=1"
    "SL_WIFI_COMPONENT_INCLUDED=1"
    "configNUM_SDK_THREAD_LOCAL_STORAGE_POINTERS=2"
    "SL_COMPONENT_CATALOG_PRESENT=1"
    "SL_CODE_COMPONENT_FREERTOS_KERNEL=freertos_kernel"
    "SL_CODE_COMPONENT_CORE=core"
)

target_link_libraries(slc PUBLIC
    "-Wl,--start-group"
    "gcc"
    "nosys"
    "c"
    "m"
    "-Wl,--end-group"
)
target_compile_options(slc PUBLIC
    $<$<COMPILE_LANGUAGE:C>:-mcpu=cortex-m4>
    $<$<COMPILE_LANGUAGE:C>:-mthumb>
    $<$<COMPILE_LANGUAGE:C>:-mfpu=fpv4-sp-d16>
    $<$<COMPILE_LANGUAGE:C>:-mfloat-abi=softfp>
    $<$<COMPILE_LANGUAGE:C>:-Wall>
    $<$<COMPILE_LANGUAGE:C>:-Wextra>
    $<$<COMPILE_LANGUAGE:C>:-Os>
    $<$<COMPILE_LANGUAGE:C>:-fdata-sections>
    $<$<COMPILE_LANGUAGE:C>:-ffunction-sections>
    $<$<COMPILE_LANGUAGE:C>:-fomit-frame-pointer>
    $<$<COMPILE_LANGUAGE:C>:-g>
    "$<$<COMPILE_LANGUAGE:C>:SHELL:-Wall -Werror>"
    $<$<COMPILE_LANGUAGE:C>:-Wno-error=deprecated-declarations>
    "$<$<COMPILE_LANGUAGE:C>:SHELL:-Wall -Werror -Wno-error=deprecated-declarations>"
    $<$<COMPILE_LANGUAGE:C>:-mcpu=cortex-m4>
    $<$<COMPILE_LANGUAGE:C>:-fno-lto>
    $<$<COMPILE_LANGUAGE:C>:--specs=nano.specs>
    $<$<COMPILE_LANGUAGE:CXX>:-mcpu=cortex-m4>
    $<$<COMPILE_LANGUAGE:CXX>:-mthumb>
    $<$<COMPILE_LANGUAGE:CXX>:-mfpu=fpv4-sp-d16>
    $<$<COMPILE_LANGUAGE:CXX>:-mfloat-abi=softfp>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-rtti>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>
    $<$<COMPILE_LANGUAGE:CXX>:-Wall>
    $<$<COMPILE_LANGUAGE:CXX>:-Wextra>
    $<$<COMPILE_LANGUAGE:CXX>:-Os>
    $<$<COMPILE_LANGUAGE:CXX>:-fdata-sections>
    $<$<COMPILE_LANGUAGE:CXX>:-ffunction-sections>
    $<$<COMPILE_LANGUAGE:CXX>:-fomit-frame-pointer>
    $<$<COMPILE_LANGUAGE:CXX>:-g>
    "$<$<COMPILE_LANGUAGE:CXX>:SHELL:-Wall -Werror>"
    $<$<COMPILE_LANGUAGE:CXX>:-Wno-error=deprecated-declarations>
    "$<$<COMPILE_LANGUAGE:CXX>:SHELL:-Wall -Werror -Wno-error=deprecated-declarations>"
    $<$<COMPILE_LANGUAGE:CXX>:-mcpu=cortex-m4>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-lto>
    $<$<COMPILE_LANGUAGE:CXX>:--specs=nano.specs>
    $<$<COMPILE_LANGUAGE:ASM>:-mcpu=cortex-m4>
    $<$<COMPILE_LANGUAGE:ASM>:-mthumb>
    $<$<COMPILE_LANGUAGE:ASM>:-mfpu=fpv4-sp-d16>
    $<$<COMPILE_LANGUAGE:ASM>:-mfloat-abi=softfp>
    "$<$<COMPILE_LANGUAGE:ASM>:SHELL:-x assembler-with-cpp>"
)

set(post_build_command ${POST_BUILD_EXE} postbuild "./wifi_http_otaf_soc.slpb" --parameter build_dir:"$<TARGET_FILE_DIR:wifi_http_otaf_soc>")
set_property(TARGET slc PROPERTY C_STANDARD 17)
set_property(TARGET slc PROPERTY CXX_STANDARD 17)
set_property(TARGET slc PROPERTY CXX_EXTENSIONS OFF)

target_link_options(slc INTERFACE
    -mcpu=cortex-m4
    -mthumb
    -mfpu=fpv4-sp-d16
    -mfloat-abi=softfp
    -T${CMAKE_CURRENT_LIST_DIR}/../autogen/linkerfile_SoC.ld
    --specs=nano.specs
    "SHELL:-Xlinker -Map=$<TARGET_FILE_DIR:wifi_http_otaf_soc>/wifi_http_otaf_soc.map"
    "SHELL:-u _printf_float"
    -Wl,--wrap=main
    -fno-lto
    -Wl,--gc-sections
)

# BEGIN_SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
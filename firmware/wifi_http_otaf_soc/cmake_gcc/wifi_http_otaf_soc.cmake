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
    "../autogen/sl_si91x_led_instances.c"
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
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/hardware_drivers/led/src/sl_si91x_led.c"
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
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_driver_gpio.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_peripheral_drivers/src/sl_si91x_peripheral_gpio.c"
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
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_peripheral_drivers/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/errno/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/firmware_upgrade"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/icmp"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/hardware_drivers/led/inc"
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
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
    "../wiseconnect3_sdk_3.5.2/components/service/mqtt/si91x/sl_mqtt_client.c"
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
   "../wiseconnect3_sdk_3.5.2/components/service/mqtt/inc"
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
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/inc/mqtt/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/hardware_drivers/led/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/hal/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/socket/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/inc"
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
    "SLI_SI91X_EMBEDDED_MQTT_CLIENT=1"
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

# BEGIN_SIMPLICITY_STUDIO_METADATA=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=END_SIMPLICITY_STUDIO_METADATA
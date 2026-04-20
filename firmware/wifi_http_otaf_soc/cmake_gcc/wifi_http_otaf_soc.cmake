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
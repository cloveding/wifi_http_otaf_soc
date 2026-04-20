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
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_rtc.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_temp_sensor.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_time_period.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/src/rsi_ulpss_clk.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_adc.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_bjt_temperature_sensor.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_dma.c"
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
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/errno/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/firmware_upgrade"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/sl_net/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/icmp"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/wireless/inc/mqtt/inc"
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
    "SLI_SI91X_EMBEDDED_MQTT_CLIENT=1"
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

set(post_build_command ${POST_BUILD_EXE} postbuild "./wifi_embedded_mqtt_client_soc.slpb" --parameter build_dir:"$<TARGET_FILE_DIR:wifi_embedded_mqtt_client_soc>")
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
    "SHELL:-Xlinker -Map=$<TARGET_FILE_DIR:wifi_embedded_mqtt_client_soc>/wifi_embedded_mqtt_client_soc.map"
    "SHELL:-u _printf_float"
    -Wl,--wrap=main
    -fno-lto
    -Wl,--gc-sections
)

# BEGIN_SIMPLICITY_STUDIO_METADATA=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=END_SIMPLICITY_STUDIO_METADATA
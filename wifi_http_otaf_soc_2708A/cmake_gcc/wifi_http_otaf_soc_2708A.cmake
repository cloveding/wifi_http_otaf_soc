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
    "../${COPIED_SDK_PATH}/platform/service/iostream/src/sl_iostream.c"
    "../${COPIED_SDK_PATH}/platform/service/iostream/src/sl_iostream_retarget_stdio.c"
    "../${COPIED_SDK_PATH}/platform/service/mem_pool/src/sl_mem_pool.c"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/src/rtos/main_retarget.c"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/src/sl_main_init.c"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/src/sl_main_init_memory.c"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/src/sl_main_kernel.c"
    "../${COPIED_SDK_PATH}/platform/service/sleeptimer/src/sl_sleeptimer.c"
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
    "../autogen/sl_i2c_init.c"
    "../autogen/sl_iostream_handles.c"
    "../autogen/sl_iostream_init_si91x_uart.c"
    "../autogen/sl_si91x_led_instances.c"
    "../main.c"
    "../wiseconnect3_sdk_3.5.2/components/board/silabs/src/rsi_board.c"
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
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/config/src/rsi_nvic_priorities_config.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/GSPI.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/UDMA.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/USART.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/hardware_drivers/led/src/sl_si91x_led.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/aux_reference_volt_config.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/clock_update.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_adc.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_crc.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_dac.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_egpio.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_gspi.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_opamp.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_sysrtc.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_udma.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_udma_wrapper.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_usart.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/service/clock_manager/src/sl_si91x_clock_manager.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/service/iostream/src/sl_iostream_usart_si91x.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/service/sleeptimer/src/sl_sleeptimer_hal_si91x_sysrtc.c"
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
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_gspi.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_i2c.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_usart.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_peripheral_drivers/src/sl_si91x_peripheral_gpio.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_peripheral_drivers/src/sl_si91x_peripheral_i2c.c"
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
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/service/iostream/inc"
   "../wiseconnect3_sdk_3.5.2/components/service/mqtt/inc"
   "../wiseconnect3_sdk_3.5.2/components/service/network_manager/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/rom_driver/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/inc"
   "../wiseconnect3_sdk_3.5.2/components/board/silabs/inc"
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
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/service/sleeptimer/inc"
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
    "../${COPIED_SDK_PATH}/platform/service/iostream/inc"
    "../${COPIED_SDK_PATH}/platform/service/mem_pool/inc"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/inc"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/src"
    "../${COPIED_SDK_PATH}/platform/service/sleeptimer/inc"
)

target_compile_definitions(slc PUBLIC
    "AWS_ENABLE=1"
    "SLI_SI91X_MCU_FW_UPGRADE_OTA_DUAL_FLASH=1"
    "SL_SI91X_PRINT_DBG_LOG=1"
    "SIWG917Y111MGABA=1"
    "SLI_SI917=1"
    "SLI_SI917B0=1"
    "SLI_SI91X_MCU_ENABLE_FLASH_BASED_EXECUTION=1"
    "SLI_SI91X_MCU_EXTERNAL_LDO_FOR_PSRAM=1"
    "SL_SI91X_ACX_MODULE=1"
    "SI917Y_DEVKIT=1"
    "SLI_SI91X_MCU_COMMON_FLASH_MODE=1"
    "SLI_SI91X_MCU_CONFIG_RADIO_BOARD_BASE_VER=1"
    "SLI_SI91X_MCU_CONFIG_RADIO_BOARD_VER2=1"
    "SL_BOARD_NAME=\"BRD2708A\""
    "SL_BOARD_REV=\"A02\""
    "SLI_SI91X_MCU_ENABLE_RAM_BASED_EXECUTION=1"
    "__FREERTOS_OS_WISECONNECT=1"
    "SRAM_BASE=0x0cUL"
    "SRAM_SIZE=0x2fc00UL"
    "_SI91X_DEVICE=1"
    "SLI_SI91X_EMBEDDED_MQTT_CLIENT=1"
    "SL_NET_COMPONENT_INCLUDED=1"
    "__STATIC_INLINE=static inline"
    "CLOCK_ROMDRIVER_PRESENT=1"
    "ULPSS_CLOCK_ROMDRIVER_PRESENT=1"
    "SL_SI91X_BOARD_INIT=1"
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
    "GSPI_CONFIG=1"
    "GSPI_MULTI_SLAVE=1"
    "SL_SI91X_GSPI_DMA=1"
    "SL_SI91X_REQUIRES_INTF_PLL=1"
    "SL_SI91X_I2C_DMA=1"
    "SLI_SI91X_OFFLOAD_NETWORK_STACK=1"
    "SI917=1"
    "SLI_SI91X_ENABLE_OS=1"
    "SLI_SI91X_MCU_INTERFACE=1"
    "TA_DEEP_SLEEP_COMMON_FLASH=1"
    "SLI_SI91X_SOCKETS=1"
    "SL_SI91X_DMA=1"
    "SL_SI91X_USART_DMA=1"
    "UART_MODULE=1"
    "USART_MODULE=1"
    "IOSTREAM_USART=1"
    "SI91X_PLATFORM=1"
    "SI91X_SYSRTC_PRESENT=1"
    "SL_SLEEP_TIMER=1"
    "__WEAK=__attribute__((weak))"
    "PLL_ROMDRIVER_PRESENT=1"
    "SL_WIFI_COMPONENT_INCLUDED=1"
    "configNUM_SDK_THREAD_LOCAL_STORAGE_POINTERS=2"
    "SL_COMPONENT_CATALOG_PRESENT=1"
    "SL_CODE_COMPONENT_FREERTOS_KERNEL=freertos_kernel"
    "SL_CODE_COMPONENT_CORE=core"
    "SL_CODE_COMPONENT_SLEEPTIMER=sleeptimer"
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

set(post_build_command ${POST_BUILD_EXE} postbuild "./wifi_http_otaf_soc_2708A.slpb" --parameter build_dir:"$<TARGET_FILE_DIR:wifi_http_otaf_soc_2708A>")
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
    "SHELL:-Xlinker -Map=$<TARGET_FILE_DIR:wifi_http_otaf_soc_2708A>/wifi_http_otaf_soc_2708A.map"
    "SHELL:-u _printf_float"
    -Wl,--wrap=main
    -fno-lto
    -Wl,--gc-sections
)

# BEGIN_SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
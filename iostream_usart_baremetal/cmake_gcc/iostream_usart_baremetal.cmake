####################################################################
# Automatically-generated file. Do not edit!                       #
####################################################################

set(SDK_PATH "/Users/dingdang/.silabs/slt/installs/conan/p/simplfa179856e7001/p")
set(COPIED_SDK_PATH "simplicity_sdk_2025.6.3")
set(PKG_PATH "/Users/dingdang/.silabs/slt/installs")

add_library(slc OBJECT
    "../${COPIED_SDK_PATH}/platform/common/src/sl_assert.c"
    "../${COPIED_SDK_PATH}/platform/common/src/sl_core_cortexm.c"
    "../${COPIED_SDK_PATH}/platform/common/src/sl_slist.c"
    "../${COPIED_SDK_PATH}/platform/common/src/sl_stdio.c"
    "../${COPIED_SDK_PATH}/platform/common/src/sl_syscalls.c"
    "../${COPIED_SDK_PATH}/platform/service/iostream/src/sl_iostream.c"
    "../${COPIED_SDK_PATH}/platform/service/iostream/src/sl_iostream_retarget_stdio.c"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/src/sl_main_init.c"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/src/sl_main_init_memory.c"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/src/sl_main_process_action.c"
    "../app.c"
    "../app_iostream_usart.c"
    "../autogen/sl_event_handler.c"
    "../autogen/sl_iostream_handles.c"
    "../autogen/sl_iostream_init_si91x_uart.c"
    "../main.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/iPMU_prog/iPMU_dotc/ipmu_apis.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/iPMU_prog/iPMU_dotc/rsi_system_config_917.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/rsi_deepsleep_soc.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/rsi_ps_ram_func.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/startup_si91x.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/system_si91x.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/rsi_debug.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/sl_si91x_stack_object_declare.c"
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
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/service/iostream/src/sl_iostream_usart_si91x.c"
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
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_usart.c"
)

target_include_directories(slc PUBLIC
   "../config"
   "../autogen"
   "../."
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/CMSIS/Driver/Include"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/service/iostream/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/rom_driver/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/config"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/service/clock_manager/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/inc"
    "../${COPIED_SDK_PATH}/platform/common/inc"
    "../${COPIED_SDK_PATH}/platform/CMSIS/Core/Include"
    "../${COPIED_SDK_PATH}/platform/service/iostream/inc"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/inc"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/src"
)

target_compile_definitions(slc PUBLIC
    "IOSTREAM_SI91X_USART=1"
    "SLI_SI91X_MCU_CONFIG_RADIO_BOARD_BASE_VER=1"
    "USART_CONFIG=1"
    "SIWG917Y121MGABA=1"
    "SLI_SI917=1"
    "SLI_SI917B0=1"
    "SLI_SI91X_MCU_CONFIG_RADIO_BOARD_VER2=1"
    "SLI_SI91X_MCU_ENABLE_FLASH_BASED_EXECUTION=1"
    "SLI_SI91X_MCU_INTERNAL_LDO_FOR_PSRAM=1"
    "SL_SI91X_ACX_MODULE=1"
    "SRAM_BASE=0x0C000000UL"
    "SRAM_SIZE=0x00040000UL"
    "__FREERTOS_OS_WISECONNECT=1"
    "_SI91X_DEVICE=1"
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
    "__STATIC_INLINE=static inline"
    "SI917=1"
    "SLI_SI91X_MCU_INTERFACE=1"
    "TA_DEEP_SLEEP_COMMON_FLASH=1"
    "SL_SI91X_USART_DMA=1"
    "USART_MODULE=1"
    "IOSTREAM_USART=1"
    "PLL_ROMDRIVER_PRESENT=1"
    "SL_COMPONENT_CATALOG_PRESENT=1"
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
    $<$<COMPILE_LANGUAGE:CXX>:-mcpu=cortex-m4>
    $<$<COMPILE_LANGUAGE:CXX>:-fno-lto>
    $<$<COMPILE_LANGUAGE:CXX>:--specs=nano.specs>
    $<$<COMPILE_LANGUAGE:ASM>:-mcpu=cortex-m4>
    $<$<COMPILE_LANGUAGE:ASM>:-mthumb>
    $<$<COMPILE_LANGUAGE:ASM>:-mfpu=fpv4-sp-d16>
    $<$<COMPILE_LANGUAGE:ASM>:-mfloat-abi=softfp>
    "$<$<COMPILE_LANGUAGE:ASM>:SHELL:-x assembler-with-cpp>"
)

set(post_build_command ${POST_BUILD_EXE} postbuild "./iostream_usart_baremetal.slpb" --parameter build_dir:"$<TARGET_FILE_DIR:iostream_usart_baremetal>")
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
    "SHELL:-Xlinker -Map=$<TARGET_FILE_DIR:iostream_usart_baremetal>/iostream_usart_baremetal.map"
    "SHELL:-u _printf_float"
    -fno-lto
    -Wl,--gc-sections
)

# BEGIN_SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
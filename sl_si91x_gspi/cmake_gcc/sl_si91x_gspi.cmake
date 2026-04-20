####################################################################
# Automatically-generated file. Do not edit!                       #
####################################################################

set(SDK_PATH "/Users/dingdang/.silabs/slt/installs/conan/p/simplfa179856e7001/p")
set(COPIED_SDK_PATH "simplicity_sdk_2025.6.3")
set(PKG_PATH "/Users/dingdang/.silabs/slt/installs")

add_library(slc OBJECT
    "../${COPIED_SDK_PATH}/platform/common/src/sl_assert.c"
    "../${COPIED_SDK_PATH}/platform/common/src/sl_syscalls.c"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/src/sl_main_init.c"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/src/sl_main_init_memory.c"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/src/sl_main_process_action.c"
    "../app.c"
    "../autogen/sl_event_handler.c"
    "../autogen/sl_ulp_timer_init.c"
    "../gspi_example.c"
    "../main.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/iPMU_prog/iPMU_dotc/ipmu_apis.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/iPMU_prog/iPMU_dotc/rsi_system_config_917.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/rsi_deepsleep_soc.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/rsi_ps_ram_func.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/startup_si91x.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/src/system_si91x.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/rsi_debug.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/sl_si91x_stack_object_declare.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/src/syscalls.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/config/src/rsi_nvic_priorities_config.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/GSPI.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/UDMA.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/USART.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/aux_reference_volt_config.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/clock_update.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_adc.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_crc.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_dac.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_egpio.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_gspi.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_opamp.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/src/rsi_timers.c"
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
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_gspi.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_ulp_timer.c"
)

target_include_directories(slc PUBLIC
   "../config"
   "../autogen"
   "../."
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/CMSIS/Driver/Include"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/rom_driver/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/config"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/service/clock_manager/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/inc"
    "../${COPIED_SDK_PATH}/platform/CMSIS/Core/Include"
    "../${COPIED_SDK_PATH}/platform/common/inc"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/inc"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/src"
)

target_compile_definitions(slc PUBLIC
    "SIWG917Y121MGABA=1"
    "SLI_SI917=1"
    "SLI_SI917B0=1"
    "SLI_SI91X_MCU_CONFIG_RADIO_BOARD_BASE_VER=1"
    "SLI_SI91X_MCU_CONFIG_RADIO_BOARD_VER2=1"
    "SLI_SI91X_MCU_ENABLE_FLASH_BASED_EXECUTION=1"
    "SLI_SI91X_MCU_INTERNAL_LDO_FOR_PSRAM=1"
    "SL_SI91X_ACX_MODULE=1"
    "SRAM_BASE=0x0cUL"
    "SRAM_SIZE=0x2fc00UL"
    "__FREERTOS_OS_WISECONNECT=1"
    "CLOCK_ROMDRIVER_PRESENT=1"
    "ULPSS_CLOCK_ROMDRIVER_PRESENT=1"
    "SLI_CODE_CLASSIFICATION_DISABLE=1"
    "SLI_SI91X_MCU_ENABLE_IPMU_APIS=1"
    "SL_SI91X_SOC_MODE=1"
    "CRC_ROMDRIVER_PRESENT=1"
    "TIMER_ROMDRIVER_PRESENT=1"
    "SI91X_32kHz_EXTERNAL_OSCILLATOR=1"
    "DEBUG_ENABLE=1"
    "DEBUG_UART=1"
    "ENABLE_DEBUG_MODULE=1"
    "SL_SI91X_SI917_RAM_MEM_CONFIG=1"
    "UDMA_ROMDRIVER_PRESENT=1"
    "__STATIC_INLINE=static inline"
    "GSPI_CONFIG=1"
    "GSPI_MULTI_SLAVE=1"
    "SL_SI91X_GSPI_DMA=1"
    "SL_SI91X_REQUIRES_INTF_PLL=1"
    "SI917=1"
    "SLI_SI91X_MCU_INTERFACE=1"
    "TA_DEEP_SLEEP_COMMON_FLASH=1"
    "SL_ULP_TIMER=1"
    "PLL_ROMDRIVER_PRESENT=1"
    "SL_COMPONENT_CATALOG_PRESENT=1"
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

set(post_build_command ${POST_BUILD_EXE} postbuild "./sl_si91x_gspi.slpb" --parameter build_dir:"$<TARGET_FILE_DIR:sl_si91x_gspi>")
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
    "SHELL:-Xlinker -Map=$<TARGET_FILE_DIR:sl_si91x_gspi>/sl_si91x_gspi.map"
    "SHELL:-u _printf_float"
    -fno-lto
    -Wl,--gc-sections
)

# BEGIN_SIMPLICITY_STUDIO_METADATA=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=END_SIMPLICITY_STUDIO_METADATA
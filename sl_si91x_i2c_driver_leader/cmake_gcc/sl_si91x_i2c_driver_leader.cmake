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
    "../autogen/sl_i2c_init.c"
    "../i2c_leader_example.c"
    "../main.c"
    "../wiseconnect3_sdk_3.5.2/components/board/silabs/src/rsi_board.c"
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
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_driver_gpio.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/src/sl_si91x_i2c.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_peripheral_drivers/src/sl_si91x_peripheral_gpio.c"
    "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_peripheral_drivers/src/sl_si91x_peripheral_i2c.c"
)

target_include_directories(slc PUBLIC
   "../config"
   "../autogen"
   "../."
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver/CMSIS/Driver/Include"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/cmsis_driver"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/common/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/rom_driver/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/chip/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/peripheral_drivers/inc"
   "../wiseconnect3_sdk_3.5.2/components/board/silabs/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/core/config"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_api/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/service/clock_manager/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/unified_peripheral_drivers/inc"
   "../wiseconnect3_sdk_3.5.2/components/device/silabs/si91x/mcu/drivers/systemlevel/inc"
    "../${COPIED_SDK_PATH}/platform/CMSIS/Core/Include"
    "../${COPIED_SDK_PATH}/platform/common/inc"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/inc"
    "../${COPIED_SDK_PATH}/platform/service/sl_main/src"
)

target_compile_definitions(slc PUBLIC
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
    "__FREERTOS_OS_WISECONNECT=1"
    "CLOCK_ROMDRIVER_PRESENT=1"
    "ULPSS_CLOCK_ROMDRIVER_PRESENT=1"
    "SL_SI91X_BOARD_INIT=1"
    "SRAM_BASE=0x0cUL"
    "SRAM_SIZE=0x2fc00UL"
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
    "SL_SI91X_I2C_DMA=1"
    "SI917=1"
    "SLI_SI91X_MCU_INTERFACE=1"
    "TA_DEEP_SLEEP_COMMON_FLASH=1"
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

set(post_build_command ${POST_BUILD_EXE} postbuild "./sl_si91x_i2c_driver_leader.slpb" --parameter build_dir:"$<TARGET_FILE_DIR:sl_si91x_i2c_driver_leader>")
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
    "SHELL:-Xlinker -Map=$<TARGET_FILE_DIR:sl_si91x_i2c_driver_leader>/sl_si91x_i2c_driver_leader.map"
    "SHELL:-u _printf_float"
    -fno-lto
    -Wl,--gc-sections
)

# BEGIN_SIMPLICITY_STUDIO_METADATA=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=END_SIMPLICITY_STUDIO_METADATA
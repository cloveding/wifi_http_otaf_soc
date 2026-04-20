/*
 * app.h
 *
 * Protocol:
 *   I2C → configure OV2640 sensor register
 *   GSPI → control ArduChip FIFO/register
 */

#ifndef APP_H
#define APP_H

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>
#include <stdbool.h>

/* =========================================================
 * definition
 * ========================================================= */
#define ARDUCAM_I2C_INSTANCE       SL_I2C0 
#define ARDUCAM_I2C_SDA_PIN        6U
#define ARDUCAM_I2C_SDA_MUX        4U
#define ARDUCAM_I2C_SDA_PAD        1U
#define ARDUCAM_I2C_SCL_PIN        7U
#define ARDUCAM_I2C_SCL_MUX        4U
#define ARDUCAM_I2C_SCL_PAD        2U

#define ARDUCAM_GSPI_SCK_PIN       25U
#define ARDUCAM_GSPI_MISO_PIN      26U
#define ARDUCAM_GSPI_MOSI_PIN      27U
#define ARDUCAM_GSPI_CS_PIN        28U

/* =========================================================
 * OV2640 I2C address
 * ArduCAM library stores 8 digit original address 0x60, Wire >> 1 and gets 0x30, 0110 0000 -> 0011 0000
 * si91x use 7 digit address to drive sl_i2c_driver_send/receive_data_blocking, blocking, no DMA
 * ========================================================= */
#define OV2640_I2C_ADDR_7BIT       0x30U

/* =========================================================
 * ArduChip SPI reigister
 * ========================================================= */
#define RWBIT                      0x80U
#define ARDUCHIP_TEST1             0x00U
#define ARDUCHIP_MODE              0x02U
#define   MCU2LCD_MODE             0x00U
#define   CAM2LCD_MODE             0x01U
#define   LCD2MCU_MODE             0x02U
#define ARDUCHIP_TIM               0x03U
#define   HREF_LEVEL_MASK          0x01U
#define   VSYNC_LEVEL_MASK         0x02U
#define   LCD_BKEN_MASK            0x04U
#define   PCLK_REVERSE_MASK        0x08U
#define ARDUCHIP_FIFO              0x04U
#define   FIFO_CLEAR_MASK          0x01U
#define   FIFO_START_MASK          0x02U
#define   FIFO_RDPTR_RST_MASK      0x10U
#define   FIFO_WRPTR_RST_MASK      0x20U
#define ARDUCHIP_GPIO              0x06U
#define   GPIO_RESET_MASK          0x01U
#define   GPIO_PWDN_MASK           0x02U
#define   GPIO_PWREN_MASK          0x04U
#define BURST_FIFO_READ            0x3CU
#define SINGLE_FIFO_READ           0x3DU
#define ARDUCHIP_REV               0x40U
#define ARDUCHIP_TRIG              0x41U
#define   VSYNC_MASK               0x01U
#define   CAP_DONE_MASK            0x08U
#define FIFO_SIZE1                 0x42U
#define FIFO_SIZE2                 0x43U
#define FIFO_SIZE3                 0x44U


/* ArduChip FIFO max size (OV2640 Mini 2MP Plus = 384 KB) */
#define MAX_FIFO_SIZE              0x5FFFFUL

/* OV2640 special register */
#define OV2640_CHIPID_HIGH         0x0AU
#define OV2640_CHIPID_LOW          0x0BU

/* image format */
#define FMT_BMP                    0U
#define FMT_JPEG                   1U

/* JPEG */
#define OV2640_160x120             0U
#define OV2640_176x144             1U
#define OV2640_320x240             2U
#define OV2640_352x288             3U
#define OV2640_640x480             4U
#define OV2640_800x600             5U
#define OV2640_1024x768            6U
#define OV2640_1280x1024           7U
#define OV2640_1600x1200           8U

/* =========================================================
 * public
 * ========================================================= */

/**
 * @brief init（I2C + GSPI + OV2640 + ArduChip）
 */
void app_init(void);

/**
 * @brief main loop
 */
void app_process_action(void);

#ifdef __cplusplus
}
#endif

#endif /* APP_H */

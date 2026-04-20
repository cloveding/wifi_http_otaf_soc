/*
 * app.c — from ArduCAM OV2640 to SiWG917Y121MGABA (SiWG917Y111MGABA)
 */

#include "cmsis_os2.h"
#include "sl_board_configuration.h"
#include <string.h>
#include "sl_utility.h"
#include "pin_config.h"
#include "RTE_Device_917.h"
#include "sl_si91x_driver_gpio.h"
#include "sl_gpio_board.h"

#include "app.h"

#include "sl_si91x_i2c.h"
#include "sl_si91x_gspi.h"
#include "sl_si91x_peripheral_gpio.h"
#include "sl_iostream_usart_vcom_config.h"
#include "sl_sleeptimer.h"
#include "sl_iostream.h"

#include "ov2640_regs.h"

#include <stdio.h>

#define I2C_TIMEOUT_MS         100U
#define GSPI_BITRATE           1000000UL   /* 1 MHz */ // I2C: 40kHz, SPI: 20MHz
#define GSPI_BIT_WIDTH         8U

/* ArduChip 写操作地址编码：bit7 = 1 */
#define SPI_WRITE_ADDR(a)      ((uint8_t)(((a) & 0x7FU) | RWBIT))
/* ArduChip 读操作地址编码：bit7 = 0 */
#define SPI_READ_ADDR(a)       ((uint8_t)((a) & 0x7FU))

/* =========================================================
 * static variables
 * ========================================================= */
static sl_gspi_handle_t  s_gspi_handle = NULL;
static volatile bool     s_gspi_xfer_done = false;

static int      s_mode          = 0;
static uint8_t  s_start_capture = 0;
static bool     s_is_header     = false;
static uint8_t  s_single_dbg_left = 0;
static sl_gpio_t s_arducam_cs_gpio = {
  .port = SL_SI91X_GPIO_28_PORT,
  .pin  = SL_SI91X_GPIO_28_PIN,
};

/* =========================================================
 * GSPI event call back
 * ========================================================= */
// static void gspi_callback(uint32_t event)
// {
//   if (event & SL_GSPI_TRANSFER_COMPLETE) {
//     s_gspi_xfer_done = true;
//   }
// }

static volatile uint32_t gspi_cb_count = 0;

static void gspi_callback(uint32_t event)
{
  gspi_cb_count++;
  if (event & SL_GSPI_TRANSFER_COMPLETE) {
    s_gspi_xfer_done = true;
  }
}

static void arducam_cs_low(void)
{
  sl_gpio_driver_clear_pin(&s_arducam_cs_gpio);
}

static void arducam_cs_high(void)
{
  sl_gpio_driver_set_pin(&s_arducam_cs_gpio);
}

static void arducam_cs_init(void)
{
  sl_si91x_gpio_pin_config_t cs_cfg = {
    .port_pin = {
      .port = SL_SI91X_GPIO_28_PORT,
      .pin  = SL_SI91X_GPIO_28_PIN,
    },
    .direction = GPIO_OUTPUT,
  };

  sl_gpio_driver_init();
  (void)sl_gpio_set_configuration(cs_cfg);
  (void)sl_gpio_driver_set_pin_mode(&s_arducam_cs_gpio, SL_GPIO_MODE_0, 1);
  arducam_cs_high();
}

/**
 * @brief send and receive 1 byte
 *        GSPI 8 digits，buf_in/buf_out 1 byte
 */
// static uint8_t spi_transfer_byte(uint8_t tx_byte)
// {
//     uint8_t rx_byte = 0;
//     sl_status_t status;
//     uint32_t timeout = 1000000;
 
//     s_gspi_xfer_done = false;
 
//     /* 每次传输前设置从设备编号，与 gspi_example.c 保持一致 */
//     sl_si91x_gspi_set_slave_number(GSPI_SLAVE_0);
 
//     status = sl_si91x_gspi_transfer_data(s_gspi_handle, &tx_byte, &rx_byte, 1);
//     if (status != SL_STATUS_OK) {
//         printf("SPI transfer error: 0x%lX\r\n", status);
//         return 0;
//     }
 
//     while (!s_gspi_xfer_done && timeout--) {}
 
//     if (!s_gspi_xfer_done) {
//         printf("SPI timeout\r\n");  /* 先打印，再 return，原代码顺序颠倒 */
//         return 0;
//     }
 
//     return rx_byte;
// }

/* =========================================================
 * ArduChip SPI 寄存器读写
 * 替代 ArduCAM::bus_write / ArduCAM::bus_read
 * ========================================================= */

// /** 写 ArduChip 寄存器（1 字节地址 + 1 字节数据） */
// static void arducam_spi_write_reg(uint8_t addr, uint8_t data)
// {
//   /* 拉低 CS — GSPI 硬件 CS0 在 transfer 期间自动拉低，此处无需手动操作 */
//   spi_transfer_byte(SPI_WRITE_ADDR(addr));
//   spi_transfer_byte(data);
// }

// /** 读 ArduChip 寄存器 */
// static uint8_t arducam_spi_read_reg(uint8_t addr)
// {
//   spi_transfer_byte(SPI_READ_ADDR(addr));
//   return spi_transfer_byte(0x00);
// }

/* 2字节缓冲区一次传完！！避免两次 transfer 之间的 busy 冲突 */
static void arducam_spi_write_reg(uint8_t addr, uint8_t data)
{
    uint8_t tx[2] = { SPI_WRITE_ADDR(addr), data };
    uint8_t rx[2] = { 0, 0 };
    sl_status_t status;
    uint32_t timeout = 1000000;

    s_gspi_xfer_done = false;
    sl_si91x_gspi_set_slave_number(GSPI_SLAVE_0);
    arducam_cs_low();

    status = sl_si91x_gspi_transfer_data(s_gspi_handle, tx, rx, 2);
    if (status != SL_STATUS_OK) {
        arducam_cs_high();
        printf("SPI write_reg error: 0x%lX addr=0x%02X\r\n", status, addr);
        return;
    }

    while (!s_gspi_xfer_done && timeout--) {}

    if (!s_gspi_xfer_done) {
        printf("SPI write_reg timeout addr=0x%02X, gspi_cb_count: %lX\r\n", addr, gspi_cb_count);
    }
    arducam_cs_high();
}

/* 2阶段读：第1字节命令，第2字节 dummy，返回 MISO 第2字节 */
static uint8_t arducam_spi_read_2phase(uint8_t cmd, const char *tag)
{
    uint8_t tx[2] = { cmd, 0x00 };
    uint8_t rx[2] = { 0, 0 };
    sl_status_t status;
    uint32_t timeout = 1000000;

    s_gspi_xfer_done = false;
    sl_si91x_gspi_set_slave_number(GSPI_SLAVE_0);
    arducam_cs_low();

    status = sl_si91x_gspi_transfer_data(s_gspi_handle, tx, rx, 2);
    if (status != SL_STATUS_OK) {
        arducam_cs_high();
        printf("SPI %s error: 0x%lX cmd=0x%02X\r\n", tag, status, cmd);
        return 0;
    }

    while (!s_gspi_xfer_done && timeout--) {}
    if (!s_gspi_xfer_done) {
        printf("SPI %s timeout cmd=0x%02X\r\n", tag, cmd);
        arducam_cs_high();
        return 0;
    }

    arducam_cs_high();
    return rx[1];
}

static uint8_t arducam_spi_read_reg(uint8_t addr)
{
    return arducam_spi_read_2phase(SPI_READ_ADDR(addr), "read_reg");
}

// /** 读/写单个 FIFO 字节 */
// static uint8_t arducam_read_fifo_byte(void)
// {
//   return spi_transfer_byte(0x00);
// }

// /** 进入 FIFO burst 读模式（发送 burst 命令后连续 SPI.transfer(0x00)） */
// static void arducam_set_fifo_burst(void)
// {
//   spi_transfer_byte(BURST_FIFO_READ);
// }

/* 单字节 FIFO 读（burst 模式下连续调用） */
static uint8_t arducam_read_fifo_byte(void)
{
    uint8_t tx = 0x00;
    uint8_t rx = 0;
    sl_status_t status;
    uint32_t timeout = 1000000;

    s_gspi_xfer_done = false;
    /* burst 模式下 CS 由外层保持低，此处不重新 set_slave_number */

    status = sl_si91x_gspi_transfer_data(s_gspi_handle, &tx, &rx, 1);
    if (status != SL_STATUS_OK) {
        return 0;
    }
    while (!s_gspi_xfer_done && timeout--) {}
    return rx;
}

/* SINGLE FIFO READ：命令(0x3D) + dummy(0x00) 两阶段读取 */
static uint8_t arducam_read_fifo_byte_single(void)
{
    return arducam_spi_read_2phase(SINGLE_FIFO_READ, "single_fifo_read");
}

/* burst 读启动：发命令字节，CS 由硬件控制 */
static void arducam_set_fifo_burst(void)
{
    uint8_t tx = BURST_FIFO_READ;
    uint8_t rx = 0;
    sl_status_t status;
    uint32_t timeout = 1000000;

    s_gspi_xfer_done = false;
    sl_si91x_gspi_set_slave_number(GSPI_SLAVE_0);

    status = sl_si91x_gspi_transfer_data(s_gspi_handle, &tx, &rx, 1);
    if (status != SL_STATUS_OK) {
        printf("SPI burst start error: 0x%lX\r\n", status);
        return;
    }
    while (!s_gspi_xfer_done && timeout--) {}
}

/** 读取 FIFO 总字节数 */
static uint32_t arducam_read_fifo_length(void)
{
  uint32_t len = 0;
  len  = (uint32_t)arducam_spi_read_reg(FIFO_SIZE3) << 16;
  len |= (uint32_t)arducam_spi_read_reg(FIFO_SIZE2) << 8;
  len |=            arducam_spi_read_reg(FIFO_SIZE1);
  return len & 0x7FFFFFUL;
}

/** 获取 ArduChip 某寄存器指定 bit */
static uint8_t arducam_get_bit(uint8_t addr, uint8_t bit)
{
  return arducam_spi_read_reg(addr) & bit;
}

// /** 设置 ArduChip 某寄存器指定 bit */
// static void arducam_set_bit(uint8_t addr, uint8_t bit)
// {
//   uint8_t tmp = arducam_spi_read_reg(addr);
//   arducam_spi_write_reg(addr, tmp | bit);
// }

// /** 清除 ArduChip 某寄存器指定 bit */
// static void arducam_clear_bit(uint8_t addr, uint8_t bit)
// {
//   uint8_t tmp = arducam_spi_read_reg(addr);
//   arducam_spi_write_reg(addr, tmp & ~bit);
// }

/* FIFO 控制快捷封装 */
static inline void arducam_flush_fifo(void)
{
  arducam_spi_write_reg(ARDUCHIP_FIFO, FIFO_CLEAR_MASK);
}

static inline void arducam_clear_fifo_flag(void)
{
  arducam_spi_write_reg(ARDUCHIP_FIFO, FIFO_CLEAR_MASK);
}

static inline void arducam_start_capture(void)
{
  arducam_spi_write_reg(ARDUCHIP_FIFO, FIFO_START_MASK);
}

/**
 * @brief  向 OV2640 写一对 8 位寄存器/数据。
 *         等价于 Wire.beginTransmission(addr) + Wire.write(reg) +
 *                Wire.write(dat) + Wire.endTransmission()
 */
static sl_i2c_status_t ov2640_i2c_write_reg8_8(uint8_t reg, uint8_t dat)
{
  uint8_t buf[2] = { reg, dat };
  return sl_i2c_driver_send_data_blocking(
           ARDUCAM_I2C_INSTANCE,
           OV2640_I2C_ADDR_7BIT,
           buf,
           sizeof(buf));
}

/**
 * @brief  读 OV2640 8 位寄存器。
 *         等价于 Wire.beginTransmission + Wire.write(reg) +
 *                Wire.endTransmission + Wire.requestFrom + Wire.read
 */
static sl_i2c_status_t ov2640_i2c_read_reg8_8(uint8_t reg, uint8_t *val)
{
  sl_i2c_status_t st;

  st = sl_i2c_driver_send_data_blocking(
         ARDUCAM_I2C_INSTANCE,
         OV2640_I2C_ADDR_7BIT,
         &reg, 1);
  if (st != SL_I2C_SUCCESS) {
    return st;
  }

  st = sl_i2c_driver_receive_data_blocking(
         ARDUCAM_I2C_INSTANCE,
         OV2640_I2C_ADDR_7BIT,
         val, 1);
  return st;
}

/**
 * @brief  批量写寄存器表（8位地址 + 8位数据），终止条件 {0xFF, 0xFF}。
 *         等价于 ArduCAM::wrSensorRegs8_8()
 */
static void ov2640_write_regs8_8(const struct sensor_reg *regs)
{
    int count = 0, err = 0;
    for (;;) {
        uint8_t reg = (uint8_t)regs->reg;
        uint8_t val = (uint8_t)regs->val;
        if (reg == 0xFF && val == 0xFF) break;
        sl_i2c_status_t st = ov2640_i2c_write_reg8_8(reg, val);
        if (st != SL_I2C_SUCCESS) err++;
        count++;
        regs++;
    }
    printf("  wrote %d regs, %d errors\r\n", count, err);
}

/* =========================================================
 * OV2640 初始化（JPEG 模式）
 * 等价于 ArduCAM::InitCAM() + set_format(JPEG)
 * ========================================================= */
// static void ov2640_init_jpeg(void)
// {
//   /* 选择传感器寄存器组 */
//   ov2640_i2c_write_reg8_8(0xFF, 0x01);
//   /* 软件复位 */
//   ov2640_i2c_write_reg8_8(0x12, 0x80);
//   sl_sleeptimer_delay_millisecond(100);

//   /* 写 JPEG 初始化序列（来自 ov2640_regs.h） */
//   ov2640_write_regs8_8(OV2640_JPEG_INIT);
//   ov2640_write_regs8_8(OV2640_YUV422);
//   ov2640_write_regs8_8(OV2640_JPEG);

//   ov2640_i2c_write_reg8_8(0xFF, 0x01);
//   ov2640_i2c_write_reg8_8(0x15, 0x00);

//   ov2640_write_regs8_8(OV2640_320x240_JPEG);
// }

// static void ov2640_verify_init(void)
// {
//     uint8_t val = 0;
//     printf("=== OV2640 register verification ===\r\n");

//     ov2640_i2c_write_reg8_8(0xFF, 0x00);
//     sl_sleeptimer_delay_millisecond(5);

//     ov2640_i2c_read_reg8_8(0xDA, &val);
//     printf("IMAGE_MODE = 0x%02X (expect 0x10)\r\n", val);

//     ov2640_i2c_read_reg8_8(0xE0, &val);
//     printf("RESET      = 0x%02X (expect 0x00)\r\n", val);

//     ov2640_i2c_write_reg8_8(0xFF, 0x01);
//     sl_sleeptimer_delay_millisecond(5);

//     ov2640_i2c_read_reg8_8(0x12, &val);
//     printf("COM7       = 0x%02X\r\n", val);

//     ov2640_i2c_read_reg8_8(0x11, &val);
//     printf("CLKRC      = 0x%02X\r\n", val);

//     printf("=====================================\r\n");
// }

static void ov2640_init_jpeg(void)
{
    ov2640_i2c_write_reg8_8(0xFF, 0x01); // ACK
    ov2640_i2c_write_reg8_8(0x12, 0x80); // ACK
    sl_sleeptimer_delay_millisecond(100);

    printf("writing JPEG_INIT...\r\n");
    ov2640_write_regs8_8(OV2640_JPEG_INIT);

    printf("writing YUV422...\r\n");
    ov2640_write_regs8_8(OV2640_YUV422);

    printf("writing JPEG...\r\n");
    ov2640_write_regs8_8(OV2640_JPEG);

    ov2640_i2c_write_reg8_8(0xFF, 0x01);
    ov2640_i2c_write_reg8_8(0x15, 0x00);

    printf("writing 320x240_JPEG...\r\n");
    ov2640_write_regs8_8(OV2640_320x240_JPEG);

    printf("ov2640_init_jpeg done\r\n");

    // ov2640_verify_init();  // 新增
}

/* =========================================================
 * OV2640 JPEG 分辨率切换
 * 等价于 ArduCAM::OV2640_set_JPEG_size()
 * ========================================================= */
static void ov2640_set_jpeg_size(uint8_t size)
{
  switch (size) {
    case OV2640_160x120:   ov2640_write_regs8_8(OV2640_160x120_JPEG);   break;
    case OV2640_176x144:   ov2640_write_regs8_8(OV2640_176x144_JPEG);   break;
    case OV2640_320x240:   ov2640_write_regs8_8(OV2640_320x240_JPEG);   break;
    case OV2640_352x288:   ov2640_write_regs8_8(OV2640_352x288_JPEG);   break;
    case OV2640_640x480:   ov2640_write_regs8_8(OV2640_640x480_JPEG);   break;
    case OV2640_800x600:   ov2640_write_regs8_8(OV2640_800x600_JPEG);   break;
    case OV2640_1024x768:  ov2640_write_regs8_8(OV2640_1024x768_JPEG);  break;
    case OV2640_1280x1024: ov2640_write_regs8_8(OV2640_1280x1024_JPEG); break;
    case OV2640_1600x1200: ov2640_write_regs8_8(OV2640_1600x1200_JPEG); break;
    default: break;
  }
}

/* =========================================================
 * FIFO 图像读出并通过 IOSTREAM 输出（JPEG 单帧）
 * 等价于 read_fifo_burst() + Serial.write()
 * ========================================================= */
static void read_fifo_burst_jpeg(void)
{
  uint32_t length = arducam_read_fifo_length();

  if (length >= MAX_FIFO_SIZE) {
    printf("ACK CMD Over size. END\r\n");
    return;
  }
  if (length == 0) {
    printf("ACK CMD Size is 0. END\r\n");
    return;
  }

  /* Burst 时序：1字节命令阶段 + 多字节数据阶段，整个过程保持 CS 低 */
  arducam_cs_low();
  arducam_set_fifo_burst();

  /* 老款 ArduCAM SPI 相机在 burst 读出的第1字节是 dummy */
  (void)arducam_read_fifo_byte();

  uint8_t temp      = 0;
  uint8_t temp_last = 0;
  s_is_header = false;

  while (length-- > 0) {
    temp_last = temp;
    temp = arducam_read_fifo_byte();

    if (s_is_header) {
      sl_iostream_write(SL_IOSTREAM_STDOUT, &temp, 1);
    } else if (temp == 0xD8 && temp_last == 0xFF) {
      s_is_header = true;
      printf("ACK IMG END\r\n");
      sl_iostream_write(SL_IOSTREAM_STDOUT, &temp_last, 1);
      sl_iostream_write(SL_IOSTREAM_STDOUT, &temp,      1);
    }

    if (temp == 0xD9 && temp_last == 0xFF) {
      break;   /* JPEG EOI */
    }
  }

  arducam_cs_high();
  s_is_header = false;
}

static void arducam_i2c_init(void)
{
    sl_i2c_config_t i2c_cfg = {
        .mode           = SL_I2C_LEADER_MODE,
        .operating_mode = SL_I2C_STANDARD_MODE,
        .transfer_type  = SL_I2C_USING_NON_DMA,
        .i2c_callback   = NULL,
    };

    sl_i2c_status_t st = sl_i2c_driver_init(ARDUCAM_I2C_INSTANCE, &i2c_cfg);
    if (st != SL_I2C_SUCCESS) {
        printf("I2C init failed: %d\r\n", (int)st);
        return;
    }

    st = sl_i2c_driver_configure_fifo_threshold(ARDUCAM_I2C_INSTANCE, 0, 0);
    if (st != SL_I2C_SUCCESS) {
        printf("I2C FIFO threshold config failed: %d\r\n", (int)st);
    }

    st = sl_i2c_driver_enable_repeated_start(ARDUCAM_I2C_INSTANCE, true);
    if (st != SL_I2C_SUCCESS) {
        printf("I2C repeated start failed: %d\r\n", (int)st);
    }

    sl_i2c_pin_init_t pin_cfg = {
        .sda_pin  = ARDUCAM_I2C_SDA_PIN,
        .scl_pin  = ARDUCAM_I2C_SCL_PIN,
        .sda_mux  = ARDUCAM_I2C_SDA_MUX,
        .scl_mux  = ARDUCAM_I2C_SCL_MUX,
        .sda_pad  = ARDUCAM_I2C_SDA_PAD,
        .scl_pad  = ARDUCAM_I2C_SCL_PAD,
    };
    sl_i2c_status_t pin_st = sl_si91x_i2c_pin_init(&pin_cfg);
    printf("I2C pin_init status: %d\r\n", (int)pin_st);

    printf("I2C init OK\r\n");
}

static void arducam_gspi_init(void)
{
    sl_status_t st;

    /* 1. init */
    st = sl_si91x_gspi_init(SL_GSPI_MASTER, &s_gspi_handle);
    if (st != SL_STATUS_OK) {
        printf("GSPI init failed: 0x%lX\r\n", st);
        return;
    }

    /* 2. set_configuration — bitrate 字段内部会自动算分频，无需手动配时钟 */
    sl_gspi_control_config_t gspi_cfg = {
        .bit_width         = 8U,
        .bitrate           = 1000000U,
        .clock_mode        = SL_GSPI_MODE_0,
        .slave_select_mode = SL_GSPI_MASTER_SW,
        .swap_read         = false,
        .swap_write        = false,
    };
    st = sl_si91x_gspi_set_configuration(s_gspi_handle, &gspi_cfg);
    if (st != SL_STATUS_OK) {
        printf("GSPI set_config failed: 0x%lX\r\n", st);
        return;
    }

    /* 3. register callback — 在 set_configuration 之后，不调用 set_master_state */
    st = sl_si91x_gspi_register_event_callback(s_gspi_handle, gspi_callback);
    if (st != SL_STATUS_OK) {
        printf("GSPI register callback failed: 0x%lX\r\n", st);
        return;
    }

    arducam_cs_init();

    /* 不调用 sl_si91x_gspi_set_master_state()！！！ */

    printf("GSPI init OK\r\n");
}

// void i2c_scan(void)
// {
//     printf("I2C scan start (7-bit addr 0x01~0x7F)\r\n");
//     int found = 0;
//     for (uint16_t addr = 1; addr < 128; addr++) {
//       printf("try 0x%02X\r\n", addr);
//         uint8_t dummy = 0;
//         sl_i2c_status_t st = sl_i2c_driver_receive_data_blocking(
//             ARDUCAM_I2C_INSTANCE, addr, &dummy, 1);
//         if (st == SL_I2C_SUCCESS) {
//             printf("  [FOUND] device at 7-bit addr 0x%02X\r\n", addr);
//             found++;
//         }
//     }
//     if (found == 0) {
//         printf("  No devices found — physical layer problem\r\n");
//     }
//     printf("I2C scan done, found %d device(s)\r\n", found);
// }

void app_init(void)
{
  // uint8_t vid = 0, pid = 0
  uint8_t temp = 0;

  printf("ACK CMD ArduCAM Si91x Start! END\r\n");

  arducam_i2c_init();
  printf("I2C Init Start! END\r\n");

  arducam_gspi_init();
  printf("GSPI Init Start! END\r\n");

  arducam_spi_write_reg(0x07, 0x80);
  printf("arducam_spi_write_reg(0x07, 0x80);");
  sl_sleeptimer_delay_millisecond(100);
  arducam_spi_write_reg(0x07, 0x00);
  sl_sleeptimer_delay_millisecond(100);

  /* ---- 4. SPI 回环自检（写 0x55，读回必须是 0x55）---- */
  for (;;) {
    arducam_spi_write_reg(ARDUCHIP_TEST1, 0x55);
    temp = arducam_spi_read_reg(ARDUCHIP_TEST1);
    if (temp != 0x55) {
      printf("ACK CMD SPI interface Error! END\r\n");
      sl_sleeptimer_delay_millisecond(1000);
    } else {
      printf("ACK CMD SPI interface OK. END\r\n");
      break;
    }
  }

  // i2c_scan();

  /* ---- 5. 检测 OV2640 芯片 ID ---- */
  for (;;) {
    uint8_t vid1 = 0, pid1 = 0;
    uint8_t vid2 = 0, pid2 = 0;

    sl_i2c_status_t st_w  = ov2640_i2c_write_reg8_8(0xFF, 0x01); // ACK
    sl_sleeptimer_delay_millisecond(1);

    sl_i2c_status_t st_v1 = ov2640_i2c_read_reg8_8(OV2640_CHIPID_HIGH, &vid1);
    sl_i2c_status_t st_p1 = ov2640_i2c_read_reg8_8(OV2640_CHIPID_LOW,  &pid1);

    sl_sleeptimer_delay_millisecond(1);

    sl_i2c_status_t st_v2 = ov2640_i2c_read_reg8_8(OV2640_CHIPID_HIGH, &vid2);
    sl_i2c_status_t st_p2 = ov2640_i2c_read_reg8_8(OV2640_CHIPID_LOW,  &pid2);

    printf("I2C st_w=%d  #1: st_v=%d st_p=%d VID=0x%02X PID=0x%02X  "
           "#2: st_v=%d st_p=%d VID=0x%02X PID=0x%02X\r\n",
           (int)st_w,
           (int)st_v1, (int)st_p1, vid1, pid1,
           (int)st_v2, (int)st_p2, vid2, pid2);

    if ((st_v2 == SL_I2C_SUCCESS) &&
        (st_p2 == SL_I2C_SUCCESS) &&
        (vid2 == 0x26) &&
        ((pid2 == 0x41) || (pid2 == 0x42))) {
        printf("ACK CMD OV2640 detected. END\r\n");
        break;
    }

    printf("ACK CMD Can't find OV2640 module! END\r\n");
    sl_sleeptimer_delay_millisecond(1000);
}

  /* ---- 6. 初始化 OV2640 为 JPEG 模式，默认 320×240 ---- */
  ov2640_init_jpeg();
  ov2640_set_jpeg_size(OV2640_320x240);
  sl_sleeptimer_delay_millisecond(1000);

  /* ---- 7. 清除 FIFO 标志 ---- */
  arducam_clear_fifo_flag();

  printf("ACK CMD Camera ready. END\r\n");
}

static void single_capture_blocking_test(void)
{
    uint8_t trig = 0;
    uint32_t tries = 0;

    printf("flush\r\n");
    arducam_flush_fifo();

    printf("clear\r\n");
    arducam_clear_fifo_flag();

    printf("start\r\n");
    arducam_start_capture();

    while (tries < 50000) {
        trig = arducam_spi_read_reg(ARDUCHIP_TRIG);
        if (tries % 1000 == 0) {
            uint32_t len_dbg = arducam_read_fifo_length();
            printf("[blk] CAP_DONE_MASK=0x%02X TRIG=0x%02X CAP_DONE=%u FIFO=%lu\r\n",
                   (unsigned)CAP_DONE_MASK,
                   (unsigned)trig,
                   (unsigned)((trig & CAP_DONE_MASK) ? 1U : 0U),
                   (unsigned long)len_dbg);
        }

        if (trig & CAP_DONE_MASK) {
            break;
        }

        sl_sleeptimer_delay_millisecond(1);
        tries++;
    }

    if (trig & CAP_DONE_MASK) {
        uint32_t len = arducam_read_fifo_length();
        uint8_t first_byte = arducam_read_fifo_byte_single();
        printf("CAP_DONE len=%lu\r\n", (unsigned long)len);
        printf("SINGLE_FIFO_READ first_byte=0x%02X\r\n", first_byte);
    } else {
        printf("CAP_DONE timeout\r\n");
    }
}

/* =========================================================
 * app_process_action — 对应 Arduino loop()
 *
 * 命令字节（经 IOSTREAM 接收，与原 .ino 保持一致）：
 *   0x00~0x08  切换 JPEG 分辨率
 *   0x10       单帧 JPEG 拍照
 *   0x11       重新初始化 JPEG 模式
 *   0x20       开始视频串流
 *   0x21       停止视频串流
 *   0x30       单帧 BMP 拍照（预留，仅打印提示）
 * ========================================================= */
void app_process_action(void)
{
  uint8_t  temp = 0xFF, temp_last = 0;
  size_t   rx_len = 0;

  /* 读一个字节命令 */
  sl_iostream_read(SL_IOSTREAM_STDIN, &temp, 1, &rx_len);

  if (rx_len > 0) {
    printf("CMD=0x%02X\r\n", temp);
  }

  if (rx_len > 0) {
    switch (temp) {
      case 0x00:
        ov2640_set_jpeg_size(OV2640_160x120);
        sl_sleeptimer_delay_millisecond(1000);
        printf("ACK CMD switch to OV2640_160x120 END\r\n");
        break;
      case 0x01:
        ov2640_set_jpeg_size(OV2640_176x144);
        sl_sleeptimer_delay_millisecond(1000);
        printf("ACK CMD switch to OV2640_176x144 END\r\n");
        break;
      case 0x02:
        ov2640_set_jpeg_size(OV2640_320x240);
        sl_sleeptimer_delay_millisecond(1000);
        printf("ACK CMD switch to OV2640_320x240 END\r\n");
        break;
      case 0x03:
        ov2640_set_jpeg_size(OV2640_352x288);
        sl_sleeptimer_delay_millisecond(1000);
        printf("ACK CMD switch to OV2640_352x288 END\r\n");
        break;
      case 0x04:
        ov2640_set_jpeg_size(OV2640_640x480);
        sl_sleeptimer_delay_millisecond(1000);
        printf("ACK CMD switch to OV2640_640x480 END\r\n");
        break;
      case 0x05:
        ov2640_set_jpeg_size(OV2640_800x600);
        sl_sleeptimer_delay_millisecond(1000);
        printf("ACK CMD switch to OV2640_800x600 END\r\n");
        break;
      case 0x06:
        ov2640_set_jpeg_size(OV2640_1024x768);
        sl_sleeptimer_delay_millisecond(1000);
        printf("ACK CMD switch to OV2640_1024x768 END\r\n");
        break;
      case 0x07:
        ov2640_set_jpeg_size(OV2640_1280x1024);
        sl_sleeptimer_delay_millisecond(1000);
        printf("ACK CMD switch to OV2640_1280x1024 END\r\n");
        break;
      case 0x08:
        ov2640_set_jpeg_size(OV2640_1600x1200);
        sl_sleeptimer_delay_millisecond(1000);
        printf("ACK CMD switch to OV2640_1600x1200 END\r\n");
        break;
      case 0x10:
        s_mode = 1;
        s_start_capture = 1;
        printf("ACK CMD CAM start single shoot. END\r\n");
        break;
      case 0x11:
        ov2640_init_jpeg();
        printf("ACK CMD CAM reinit JPEG. END\r\n");
        break;
      case 0x17:
        printf("ACK CMD run blocking test. END\r\n");
        single_capture_blocking_test();
        break;
      case 0x18:
        s_single_dbg_left = 10;
        printf("ACK CMD single-capture debug enabled (10 prints). END\r\n");
        break;
      case 0x20:
        s_mode = 2;
        s_start_capture = 2;
        printf("ACK CMD CAM start video streaming. END\r\n");
        break;
      case 0x21:
        s_start_capture = 0;
        s_mode = 0;
        printf("ACK CMD CAM stop video streaming. END\r\n");
        break;
      case 0x30:
        s_mode = 3;
        s_start_capture = 3;
        printf("ACK CMD CAM start single shoot (BMP not supported). END\r\n");
        break;
      default:
        break;
    }
  }

  if (s_mode == 1) {
    if (s_start_capture == 1) {
      arducam_flush_fifo();
      arducam_clear_fifo_flag();
      arducam_start_capture();
      s_start_capture = 0;
    }

    if (s_single_dbg_left > 0) {
      uint8_t trig_dbg = arducam_spi_read_reg(ARDUCHIP_TRIG);
      uint32_t fifo_dbg = arducam_read_fifo_length();
      printf("[single dbg] left=%u CAP_DONE_MASK=0x%02X TRIG=0x%02X CAP_DONE=%u FIFO=%lu\r\n",
             (unsigned)s_single_dbg_left,
             (unsigned)CAP_DONE_MASK,
             (unsigned)trig_dbg,
             (unsigned)((trig_dbg & CAP_DONE_MASK) ? 1U : 0U),
             (unsigned long)fifo_dbg);
      s_single_dbg_left--;
    }

    if (arducam_get_bit(ARDUCHIP_TRIG, CAP_DONE_MASK)) {
      printf("ACK CMD CAM Capture Done. END\r\n");
      read_fifo_burst_jpeg();
      arducam_clear_fifo_flag();
      s_mode = 0;
    }
  }

  if (s_mode == 2) {
    if (s_start_capture == 2) {
      arducam_flush_fifo();
      arducam_clear_fifo_flag();
      arducam_start_capture();
      s_start_capture = 0;
    }

    if (arducam_get_bit(ARDUCHIP_TRIG, CAP_DONE_MASK)) {
      uint32_t length = arducam_read_fifo_length();
      if ((length >= MAX_FIFO_SIZE) || (length == 0)) {
        arducam_clear_fifo_flag();
        s_start_capture = 2;
        return;
      }

      arducam_set_fifo_burst();
      temp = arducam_read_fifo_byte();
      length--;
      s_is_header = false;

      while (length--) {
        temp_last = temp;
        temp = arducam_read_fifo_byte();

        if (s_is_header) {
          sl_iostream_write(SL_IOSTREAM_STDOUT, &temp, 1);
        } else if ((temp == 0xD8) && (temp_last == 0xFF)) {
          s_is_header = true;
          printf("ACK IMG END\r\n");
          sl_iostream_write(SL_IOSTREAM_STDOUT, &temp_last, 1);
          sl_iostream_write(SL_IOSTREAM_STDOUT, &temp, 1);
        }

        if ((temp == 0xD9) && (temp_last == 0xFF)) {
          break;
        }
      }

      s_is_header = false;
      arducam_clear_fifo_flag();
      s_start_capture = 2;
    }
  }
}

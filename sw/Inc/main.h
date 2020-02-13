/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f3xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "uart_driver.h"
/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define ERROR_LED_Pin GPIO_PIN_13
#define ERROR_LED_GPIO_Port GPIOC
#define ESC1_VOLTAGE_Pin GPIO_PIN_0
#define ESC1_VOLTAGE_GPIO_Port GPIOA
#define ESC2_VOLTAGE_Pin GPIO_PIN_1
#define ESC2_VOLTAGE_GPIO_Port GPIOA
#define ESC1_CURRENT_Pin GPIO_PIN_2
#define ESC1_CURRENT_GPIO_Port GPIOA
#define ESC2_CURRENT_Pin GPIO_PIN_3
#define ESC2_CURRENT_GPIO_Port GPIOA
#define DAC_OUT_Pin GPIO_PIN_4
#define DAC_OUT_GPIO_Port GPIOA
#define IN1_Pin GPIO_PIN_0
#define IN1_GPIO_Port GPIOB
#define OUT2_Pin GPIO_PIN_1
#define OUT2_GPIO_Port GPIOB
#define OUT1_Pin GPIO_PIN_2
#define OUT1_GPIO_Port GPIOB
#define WP_Pin GPIO_PIN_11
#define WP_GPIO_Port GPIOB
#define BAT_VOLTAGE_Pin GPIO_PIN_12
#define BAT_VOLTAGE_GPIO_Port GPIOB
#define AMP_CS_Pin GPIO_PIN_14
#define AMP_CS_GPIO_Port GPIOB
#define SPI_CS_Pin GPIO_PIN_8
#define SPI_CS_GPIO_Port GPIOA
#define Sport_UART_Pin GPIO_PIN_9
#define Sport_UART_GPIO_Port GPIOA
#define USB_ENUMERATE_Pin GPIO_PIN_10
#define USB_ENUMERATE_GPIO_Port GPIOA
#define Servo_2_Pin GPIO_PIN_4
#define Servo_2_GPIO_Port GPIOB
#define Servo_1_Pin GPIO_PIN_5
#define Servo_1_GPIO_Port GPIOB
#define HC_OUT1_Pin GPIO_PIN_6
#define HC_OUT1_GPIO_Port GPIOB
#define HC_OUT2_Pin GPIO_PIN_7
#define HC_OUT2_GPIO_Port GPIOB
#define IN2_Pin GPIO_PIN_8
#define IN2_GPIO_Port GPIOB
#define PWM2_Pin GPIO_PIN_9
#define PWM2_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */
// Sport physical IDs
#define SPORT_ID1	0x00
#define SPORT_ID2	0xA1
#define SPORT_ID3	0x22
#define SPORT_ID4	0x83
#define SPORT_ID5	0xE4
#define SPORT_ID6	0x45
#define SPORT_ID7	0xC6
#define SPORT_ID8	0x67
#define SPORT_ID9	0x48
#define SPORT_ID10	0xE9
#define SPORT_ID11	0x6A
#define SPORT_ID12	0xCB
#define SPORT_ID13	0xAC
#define SPORT_ID14	0x0D
#define SPORT_ID15	0x8E
#define SPORT_ID16	0x2F
#define SPORT_ID17	0xD0
#define SPORT_ID18	0x71
#define SPORT_ID19	0xF2
#define SPORT_ID20	0x53
#define SPORT_ID21	0x34
#define SPORT_ID22	0x95
#define SPORT_ID23	0x16
#define SPORT_ID24	0xB7
#define SPORT_ID25	0x98
#define SPORT_ID26	0x39
#define SPORT_ID27	0xBA
#define SPORT_ID28	0x1B

//Sport logical IDs Taken from OpenTx source codes
#define ALT_FIRST_ID              0x0100
#define ALT_LAST_ID               0x010f
#define VARIO_FIRST_ID            0x0110
#define VARIO_LAST_ID             0x011f
#define CURR_FIRST_ID             0x0200
#define CURR_LAST_ID              0x020f
#define VFAS_FIRST_ID             0x0210
#define VFAS_LAST_ID              0x021f
#define CELLS_FIRST_ID            0x0300
#define CELLS_LAST_ID             0x030f
#define T1_FIRST_ID               0x0400
#define T1_LAST_ID                0x040f
#define T2_FIRST_ID               0x0410
#define T2_LAST_ID                0x041f
#define RPM_FIRST_ID              0x0500
#define RPM_LAST_ID               0x050f
#define FUEL_FIRST_ID             0x0600
#define FUEL_LAST_ID              0x060f
#define ACCX_FIRST_ID             0x0700
#define ACCX_LAST_ID              0x070f
#define ACCY_FIRST_ID             0x0710
#define ACCY_LAST_ID              0x071f
#define ACCZ_FIRST_ID             0x0720
#define ACCZ_LAST_ID              0x072f
#define GPS_LONG_LATI_FIRST_ID    0x0800
#define GPS_LONG_LATI_LAST_ID     0x080f
#define GPS_ALT_FIRST_ID          0x0820
#define GPS_ALT_LAST_ID           0x082f
#define GPS_SPEED_FIRST_ID        0x0830
#define GPS_SPEED_LAST_ID         0x083f
#define GPS_COURS_FIRST_ID        0x0840
#define GPS_COURS_LAST_ID         0x084f
#define GPS_TIME_DATE_FIRST_ID    0x0850
#define GPS_TIME_DATE_LAST_ID     0x085f
#define A3_FIRST_ID               0x0900
#define A3_LAST_ID                0x090f
#define A4_FIRST_ID               0x0910
#define A4_LAST_ID                0x091f
#define AIR_SPEED_FIRST_ID        0x0a00
#define AIR_SPEED_LAST_ID         0x0a0f
#define RBOX_BATT1_FIRST_ID       0x0b00
#define RBOX_BATT1_LAST_ID        0x0b0f
#define RBOX_BATT2_FIRST_ID       0x0b10
#define RBOX_BATT2_LAST_ID        0x0b1f
#define RBOX_STATE_FIRST_ID       0x0b20
#define RBOX_STATE_LAST_ID        0x0b2f
#define RBOX_CNSP_FIRST_ID        0x0b30
#define RBOX_CNSP_LAST_ID         0x0b3f
#define SD1_FIRST_ID              0x0b40
#define SD1_LAST_ID               0x0b4f
#define ESC_POWER_FIRST_ID        0x0b50
#define ESC_POWER_LAST_ID         0x0b5f
#define ESC_RPM_CONS_FIRST_ID     0x0b60
#define ESC_RPM_CONS_LAST_ID      0x0b6f
#define ESC_TEMPERATURE_FIRST_ID  0x0b70
#define ESC_TEMPERATURE_LAST_ID   0x0b7f
#define X8R_FIRST_ID              0x0c20
#define X8R_LAST_ID               0x0c2f
#define S6R_FIRST_ID              0x0c30
#define S6R_LAST_ID               0x0c3f
#define GASSUIT_TEMP_FIRST_ID     0x0d00
#define GASSUIT_TEMP_LAST_ID      0x0d0f
#define GASSUIT_SPEED_FIRST_ID    0x0d10
#define GASSUIT_SPEED_LAST_ID     0x0d1f
#define GASSUIT_FUEL_FIRST_ID     0x0d20
#define GASSUIT_FUEL_LAST_ID      0x0d2f
#define DIY_FIRST_ID              0x5000
#define DIY_LAST_ID               0x52ff
#define DIY_STREAM_FIRST_ID       0x5000
#define DIY_STREAM_LAST_ID        0x50ff
#define FACT_TEST_ID              0xf000
#define RSSI_ID                   0xf101
#define ADC1_ID                   0xf102
#define ADC2_ID                   0xf103
#define SP2UART_A_ID              0xfd00
#define SP2UART_B_ID              0xfd01
#define BATT_ID                   0xf104
#define RAS_ID                    0xf105
#define XJT_VERSION_ID            0xf106
#define FUEL_QTY_FIRST_ID         0x0a10
#define FUEL_QTY_LAST_ID          0x0a1f

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

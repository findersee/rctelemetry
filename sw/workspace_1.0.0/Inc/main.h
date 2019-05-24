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
#define OUT2_Pin GPIO_PIN_0
#define OUT2_GPIO_Port GPIOB
#define OUT5_Pin GPIO_PIN_1
#define OUT5_GPIO_Port GPIOB
#define OUT3_Pin GPIO_PIN_2
#define OUT3_GPIO_Port GPIOB
#define BAT_VOLTAGE_Pin GPIO_PIN_12
#define BAT_VOLTAGE_GPIO_Port GPIOB
#define COOLING_TEMP_Pin GPIO_PIN_13
#define COOLING_TEMP_GPIO_Port GPIOB
#define Servo_4_Pin GPIO_PIN_14
#define Servo_4_GPIO_Port GPIOB
#define Servo_3_Pin GPIO_PIN_15
#define Servo_3_GPIO_Port GPIOB
#define SPI_CS_Pin GPIO_PIN_8
#define SPI_CS_GPIO_Port GPIOA
#define WP_Pin GPIO_PIN_10
#define WP_GPIO_Port GPIOA
#define Servo_1_Pin GPIO_PIN_15
#define Servo_1_GPIO_Port GPIOA
#define Servo_2_Pin GPIO_PIN_3
#define Servo_2_GPIO_Port GPIOB
#define OUT6_Pin GPIO_PIN_4
#define OUT6_GPIO_Port GPIOB
#define HC_OUT1_Pin GPIO_PIN_6
#define HC_OUT1_GPIO_Port GPIOB
#define HC_OUT2_Pin GPIO_PIN_7
#define HC_OUT2_GPIO_Port GPIOB
#define OUT4_Pin GPIO_PIN_9
#define OUT4_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

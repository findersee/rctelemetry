/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "cmsis_os.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <string.h>
#include <stdlib.h>
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
typedef struct
{
	char ID;
}telemetryMessage;
typedef struct
{
	float ESC1_powerValue;
	float ESC1_voltageValue;
	float ESC1_currentValue;
	float ESC2_powerValue;
	float ESC2_voltageValue;
	float ESC2_currentValue;
}powerMessage;
typedef struct
{
	uint16_t value;
}BatteryMessage;
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
ADC_HandleTypeDef hadc1;
ADC_HandleTypeDef hadc3;
ADC_HandleTypeDef hadc4;
DMA_HandleTypeDef hdma_adc1;
DMA_HandleTypeDef hdma_adc3;
DMA_HandleTypeDef hdma_adc4;

CRC_HandleTypeDef hcrc;

DAC_HandleTypeDef hdac;
DMA_HandleTypeDef hdma_dac_ch1;

SPI_HandleTypeDef hspi1;
SPI_HandleTypeDef hspi3;

TIM_HandleTypeDef htim1;
TIM_HandleTypeDef htim2;
TIM_HandleTypeDef htim3;
TIM_HandleTypeDef htim4;
TIM_HandleTypeDef htim6;
TIM_HandleTypeDef htim15;
TIM_HandleTypeDef htim16;

UART_HandleTypeDef huart1;
UART_HandleTypeDef huart3;
DMA_HandleTypeDef hdma_usart1_rx;
DMA_HandleTypeDef hdma_usart1_tx;
DMA_HandleTypeDef hdma_usart3_rx;

osThreadId defaultTaskHandle;
osThreadId SendTelemetryHandle;
osThreadId PowerParserHandle;
osThreadId BattVoltageHandle;
osThreadId SbusDecoderHandle;
osMessageQId telemetryRequestQueueHandle;
osMutexId SportMessageHandle;
/* USER CODE BEGIN PV */
uartDriver SportUart;
UartTxData SportTXBuffer[3];
uint8_t SportRXBuffer[2];

uartDriver SbusUart;
//UartTxData SbusTXBuffer[3];
uint8_t SbusRXBuffer[25];

SemaphoreHandle_t powerMutex;
QueueHandle_t telemetryQueue;
QueueHandle_t powerQueue;

QueueHandle_t battQueue;

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_DMA_Init(void);
static void MX_ADC1_Init(void);
static void MX_CRC_Init(void);
static void MX_TIM2_Init(void);
static void MX_USART1_UART_Init(void);
static void MX_SPI1_Init(void);
static void MX_TIM3_Init(void);
static void MX_TIM4_Init(void);
static void MX_ADC3_Init(void);
static void MX_ADC4_Init(void);
static void MX_DAC_Init(void);
static void MX_TIM1_Init(void);
static void MX_TIM15_Init(void);
static void MX_USART3_UART_Init(void);
static void MX_TIM6_Init(void);
static void MX_SPI3_Init(void);
static void MX_TIM16_Init(void);
void StartDefaultTask(void const * argument);
void StartSendTelemetry(void const * argument);
void StartPower(void const * argument);
void StartBattVoltage(void const * argument);
void StartSbusDecoder(void const * argument);

/* USER CODE BEGIN PFP */
//extern uint8_t CDC_Transmit_FS(uint8_t* Buf, uint16_t Len);
uint8_t CRCCalc( uint8_t * packet);
HAL_StatusTypeDef SET_PWM_VALUE(uint16_t value,uint32_t channel, TIM_HandleTypeDef *htim);
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
void HardFault_Handler(void){
	HAL_GPIO_WritePin(ERROR_LED_GPIO_Port, ERROR_LED_Pin, GPIO_PIN_RESET);
	while(1){
	asm("nop");
	}
}

void BusFault_Handler(void){
	HAL_GPIO_WritePin(ERROR_LED_GPIO_Port, ERROR_LED_Pin, GPIO_PIN_RESET);
	while(1){
	HAL_GPIO_WritePin(ERROR_LED_GPIO_Port, ERROR_LED_Pin, GPIO_PIN_RESET);
	}
}


void HAL_UART_ErrorCallback(UART_HandleTypeDef *huart){


	asm("nop");
}

void HAL_UART_TxCpltCallback(UART_HandleTypeDef *huart){
	asm("nop");

	if(huart->Instance == USART1){
		osSignalSet(SendTelemetryHandle, 0x0002);
	}
}
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart){
	asm("nop");

	if(huart->Instance == USART1){
		osSignalSet(SendTelemetryHandle, 0x0001);
	}
	if(huart->Instance == USART3){
		osSignalSet(SbusDecoderHandle, 0x0001);
	}
}

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */
  

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_ADC1_Init();
  MX_CRC_Init();
  MX_TIM2_Init();
  MX_USART1_UART_Init();
  MX_SPI1_Init();
  MX_TIM3_Init();
  MX_TIM4_Init();
  MX_ADC3_Init();
  MX_ADC4_Init();
  MX_DAC_Init();
  MX_TIM1_Init();
  MX_TIM15_Init();
  MX_USART3_UART_Init();
  MX_TIM6_Init();
  MX_SPI3_Init();
  MX_TIM16_Init();
  /* USER CODE BEGIN 2 */
  SportUart = uartDriverInit(SportTXBuffer,3,SportRXBuffer,sizeof(SportRXBuffer),&huart1,RXTX);
  SbusUart = uartDriverInit(NULL,0,SbusRXBuffer,25,&huart3,RX);
  //HAL_UART_Receive_IT(&huart1, SportRXBuffer, 4);
  //HAL_UART_Receive_DMA(&huart1, SportRXBuffer, 2);

  /* USER CODE END 2 */

  /* Create the mutex(es) */
  /* definition and creation of SportMessage */
  osMutexDef(SportMessage);
  SportMessageHandle = osMutexCreate(osMutex(SportMessage));

  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  powerMutex = xSemaphoreCreateMutex();
  /* USER CODE END RTOS_MUTEX */

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* Create the queue(s) */
  /* definition and creation of telemetryRequestQueue */
  osMessageQDef(telemetryRequestQueue, 6, telemetryMessage);
  telemetryRequestQueueHandle = osMessageCreate(osMessageQ(telemetryRequestQueue), NULL);

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* definition and creation of defaultTask */
  osThreadDef(defaultTask, StartDefaultTask, osPriorityIdle, 0, 128);
  defaultTaskHandle = osThreadCreate(osThread(defaultTask), NULL);

  /* definition and creation of SendTelemetry */
  osThreadDef(SendTelemetry, StartSendTelemetry, osPriorityRealtime, 0, 256);
  SendTelemetryHandle = osThreadCreate(osThread(SendTelemetry), NULL);

  /* definition and creation of PowerParser */
  osThreadDef(PowerParser, StartPower, osPriorityNormal, 0, 192);
  PowerParserHandle = osThreadCreate(osThread(PowerParser), NULL);

  /* definition and creation of BattVoltage */
  osThreadDef(BattVoltage, StartBattVoltage, osPriorityNormal, 0, 128);
  BattVoltageHandle = osThreadCreate(osThread(BattVoltage), NULL);

  /* definition and creation of SbusDecoder */
  osThreadDef(SbusDecoder, StartSbusDecoder, osPriorityNormal, 0, 192);
  SbusDecoderHandle = osThreadCreate(osThread(SbusDecoder), NULL);

  /* USER CODE BEGIN RTOS_THREADS */
  //osThreadTerminate(SbusDecoderHandle);
  /* add threads, ... */
  /* USER CODE END RTOS_THREADS */

  /* Start scheduler */
  osKernelStart();
  
  /* We should never get here as control is now taken by the scheduler */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInit = {0};

  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_BYPASS;
  RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL6;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_1) != HAL_OK)
  {
    Error_Handler();
  }
  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_USART1|RCC_PERIPHCLK_USART3
                              |RCC_PERIPHCLK_TIM1|RCC_PERIPHCLK_ADC12
                              |RCC_PERIPHCLK_ADC34;
  PeriphClkInit.Usart1ClockSelection = RCC_USART1CLKSOURCE_PCLK2;
  PeriphClkInit.Usart3ClockSelection = RCC_USART3CLKSOURCE_PCLK1;
  PeriphClkInit.Adc12ClockSelection = RCC_ADC12PLLCLK_DIV32;
  PeriphClkInit.Adc34ClockSelection = RCC_ADC34PLLCLK_DIV32;
  PeriphClkInit.Tim1ClockSelection = RCC_TIM1CLK_HCLK;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief ADC1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_ADC1_Init(void)
{

  /* USER CODE BEGIN ADC1_Init 0 */

  /* USER CODE END ADC1_Init 0 */

  ADC_MultiModeTypeDef multimode = {0};
  ADC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN ADC1_Init 1 */

  /* USER CODE END ADC1_Init 1 */
  /** Common config 
  */
  hadc1.Instance = ADC1;
  hadc1.Init.ClockPrescaler = ADC_CLOCK_ASYNC_DIV1;
  hadc1.Init.Resolution = ADC_RESOLUTION_12B;
  hadc1.Init.ScanConvMode = ADC_SCAN_ENABLE;
  hadc1.Init.ContinuousConvMode = ENABLE;
  hadc1.Init.DiscontinuousConvMode = DISABLE;
  hadc1.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_NONE;
  hadc1.Init.ExternalTrigConv = ADC_SOFTWARE_START;
  hadc1.Init.DataAlign = ADC_DATAALIGN_RIGHT;
  hadc1.Init.NbrOfConversion = 5;
  hadc1.Init.DMAContinuousRequests = DISABLE;
  hadc1.Init.EOCSelection = ADC_EOC_SINGLE_CONV;
  hadc1.Init.LowPowerAutoWait = DISABLE;
  hadc1.Init.Overrun = ADC_OVR_DATA_OVERWRITTEN;
  if (HAL_ADC_Init(&hadc1) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure the ADC multi-mode 
  */
  multimode.Mode = ADC_MODE_INDEPENDENT;
  if (HAL_ADCEx_MultiModeConfigChannel(&hadc1, &multimode) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel 
  */
  sConfig.Channel = ADC_CHANNEL_1;
  sConfig.Rank = ADC_REGULAR_RANK_1;
  sConfig.SingleDiff = ADC_SINGLE_ENDED;
  sConfig.SamplingTime = ADC_SAMPLETIME_7CYCLES_5;
  sConfig.OffsetNumber = ADC_OFFSET_NONE;
  sConfig.Offset = 0;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel 
  */
  sConfig.Channel = ADC_CHANNEL_2;
  sConfig.Rank = ADC_REGULAR_RANK_2;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel 
  */
  sConfig.Channel = ADC_CHANNEL_3;
  sConfig.Rank = ADC_REGULAR_RANK_3;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel 
  */
  sConfig.Channel = ADC_CHANNEL_4;
  sConfig.Rank = ADC_REGULAR_RANK_4;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel 
  */
  sConfig.Channel = ADC_CHANNEL_VREFINT;
  sConfig.Rank = ADC_REGULAR_RANK_5;
  sConfig.SamplingTime = ADC_SAMPLETIME_1CYCLE_5;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN ADC1_Init 2 */

  /* USER CODE END ADC1_Init 2 */

}

/**
  * @brief ADC3 Initialization Function
  * @param None
  * @retval None
  */
static void MX_ADC3_Init(void)
{

  /* USER CODE BEGIN ADC3_Init 0 */

  /* USER CODE END ADC3_Init 0 */

  ADC_MultiModeTypeDef multimode = {0};
  ADC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN ADC3_Init 1 */

  /* USER CODE END ADC3_Init 1 */
  /** Common config 
  */
  hadc3.Instance = ADC3;
  hadc3.Init.ClockPrescaler = ADC_CLOCK_ASYNC_DIV1;
  hadc3.Init.Resolution = ADC_RESOLUTION_12B;
  hadc3.Init.ScanConvMode = ADC_SCAN_DISABLE;
  hadc3.Init.ContinuousConvMode = DISABLE;
  hadc3.Init.DiscontinuousConvMode = DISABLE;
  hadc3.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_NONE;
  hadc3.Init.ExternalTrigConv = ADC_SOFTWARE_START;
  hadc3.Init.DataAlign = ADC_DATAALIGN_RIGHT;
  hadc3.Init.NbrOfConversion = 1;
  hadc3.Init.DMAContinuousRequests = DISABLE;
  hadc3.Init.EOCSelection = ADC_EOC_SINGLE_CONV;
  hadc3.Init.LowPowerAutoWait = DISABLE;
  hadc3.Init.Overrun = ADC_OVR_DATA_OVERWRITTEN;
  if (HAL_ADC_Init(&hadc3) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure the ADC multi-mode 
  */
  multimode.Mode = ADC_MODE_INDEPENDENT;
  if (HAL_ADCEx_MultiModeConfigChannel(&hadc3, &multimode) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel 
  */
  sConfig.Channel = ADC_CHANNEL_5;
  sConfig.Rank = ADC_REGULAR_RANK_1;
  sConfig.SingleDiff = ADC_SINGLE_ENDED;
  sConfig.SamplingTime = ADC_SAMPLETIME_1CYCLE_5;
  sConfig.OffsetNumber = ADC_OFFSET_NONE;
  sConfig.Offset = 0;
  if (HAL_ADC_ConfigChannel(&hadc3, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN ADC3_Init 2 */

  /* USER CODE END ADC3_Init 2 */

}

/**
  * @brief ADC4 Initialization Function
  * @param None
  * @retval None
  */
static void MX_ADC4_Init(void)
{

  /* USER CODE BEGIN ADC4_Init 0 */

  /* USER CODE END ADC4_Init 0 */

  ADC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN ADC4_Init 1 */

  /* USER CODE END ADC4_Init 1 */
  /** Common config 
  */
  hadc4.Instance = ADC4;
  hadc4.Init.ClockPrescaler = ADC_CLOCK_ASYNC_DIV1;
  hadc4.Init.Resolution = ADC_RESOLUTION_12B;
  hadc4.Init.ScanConvMode = ADC_SCAN_DISABLE;
  hadc4.Init.ContinuousConvMode = ENABLE;
  hadc4.Init.DiscontinuousConvMode = DISABLE;
  hadc4.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_NONE;
  hadc4.Init.ExternalTrigConv = ADC_SOFTWARE_START;
  hadc4.Init.DataAlign = ADC_DATAALIGN_RIGHT;
  hadc4.Init.NbrOfConversion = 1;
  hadc4.Init.DMAContinuousRequests = DISABLE;
  hadc4.Init.EOCSelection = ADC_EOC_SINGLE_CONV;
  hadc4.Init.LowPowerAutoWait = DISABLE;
  hadc4.Init.Overrun = ADC_OVR_DATA_OVERWRITTEN;
  if (HAL_ADC_Init(&hadc4) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel 
  */
  sConfig.Channel = ADC_CHANNEL_3;
  sConfig.Rank = ADC_REGULAR_RANK_1;
  sConfig.SingleDiff = ADC_SINGLE_ENDED;
  sConfig.SamplingTime = ADC_SAMPLETIME_1CYCLE_5;
  sConfig.OffsetNumber = ADC_OFFSET_NONE;
  sConfig.Offset = 0;
  if (HAL_ADC_ConfigChannel(&hadc4, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN ADC4_Init 2 */

  /* USER CODE END ADC4_Init 2 */

}

/**
  * @brief CRC Initialization Function
  * @param None
  * @retval None
  */
static void MX_CRC_Init(void)
{

  /* USER CODE BEGIN CRC_Init 0 */

  /* USER CODE END CRC_Init 0 */

  /* USER CODE BEGIN CRC_Init 1 */

  /* USER CODE END CRC_Init 1 */
  hcrc.Instance = CRC;
  hcrc.Init.DefaultPolynomialUse = DEFAULT_POLYNOMIAL_ENABLE;
  hcrc.Init.DefaultInitValueUse = DEFAULT_INIT_VALUE_ENABLE;
  hcrc.Init.InputDataInversionMode = CRC_INPUTDATA_INVERSION_NONE;
  hcrc.Init.OutputDataInversionMode = CRC_OUTPUTDATA_INVERSION_DISABLE;
  hcrc.InputDataFormat = CRC_INPUTDATA_FORMAT_BYTES;
  if (HAL_CRC_Init(&hcrc) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN CRC_Init 2 */

  /* USER CODE END CRC_Init 2 */

}

/**
  * @brief DAC Initialization Function
  * @param None
  * @retval None
  */
static void MX_DAC_Init(void)
{

  /* USER CODE BEGIN DAC_Init 0 */

  /* USER CODE END DAC_Init 0 */

  DAC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN DAC_Init 1 */

  /* USER CODE END DAC_Init 1 */
  /** DAC Initialization 
  */
  hdac.Instance = DAC;
  if (HAL_DAC_Init(&hdac) != HAL_OK)
  {
    Error_Handler();
  }
  /** DAC channel OUT1 config 
  */
  sConfig.DAC_Trigger = DAC_TRIGGER_T6_TRGO;
  sConfig.DAC_OutputBuffer = DAC_OUTPUTBUFFER_ENABLE;
  if (HAL_DAC_ConfigChannel(&hdac, &sConfig, DAC_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN DAC_Init 2 */

  /* USER CODE END DAC_Init 2 */

}

/**
  * @brief SPI1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_SPI1_Init(void)
{

  /* USER CODE BEGIN SPI1_Init 0 */

  /* USER CODE END SPI1_Init 0 */

  /* USER CODE BEGIN SPI1_Init 1 */

  /* USER CODE END SPI1_Init 1 */
  /* SPI1 parameter configuration*/
  hspi1.Instance = SPI1;
  hspi1.Init.Mode = SPI_MODE_MASTER;
  hspi1.Init.Direction = SPI_DIRECTION_2LINES;
  hspi1.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi1.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi1.Init.CLKPhase = SPI_PHASE_1EDGE;
  hspi1.Init.NSS = SPI_NSS_SOFT;
  hspi1.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_4;
  hspi1.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi1.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi1.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi1.Init.CRCPolynomial = 7;
  hspi1.Init.CRCLength = SPI_CRC_LENGTH_DATASIZE;
  hspi1.Init.NSSPMode = SPI_NSS_PULSE_ENABLE;
  if (HAL_SPI_Init(&hspi1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SPI1_Init 2 */

  /* USER CODE END SPI1_Init 2 */

}

/**
  * @brief SPI3 Initialization Function
  * @param None
  * @retval None
  */
static void MX_SPI3_Init(void)
{

  /* USER CODE BEGIN SPI3_Init 0 */

  /* USER CODE END SPI3_Init 0 */

  /* USER CODE BEGIN SPI3_Init 1 */

  /* USER CODE END SPI3_Init 1 */
  /* SPI3 parameter configuration*/
  hspi3.Instance = SPI3;
  hspi3.Init.Mode = SPI_MODE_MASTER;
  hspi3.Init.Direction = SPI_DIRECTION_2LINES;
  hspi3.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi3.Init.CLKPolarity = SPI_POLARITY_HIGH;
  hspi3.Init.CLKPhase = SPI_PHASE_1EDGE;
  hspi3.Init.NSS = SPI_NSS_SOFT;
  hspi3.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_2;
  hspi3.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi3.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi3.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi3.Init.CRCPolynomial = 7;
  hspi3.Init.CRCLength = SPI_CRC_LENGTH_DATASIZE;
  hspi3.Init.NSSPMode = SPI_NSS_PULSE_ENABLE;
  if (HAL_SPI_Init(&hspi3) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SPI3_Init 2 */

  /* USER CODE END SPI3_Init 2 */

}

/**
  * @brief TIM1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM1_Init(void)
{

  /* USER CODE BEGIN TIM1_Init 0 */

  /* USER CODE END TIM1_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM1_Init 1 */

  /* USER CODE END TIM1_Init 1 */
  htim1.Instance = TIM1;
  htim1.Init.Prescaler = 0;
  htim1.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim1.Init.Period = 0;
  htim1.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim1.Init.RepetitionCounter = 0;
  htim1.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim1) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim1, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterOutputTrigger2 = TIM_TRGO2_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim1, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM1_Init 2 */

  /* USER CODE END TIM1_Init 2 */

}

/**
  * @brief TIM2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM2_Init(void)
{

  /* USER CODE BEGIN TIM2_Init 0 */

  /* USER CODE END TIM2_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};
  TIM_OC_InitTypeDef sConfigOC = {0};

  /* USER CODE BEGIN TIM2_Init 1 */

  /* USER CODE END TIM2_Init 1 */
  htim2.Instance = TIM2;
  htim2.Init.Prescaler = 24000;
  htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim2.Init.Period = 2000;
  htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim2.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim2) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim2, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_OC_Init(&htim2) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_UPDATE;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigOC.OCMode = TIM_OCMODE_ACTIVE;
  sConfigOC.Pulse = 0;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
  if (HAL_TIM_OC_ConfigChannel(&htim2, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM2_Init 2 */

  /* USER CODE END TIM2_Init 2 */
  HAL_TIM_MspPostInit(&htim2);

}

/**
  * @brief TIM3 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM3_Init(void)
{

  /* USER CODE BEGIN TIM3_Init 0 */

  /* USER CODE END TIM3_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM3_Init 1 */

  /* USER CODE END TIM3_Init 1 */
  htim3.Instance = TIM3;
  htim3.Init.Prescaler = 0;
  htim3.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim3.Init.Period = 0;
  htim3.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim3.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim3) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim3, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim3, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM3_Init 2 */

  /* USER CODE END TIM3_Init 2 */

}

/**
  * @brief TIM4 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM4_Init(void)
{

  /* USER CODE BEGIN TIM4_Init 0 */

  /* USER CODE END TIM4_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};
  TIM_OC_InitTypeDef sConfigOC = {0};

  /* USER CODE BEGIN TIM4_Init 1 */

  /* USER CODE END TIM4_Init 1 */
  htim4.Instance = TIM4;
  htim4.Init.Prescaler = 3-1;
  htim4.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim4.Init.Period = 1600-1;
  htim4.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim4.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim4) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim4, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_PWM_Init(&htim4) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim4, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigOC.OCMode = TIM_OCMODE_PWM1;
  sConfigOC.Pulse = 0;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
  if (HAL_TIM_PWM_ConfigChannel(&htim4, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_PWM_ConfigChannel(&htim4, &sConfigOC, TIM_CHANNEL_2) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_PWM_ConfigChannel(&htim4, &sConfigOC, TIM_CHANNEL_4) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM4_Init 2 */

  /* USER CODE END TIM4_Init 2 */
  HAL_TIM_MspPostInit(&htim4);

}

/**
  * @brief TIM6 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM6_Init(void)
{

  /* USER CODE BEGIN TIM6_Init 0 */

  /* USER CODE END TIM6_Init 0 */

  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM6_Init 1 */

  /* USER CODE END TIM6_Init 1 */
  htim6.Instance = TIM6;
  htim6.Init.Prescaler = 1;
  htim6.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim6.Init.Period = 64535;
  htim6.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_ENABLE;
  if (HAL_TIM_Base_Init(&htim6) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim6, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM6_Init 2 */

  /* USER CODE END TIM6_Init 2 */

}

/**
  * @brief TIM15 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM15_Init(void)
{

  /* USER CODE BEGIN TIM15_Init 0 */

  /* USER CODE END TIM15_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};
  TIM_OC_InitTypeDef sConfigOC = {0};
  TIM_BreakDeadTimeConfigTypeDef sBreakDeadTimeConfig = {0};

  /* USER CODE BEGIN TIM15_Init 1 */

  /* USER CODE END TIM15_Init 1 */
  htim15.Instance = TIM15;
  htim15.Init.Prescaler = 0;
  htim15.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim15.Init.Period = 0;
  htim15.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim15.Init.RepetitionCounter = 0;
  htim15.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim15) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim15, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_OC_Init(&htim15) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim15, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigOC.OCMode = TIM_OCMODE_TIMING;
  sConfigOC.Pulse = 0;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCNPolarity = TIM_OCNPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
  sConfigOC.OCIdleState = TIM_OCIDLESTATE_RESET;
  sConfigOC.OCNIdleState = TIM_OCNIDLESTATE_RESET;
  if (HAL_TIM_OC_ConfigChannel(&htim15, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_OC_ConfigChannel(&htim15, &sConfigOC, TIM_CHANNEL_2) != HAL_OK)
  {
    Error_Handler();
  }
  sBreakDeadTimeConfig.OffStateRunMode = TIM_OSSR_DISABLE;
  sBreakDeadTimeConfig.OffStateIDLEMode = TIM_OSSI_DISABLE;
  sBreakDeadTimeConfig.LockLevel = TIM_LOCKLEVEL_OFF;
  sBreakDeadTimeConfig.DeadTime = 0;
  sBreakDeadTimeConfig.BreakState = TIM_BREAK_DISABLE;
  sBreakDeadTimeConfig.BreakPolarity = TIM_BREAKPOLARITY_HIGH;
  sBreakDeadTimeConfig.BreakFilter = 0;
  sBreakDeadTimeConfig.AutomaticOutput = TIM_AUTOMATICOUTPUT_DISABLE;
  if (HAL_TIMEx_ConfigBreakDeadTime(&htim15, &sBreakDeadTimeConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM15_Init 2 */

  /* USER CODE END TIM15_Init 2 */
  HAL_TIM_MspPostInit(&htim15);

}

/**
  * @brief TIM16 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM16_Init(void)
{

  /* USER CODE BEGIN TIM16_Init 0 */

  /* USER CODE END TIM16_Init 0 */

  TIM_OC_InitTypeDef sConfigOC = {0};
  TIM_BreakDeadTimeConfigTypeDef sBreakDeadTimeConfig = {0};

  /* USER CODE BEGIN TIM16_Init 1 */

  /* USER CODE END TIM16_Init 1 */
  htim16.Instance = TIM16;
  htim16.Init.Prescaler = 0;
  htim16.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim16.Init.Period = 0;
  htim16.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim16.Init.RepetitionCounter = 0;
  htim16.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim16) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_OC_Init(&htim16) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigOC.OCMode = TIM_OCMODE_TIMING;
  sConfigOC.Pulse = 0;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCNPolarity = TIM_OCNPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
  sConfigOC.OCIdleState = TIM_OCIDLESTATE_RESET;
  sConfigOC.OCNIdleState = TIM_OCNIDLESTATE_RESET;
  if (HAL_TIM_OC_ConfigChannel(&htim16, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }
  sBreakDeadTimeConfig.OffStateRunMode = TIM_OSSR_DISABLE;
  sBreakDeadTimeConfig.OffStateIDLEMode = TIM_OSSI_DISABLE;
  sBreakDeadTimeConfig.LockLevel = TIM_LOCKLEVEL_OFF;
  sBreakDeadTimeConfig.DeadTime = 0;
  sBreakDeadTimeConfig.BreakState = TIM_BREAK_DISABLE;
  sBreakDeadTimeConfig.BreakPolarity = TIM_BREAKPOLARITY_HIGH;
  sBreakDeadTimeConfig.BreakFilter = 0;
  sBreakDeadTimeConfig.AutomaticOutput = TIM_AUTOMATICOUTPUT_DISABLE;
  if (HAL_TIMEx_ConfigBreakDeadTime(&htim16, &sBreakDeadTimeConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM16_Init 2 */

  /* USER CODE END TIM16_Init 2 */
  HAL_TIM_MspPostInit(&htim16);

}

/**
  * @brief USART1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART1_UART_Init(void)
{

  /* USER CODE BEGIN USART1_Init 0 */

  /* USER CODE END USART1_Init 0 */

  /* USER CODE BEGIN USART1_Init 1 */

  /* USER CODE END USART1_Init 1 */
  huart1.Instance = USART1;
  huart1.Init.BaudRate = 57600;
  huart1.Init.WordLength = UART_WORDLENGTH_8B;
  huart1.Init.StopBits = UART_STOPBITS_1;
  huart1.Init.Parity = UART_PARITY_NONE;
  huart1.Init.Mode = UART_MODE_TX_RX;
  huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
  huart1.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart1.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_TXINVERT_INIT|UART_ADVFEATURE_RXINVERT_INIT;
  huart1.AdvancedInit.TxPinLevelInvert = UART_ADVFEATURE_TXINV_ENABLE;
  huart1.AdvancedInit.RxPinLevelInvert = UART_ADVFEATURE_RXINV_ENABLE;
  if (HAL_HalfDuplex_Init(&huart1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART1_Init 2 */

  /* USER CODE END USART1_Init 2 */

}

/**
  * @brief USART3 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART3_UART_Init(void)
{

  /* USER CODE BEGIN USART3_Init 0 */

  /* USER CODE END USART3_Init 0 */

  /* USER CODE BEGIN USART3_Init 1 */

  /* USER CODE END USART3_Init 1 */
  huart3.Instance = USART3;
  huart3.Init.BaudRate = 100000;
  huart3.Init.WordLength = UART_WORDLENGTH_9B;
  huart3.Init.StopBits = UART_STOPBITS_2;
  huart3.Init.Parity = UART_PARITY_EVEN;
  huart3.Init.Mode = UART_MODE_RX;
  huart3.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart3.Init.OverSampling = UART_OVERSAMPLING_16;
  huart3.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart3.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_TXINVERT_INIT|UART_ADVFEATURE_RXINVERT_INIT;
  huart3.AdvancedInit.TxPinLevelInvert = UART_ADVFEATURE_TXINV_ENABLE;
  huart3.AdvancedInit.RxPinLevelInvert = UART_ADVFEATURE_RXINV_ENABLE;
  if (HAL_HalfDuplex_Init(&huart3) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART3_Init 2 */

  /* USER CODE END USART3_Init 2 */

}

/** 
  * Enable DMA controller clock
  */
static void MX_DMA_Init(void) 
{
  /* DMA controller clock enable */
  __HAL_RCC_DMA1_CLK_ENABLE();
  __HAL_RCC_DMA2_CLK_ENABLE();

  /* DMA interrupt init */
  /* DMA1_Channel1_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Channel1_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA1_Channel1_IRQn);
  /* DMA1_Channel3_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Channel3_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA1_Channel3_IRQn);
  /* DMA1_Channel4_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Channel4_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA1_Channel4_IRQn);
  /* DMA1_Channel5_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Channel5_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA1_Channel5_IRQn);
  /* DMA2_Channel2_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA2_Channel2_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA2_Channel2_IRQn);
  /* DMA2_Channel3_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA2_Channel3_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA2_Channel3_IRQn);
  /* DMA2_Channel5_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA2_Channel5_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA2_Channel5_IRQn);

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOF_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOC, ERROR_LED_Pin|AMP_CS_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOB, OUT2_Pin|OUT1_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, SPI_CS_Pin|WP_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pins : ERROR_LED_Pin AMP_CS_Pin */
  GPIO_InitStruct.Pin = ERROR_LED_Pin|AMP_CS_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pins : IN1_Pin IN2_Pin */
  GPIO_InitStruct.Pin = IN1_Pin|IN2_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pins : OUT2_Pin OUT1_Pin */
  GPIO_InitStruct.Pin = OUT2_Pin|OUT1_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pins : SPI_CS_Pin WP_Pin */
  GPIO_InitStruct.Pin = SPI_CS_Pin|WP_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

}

/* USER CODE BEGIN 4 */
#define ADC_samples 8

//Power ADC size definitions
#define powerChannels 5
#define powerBufferSize (ADC_samples*powerChannels)

//ADC Scaling definitions
#define currentScaling 0.6f
#define voltageScaling 0.15f
//#define ADC_step (3.3f/4095)
float ADC_step = (3.3f/4095);



#define VREFINT_CAL_ADDR    0x1FFFF7BA


uint16_t DAC_BUFFER[30];
uint16_t power_ADC_Buffer[powerBufferSize];
uint16_t temp_ADC_Buffer[ADC_samples];
uint16_t batVolt_ADC_Buffer[ADC_samples];

osPoolId teleRxpool;
osPoolDef(teleRxpool,6,telemetryMessage);

uint8_t CRCCalc (uint8_t *packet) {
    short crc = 0;
    for (int i=0; i<7; i++) {
        crc += packet[i]; //0-1FF
        crc += crc >> 8;  //0-100
        crc &= 0x00ff;
        crc += crc >> 8;  //0-0FF
        crc &= 0x00ff;
    }
    return ~crc;
}

HAL_StatusTypeDef SET_PWM_VALUE(uint16_t value,uint32_t channel, TIM_HandleTypeDef *htim)
{
	if(htim == NULL)
		return HAL_ERROR;
    TIM_OC_InitTypeDef sConfigOC;

    sConfigOC.OCMode = TIM_OCMODE_PWM1;
    sConfigOC.Pulse = value;
    sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
    sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
    HAL_TIM_PWM_ConfigChannel(htim, &sConfigOC, channel);
    HAL_TIM_PWM_Start(htim, channel);

    return HAL_OK;
}



/* USER CODE END 4 */

/* USER CODE BEGIN Header_StartDefaultTask */
/**
  * @brief  Function implementing the defaultTask thread.
  * @param  argument: Not used 
  * @retval None
  */
/* USER CODE END Header_StartDefaultTask */
void StartDefaultTask(void const * argument)
{

  /* USER CODE BEGIN 5 */
  HAL_GPIO_WritePin(ERROR_LED_GPIO_Port, ERROR_LED_Pin, GPIO_PIN_SET);
  //uint8_t startMsg[] = "bootrom\n";
  HAL_NVIC_DisableIRQ(DMA1_Channel1_IRQn); //Disable interrupt because the Cube won't let us and we don't need it
  HAL_ADC_Start_DMA(&hadc1, (uint32_t *)power_ADC_Buffer , powerBufferSize); // Start ESC voltage and current measurement ADC
  HAL_NVIC_DisableIRQ(DMA2_Channel2_IRQn); //Disable interrupt because the Cube won't let us and we don't need it
  HAL_ADC_Start_DMA(&hadc4, (uint32_t *)batVolt_ADC_Buffer, ADC_samples); // Start battery voltage measurement ADC
  //HAL_GPIO_WritePin(HC_OUTPUT_GPIO_Port, HC_OUTPUT_Pin, GPIO_PIN_RESET);
  if(SET_PWM_VALUE(0, TIM_CHANNEL_1, &htim4) != HAL_OK)
	  Error_Handler();
  if(SET_PWM_VALUE(0, TIM_CHANNEL_2, &htim4) != HAL_OK)
	  Error_Handler();

  //CDC_Transmit_FS(startMsg, sizeof(startMsg));
  /* Infinite loop */
  //uint8_t Msg[] = "Power";
  for(;;)
  {
	HAL_GPIO_TogglePin(ERROR_LED_GPIO_Port, ERROR_LED_Pin);
    osDelay(50);
    //uartDriverLoadData(Msg, 3, &SportUart);
    //HAL_UART_Transmit_DMA(&huart1, Msg, 3);
    //osDelay(1900);
  }
  /* USER CODE END 5 */ 
}

/* USER CODE BEGIN Header_StartSendTelemetry */
/**
* @brief Function implementing the SendTelemetry thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartSendTelemetry */
void StartSendTelemetry(void const * argument)
{
  /* USER CODE BEGIN StartSendTelemetry */

powerMessage *powerPtr;
powerMessage powerDataScaled = {.ESC1_currentValue = 0, .ESC1_powerValue = 0, .ESC1_voltageValue=0, \
		.ESC2_currentValue = 0, .ESC2_powerValue = 0,.ESC2_voltageValue= 0};
BatteryMessage *battPtr;
BatteryMessage BattVoltage = {.value = 0};

uint8_t sensorBuffer[8];
uint8_t mBuffer[4];
const uint8_t packetType = 0x10;

#define Esc1Data 0x01
#define Esc2Data 0x10
#define battData 0x02
#define  IN1_data 0x04
#define  IN2_data 0x08

uint8_t IN1_prev = GPIO_PIN_RESET;
uint8_t IN2_prev = GPIO_PIN_RESET;

uint8_t IN1_cnt = 0;
uint8_t IN2_cnt = 0;

uint8_t NewData = 0;
  /* Infinite loop */
  for(;;)
  {

	if(powerQueue != 0){
		if(xQueueReceive(powerQueue, &(powerPtr), (TickType_t)0) == pdTRUE){
			powerDataScaled.ESC1_currentValue = (powerPtr->ESC1_currentValue)*100;
			powerDataScaled.ESC1_powerValue = (powerPtr->ESC1_powerValue)*10;
			powerDataScaled.ESC1_voltageValue = (powerPtr->ESC1_voltageValue)*100;

			powerDataScaled.ESC2_currentValue = (powerPtr->ESC2_currentValue)*100;
			powerDataScaled.ESC2_powerValue = (powerPtr->ESC2_powerValue)*10;
			powerDataScaled.ESC2_voltageValue = (powerPtr->ESC2_voltageValue)*100;
			NewData |= Esc1Data;
			NewData |= Esc2Data;
		}
	}

	if(battQueue != 0){
		if(xQueueReceive(battQueue, &(battPtr), (TickType_t)0) == pdTRUE){
			BattVoltage.value = battPtr->value;
			NewData |= battData;
		}
	}

	if((IN1_prev != HAL_GPIO_ReadPin(IN1_GPIO_Port, IN1_Pin)) || (IN1_cnt >= 90)){
		IN1_prev = HAL_GPIO_ReadPin(IN1_GPIO_Port, IN1_Pin);
		NewData |= IN1_data;
		IN1_cnt = 0;
	}

	if((IN2_prev != HAL_GPIO_ReadPin(IN2_GPIO_Port, IN2_Pin))  || (IN2_cnt >= 90)){
		IN2_prev = HAL_GPIO_ReadPin(IN2_GPIO_Port, IN2_Pin);
		NewData |= IN2_data;
		IN2_cnt = 0;
	}
	IN1_cnt ++;
	IN2_cnt ++;

	osEvent signalEvent = osSignalWait(0x0001, osWaitForever);
	if(signalEvent.status == osEventSignal)
	{

		asm("nop");

		unsigned ID = 0;
		unsigned bytes = uartDriverSpace(&SportUart);

		if(bytes > 1){
			uartDriverReadData(&mBuffer, bytes, &SportUart);

			for(unsigned cnt=0;cnt<bytes;cnt++){
				ID = 0;
				if((mBuffer[cnt] == 0x7E) && ( cnt < (bytes+1)) && (mBuffer[cnt+1] != 0x00)){
					cnt++;
					ID = mBuffer[cnt];
					uint32_t dataTmp = 0;
					memset(&sensorBuffer,0,8);
					switch(ID)
					{
						case SPORT_ID3:
							//Send ESC 1 power data
							if((NewData & Esc1Data) == Esc1Data){
							sensorBuffer[0] = packetType;
							dataTmp = (uint16_t)powerDataScaled.ESC1_voltageValue;
							//dataTmp = 0xDEADBEEF;
							sensorBuffer[1] = (uint8_t)(ESC_POWER_FIRST_ID);
							sensorBuffer[2] = (uint8_t)(ESC_POWER_FIRST_ID >> 8);
							NewData &= ~Esc1Data;

							sensorBuffer[3] = (uint8_t)dataTmp;
							sensorBuffer[4] = (uint8_t)(dataTmp>>8);
							dataTmp = (uint16_t)powerDataScaled.ESC1_currentValue;
							sensorBuffer[5] = (uint8_t)(dataTmp);
							sensorBuffer[6] = (uint8_t)(dataTmp>>8);
							}
							sensorBuffer[7] = CRCCalc((uint8_t *)sensorBuffer);

							uartDriverLoadData(sensorBuffer, sizeof(sensorBuffer), &SportUart);
							osDelay(1);
							break;

						case SPORT_ID4:
							//Send ESC 2 power data
							if((NewData & Esc2Data) == Esc2Data){
							sensorBuffer[0] = packetType;
							dataTmp = (uint32_t)powerDataScaled.ESC2_voltageValue;
							sensorBuffer[1] = (uint8_t)(ESC_POWER_FIRST_ID+1);
							sensorBuffer[2] = (uint8_t)((ESC_POWER_FIRST_ID+1) >> 8);
							NewData &= ~Esc2Data;

							sensorBuffer[3] = (uint8_t)dataTmp;
							sensorBuffer[4] = (uint8_t)(dataTmp>>8);
							dataTmp = (uint16_t)powerDataScaled.ESC2_currentValue;
							sensorBuffer[5] = (uint8_t)(dataTmp);
							sensorBuffer[6] = (uint8_t)(dataTmp>>8);
							}
							sensorBuffer[7] = CRCCalc((uint8_t *)sensorBuffer);

							uartDriverLoadData(sensorBuffer, sizeof(sensorBuffer), &SportUart);
							osDelay(1);
							break;

						case SPORT_ID10:
							if((NewData & battData) == battData){
							sensorBuffer[0] = packetType;
							dataTmp = (uint32_t)BattVoltage.value;
							sensorBuffer[1] = (uint8_t)(A3_FIRST_ID);
							sensorBuffer[2] = (uint8_t)(A3_FIRST_ID>>8);
							NewData &= ~battData;
							}
							sensorBuffer[3] = (uint8_t)dataTmp;
							sensorBuffer[4] = (uint8_t)(dataTmp>>8);
							sensorBuffer[5] = (uint8_t)(dataTmp>>16);
							sensorBuffer[6] = (uint8_t)(dataTmp>>24);

							sensorBuffer[7] = CRCCalc((uint8_t *)sensorBuffer);

							uartDriverLoadData(sensorBuffer, sizeof(sensorBuffer), &SportUart);
							osDelay(1);
							break;

						case SPORT_ID12:

							if((NewData & IN1_data) == IN1_data){
								sensorBuffer[0] = packetType;
								sensorBuffer[1] = (uint8_t)(ADC1_ID);
								sensorBuffer[2] = (uint8_t)(ADC1_ID>>8);

								if(IN1_prev == GPIO_PIN_RESET)
									sensorBuffer[3] = 50;
								else{
									sensorBuffer[3] = 0xE8;
									sensorBuffer[4] = 0x03;
								}

								NewData &= ~IN1_data;
							}

							sensorBuffer[7] = CRCCalc((uint8_t *)sensorBuffer);

							uartDriverLoadData(sensorBuffer, sizeof(sensorBuffer), &SportUart);
							osDelay(1);
							break;

						case SPORT_ID13:

							if((NewData & IN2_data) == IN2_data){
								sensorBuffer[0] = packetType;
								sensorBuffer[1] = (uint8_t)(ADC2_ID);
								sensorBuffer[2] = (uint8_t)(ADC2_ID>>8);

								if(IN2_prev == GPIO_PIN_RESET)
									sensorBuffer[3] = 50;
								else{
									sensorBuffer[3] = 0xE8;
									sensorBuffer[4] = 0x03;
								}

								NewData &= ~IN2_data;
							}
							sensorBuffer[7] = CRCCalc((uint8_t *)sensorBuffer);

							uartDriverLoadData(sensorBuffer, sizeof(sensorBuffer), &SportUart);
							osDelay(1);
							break;

						default:
							break;
					}
					//osSignalWait(0x0002, 2);
				}
				else
					uartDriverDMASync(&SportUart);

			}
		}
	}
	//osDelay(1);
  }
  /* USER CODE END StartSendTelemetry */
}

/* USER CODE BEGIN Header_StartPower */
/**
* @brief Function implementing the PowerParser thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartPower */
void StartPower(void const * argument)
{
  /* USER CODE BEGIN StartPower */
	  //uint8_t Msg[] = "Power\n";
	  //CDC_Transmit_FS(Msg, sizeof(Msg));
	uint16_t measurements[powerChannels];
	#define currentScaling 0.6f
	#define voltageScaling 0.15f
	//#define ADC_step (3.3f/1024)


	powerMessage power_new = {.ESC1_currentValue = 0, .ESC1_powerValue = 0, .ESC1_voltageValue=0, \
			.ESC2_currentValue = 0, .ESC2_powerValue = 0,.ESC2_voltageValue= 0};
	powerMessage *msgPtr;

	float temp = 0.0f;
	powerQueue = xQueueCreate(1,sizeof(powerMessage * ));
  /* Infinite loop */
  for(;;)
  {
	  //uint16_t test = sizeof(measurements);
	 memset((uint16_t*)measurements,0,sizeof(measurements));
	 /*
	 for(uint8_t s=0; s < powerChannels; s++)
	 {
		 measurements[s] = 0;
	 }
	  */
	 for(uint8_t ch=0; ch < powerChannels; ch++)
	 {
		 uint32_t loopTemp=0;
		 for(uint8_t buf=ch;buf<(powerBufferSize-ch); buf+=powerChannels)
		 {
			 loopTemp += power_ADC_Buffer[buf];
		 }
		 measurements[ch] = (loopTemp/ADC_samples);
	 }


		 temp = 0.0f;
		 //ESC1 Voltage scaled
		 temp = measurements[0]*ADC_step;
		 temp /= voltageScaling;
		 power_new.ESC1_voltageValue = temp;

		 temp = 0.0f;
		 //ESC2 Voltage scaled
		 temp = measurements[1]*ADC_step;
		 temp /= voltageScaling;
		 power_new.ESC2_voltageValue = temp;

		 temp = 0.0f;
		 //ESC1 Current scaled
		 temp = measurements[2]*ADC_step;
		 temp /= currentScaling;
		 if(temp > 0.5){
			 temp -= 0.5f; //Subtract offset value;
		 	 temp /= 0.04f; //Calculate Amps with formula 40mV/A
		 }
		 else
			 temp = 0;
		 power_new.ESC1_currentValue = temp;

		 temp = 0.0f;
		 //ESC2 Current scaled
		 temp = measurements[3]*ADC_step;
		 temp /= currentScaling;
		 if(temp > 0.5){
			 temp -= 0.5f; //Subtract offset value;
		 	 temp /= 0.04f; //Calculate Amps with formula 40mV/A
		 }
		 else
			 temp = 0;
		 power_new.ESC2_currentValue = temp;

		 temp = measurements[4];

		 //uint16_t vrefint_cal;                        // VREFINT calibration value
		 //vrefint_cal= *((uint16_t*)VREFINT_CAL_ADDR); // read VREFINT_CAL_ADDR memory location

		 if(temp != 0)
			 ADC_step = (3.3f*(*((uint16_t*)VREFINT_CAL_ADDR)/temp))/4095;



		 power_new.ESC1_powerValue = (power_new.ESC1_currentValue*power_new.ESC1_voltageValue);
		 power_new.ESC2_powerValue = (power_new.ESC2_currentValue*power_new.ESC2_voltageValue);
		 msgPtr = & power_new;
		 if(powerQueue != NULL)
			 xQueueOverwrite(powerQueue,( void * ) &msgPtr);
		 osDelay(1000);

  }
  /* USER CODE END StartPower */
}

/* USER CODE BEGIN Header_StartBattVoltage */
/**
* @brief Function implementing the BattVoltage thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartBattVoltage */
void StartBattVoltage(void const * argument)
{
  /* USER CODE BEGIN StartBattVoltage */
	BatteryMessage Bat = {.value = 0};
	float temp = 0.0f;
	BatteryMessage *msgPtr;
	while(battQueue == NULL){
		battQueue = xQueueCreate(1,sizeof(BatteryMessage * ));
		osDelay(10);

	}
	/* Infinite loop */
	for(;;)
	{
	  uint32_t loopTemp = 0;
	for(unsigned i=0;i<ADC_samples;i++){
		loopTemp += batVolt_ADC_Buffer[i];
	}
	temp = (loopTemp/ADC_samples);
	temp = (temp*ADC_step);
	temp /= 0.15f ;
	Bat.value = 100*temp;
	msgPtr = & Bat;
	if(battQueue != NULL)
		xQueueOverwrite(battQueue,( void * ) &msgPtr);
	osDelay(1000);
	}
  /* USER CODE END StartBattVoltage */
}

/* USER CODE BEGIN Header_StartSbusDecoder */
/**
* @brief Function implementing the SbusDecoder thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartSbusDecoder */
void StartSbusDecoder(void const * argument)
{
  /* USER CODE BEGIN StartSbusDecoder */
	uint8_t SbusBuf[25];
	uint16_t Channels[20];
	uint8_t flagByte = 0;



  /* Infinite loop */
  for(;;)
  {
	  osEvent signalEvent = osSignalWait(0x0001, osWaitForever);
	  if(signalEvent.status == osEventSignal){
		  unsigned bytes = uartDriverSpace(&SbusUart);
		  if(bytes == 25){
			  uartDriverReadData(SbusBuf, bytes, &SbusUart);
			  uint8_t offset = 0;

			  for(int i = 0; i < 25; i++){
				  if((SbusBuf[i] == 0x0F) && (SbusBuf[(i+24)%25] == 0x00)){
					  offset = i;
					  break;
				  }
			  }


			  if((SbusBuf[(offset + 0) % 25] == 0x0F) && (SbusBuf[(offset + 24) % 25] == 0x00)){



				  //CH1 value
				  Channels[0] = ((SbusBuf[(offset + 1) % 25]|SbusBuf[(offset + 2) % 25]<<8) & 0x7FF);
				  //CH2 value
				  Channels[1] = ((SbusBuf[(offset + 2) % 25]>>3|SbusBuf[(offset + 3) % 25]<<5) & 0x7FF);
				  //CH3 value
				  Channels[2] = ((SbusBuf[(offset + 3) % 25]>>6|SbusBuf[(offset + 4) % 25]<<2|SbusBuf[(offset + 5) % 25]<<10) & 0x7FF);
				  //CH4 value
				  Channels[3] = ((SbusBuf[(offset + 5) % 25]>>1|SbusBuf[(offset + 6) % 25]<<7) & 0x7FF);
				  //CH5 value
				  Channels[4] = ((SbusBuf[(offset + 6) % 25]>>4|SbusBuf[(offset + 7) % 25]<<4) & 0x7FF);
				  //CH6 value
				  Channels[5] = ((SbusBuf[(offset + 7) % 25]>>7|SbusBuf[(offset + 8) % 25]<<1|SbusBuf[(offset + 9) % 25]<<9) & 0x7FF);
				  //CH7 value
				  Channels[6] = ((SbusBuf[(offset + 9) % 25]>>2|SbusBuf[(offset + 10) % 25]<<6) & 0x7FF);
				  //CH8 value
				  Channels[7] = ((SbusBuf[(offset + 10) % 25]>>5|SbusBuf[(offset + 11) % 25]<<3) & 0x7FF);
				  //CH9 value
				  Channels[8]  = ((SbusBuf[(offset + 12) % 25]|SbusBuf[(offset + 13) % 25]<< 8) & 0x07FF);
				  //CH10 value
				  Channels[9]  = ((SbusBuf[(offset + 13) % 25]>>3|SbusBuf[(offset + 14) % 25]<<5) & 0x07FF);
				  //CH11 value
				  Channels[10] = ((SbusBuf[(offset + 14) % 25]>>6|SbusBuf[(offset + 15) % 25]<<2|SbusBuf[16]<<10) & 0x07FF);
				  //CH12 value
				  Channels[11] = ((SbusBuf[(offset + 16) % 25]>>1|SbusBuf[(offset + 17) % 25]<<7) & 0x07FF);
				  //CH13 value
				  Channels[12] = ((SbusBuf[(offset + 17) % 25]>>4|SbusBuf[(offset + 18) % 25]<<4) & 0x07FF);
				  //CH14 value
				  Channels[13] = ((SbusBuf[(offset + 18) % 25]>>7|SbusBuf[(offset + 19) % 25]<<1|SbusBuf[(offset + 20) % 25]<<9) & 0x07FF);
				  //CH15 value
				  Channels[14] = ((SbusBuf[(offset + 20) % 25]>>2|SbusBuf[(offset + 21) % 25]<<6) & 0x07FF);
				  //CH16 value
				  Channels[15] = ((SbusBuf[(offset + 21) % 25]>>5|SbusBuf[(offset + 22) % 25]<<3) & 0x07FF);

				  //flag byte: [0 0 0 0 failsafe frame_lost ch18 ch17]
				  flagByte = SbusBuf[(offset + 23) % 25];


				  //Channels[]

				  //Channels[0] = SbusBuf[1]+SbusBuf[2]>>
				  //asm("nop");



			  }
		  }
	  }

	  uint8_t channelsReady = 1;
	  for(uint8_t i = 0; i < 16; i++){
		  if(Channels[i] < 172){
			  channelsReady = 0;
			  break;
		  }
	  }

	  if(channelsReady){
		  uint16_t temp = 0;
		  temp = (Channels[4] - 172);
		  	  SET_PWM_VALUE(temp, TIM_CHANNEL_1, &htim4);
		  temp = (Channels[5] - 172);
			  SET_PWM_VALUE(temp, TIM_CHANNEL_2, &htim4);
		  temp = (Channels[6] - 172);
			  SET_PWM_VALUE(temp, TIM_CHANNEL_4, &htim4);

		  temp = (Channels[7] - 172);
		  if(temp > 1400){
			  HAL_GPIO_WritePin(OUT2_GPIO_Port, OUT2_Pin, GPIO_PIN_SET);
			  HAL_GPIO_WritePin(OUT1_GPIO_Port, OUT1_Pin, GPIO_PIN_RESET);
		  }
		  else if(temp < 600){
			  HAL_GPIO_WritePin(OUT2_GPIO_Port, OUT2_Pin, GPIO_PIN_RESET);
			  HAL_GPIO_WritePin(OUT1_GPIO_Port, OUT1_Pin, GPIO_PIN_RESET);
		  }
		  else{
			  HAL_GPIO_WritePin(OUT2_GPIO_Port, OUT2_Pin, GPIO_PIN_SET);
			  HAL_GPIO_WritePin(OUT1_GPIO_Port, OUT1_Pin, GPIO_PIN_SET);
		  }

		  temp = (Channels[8] - 172);
		  if(temp  > 1400)
			  HAL_GPIO_WritePin(OUT1_GPIO_Port, OUT1_Pin, GPIO_PIN_SET);
		  else if(temp < 200)
			  HAL_GPIO_WritePin(OUT1_GPIO_Port, OUT1_Pin, GPIO_PIN_RESET);



	  }

	  //osDelay(1);
  }
  /* USER CODE END StartSbusDecoder */
}

/**
  * @brief  Period elapsed callback in non blocking mode
  * @note   This function is called  when TIM7 interrupt took place, inside
  * HAL_TIM_IRQHandler(). It makes a direct call to HAL_IncTick() to increment
  * a global variable "uwTick" used as application time base.
  * @param  htim : TIM handle
  * @retval None
  */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* USER CODE BEGIN Callback 0 */

  /* USER CODE END Callback 0 */
  if (htim->Instance == TIM7) {
    HAL_IncTick();
  }
  /* USER CODE BEGIN Callback 1 */

  /* USER CODE END Callback 1 */
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
	HAL_GPIO_WritePin(ERROR_LED_GPIO_Port, ERROR_LED_Pin, GPIO_PIN_RESET);
	while(1){
	asm("nop");
	}
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(char *file, uint32_t line)
{ 
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

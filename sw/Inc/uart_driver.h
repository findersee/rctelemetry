/*
 * uart_driver.h
 *
 *  Created on: Jun 13, 2019
 *      Author: Finder
 */

#ifndef INC_UART_DRIVER_H_
#define INC_UART_DRIVER_H_

#include "main.h"

#include "stm32f3xx_hal.h"
#include "stm32f3xx_hal_uart.h"
#include "stm32f3xx_hal_dma.h"
#include <string.h>
#include <stdlib.h>
#include <stdint.h>

#ifdef __cplusplus
 extern "C" {
#endif

typedef enum { RX,TX,RXTX} UartMode;

typedef struct
{
	const void * data;
	unsigned size;
}UartTxData;


typedef struct
{
	UartTxData *txBuf;
	unsigned txBufSize;
	uint8_t *rxBuf;
	unsigned rxBufSize;
	UART_HandleTypeDef *huart;
	unsigned rxBufHead;
	unsigned rxBufTail;
	unsigned txBufHead;
	unsigned txBufTail;
	UartMode Mode;
	uint8_t txActive;

}uartDriver;







uartDriver uartDriverInit(UartTxData * Txbuffer,unsigned TxBufferSize,uint8_t * RxBuffer,unsigned RxBufferSize,UART_HandleTypeDef *huart_,UartMode mode);
uint8_t uartDriverLoadData(const void *data_,unsigned bytes,uartDriver *_driver);
unsigned uartDriverSpace(uartDriver *_driver);
void uartDriverReadData(void *_buffer,unsigned _bytes,uartDriver *_driver);
void uartDriverClearRxBuffer(uartDriver *_driver);
void uartDriverDMASync(uartDriver *_driver);


//void HAL_UART_TxCpltCallback(UART_HandleTypeDef *huart);

#endif /* INC_UART_DRIVER_H_ */

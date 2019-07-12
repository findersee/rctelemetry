/*
 * uart_driver.h
 *
 *  Created on: Jun 13, 2019
 *      Author: Finder
 */

#ifndef INC_UART_DRIVER_H_
#define INC_UART_DRIVER_H_

#include "main.h"
#include <stdint.h>

#ifdef __cplusplus
 extern "C" {
#endif

typedef struct
{
	uint8_t *TxBuffer;
	unsigned TxBufferSize;
	uint8_t *RxBuffer;
	unsigned RxBufferSize;
	UART_HandleTypeDef *huart;
	unsigned rxBufHead;
	unsigned rxBufTail;
	unsigned txBufHead;
	unsigned txBufTail;

}uartDriver;

struct TxDataStruct
{
	const void * data;
	unsigned size;
};

uartDriver uartDriverInit(uint8_t * Txbuffer,unsigned TxBufferSize,uint8_t * RxBuffer,unsigned RxBufferSize,UART_HandleTypeDef *huart_);
uint8_t uartDriverLoadData(const void *data_,unsigned bytes,uartDriver *_driver);
unsigned uartDriverSpace(uartDriver *_driver);
void uartDriverReadData(void *_buffer,unsigned _bytes,uartDriver *_driver);


#endif /* INC_UART_DRIVER_H_ */

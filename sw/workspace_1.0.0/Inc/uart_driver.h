/*
 * uart_driver.h
 *
 *  Created on: Jun 13, 2019
 *      Author: Finder
 */

#ifndef INC_UART_DRIVER_H_
#define INC_UART_DRIVER_H_

#include "main.h"

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
	uint8_t rxBufHead;
	uint8_t rxBufTail;



}uartDriver;


uartDriver uartDriverInit(uint8_t *Txbuffer,uint8_t TxBufferSize,uint8_t *RxBuffer,uint8_t RxBufferSize,UART_HandleTypeDef *huart_);
void uartDriverLoadData(const void *data_,unsigned bytes,uartDriver *driver);
uint8_t uartDriverSpace(uartDriver *driver);
void uartDriverReadData(void *buffer,uint8_t bytes,uartDriver *driver);


#endif /* INC_UART_DRIVER_H_ */

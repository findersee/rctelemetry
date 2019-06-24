/*
 * uart_driver.c
 *
 *  Created on: Jun 23, 2019
 *      Author: Finder
 */

#include "uart_driver.h"
#include "stm32f3xx_hal.h"
#include <string.h>

uartDriver uartDriverInit(uint8_t * TxBuffer,unsigned TxBufferSize,uint8_t * RxBuffer,unsigned RxBufferSize,UART_HandleTypeDef *_huart){
		uartDriver driver;
		driver.huart = _huart;
		driver.rxBufHead = 0;
		driver.rxBufTail = 0;
		driver.txBufHead = 0;
		driver.txBufTail = 0;
		driver.RxBuffer = RxBuffer;
		driver.TxBuffer = TxBuffer;
		driver.RxBufferSize = RxBufferSize;
		driver.TxBufferSize = TxBufferSize;
		HAL_DMA_Start(_huart->hdmarx, _huart->Instance->RDR, (uint32_t)RxBuffer, RxBufferSize);
		return driver;

		if(_huart->Instance == USART1){

		}
		else if(_huart->Instance == USART2){

		}
		else
			Error_Handler();
}

void uartDriverReadData(void *_buffer,unsigned _bytes,uartDriver *_driver){

	unsigned tail = _driver->rxBufTail;

	memcpy(_buffer,_driver->RxBuffer,_bytes);
	_driver->rxBufTail = (tail+50)%(_driver->RxBufferSize);
}

unsigned uartDriverDataReady(uartDriver *driver_){

	unsigned head = driver_->RxBufferSize-__HAL_DMA_GET_COUNTER(driver_->huart->hdmarx);
	return (head - driver_->rxBufTail + driver_->RxBufferSize) % (driver_->RxBufferSize);
}

uint8_t uartDriverLoadData(const void *data,unsigned bytes,uartDriver *_driver){

	if(_driver == NULL)
		return 0;
	if(data == NULL && bytes < 1)
		return 0;

	unsigned head = _driver->txBufHead;

	unsigned spaceInBuffer = (_driver->TxBufferSize - 1) - ((head - _driver->txBufTail) + _driver->TxBufferSize) % _driver->TxBufferSize;

	if(bytes > spaceInBuffer)
		return 0;

	for(unsigned i=0;i<bytes;i++){
	_driver->TxBuffer[head] = data+i;
	head = (head + 1) % _driver->TxBufferSize;
	}

	if ((_driver->huart->hdmatx->Instance->CCR & DMA_CCR_EN) == 0){
	HAL_DMA_Start_IT(_driver->huart->hdmatx,_driver->TxBuffer, _driver->huart->Instance->TDR, bytes);
	}
}

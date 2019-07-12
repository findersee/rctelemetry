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

		HAL_StatusTypeDef temp;

		if(_huart->Instance == USART1){
			temp = HAL_DMA_Start(_huart->hdmarx, _huart->Instance->RDR, (uint32_t)RxBuffer, RxBufferSize);
			temp = 0;
		}
		else if(_huart->Instance == USART3){
			HAL_DMA_Start(_huart->hdmarx, _huart->Instance->RDR, (uint32_t)RxBuffer, RxBufferSize);
		}
		else
			Error_Handler();
		return driver;
}

void uartDriverReadData(void *_buffer,unsigned _bytes,uartDriver *_driver){

	unsigned tail = _driver->rxBufTail;

	memcpy(_buffer,_driver->RxBuffer,_bytes);
	_driver->rxBufHead = (tail+_bytes)%(_driver->RxBufferSize);
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
	_driver->TxBuffer[head] = *((uint8_t *)data+i);
	head = (head + 1) % _driver->TxBufferSize;
	}

	_driver->txBufHead = head;
	if ((_driver->huart->hdmatx->Instance->CCR & DMA_CCR_EN) == 0){
	HAL_DMA_Start_IT(_driver->huart->hdmatx,(uint32_t)(_driver->TxBuffer), (uint32_t)(_driver->huart->Instance->TDR), (uint32_t)bytes);
	}
	return 1;
}

unsigned uartDriverSpace(uartDriver *_driver){

	unsigned head = _driver->RxBufferSize - __HAL_DMA_GET_COUNTER(_driver->huart->hdmarx);
	return (head - _driver->rxBufTail + _driver->RxBufferSize) & _driver->RxBufferSize;

}

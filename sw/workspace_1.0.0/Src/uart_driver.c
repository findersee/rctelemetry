/*
 * uart_driver.c
 *
 *  Created on: Jun 23, 2019
 *      Author: Finder
 */

#include "uart_driver.h"

uartDriver uartDriverInit(uint8_t *TxBuffer,unsigned TxBufferSize,uint8_t *RxBuffer,unsigned RxBufferSize,UART_HandleTypeDef *_huart){
		uartDriver driver;
		driver.huart = _huart;
		driver.rxBufHead = 0;
		driver.rxBufTail = 0;
		driver.RxBuffer = RxBuffer;
		driver.TxBuffer = TxBuffer;
		driver.RxBufferSize = RxBufferSize;
		driver.TxBufferSize = TxBufferSize;
		HAL_DMA_Start(_huart->hdmarx, _huart->Instance->RDR, Rxbuffer, RxBufferSize);
		return driver;

		if(_huart->Instance == USART1){

		}
		else if(_huart->Instance == USART2){

		}
		else
			Error_Handler();
}

void uartDriverReadData(void *buffer_,unsigned bytes,uartDriver *_driver){

	unsigned tail = _driver->rxBufTail;

	memcpy(buffer,_driver->RxBuffer,bytes);
	driver_->rxBufTail = (tail+50)%(_driver->RxBufferSize);
}

unsigned uartDriverDataReady(uartDriver *driver_){

	unsigned head = driver_->RxBufferSize-__HAL_DMA_GET_COUNTER(driver_->huart->hdmarx);
	return (head - driver_->rxBufTail + driver_->RxBufferSize) % (driver_->RxBufferSize);
}

void uartDriverLoadData(const void *data,unsigned bytes,uartDriver *_driver){

	HAL_DMA_Start_IT(_driver->huart->hdmatx,_driver->TxBuffer, DstAddress, DataLength)

}

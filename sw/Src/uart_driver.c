/*
 * uart_driver.c
 *
 *  Created on: Jun 23, 2019
 *      Author: Finder
 */

#include "uart_driver.h"

uartDriver *driverList[3];
extern uartDriver SportUart;
static void StartTXDMA(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t DataLength);
static void UART_DMAReceiveCplt(DMA_HandleTypeDef *hdma)
{
	UART_HandleTypeDef* huart = (UART_HandleTypeDef*)(hdma->Parent);

	HAL_UART_RxCpltCallback(huart);
}

static void UART_DMATransmitCplt(DMA_HandleTypeDef *hdma)
{
	UART_HandleTypeDef* huart = (UART_HandleTypeDef*)(hdma->Parent);

	uartDriver *_driver = 0;


	if(huart->Instance == USART1){
		_driver = &SportUart;
		__HAL_DMA_DISABLE(hdma);
		//__HAL_DMA_CLEAR_FLAG(hdma)

		_driver->txBufTail = (_driver->txBufTail + 8) % _driver->TxBufferSize;


		if(_driver->txBufHead !=_driver->txBufTail)
		{
			__HAL_UART_CLEAR_FLAG(huart,UART_FLAG_TC);

			StartTXDMA(hdma,(uint32_t)(_driver->TxBuffer), (uint32_t)&(_driver->huart->Instance->TDR), (uint32_t)8);
			SET_BIT(_driver->huart->Instance->CR3, USART_CR3_DMAT);
		}

	}
	else if(huart->Instance == USART2){

	}
	else if(huart->Instance == USART3){

	}


	HAL_UART_TxCpltCallback(huart);
}


static void StartTXDMA(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t DataLength)
{

  /* Check the parameters */
  assert_param(IS_DMA_BUFFER_SIZE(DataLength));

  /* Process locked */
  __HAL_LOCK(hdma);

  if(HAL_DMA_STATE_READY == hdma->State)
  {
  	/* Change DMA peripheral state */
  	hdma->State = HAL_DMA_STATE_BUSY;

  	hdma->ErrorCode = HAL_DMA_ERROR_NONE;

  	/* Disable the peripheral */
  	hdma->Instance->CCR &= ~DMA_CCR_EN;

  	hdma->XferCpltCallback = UART_DMATransmitCplt;

  	/* Configure the source, destination address and the data length */

  	hdma->DmaBaseAddress->IFCR  = (DMA_FLAG_GL1 << hdma->ChannelIndex);

  	hdma->Instance->CNDTR = DataLength;

  	hdma->Instance->CPAR = DstAddress;

  	hdma->Instance->CMAR = SrcAddress;

  	/* Enable the transfer complete interrupt */
  	/* Half transfer interrupt is optional: enable it only if associated callback is available */
	hdma->Instance->CCR |= (DMA_IT_TC);

  	/* Enable the Peripheral */
  	hdma->Instance->CCR |= DMA_CCR_EN;
  	__HAL_UNLOCK(hdma);
  }
  else
  {
  	/* Process Unlocked */
    __HAL_UNLOCK(hdma);

    /* Remain BUSY */
  }

}




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


		if(_huart->Instance == USART1){

			driverList[0] = &driver;
			//__HAL_LOCK(_huart);
			_huart->hdmarx->XferCpltCallback = UART_DMAReceiveCplt;
			_huart->hdmarx->XferHalfCpltCallback = UART_DMAReceiveCplt;
			HAL_DMA_Start_IT(_huart->hdmarx, (uint32_t)&_huart->Instance->RDR, (uint32_t)driver.RxBuffer, driver.RxBufferSize);

			//__HAL_UNLOCK(_huart);
			SET_BIT(_huart->Instance->CR3, USART_CR3_DMAR);
			//SET_BIT(_huart->Instance->CR1, USART_CR1_RXNEIE);
			return driver;
		}
		else if(_huart->Instance == USART3){

			driverList[2] = &driver;
			//__HAL_LOCK(_huart);
			_huart->hdmarx->XferCpltCallback = UART_DMAReceiveCplt;
			_huart->hdmarx->XferHalfCpltCallback = UART_DMAReceiveCplt;
			HAL_DMA_Start_IT(_huart->hdmarx, (uint32_t)&_huart->Instance->RDR, (uint32_t)driver.RxBuffer, driver.RxBufferSize);

			//__HAL_UNLOCK(_huart);
			SET_BIT(_huart->Instance->CR3, USART_CR3_DMAR);
			//SET_BIT(_huart->Instance->CR1, USART_CR1_RXNEIE);
			return driver;
		}
		else
			Error_Handler();
		return driver;
}

void uartDriverReadData(void *_buffer,unsigned _bytes,uartDriver *_driver){

	unsigned tail = _driver->rxBufTail;


	for(unsigned i=0;i<_bytes;i++){
		((uint8_t*)_buffer)[i] = _driver->RxBuffer[tail];
		tail = (tail+1) % _driver->RxBufferSize;
	}

	_driver->rxBufTail = tail;
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
	//Start DMA transfer
	if ((_driver->huart->hdmatx->Instance->CCR & DMA_CCR_EN) == 0){
		StartTXDMA(_driver->huart->hdmatx,(uint32_t)(_driver->TxBuffer), (uint32_t)&(_driver->huart->Instance->TDR), (uint32_t)bytes);
		SET_BIT(_driver->huart->Instance->CR3, USART_CR3_DMAT);
	}
	return 1;
}

unsigned uartDriverSpace(uartDriver *_driver){

	unsigned head = _driver->RxBufferSize - __HAL_DMA_GET_COUNTER(_driver->huart->hdmarx);
	return (head - _driver->rxBufTail + _driver->RxBufferSize) % _driver->RxBufferSize;

}
/*
void HAL_UART_TxCpltCallback(UART_HandleTypeDef *huart){

	if(huart->Instance == USART1){

		SportUart.txBufTail = (SportUart.txBufTail + __HAL_DMA_GET_COUNTER(huart->hdmatx)) % SportUart.TxBufferSize;

		if(SportUart.txBufHead != SportUart.rxBufTail){

		}
		asm("nop");
	}

	else if(huart->Instance == USART3){

	}
}
*/

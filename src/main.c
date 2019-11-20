/**
  ******************************************************************************
  * @file    main.c
  * @author  Ac6
  * @version V1.0
  * @date    01-December-2013
  * @brief   Default main function.
  ******************************************************************************
*/


#include "stm32f4xx.h"
#include "FreeRTOS.h"
#include "task.h"

#define FALSE			0
#define TRUE			1

#define AVAILABLE		TRUE
#define NOT_AVAILABLE	FALSE

void Task1_Handler(void *params);
void Task2_Handler(void *params);

TaskHandle_t xTaskHandle1 = NULL;
TaskHandle_t xTaskHandle2 = NULL;

uint8_t UART_ACCESS_KEY = AVAILABLE;

int main(void)
{

	DWT->CTRL |= (1 << 0);

	RCC_DeInit();

	SystemCoreClockUpdate();

	SEGGER_SYSVIEW_Conf();
	SEGGER_SYSVIEW_Start();

	xTaskCreate(Task1_Handler, "Task_1", configMINIMAL_STACK_SIZE, NULL, 2, &xTaskHandle1);
	xTaskCreate(Task1_Handler, "Task_2", configMINIMAL_STACK_SIZE, NULL, 2, &xTaskHandle2);

	vTaskStartScheduler();

	for(;;);
}

void Task1_Handler(void *params)
{
	while(1)
	{
		if(UART_ACCESS_KEY == AVAILABLE)
		{
			UART_ACCESS_KEY = NOT_AVAILABLE;
			UART_ACCESS_KEY = AVAILABLE;
			taskYIELD();
		}
	}
}

void Task2_Handler(void *params)
{
	while(2)
	{
		if(UART_ACCESS_KEY == AVAILABLE)
		{
			UART_ACCESS_KEY = NOT_AVAILABLE;
			UART_ACCESS_KEY = AVAILABLE;
			taskYIELD();
		}
	}
}

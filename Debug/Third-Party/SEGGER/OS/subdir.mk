################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Third-Party/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.c 

OBJS += \
./Third-Party/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.o 

C_DEPS += \
./Third-Party/SEGGER/OS/SEGGER_SYSVIEW_FreeRTOS.d 


# Each subdirectory must supply rules for building sources it contributes
Third-Party/SEGGER/OS/%.o: ../Third-Party/SEGGER/OS/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32 -DSTM32F4 -DSTM32F411RETx -DNUCLEO_F411RE -DDEBUG -DSTM32F411xE -DUSE_STDPERIPH_DRIVER -I"/Users/sung/RTOS_workspace/project/StdPeriph_Driver/inc" -I"/Users/sung/RTOS_workspace/project/Third-Party/SEGGER/Config" -I"/Users/sung/RTOS_workspace/project/Third-Party/SEGGER/OS" -I"/Users/sung/RTOS_workspace/project/Third-Party/SEGGER/SEGGER" -I"/Users/sung/RTOS_workspace/project/Third-Party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"/Users/sung/RTOS_workspace/project/Third-Party/FreeRTOS/org/Source/include" -I"/Users/sung/RTOS_workspace/project/Config" -I"/Users/sung/RTOS_workspace/project/inc" -I"/Users/sung/RTOS_workspace/project/CMSIS/device" -I"/Users/sung/RTOS_workspace/project/CMSIS/core" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



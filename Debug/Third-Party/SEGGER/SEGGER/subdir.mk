################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Third-Party/SEGGER/SEGGER/SEGGER_RTT.c \
../Third-Party/SEGGER/SEGGER/SEGGER_SYSVIEW.c 

OBJS += \
./Third-Party/SEGGER/SEGGER/SEGGER_RTT.o \
./Third-Party/SEGGER/SEGGER/SEGGER_SYSVIEW.o 

C_DEPS += \
./Third-Party/SEGGER/SEGGER/SEGGER_RTT.d \
./Third-Party/SEGGER/SEGGER/SEGGER_SYSVIEW.d 


# Each subdirectory must supply rules for building sources it contributes
Third-Party/SEGGER/SEGGER/%.o: ../Third-Party/SEGGER/SEGGER/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -DSTM32 -DSTM32F4 -DSTM32F411RETx -DNUCLEO_F411RE -DDEBUG -DSTM32F411xE -DUSE_STDPERIPH_DRIVER -I"/Users/sung/RTOS_workspace/project/StdPeriph_Driver/inc" -I"/Users/sung/RTOS_workspace/project/Third-Party/SEGGER/Config" -I"/Users/sung/RTOS_workspace/project/Third-Party/SEGGER/OS" -I"/Users/sung/RTOS_workspace/project/Third-Party/SEGGER/SEGGER" -I"/Users/sung/RTOS_workspace/project/Third-Party/FreeRTOS/org/Source/portable/GCC/ARM_CM4F" -I"/Users/sung/RTOS_workspace/project/Third-Party/FreeRTOS/org/Source/include" -I"/Users/sung/RTOS_workspace/project/Config" -I"/Users/sung/RTOS_workspace/project/inc" -I"/Users/sung/RTOS_workspace/project/CMSIS/device" -I"/Users/sung/RTOS_workspace/project/CMSIS/core" -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



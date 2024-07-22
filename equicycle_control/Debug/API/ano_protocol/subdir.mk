################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../API/ano_protocol/ano_protocol.c 

OBJS += \
./API/ano_protocol/ano_protocol.o 

C_DEPS += \
./API/ano_protocol/ano_protocol.d 


# Each subdirectory must supply rules for building sources it contributes
API/ano_protocol/%.o API/ano_protocol/%.su API/ano_protocol/%.cyclo: ../API/ano_protocol/%.c API/ano_protocol/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"C:/Files/WorkSpace/CubeIDE/equicycle_control/API/ano_protocol" -I"C:/Files/WorkSpace/CubeIDE/equicycle_control/API/vofa_protocol" -I"C:/Files/WorkSpace/CubeIDE/equicycle_control/API/wit_imu" -I"C:/Files/WorkSpace/CubeIDE/equicycle_control/control/balance" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-API-2f-ano_protocol

clean-API-2f-ano_protocol:
	-$(RM) ./API/ano_protocol/ano_protocol.cyclo ./API/ano_protocol/ano_protocol.d ./API/ano_protocol/ano_protocol.o ./API/ano_protocol/ano_protocol.su

.PHONY: clean-API-2f-ano_protocol


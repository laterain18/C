################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../API/vofa_protocol/vofa_protocol.c 

OBJS += \
./API/vofa_protocol/vofa_protocol.o 

C_DEPS += \
./API/vofa_protocol/vofa_protocol.d 


# Each subdirectory must supply rules for building sources it contributes
API/vofa_protocol/%.o API/vofa_protocol/%.su API/vofa_protocol/%.cyclo: ../API/vofa_protocol/%.c API/vofa_protocol/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"C:/Files/WorkSpace/CubeIDE/equicycle_control/API/ano_protocol" -I"C:/Files/WorkSpace/CubeIDE/equicycle_control/API/vofa_protocol" -I"C:/Files/WorkSpace/CubeIDE/equicycle_control/API/wit_imu" -I"C:/Files/WorkSpace/CubeIDE/equicycle_control/control/balance" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-API-2f-vofa_protocol

clean-API-2f-vofa_protocol:
	-$(RM) ./API/vofa_protocol/vofa_protocol.cyclo ./API/vofa_protocol/vofa_protocol.d ./API/vofa_protocol/vofa_protocol.o ./API/vofa_protocol/vofa_protocol.su

.PHONY: clean-API-2f-vofa_protocol


################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../control/balance/balance.c 

OBJS += \
./control/balance/balance.o 

C_DEPS += \
./control/balance/balance.d 


# Each subdirectory must supply rules for building sources it contributes
control/balance/%.o control/balance/%.su control/balance/%.cyclo: ../control/balance/%.c control/balance/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"C:/Files/WorkSpace/CubeIDE/equicycle_control/API/ano_protocol" -I"C:/Files/WorkSpace/CubeIDE/equicycle_control/API/vofa_protocol" -I"C:/Files/WorkSpace/CubeIDE/equicycle_control/API/wit_imu" -I"C:/Files/WorkSpace/CubeIDE/equicycle_control/control/balance" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-control-2f-balance

clean-control-2f-balance:
	-$(RM) ./control/balance/balance.cyclo ./control/balance/balance.d ./control/balance/balance.o ./control/balance/balance.su

.PHONY: clean-control-2f-balance


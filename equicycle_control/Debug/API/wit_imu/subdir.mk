################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../API/wit_imu/wit_imu.c 

OBJS += \
./API/wit_imu/wit_imu.o 

C_DEPS += \
./API/wit_imu/wit_imu.d 


# Each subdirectory must supply rules for building sources it contributes
API/wit_imu/%.o API/wit_imu/%.su API/wit_imu/%.cyclo: ../API/wit_imu/%.c API/wit_imu/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H743xx -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"C:/Files/WorkSpace/CubeIDE/equicycle_control/API/ano_protocol" -I"C:/Files/WorkSpace/CubeIDE/equicycle_control/API/vofa_protocol" -I"C:/Files/WorkSpace/CubeIDE/equicycle_control/API/wit_imu" -I"C:/Files/WorkSpace/CubeIDE/equicycle_control/control/balance" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-API-2f-wit_imu

clean-API-2f-wit_imu:
	-$(RM) ./API/wit_imu/wit_imu.cyclo ./API/wit_imu/wit_imu.d ./API/wit_imu/wit_imu.o ./API/wit_imu/wit_imu.su

.PHONY: clean-API-2f-wit_imu


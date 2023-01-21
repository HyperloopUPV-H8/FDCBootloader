################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/syscalls.c \
../Src/sysmem.c 

CPP_SRCS += \
../Src/FDCBootloader.cpp 

OBJS += \
./Src/FDCBootloader.o \
./Src/syscalls.o \
./Src/sysmem.o 

C_DEPS += \
./Src/syscalls.d \
./Src/sysmem.d 

CPP_DEPS += \
./Src/FDCBootloader.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o Src/%.su: ../Src/%.cpp Src/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m7 -std=gnu++20 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H723xx -c -I"/home/predawnia/Desktop/Hyperloop UPV/H8/ST-LIB" -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"/home/predawnia/Desktop/Hyperloop UPV/H8/ST-LIB/Inc" -I"/home/predawnia/Desktop/Hyperloop UPV/H8/ST-LIB/Inc/HALAL/Models" -I"/home/predawnia/Desktop/Hyperloop UPV/H8/ST-LIB/Inc/HALAL/Services" -I"/home/predawnia/Desktop/Hyperloop UPV/H8/ST-LIB/Inc/ST-LIB_LOW" -I"/home/predawnia/Desktop/Hyperloop UPV/H8/ST-LIB/Inc/ST-LIB_HIGH" -I../Inc -I../Inc/Models -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
Src/%.o Src/%.su: ../Src/%.c Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H723xx -c -I"/home/predawnia/Desktop/Hyperloop UPV/H8/ST-LIB" -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"/home/predawnia/Desktop/Hyperloop UPV/H8/ST-LIB/Inc" -I"/home/predawnia/Desktop/Hyperloop UPV/H8/ST-LIB/Inc/HALAL/Models" -I"/home/predawnia/Desktop/Hyperloop UPV/H8/ST-LIB/Inc/HALAL/Services" -I"/home/predawnia/Desktop/Hyperloop UPV/H8/ST-LIB/Inc/ST-LIB_LOW" -I"/home/predawnia/Desktop/Hyperloop UPV/H8/ST-LIB/Inc/ST-LIB_HIGH" -I../Inc -I"/home/predawnia/Desktop/Hyperloop UPV/H8/BMSH/BMS-LIB/Inc/Models" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Src

clean-Src:
	-$(RM) ./Src/FDCBootloader.d ./Src/FDCBootloader.o ./Src/FDCBootloader.su ./Src/syscalls.d ./Src/syscalls.o ./Src/syscalls.su ./Src/sysmem.d ./Src/sysmem.o ./Src/sysmem.su

.PHONY: clean-Src


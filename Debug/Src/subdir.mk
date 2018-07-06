################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Src/dweet.c \
../Src/gpio.c \
../Src/main.c \
../Src/spi.c \
../Src/stm32f1xx_hal_msp.c \
../Src/stm32f1xx_it.c \
../Src/system_stm32f1xx.c \
../Src/usart.c \
../Src/util.c \
../Src/wiznet_ll.c 

OBJS += \
./Src/dweet.o \
./Src/gpio.o \
./Src/main.o \
./Src/spi.o \
./Src/stm32f1xx_hal_msp.o \
./Src/stm32f1xx_it.o \
./Src/system_stm32f1xx.o \
./Src/usart.o \
./Src/util.o \
./Src/wiznet_ll.o 

C_DEPS += \
./Src/dweet.d \
./Src/gpio.d \
./Src/main.d \
./Src/spi.d \
./Src/stm32f1xx_hal_msp.d \
./Src/stm32f1xx_it.d \
./Src/system_stm32f1xx.d \
./Src/usart.d \
./Src/util.d \
./Src/wiznet_ll.d 


# Each subdirectory must supply rules for building sources it contributes
Src/%.o: ../Src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/tpv/dev/mashina/esp8266_stm32f103/wiznet5100/Inc" -I"/home/tpv/dev/mashina/esp8266_stm32f103/wiznet5100/ioLibrary_Driver/Internet/httpServer" -I"/home/tpv/dev/mashina/esp8266_stm32f103/wiznet5100/ioLibrary_Driver/Ethernet" -I"/home/tpv/dev/mashina/esp8266_stm32f103/wiznet5100/ioLibrary_Driver/Ethernet/W5100" -I"/home/tpv/dev/mashina/esp8266_stm32f103/wiznet5100/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/tpv/dev/mashina/esp8266_stm32f103/wiznet5100/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/tpv/dev/mashina/esp8266_stm32f103/wiznet5100/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"/home/tpv/dev/mashina/esp8266_stm32f103/wiznet5100/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



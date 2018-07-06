################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ioLibrary_Driver/Internet/DNS/dns.c 

OBJS += \
./ioLibrary_Driver/Internet/DNS/dns.o 

C_DEPS += \
./ioLibrary_Driver/Internet/DNS/dns.d 


# Each subdirectory must supply rules for building sources it contributes
ioLibrary_Driver/Internet/DNS/%.o: ../ioLibrary_Driver/Internet/DNS/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed="__attribute__((__packed__))"' -DUSE_HAL_DRIVER -DSTM32F103xB -I"/home/tpv/dev/mashina/esp8266_stm32f103/wiznet5100/Inc" -I"/home/tpv/dev/mashina/esp8266_stm32f103/wiznet5100/ioLibrary_Driver/Internet/httpServer" -I"/home/tpv/dev/mashina/esp8266_stm32f103/wiznet5100/ioLibrary_Driver/Ethernet" -I"/home/tpv/dev/mashina/esp8266_stm32f103/wiznet5100/ioLibrary_Driver/Ethernet/W5100" -I"/home/tpv/dev/mashina/esp8266_stm32f103/wiznet5100/Drivers/STM32F1xx_HAL_Driver/Inc" -I"/home/tpv/dev/mashina/esp8266_stm32f103/wiznet5100/Drivers/STM32F1xx_HAL_Driver/Inc/Legacy" -I"/home/tpv/dev/mashina/esp8266_stm32f103/wiznet5100/Drivers/CMSIS/Device/ST/STM32F1xx/Include" -I"/home/tpv/dev/mashina/esp8266_stm32f103/wiznet5100/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



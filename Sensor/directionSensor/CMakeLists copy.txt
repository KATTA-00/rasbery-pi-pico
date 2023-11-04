cmake_minimum_required(VERSION 3.12)

# Pull in SDK (must be before project)
include(F:/RaspberryPI/Pico/pico-sdk/external/pico_sdk_import.cmake)

project(directionSensor C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# Initialize the SDK
pico_sdk_init()

add_executable(${PROJECT_NAME}
        directionSensor.c
        )


# pull in common dependencies
target_link_libraries(${PROJECT_NAME} pico_stdlib pico_binary_info hardware_i2c)

# create map/bin/hex file etc.
pico_add_extra_outputs(${PROJECT_NAME})

pico_enable_stdio_usb(${PROJECT_NAME} 1)
pico_enable_stdio_uart(${PROJECT_NAME} 0)




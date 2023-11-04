# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "F:/RaspberryPI/Pico/pico-sdk/tools/pioasm"
  "F:/PROJECTS/Raspberi Pi Pico/Sensor/analogRead/build/pioasm"
  "F:/PROJECTS/Raspberi Pi Pico/Sensor/analogRead/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm"
  "F:/PROJECTS/Raspberi Pi Pico/Sensor/analogRead/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/tmp"
  "F:/PROJECTS/Raspberi Pi Pico/Sensor/analogRead/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/src/PioasmBuild-stamp"
  "F:/PROJECTS/Raspberi Pi Pico/Sensor/analogRead/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/src"
  "F:/PROJECTS/Raspberi Pi Pico/Sensor/analogRead/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/src/PioasmBuild-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "F:/PROJECTS/Raspberi Pi Pico/Sensor/analogRead/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/src/PioasmBuild-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "F:/PROJECTS/Raspberi Pi Pico/Sensor/analogRead/build/pico-sdk/src/rp2_common/cyw43_driver/pioasm/src/PioasmBuild-stamp${cfgdir}") # cfgdir has leading slash
endif()

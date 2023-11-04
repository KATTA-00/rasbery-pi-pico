
#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/gpio.h"
#include "hardware/adc.h"

int main()
{
    stdio_init_all();
    printf("Start\n");

    adc_init();

    adc_gpio_init(26);
    adc_select_input(0);

    const uint LED_PIN = 25;

    gpio_init(LED_PIN);
    gpio_set_dir(LED_PIN, GPIO_OUT);

    while (1)
    {
        printf("HII\n");

        // 12-bit conversion, assume max value == ADC_VREF == 3.3 V
        const float conversion_factor = 3.3f / (1 << 12);
        int result = adc_read();
        printf("Raw value: %d, voltage: %f V\n", result, result * conversion_factor);
        sleep_ms(10);

        gpio_put(LED_PIN, 1);
        //sleep_ms(100);
        //gpio_put(LED_PIN, 0);
        //sleep_ms(100);
    }
}
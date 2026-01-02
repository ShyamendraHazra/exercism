#include "armstrong_numbers.h"
#include <stdint.h>
#include <math.h>

bool is_armstrong_number(int candidate) {

    bool armstrong = false;
    int tmp_cand = candidate;
    int8_t digits[100] = {0};
    int8_t dig_count = 0;
    int sum = 0;
    while(tmp_cand > 0) {
        
        digits[dig_count++] = tmp_cand % 10;
        tmp_cand /= 10;
    }

    for(int8_t it = 0; it < dig_count; it++) {
        sum+= pow(digits[it], dig_count);
    }

    if (sum == candidate) {
        armstrong = true;
    }

    return armstrong;
}

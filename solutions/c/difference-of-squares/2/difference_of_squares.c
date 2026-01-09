#include "difference_of_squares.h"
#include <math.h>

unsigned int sum_of_squares(unsigned int number) {
   unsigned int sum = 0;

    sum =  number*(number+1)*((2*number)+1) / 6;

   return sum;
}



unsigned int square_of_sum(unsigned int number) {
   unsigned int sum = 0;
   
   sum = number*(number+1) / 2;

   sum=pow(sum, 2);
   return sum;
}


unsigned int difference_of_squares(unsigned int number) {
   unsigned int diff;
   unsigned int sum_square = 0;
   unsigned int square_sum = 0;
   sum_square = sum_of_squares(number);
   square_sum = square_of_sum(number);

   diff = square_sum - sum_square;

   return diff;
}


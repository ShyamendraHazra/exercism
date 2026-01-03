#include "leap.h"

bool leap_year(int year) {
   bool leap_year = false;
   int tmp_year = year;

   if((year % 100) == 0) {
      tmp_year /= 100;
   }

   if((tmp_year % 4) == 0) {
      leap_year = true;
   }

   return leap_year;
}


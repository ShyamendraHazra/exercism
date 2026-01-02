pub fn isLeapYear(year: u32) bool {
    var leap_year : bool = false;
    var tmp_year = @as(u32, year);
    if((year % 100) == 0) {
        tmp_year /= 100;
    }

    if((tmp_year % 4) == 0) {
        leap_year = true;
    }


    return leap_year;
}

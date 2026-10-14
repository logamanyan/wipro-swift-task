// Task 1.10: Leap year check.
// A year is a leap year if divisible by 4, except century years,
// which must be divisible by 400.

func isLeapYear(_ year: Int) -> Bool {
    if year % 400 == 0 {
        return true
    } else if year % 100 == 0 {
        return false
    } else {
        return year % 4 == 0
    }
}

for year in [1900, 2000, 2024, 2026] {
    print("\(year) is \(isLeapYear(year) ? "a leap year" : "not a leap year")")
}

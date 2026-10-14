// Additional Task 2: Leap year and range checks, written as pure Bool
// expressions (no if statements).

// 1. Leap year: divisible by 4, except centuries, unless divisible by 400.
func isLeapYear(_ year: Int) -> Bool {
    (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
}

for year in [1900, 2000, 2024, 2026] {
    print("\(year) leap year? \(isLeapYear(year))")
}
// Expected: 1900 false, 2000 true, 2024 true, 2026 false

// 2. Is a number between 1 and 100 inclusive? Use a closed range.
func isInRange(_ n: Int) -> Bool {
    (1...100).contains(n)
}
print("50 in 1...100? \(isInRange(50))")
print("101 in 1...100? \(isInRange(101))")

// 3. Even and not a multiple of 10.
func isEvenNotMultipleOfTen(_ n: Int) -> Bool {
    n % 2 == 0 && n % 10 != 0
}
print("24: \(isEvenNotMultipleOfTen(24))")   // true
print("40: \(isEvenNotMultipleOfTen(40))")   // false
print("7: \(isEvenNotMultipleOfTen(7))")     // false

// 4. Nil-coalescing operator: use the nickname, or "Guest" if it is nil.
let nickname: String? = nil
print(nickname ?? "Guest")

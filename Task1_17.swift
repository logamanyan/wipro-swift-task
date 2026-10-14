// Task 1.17: Palindrome check (121) and Armstrong number check (153).

func isPalindrome(_ number: Int) -> Bool {
    var n = number
    var reversed = 0
    while n > 0 {
        reversed = reversed * 10 + n % 10
        n /= 10
    }
    return reversed == number
}

func isArmstrong(_ number: Int) -> Bool {
    // Count the digits.
    var digitCount = 0
    var temp = number
    while temp > 0 {
        digitCount += 1
        temp /= 10
    }

    // Sum each digit raised to the power of the digit count.
    var total = 0
    temp = number
    while temp > 0 {
        let digit = temp % 10
        var power = 1
        for _ in 0..<digitCount { power *= digit }
        total += power
        temp /= 10
    }
    return total == number
}

for num in [121, 123, 153, 370, 100] {
    print("\(num): palindrome = \(isPalindrome(num)), Armstrong = \(isArmstrong(num))")
}

// Task 1.11: Sum of digits of a number using a while loop (1234 -> 10).

var n = 1234
let original = n
var sum = 0

while n > 0 {
    sum += n % 10   // take the last digit
    n /= 10         // drop the last digit
}

print("Sum of digits of \(original) is \(sum)")

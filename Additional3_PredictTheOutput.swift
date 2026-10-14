// Additional Task 3: Predict the output. Expected results are in comments.

print(7 / 2)                      // 3     integer division drops the fraction
print(7 % 2)                      // 1     remainder
print(-7 % 3)                     // -1    remainder takes the sign of the left operand
print(7.0 / 2)                    // 3.5   Double division keeps the fraction
print(10 - 2 * 3 + 4 / 2)         // 6     10 - 6 + 2
print(5 > 3 && 2 > 4 || true)     // true  && binds tighter: (true && false) || true
print(1 << 3)                     // 8     shift left by 3 bits = 1 * 2^3
print(6 & 3, 6 | 3, 6 ^ 3)        // 2 7 5 AND = 010, OR = 111, XOR = 101
let x: UInt8 = 255
print(x &+ 1)                     // 0     overflow operator wraps around instead of crashing

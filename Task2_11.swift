// Task 2.11: Sum of squares of the even numbers from 1...20
// using filter, map and reduce.

let result = (1...20)
    .filter { $0 % 2 == 0 }     // 2, 4, 6, ..., 20
    .map { $0 * $0 }            // 4, 16, 36, ..., 400
    .reduce(0, +)               // add them all together

print("Sum of squares of even numbers 1...20 = \(result)")   // 1540

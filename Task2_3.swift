// Task 2.3: Sum and average of an array of numbers.

let values = [10, 20, 30, 40, 50]
var sum = 0

for value in values {
    sum += value
}

let average = Double(sum) / Double(values.count)
print("Sum: \(sum)")
print("Average: \(average)")

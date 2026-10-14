// Task 2.1: Array of 5 integers: print it, its count, first and last elements.

let numbers = [12, 7, 25, 3, 18]

print("Array: \(numbers)")
print("Count: \(numbers.count)")

// first and last are optional because an array can be empty.
if let first = numbers.first, let last = numbers.last {
    print("First: \(first)")
    print("Last: \(last)")
}

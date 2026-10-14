// Task 2.8: Check whether a value exists in an array using contains.

let primes = [2, 3, 5, 7, 11, 13]

for target in [7, 8] {
    if primes.contains(target) {
        print("\(target) is in the array")
    } else {
        print("\(target) is not in the array")
    }
}

// Task 1.9: Largest of three numbers using nested if.

let x = 15
let y = 72
let z = 38

let largest: Int

if x >= y {
    if x >= z {
        largest = x
    } else {
        largest = z
    }
} else {
    if y >= z {
        largest = y
    } else {
        largest = z
    }
}

print("Largest of \(x), \(y), \(z) is \(largest)")

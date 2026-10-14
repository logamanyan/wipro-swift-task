// Task 2.10: Remove duplicates while keeping the original order.

let input = [4, 2, 4, 7, 2, 9, 7, 1]
var seen = Set<Int>()
var unique: [Int] = []

for item in input {
    // insert returns inserted == false if the element was already present.
    if seen.insert(item).inserted {
        unique.append(item)
    }
}

print("Input:  \(input)")
print("Unique: \(unique)")   // [4, 2, 7, 9, 1]

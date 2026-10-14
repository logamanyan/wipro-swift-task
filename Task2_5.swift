// Task 2.5: A Set removes duplicates automatically.

let withDuplicates: Set = [1, 2, 2, 3, 3, 3, 4, 5, 5]

print("Set: \(withDuplicates.sorted())")   // sorted only so the output is stable
print("Count: \(withDuplicates.count)")    // 5, not 9: duplicates were dropped

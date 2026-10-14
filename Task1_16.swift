// Task 1.16: Right-angled triangle of stars using nested loops.

let rows = 5

print("Full triangle:")
for row in 1...rows {
    for _ in 1...row {
        print("*", terminator: "")
    }
    print()
}

// Variation: use continue to skip even rows.
print("\nEven rows skipped:")
for row in 1...rows {
    if row % 2 == 0 { continue }
    for _ in 1...row {
        print("*", terminator: "")
    }
    print()
}

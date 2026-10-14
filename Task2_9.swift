// Task 2.9: Reverse an array without using reversed().

var items = [1, 2, 3, 4, 5, 6]
print("Original: \(items)")

// Swap elements from both ends moving toward the middle.
var left = 0
var right = items.count - 1
while left < right {
    let temp = items[left]
    items[left] = items[right]
    items[right] = temp
    left += 1
    right -= 1
}

print("Reversed: \(items)")

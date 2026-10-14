// Task 2.15: Second largest element of an [Int].

func secondLargest(in array: [Int]) -> Int? {
    var largest: Int?
    var second: Int?

    for item in array {
        if largest == nil || item > largest! {
            if let currentLargest = largest, currentLargest != item {
                second = currentLargest
            }
            largest = item
        } else if item != largest && (second == nil || item > second!) {
            second = item
        }
    }
    return second
}

let sample = [12, 35, 1, 10, 34, 1, 35]
if let answer = secondLargest(in: sample) {
    print("Second largest in \(sample) is \(answer)")   // 34
} else {
    print("No second largest element")
}

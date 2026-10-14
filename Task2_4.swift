// Task 2.4: Maximum and minimum without using max() / min().

let data = [14, 3, 92, 45, 8, 61]

if var largest = data.first {
    var smallest = largest
    for item in data {
        if item > largest { largest = item }
        if item < smallest { smallest = item }
    }
    print("Maximum: \(largest)")
    print("Minimum: \(smallest)")
} else {
    print("The array is empty")
}

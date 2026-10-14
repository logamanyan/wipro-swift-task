// Task 2.14: Sort a dictionary by marks (descending) and print the top 3.

let marks = ["Anu": 88, "Ben": 72, "Chitra": 95, "Dev": 64, "Esha": 81]

// A dictionary is unordered, so sorted() returns an array of (key, value) pairs.
let ranked = marks.sorted { $0.value > $1.value }

print("Top 3 students:")
for (index, entry) in ranked.prefix(3).enumerated() {
    print("\(index + 1). \(entry.key) - \(entry.value)")
}

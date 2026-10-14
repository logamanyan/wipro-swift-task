// Additional Task 2: Word frequency counter.

let text = "swift is fun and swift is fast"

// (a) number of words
let words = text.split(separator: " ").map(String.init)
print("(a) Number of words: \(words.count)")                 // 7

// (b) unique words
let uniqueWords = Set(words)
print("(b) Unique words: \(uniqueWords.sorted())")           // 5 unique words

// (c) how often each word appears
var counts: [String: Int] = [:]
for word in words {
    counts[word, default: 0] += 1
}
print("(c) Frequencies: \(counts.sorted { $0.key < $1.key })")

// (d) words ranked by frequency, ties broken alphabetically
let ranked = counts.sorted {
    if $0.value != $1.value {
        return $0.value > $1.value
    }
    return $0.key < $1.key
}
print("(d) Ranked:")
for entry in ranked {
    print("   \(entry.key): \(entry.value)")
}
// Expected order: is 2, swift 2, and 1, fast 1, fun 1

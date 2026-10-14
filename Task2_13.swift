// Task 2.13: Word frequency in a sentence, stored in a dictionary.

let sentence = "to be or not to be"
var frequency: [String: Int] = [:]

for word in sentence.split(separator: " ") {
    // The default value of 0 is used the first time a word appears.
    frequency[String(word), default: 0] += 1
}

for word in frequency.keys.sorted() {
    print("\(word): \(frequency[word]!)")
}

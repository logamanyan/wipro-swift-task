// Task 2.17: Group names by first letter: [Character: [String]].

let names = ["Anu", "Arjun", "Ben", "Bala", "Chitra", "Charan", "Dev"]
var groups: [Character: [String]] = [:]

for name in names {
    if let initial = name.first {
        groups[initial, default: []].append(name)
    }
}

for letter in groups.keys.sorted() {
    print("\(letter): \(groups[letter]!)")
}

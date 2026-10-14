// Additional Task 3: Set algebra and de-duplication.

let swiftClub: Set = ["Anu", "Ben", "Chitra", "Dev"]
let uiClub: Set = ["Chitra", "Dev", "Esha"]

print("(a) In both clubs: \(swiftClub.intersection(uiClub).sorted())")          // Chitra, Dev
print("(b) Only in Swift club: \(swiftClub.subtracting(uiClub).sorted())")      // Anu, Ben
print("(c) Everyone: \(swiftClub.union(uiClub).sorted())")
print("(d) In exactly one club: \(swiftClub.symmetricDifference(uiClub).sorted())")  // Anu, Ben, Esha

// Remove duplicates from an array while keeping the original order.
let numbers = [3, 1, 3, 2, 1, 4]
var seen = Set<Int>()
var unique: [Int] = []
for n in numbers where seen.insert(n).inserted {
    unique.append(n)
}
print("Without duplicates: \(unique)")   // [3, 1, 2, 4]

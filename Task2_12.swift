// Task 2.12: Set operations.

let setA: Set = [1, 2, 3, 4, 5]
let setB: Set = [4, 5, 6, 7]

print("A: \(setA.sorted())")
print("B: \(setB.sorted())")
print("Union: \(setA.union(setB).sorted())")                                   // [1...7]
print("Intersection: \(setA.intersection(setB).sorted())")                     // [4, 5]
print("Subtracting (A - B): \(setA.subtracting(setB).sorted())")               // [1, 2, 3]
print("Symmetric difference: \(setA.symmetricDifference(setB).sorted())")      // [1, 2, 3, 6, 7]

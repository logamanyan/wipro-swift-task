// Task 3.11: Value types (struct) vs reference types (class).

struct PointStruct {
    var x: Int
}

class PointClass {
    var x: Int
    init(x: Int) { self.x = x }
}

// Struct: assigning makes an independent copy.
let originalStruct = PointStruct(x: 1)
var copiedStruct = originalStruct
copiedStruct.x = 99
print("Struct original: \(originalStruct.x), copy: \(copiedStruct.x)")   // 1, 99

// Class: assigning copies the reference, so both names point to one object.
let originalClass = PointClass(x: 1)
let copiedClass = originalClass
copiedClass.x = 99
print("Class original: \(originalClass.x), copy: \(copiedClass.x)")      // 99, 99

// Explanation:
// A struct is a value type. Each variable holds its own copy of the data,
// so changing the copy leaves the original untouched.
// A class is a reference type. Both constants refer to the same object in memory,
// so a change made through one name is visible through the other.

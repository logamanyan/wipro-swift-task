// Additional Task 3: Why does this not compile?

struct Counter {
    var value = 0
    mutating func increment() { value += 1 }
}

class Box {
    var value = 0
    func increment() { value += 1 }
}

// The original code had this error:
//
//     let c = Counter()
//     c.increment()      // error: cannot use mutating member on immutable value: 'c' is a 'let' constant
//
// Reason: Counter is a struct (value type). increment() is mutating, so it changes
// the struct's own stored value. A struct stored in a `let` constant is entirely
// immutable, so a mutating method cannot be called on it.
//
// Fix: declare it with `var`.
var c = Counter()
c.increment()
print("Counter value: \(c.value)")   // 1

// Why the class version is fine: a class is a reference type. The `let` constant
// `b` only fixes which object it refers to, not the contents of that object, so
// the object's properties can still change.
let b = Box()
b.increment()
print("Box value: \(b.value)")   // 1

// === checks identity: do two constants refer to the same object?
let sameBox = b
let otherBox = Box()
print("b === sameBox: \(b === sameBox)")       // true
print("b === otherBox: \(b === otherBox)")     // false

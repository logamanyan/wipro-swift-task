// Task 3.16: Static properties and methods.

struct MathHelper {
    static func square(_ n: Int) -> Int {
        return n * n
    }
}

// Static members belong to the type, so no instance is needed.
print("Square of 9 = \(MathHelper.square(9))")

class Counter {
    // One shared value for the whole class, tracking instances created.
    static var instanceCount = 0

    init() {
        Counter.instanceCount += 1
    }
}

_ = Counter()
_ = Counter()
_ = Counter()
print("Counter instances created: \(Counter.instanceCount)")   // 3

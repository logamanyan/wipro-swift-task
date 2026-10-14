// Task 3.4: Student.isPassed() returns true if marks >= 40.

struct Student {
    var name: String
    var rollNumber: Int
    var marks: Int

    func isPassed() -> Bool {
        return marks >= 40
    }
}

let anu = Student(name: "Anu", rollNumber: 101, marks: 88)
let ben = Student(name: "Ben", rollNumber: 102, marks: 35)

print("\(anu.name) passed? \(anu.isPassed())")   // true
print("\(ben.name) passed? \(ben.isPassed())")   // false

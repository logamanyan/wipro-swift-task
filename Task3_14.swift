// Task 3.14: Failable initialiser that returns nil for marks outside 0-100.

struct Student {
    var name: String
    var rollNumber: Int
    var marks: Int

    init?(name: String, rollNumber: Int, marks: Int) {
        guard (0...100).contains(marks) else {
            return nil
        }
        self.name = name
        self.rollNumber = rollNumber
        self.marks = marks
    }
}

if let valid = Student(name: "Anu", rollNumber: 101, marks: 88) {
    print("Created \(valid.name) with \(valid.marks) marks")
}

if Student(name: "Ben", rollNumber: 102, marks: 150) == nil {
    print("Could not create Ben: marks must be between 0 and 100")
}

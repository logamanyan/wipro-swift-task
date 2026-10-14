// Task 3.3: Struct Student with two instances.

struct Student {
    var name: String
    var rollNumber: Int
    var marks: Int
}

let student1 = Student(name: "Anu", rollNumber: 101, marks: 88)
let student2 = Student(name: "Ben", rollNumber: 102, marks: 35)

for student in [student1, student2] {
    print("Name: \(student.name), Roll: \(student.rollNumber), Marks: \(student.marks)")
}

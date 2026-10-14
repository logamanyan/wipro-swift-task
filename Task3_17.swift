// Task 3.17: Mini project - Student Management System.
import Foundation

enum Grade: String {
    case a = "A", b = "B", c = "C", d = "D", f = "F"

    // Convert marks to a grade.
    static func from(marks: Int) -> Grade {
        switch marks {
        case 90...: return .a
        case 80..<90: return .b
        case 70..<80: return .c
        case 60..<70: return .d
        default: return .f
        }
    }
}

struct Student {
    let name: String
    let marks: Int

    var grade: Grade {
        return Grade.from(marks: marks)
    }
}

class School {
    private var students: [Student] = []

    func add(_ student: Student) {
        students.append(student)
    }

    func printReport() {
        let sorted = students.sorted { $0.marks > $1.marks }
        print("Rank  Name        Marks  Grade")
        for (index, student) in sorted.enumerated() {
            let name = student.name.padding(toLength: 10, withPad: " ", startingAt: 0)
            print("\(index + 1)     \(name)  \(student.marks)     \(student.grade.rawValue)")
        }
    }
}

let school = School()
school.add(Student(name: "Anu", marks: 88))
school.add(Student(name: "Ben", marks: 72))
school.add(Student(name: "Chitra", marks: 95))
school.add(Student(name: "Dev", marks: 45))
school.printReport()

// Additional Task 1 (Topic 4): Course registration.

// Step 1: array of subjects.
var subjects = ["Swift", "UIKit", "SwiftUI"]
subjects.append("Networking")
subjects.insert("Testing", at: 1)
if let index = subjects.firstIndex(of: "UIKit") {
    subjects.remove(at: index)
}
print("Sorted subjects: \(subjects.sorted())")

// Step 2: set of registered students; duplicates are ignored.
var registered: Set<String> = ["Asha", "Ravi"]
registered.insert("Asha")
registered.insert("Asha")
print("Registered count: \(registered.count)")   // 2

// Step 3: dictionary of marks.
var marks: [String: Int] = ["Asha": 82, "Ravi": 67, "Meena": 91]
marks["Karan"] = 74          // add a student
marks["Ravi"] = 70           // update a mark
print("Mark for Zed: \(String(describing: marks["Zed"]))")   // nil: not in the dictionary
print("Mark for Zed with default: \(marks["Zed", default: 0])")

// Step 4: loop in order of student name.
for name in marks.keys.sorted() {
    print("\(name): \(marks[name]!)")
}

// Step 5: highest mark and who earned it.
if let top = marks.max(by: { $0.value < $1.value }) {
    print("Highest mark: \(top.value) by \(top.key)")
}

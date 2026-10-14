// Additional Task 1 (Topic 5): Library item model.

// Step 1: enum with associated values.
// (The exercise text says "dueIns"; it is written here as dueIn, meaning days until due.)
enum BookStatus {
    case available
    case borrowed(by: String, dueIn: Int)
    case reserved(for: String)

    // Step 2: readable label using switch.
    var label: String {
        switch self {
        case .available:
            return "Available"
        case .borrowed(let by, let dueIn):
            return "Borrowed by \(by), due in \(dueIn) days"
        case .reserved(let name):
            return "Reserved for \(name)"
        }
    }
}

// Step 3: struct Book with a default status.
struct Book {
    var title: String
    var status: BookStatus = .available
}

// Step 4: class Member.
class Member {
    var name: String
    var borrowedBooks: [Book] = []

    init(name: String) {
        self.name = name
    }
}

// Step 5: copying a struct gives an independent value.
let book1 = Book(title: "Swift Basics")
var book2 = book1
book2.status = .borrowed(by: "Asha", dueIn: 7)
print("book1: \(book1.status.label)")   // Available
print("book2: \(book2.status.label)")   // Borrowed by Asha, due in 7 days

// Step 6: assigning a class instance shares the same object.
let member1 = Member(name: "Asha")
let member2 = member1
member2.name = "Ravi"    // allowed even though member2 is a let constant
print("member1: \(member1.name)")   // Ravi
print("member2: \(member2.name)")   // Ravi

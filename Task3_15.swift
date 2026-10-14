// Task 3.15: Book and Library classes.

class Book {
    let title: String
    let author: String

    init(title: String, author: String) {
        self.title = title
        self.author = author
    }
}

class Library {
    private var books: [Book] = []

    func add(_ book: Book) {
        books.append(book)
        print("Added: \(book.title)")
    }

    func remove(title: String) {
        if let index = books.firstIndex(where: { $0.title.lowercased() == title.lowercased() }) {
            books.remove(at: index)
            print("Removed: \(title)")
        } else {
            print("Cannot remove '\(title)': not found")
        }
    }

    func search(title: String) -> Book? {
        return books.first { $0.title.lowercased() == title.lowercased() }
    }

    func listBooks() {
        if books.isEmpty {
            print("The library has no books")
            return
        }
        print("Books in library:")
        for book in books {
            print(" - \(book.title) by \(book.author)")
        }
    }
}

let library = Library()
library.add(Book(title: "Swift Basics", author: "A. Kumar"))
library.add(Book(title: "Learning SwiftUI", author: "S. Rao"))
library.listBooks()

if let found = library.search(title: "swift basics") {
    print("Found: \(found.title) by \(found.author)")
}

library.remove(title: "Swift Basics")
library.listBooks()

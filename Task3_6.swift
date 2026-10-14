// Task 3.6: Class Person with an init and an introduce() method.

class Person {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func introduce() {
        print("Hi, I'm \(name) and I'm \(age) years old.")
    }
}

let person = Person(name: "Ezhil", age: 22)
person.introduce()

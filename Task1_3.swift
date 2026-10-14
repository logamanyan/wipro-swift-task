// Task 1.3: Convert a mark (0-100) into a grade using if / else if.

let mark = 84

if mark < 0 || mark > 100 {
    print("Invalid mark")
} else if mark >= 90 {
    print("Grade A")
} else if mark >= 80 {
    print("Grade B")
} else if mark >= 70 {
    print("Grade C")
} else if mark >= 60 {
    print("Grade D")
} else {
    print("Grade F")
}

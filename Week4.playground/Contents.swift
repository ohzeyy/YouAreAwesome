import UIKit

//var roll = Int.random(in: 1...6)
//var rollCount = 1
//print("Roll #\(rollCount) was a \(roll)")
//
//while roll != 6 {
//    roll = Int.random(in: 1...6)
//    rollCount += 1
//    print("Roll #\(rollCount) was a \(roll)")
//}
//
//print("It took \(rollCount) rolls to get a six!")

// Create four for-in loops

var students = ["Bob", "Harry", "Sally"]


// Count (closed range)
for index in 0...students.count-1 {
    print(students[index])
}

// Literal
for index in 0...2 {
    print(students[index])
}

// Count (open range)
for index in 0..<3 {
    print(students[index])
}
// Iteration
for student in students {
    print(student)
}

var guestList = ["Sting", "Madonna", "Bruce", "Pete Davidson", "Drake", "Kanye", "Jay-Z", "Chuck D", "Method Man", "KD Lang", "Lady Gaga"]

var index = 0
var newList: [String] = []
for guest in guestList {
    if guest != "Kanye" {
        newList.append(guest)
    }
}

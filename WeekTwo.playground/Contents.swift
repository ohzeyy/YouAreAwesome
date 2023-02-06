import UIKit

//var greeting = "Hello, playground"
//print(greeting)
//
//greeting = "Yo, coder"
//print(greeting)

//var this = "pizza"
//var that = "Pete's a"
//
//print("this = \(this), that = \(that)")
//
//print("this == that is \(this == that)")

var homeState = "TX"
let jersey = "NJ"
let texas = "TX"
let vermont = "VT"

//if homeState == jersey {
//    print("How YOU doin'?")
//}
//else if homeState == texas {
//    print("Howdy!")
//}
//else
//{
//    print("Hello")
//}

//switch homeState {
//case jersey:
//    print("How YOU doin'?")
//case texas:
//    print("Howdy!")
//default:
//    print("Hello!")
//}
//
//let grade = 90
//
//switch grade {
//case 93...100:
//    print("You got an A")
//case 90..<93:
//    print("You got an A-")
//default:
//    print("Nice work")
//}

var tooters = ["Rachel", "Brendan", "Annie", "Kevin"]

print(tooters[0])

print("There are \(tooters.count) elements in this list.")

print("the last person to toot was \(tooters[tooters.count - 1])")

tooters = []


print("We can also use .last: \(tooters.last!)")

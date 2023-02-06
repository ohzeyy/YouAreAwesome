import UIKit
//
//// Roll Dice
//
//func rollDice()
//{
//    print("You rolled a \(Int.random(in: 1...6))")
//}
//
//rollDice()
//rollDice()
//rollDice()
//
//// Roll an x-sided dice
//
//func rollSidedDice(diceSides: Int)
//{
//    print("You rolled a \(Int.random(in: 1...diceSides))")
//}
// rollSidedDice(diceSides: 20)
//
//func rollDie(numDice: Int, diceSides: Int)
//{
//    var total = 0
//
//    print("Rolling \(numDice), \(diceSides) sided dice.")
//    for _ in 1...numDice {
//        print(Int.random(in: 0...diceSides))
//    }
//}
//
//rollDie(numDice: 3, diceSides: 5)

func average(grades: [Int]) -> Double {
    var total = 0
    for grade in grades {
        total += grade
    }
    return Double(total) / Double(grades.count)
}

func finalGrades(score: Double) -> String {
    switch(score) {
    case 90...100:
        return "A"
    default:
        return "Not an A"
    }
}

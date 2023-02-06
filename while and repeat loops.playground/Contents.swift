import UIKit

// four sided dice

var lastRoll = 4
var newDiceRoll = Int.random(in: 1...4)

while lastRoll == newDiceRoll
{
    newDiceRoll = Int.random(in: 1...4)
}
print(newDiceRoll)

var diceRoll: Int // explicit declaration
var rollCount = 0
print("Dice Roll #\(rollCount)")
repeat {
    diceRoll = Int.random(in: 1...6)
    rollCount += 1
    print("Dice Roll #\(rollCount) = \(diceRoll)")
} while diceRoll != 6
print("It took \(rollCount) rolls to roll a six.")


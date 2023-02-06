import UIKit

let diceRoll = Int.random(in: 1...6)
print("You rolled a \(diceRoll)")

let randomDecimal = Double.random(in: -1.0...1.0)
print("Your random decimal is \(randomDecimal)")

let randomBool = Bool.random()
print("The answer is \(randomBool)")

// Challenge 1
let die1 = Int.random(in: 1...4)
let die2 = Int.random(in: 1...4)
let die3 = Int.random(in: 1...4)
let result = die1+die2+die3

let result2 = Int.random(in: 1...4) + Int.random(in: 1...4) + Int.random(in: 1...4)

// Challenge 2
print("")
print("Coin flip: \(Bool.random() ? "Heads" : "Tails")")

// Challenge 3

print("")
let messages = ["You're cool", "you're good", "you're nice"]
print(messages[Int.random(in: 0...messages.count-1)])

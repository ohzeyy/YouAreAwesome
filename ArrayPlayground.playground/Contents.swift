import UIKit

var messages = ["You are awesome!", "You are great!", "Fabulous? That's you!"]
print(messages)

print(messages[2])

messages.count
print("There are \(messages.count) items in the array")

print(messages[messages.count - 1])

messages.append("You are fantastic!")
messages = messages + ["You Swifty!", "You are a code monster!"]
print(messages)
let newMessages = ["You make me smile", "I think you're magic"]

messages += newMessages
print("")
print(messages)

messages.insert("You are skilled", at: 1)
print(messages)
let removedValue = messages.remove(at: 1)
print(removedValue, messages)

// Empty Arrays
var grades: [Double] = [] // <- preferred notation
// var grades = [Double]()
grades.append(82)
grades += [87,91]
print("")
print(grades)


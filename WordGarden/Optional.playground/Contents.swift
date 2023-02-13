import UIKit

var guessedLetter = "SWIFT"
guessedLetter.count
guessedLetter.last

//if let lastChar = guessedLetter.last {
//    guessedLetter = String(lastChar)
//} else {
//    guessedLetter = ""
//}
print("The last letter in \(guessedLetter) is '\(guessedLetter.last!)'")

guessedLetter = ""
guessedLetter.last
// print("The last letter in \(guessedLetter) is '\(guessedLetter.last!)'")

//if guessedLetter.last != nil {
//    guessedLetter = "\(guessedLetter.last!)"
//} else {
//    guessedLetter = ""
//}

func returnLastChar(text: String) -> String {
    guard let lastChar = text.last else {
        return ""
    }
    return String (lastChar)
}

print("\nNil Coalescing Example")
guessedLetter = "SWIFT"

guessedLetter = "\(guessedLetter.last ?? " ")"
guessedLetter = guessedLetter.trimmingCharacters(in: .whitespacesAndNewlines)
print("guessedletter = \(guessedLetter)")

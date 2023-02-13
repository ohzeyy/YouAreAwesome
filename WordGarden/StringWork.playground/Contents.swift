import UIKit

var myName = "Gallaugher"
var smallerString = "laugh"

if myName.contains(smallerString) {
    print("\(myName) contains \(smallerString)")
} else {
    print("There is no \(smallerString) in \(myName)")
}

var occupation = "Swift Developer"
var searchString = "Swift"

print(occupation.hasPrefix(searchString))

// replacing occurances of

var address = "123 James St."
var streetString = "St."
var replacementString = "Street"

var standardAddress = address.replacingOccurrences(of: streetString, with: replacementString)

print(standardAddress, address)

// Iterate through a string backwards

var name = "Peter"
var backwards = ""
for letter in name {
    backwards = String(letter) + backwards
}

backwards = ""
for letter in name.reversed() {
    backwards += String(letter)
}

var crazy = "CaLL mE"
var upper = crazy.uppercased()
var lower = crazy.lowercased()
var cap = crazy.capitalized

// WORD TO GUESS CHALLENGE

var wordToGuess = "SWIFT"
var revealedWord = "_"

for _ in 1...wordToGuess.count-1 {
    revealedWord = revealedWord + " _"
}
print("\(wordToGuess) will show as '\(revealedWord)'")

// Create a string from a repeating value
revealedWord = "_" + String(repeating: " _", count: wordToGuess.count-1)
print("USING REPEATING")
print(revealedWord)

// Reveal the word
wordToGuess = "STARWARS"
var lettersGuessed = "SQFTX"
revealedWord = ""

for letter in wordToGuess {
    if lettersGuessed.contains(letter) {
        revealedWord = revealedWord + "\(letter) "
    } else {
        revealedWord = revealedWord + "_ "
    }
}
revealedWord.removeLast()
print(revealedWord)


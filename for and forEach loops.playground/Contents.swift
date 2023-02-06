import UIKit

for count in 1...5 {
    print(count)
}

var tubbies = ["Tinky Winky", "Dipsy", "LaLa", "Po"]
for tubbyNumber in 0...tubbies.count-1
{
    print(tubbies[tubbyNumber])
}

var quizzes = [72, 81, 89, 95, 92]
var total = 0

for quiz in quizzes
{
    total = total + quiz
}
print("total = \(total), quizzes.count = \(quizzes.count), average = \(Double(total) / Double(quizzes.count))")

// Countdown
for countdown in (0...10).reversed() {
    print(countdown)
}

//// Stride
//for year in stride(from: 2024, through: 2050, by: 4)
//{
//    print(year)
//}

// Stride
for year in stride(from: 2024, to: 2050, by: 4)
{
    print(year)
}

for year in stride(from: 2020, through: 1982, by: -4)
{
    print(year)
}

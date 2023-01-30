import UIKit

var imageNum = 0
var imageName = ""

// imageName = "image" + String(imageNum)
imageName = "image\(imageNum)"
print(imageName)

let milesRun: Double = 3
let kmPerMile = 1.609

let kmRun = Double(milesRun) * kmPerMile
print(kmRun)




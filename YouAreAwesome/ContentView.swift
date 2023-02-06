//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Zach Peter on 1/23/23.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    @State private var lastSoundNumber = -1
    @State private var audioPlayer: AVAudioPlayer!
    
    var body: some View {
        VStack {
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .padding()
            
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
            Spacer()
            
            HStack {
                Button("Show message") {
                    let message1 = "You are awesome!"
                    let message2 = "You are great!"
                    let message3 = "Fabulous? That's you!"
                    let message4 = "You're the GOAT!"
                    
                    var messages: [String] = []
                    messages += [message1, message2, message3, message4]
                    
                    lastMessageNumber = nonRepeatingRandom(lastNumber: lastMessageNumber, upperBound: messages.count-1)
                    messageString = messages[lastMessageNumber]
                    
                    lastImageNumber = nonRepeatingRandom(lastNumber: lastImageNumber, upperBound: 9)
                    imageName = "image\(lastImageNumber)"
                    
                    lastSoundNumber = nonRepeatingRandom(lastNumber: lastSoundNumber, upperBound: 5)
                    playSound(soundName: "sound\(lastSoundNumber)")
                    
//                    // using repeat
//                    var messageNumber: Int
//                    repeat {
//                        messageNumber = Int.random(in: 0...messages.count-1)
//                    } while messageNumber == lastMessageNumber
//                    messageString = messages[messageNumber]
//                    lastMessageNumber = messageNumber
//
//                    // using while
//                    var imageNumber = Int.random(in: 0...9)
//                    while imageNumber == lastImageNumber {
//                        imageNumber = Int.random(in: 0...9)
//                    }
//                    imageName = "image\(imageNumber)"
//                    lastImageNumber = imageNumber
//
//                    var soundNumber: Int
//                    repeat {
//                        soundNumber = Int.random(in: 0...5)
//                    } while soundNumber == lastSoundNumber
//                    lastSoundNumber = soundNumber
//
//                    playSound(soundName: "sound\(soundNumber)")
                    
                }
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
    
    func nonRepeatingRandom(lastNumber: Int, upperBound: Int) -> Int {
        var newNum: Int
        repeat {
            newNum = Int.random(in: 0...upperBound)
        } while newNum == lastNumber
        return newNum
    }
    
    // REUSABLE PLAY SOUND FUNCTION
    func playSound(soundName: String) {
        guard let soundFile = NSDataAsset(name: soundName) else {
            print("Could not read file named \(soundName)")
            return
        }
        do {
            audioPlayer = try AVAudioPlayer(data: soundFile.data)
            audioPlayer.play()
        } catch {
            print("ERROR: \(error.localizedDescription) creating audioPlayer.")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

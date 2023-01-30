//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Zach Peter on 1/23/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var imageNum = 0
    @State private var messageNum = 0
    
    var body: some View {
        VStack {
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
            
            Spacer()
            
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
            
            HStack {
                Button("Show message") {
                    let message1 = "You are awesome!"
                    let message2 = "You are great!"
                    let message3 = "Fabulous? That's you!"
                    let message4 = "You're the GOAT!"
                    
                    var messages: [String] = []
                    messages += [message1, message2, message3, message4]
                    
                    messageString = messages[messageNum]
                    messageNum += 1
                    
                    if messageNum == messages.count
                    {
                        messageNum = 0
                    }
                    
//                    if messageString == message1
//                    {
//                        messageString = message2
//                    }
//                    else if messageString == message2
//                    {
//                        messageString = message3
//                    } else
//                    {
//                        messageString = message1
//                    }
                    
                    imageName = "image\(String(imageNum))"
                    imageNum = imageNum + 1
                    if imageNum > 9
                    {
                        imageNum = 0
                    }
                    print(imageNum)
                    
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

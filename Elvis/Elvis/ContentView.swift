//
//  ContentView.swift
//  Elvis
//
//  Created by Zach Peter on 1/30/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageString = ""
    
    var body: some View {
        VStack {
            Text("Elvis Costello")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.purple)
            
            Spacer()
            
            Image(systemName: imageString)
                .resizable()
                .scaledToFit()
                .foregroundColor(.black)
                .frame(width: 300, height: 300)
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.purple)
            
            Spacer()
            
            HStack {
                Button("What's so funny 'bout") {
                    
                    switch messageString{
                    case "Peace":
                        messageString = "Love"
                        imageString = "heart"
                    case "Love":
                        messageString = "Understanding"
                        imageString = "lightbulb"
                    default:
                        messageString = "Peace"
                        imageString = "peacesign"
                    }
                    
//                    if messageString == "Peace"
//                    {
//                        messageString = "Love"
//                        imageString = "heart"
//                    }
//                    else if messageString == "Love"
//                    {
//                        messageString = "Understanding"
//                        imageString = "lightbulb"
//                    }
//                    else
//                    {
//                        messageString = "Peace"
//                        imageString = "peacesign"
//                    }
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

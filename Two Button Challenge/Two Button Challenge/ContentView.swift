//
//  ContentView.swift
//  Two Button Challenge
//
//  Created by Zach Peter on 1/30/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageString = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(systemName: imageString)
                .resizable()
                .scaledToFit()
                .foregroundColor(.gray)
            
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.red)
            
            HStack {
                Button("Swifty")
                {
                    messageString = "You swifty!"
                    imageString = "swift"
                }
                
                Button("Apps")
                {
                    messageString = "You build apps!"
                    imageString = "apps.iphone"
                }
            }
            .buttonStyle(.borderedProminent)
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

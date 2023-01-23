//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Zach Peter on 1/23/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    
    var body: some View {
        VStack {
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.blue)
                .padding(5)
            // bloop
            HStack {
                Button("Awesome") {
                    // action performed when button is pressed
                    messageString = "You are awesome!"
                }
                .buttonStyle(.borderedProminent)
                
                Button("Great") {
                    // action performed when button is pressed
                    messageString = "You are great!"
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

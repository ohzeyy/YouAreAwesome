//
//  ContentView.swift
//  WhoGetsASticker
//
//  Created by Zach Peter on 2/6/23.
//

import SwiftUI

struct ContentView: View {
    let students = ["Natasha", "Shuri", "Shaun", "Steve", "Tony", "Bruce"]
    @State private var formattedTooters = ""
    @State private var selectedWinner = ""
    
    var body: some View {
        VStack {
            Text("Who Gets a Sticker?")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.indigo)
            
            Image("MyMacBuildsApps")
                .resizable()
                .scaledToFit()
            
            Spacer()
            
            Text("This Weeks Winner is: ")
                .font(.largeTitle)
            
            Text(selectedWinner)
                .font(.largeTitle)
                .fontWeight(.black)
                .frame(height: 80)
                .minimumScaleFactor(0.5)
            
            Spacer()

            Button {
                selectedWinner = students.randomElement() ?? "No one tooted this week"
                if let winner = students.randomElement() {
                    selectedWinner = winner
                } else {
                    selectedWinner = "Nobody Tooted this week :("
                }
                
            } label: {
                Image(systemName: "person.crop.circle.badge.questionmark")
                Text("Select Winner")
            }
            .buttonStyle(.borderedProminent)
            .tint(.indigo)
            .disabled(students.isEmpty)
        }
        .padding()
        .onAppear {
            if students.isEmpty {
                selectedWinner = "Nobody Tooted this week :("
            } else {
                formattedTooters = "This weeks' Tooters Were:\n\(students[0])"
                guard students.count > 1 else {
                    return
                }
                for index in 1..<students.count {
                    formattedTooters = formattedTooters + ",\(students[index])"
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  LunarZodiacArray
//
//  Created by Zach Peter on 2/6/23.
//

import SwiftUI

struct ContentView: View {
    let animalNames = ["RAT", "OX", "TIGER", "RABBIT", "DRAGON", "SNAKE", "HORSE", "GOAT", "MONKEY", "ROOSTER", "DOG", "PIG"]
    @State private var index = 3
    @State private var year = 2023
    
    var body: some View {
        VStack {
            Text(String(year))
                .font(Font.custom("Avenir Next Condensed", size: 36))
                .fontWeight(.black)
            
            Spacer()
            
            Image(animalNames[index])
                .resizable()
                .scaledToFit()
            
            Spacer()
            
            Text(animalNames[index])
                .font(Font.custom("Avenir Next Condensed", size: 72))
                .fontWeight(.black)
                .minimumScaleFactor(0.5)
            
            HStack {
                Button(){
                    year -= 1
                    index -= 1
                    if index < 0 {
                        index = 11
                    }
                } label: {
                    Image(systemName: "chevron.left")
                }
                
                Spacer()
                
                Button() {
                    year += 1
                    index += 1
                    if index > 11 {
                        index = 0
                    }
                } label: {
                    Image(systemName: "chevron.right")
                }
            }
            .padding()
            .buttonStyle(.borderedProminent)
            .tint(.red)
            .font(.largeTitle)
            .fontWeight(.black)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

//
//  ContentView.swift
//  LunarZodiac
//
//  Created by Zach Peter on 1/30/23.
//

import SwiftUI

struct ContentView: View {
    @State private var imageNum = 3
    @State private var year = 2023
    
    var body: some View {
        VStack {
            Text(String(year))
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.red)
            
            Image("image\((String(imageNum)))")
                .resizable()
                .scaledToFit()
                .foregroundColor(.accentColor)
            
            HStack {
                
                Button {
                    imageNum -= 1
                    year -= 1
                    if imageNum == 12 {
                        imageNum = 0
                    }
                    else if imageNum == -1 {
                        imageNum = 11
                    }
                } label: {
                    Image(systemName: "chevron.left")
                }
                
                Spacer()
                
                Button {
                    imageNum += 1
                    year += 1
                    if imageNum == 12 {
                        imageNum = 0
                    }
                    else if imageNum == -1 {
                        imageNum = 11
                    }
                } label: {
                    Image(systemName: "chevron.right")
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.largeTitle)
            .fontWeight(.black)
            .tint(.red)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

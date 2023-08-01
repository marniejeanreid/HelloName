//
//  ContentView.swift
//  HelloName
//
//  Created by scholar on 27/07/2023.
//

import SwiftUI
//COMMENT

struct ContentView: View {
    
    @State private var name = ""
    
    @State private var textTitle = "What is your name?"
    
    var body: some View {
        
        VStack(spacing: 100.0) {
            Text(textTitle)
                .font(.title)
            
            TextField("Type with your name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
           
            Button("Submit Name") {
                textTitle = "Welcome, \(name)!"
            }
            .font(.title2)
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

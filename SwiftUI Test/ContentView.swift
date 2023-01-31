//
//  ContentView.swift
//  SwiftUI Test
//
//  Created by 김진경 on 2023/02/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            Text("Hello, SwiftUI!")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
            
            Text("SwiftUI")
                .padding()
                .font(.title)
                .bold()//오류나야하는데?
            
            Text("🐶🐱🐭")
                .font(.largeTitle)
                .background(Color.yellow)
                .padding()
            
            Text("🐶🐱🐭")
                .font(.largeTitle)
                .padding()
                .background(Color.yellow)
                
                
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

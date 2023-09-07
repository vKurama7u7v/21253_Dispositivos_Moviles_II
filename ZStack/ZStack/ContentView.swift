//
//  ContentView.swift
//  ZStack
//
//  Created by Aurelio Marín Bautista on 04/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            VStack{
                Image("bg_img")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }.ignoresSafeArea()
            
            VStack{
                Image(systemName: "person.fill.turn.down")
                    .imageScale(.large)
                    .font(.title)
                    .foregroundColor(Color.red)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(1000)
                
                Text("Hello, world!")
                    .overlay(Rectangle()
                        .foregroundColor(Color.yellow)
                        .opacity(0.3))
                    .foregroundColor(Color.white)
                    .fontWeight(.bold)
                    .font(.title)
                    
            }.padding()
            
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

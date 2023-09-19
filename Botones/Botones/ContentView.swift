//
//  ContentView.swift
//  Botones
//
//  Created by Aurelio Marín Bautista on 11/09/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var greeting : String = "Hello, World"
    @State var fgColor : Color = Color.purple
    
    let colors = [
        Color.purple,
        Color.yellow,
        Color.red,
        Color.blue,
        Color.green
    ]
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(greeting).foregroundColor(fgColor)
            
            Button(action: {
                self.onChangeColor()
                self.onChangeMessage()
            }){
                Text("Saludar")
                .font(.title)
                .padding()
                .foregroundColor(.yellow)
                .background(LinearGradient(
                    gradient:
                        Gradient(
                            colors:
                                [
                                    Color.purple,
                                    Color.blue
                                ]),
                    startPoint: .leading,
                    endPoint: .trailing
                ))
                .cornerRadius(15)
            }
            
            Button(action: {
                
            }, label: {})
        }
        .padding()
    }
    
    func onChangeMessage() {
        if (greeting == "Hello, World!") {
            self.greeting = "Hello my friend"
        } else {
            self.greeting = "Hello, World!"
        }
    }
    
    func onChangeColor() -> Color {
        let position = Int.random(in: 0 ... colors.count - 1)
        return colors[position]
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  HolaMundo
//
//  Created by Aurelio Marín Bautista on 25/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Tres tristes tigres tragaban trigo en un trigal")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                .foregroundColor(Color.white)
                .background(Color("Primario"))
                .padding()
                .background(Color.red)
                .lineLimit(2)
                .truncationMode(.tail)
                .cornerRadius(15)
                .shadow(color: Color.black, radius: 100)
                .padding()
    
            Text("Hola")
            
            
            //.foregroundColor(Color("Primario"))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

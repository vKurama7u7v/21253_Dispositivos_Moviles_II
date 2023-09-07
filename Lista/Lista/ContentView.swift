//
//  ContentView.swift
//  Lista
//
//  Created by Aurelio Marín Bautista on 04/09/23.
//

import SwiftUI

struct ContentView: View {
    
    var greeting : String = "Hello World"
    var mifondito : Color = Color.blue
    var radiuss : CGFloat = 15
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(greeting)
                .font(.title)
            
            Text(greeting)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                .foregroundColor(Color.white)
                .background(mifondito)
                .padding([.trailing, .top], 20)
                .background(Color.green)
                .lineLimit(2)
                .truncationMode(.tail)
                .cornerRadius(radiuss)
                .shadow(color: Color.black, radius: 25)
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

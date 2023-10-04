//
//  ContentView.swift
//  Pantallas
//
//  Created by Aurelio Marín Bautista on 02/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            NavigationLink(
                destination: ItemDetailView(),
                label: {
                    ItemRowView()
                }
            )
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text("Hello, world!")
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

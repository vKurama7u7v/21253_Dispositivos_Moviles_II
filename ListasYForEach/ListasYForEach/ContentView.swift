//
//  ContentView.swift
//  ListasYForEach
//
//  Created by Aurelio Marín Bautista on 09/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var gamesViewModel = GamesViewModel().dummyData()
    @State var gameName : String = ""
    
    var body: some View {
        
        SearchView(gameName: $gameName)
        
        List {
            ForEach(gamesViewModel, id: \.uuid) { game in
            CardView(image: game.image, name: game.name, console: game.console, price: String(game.price))
                    .padding(.trailing)
                    .background(Color("cardColor"))
                    .cornerRadius(15)
                    .padding(4)
                    .listRowInsets(EdgeInsets())
            }
        }.listStyle(PlainListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

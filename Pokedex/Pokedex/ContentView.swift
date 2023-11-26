//
//  ContentView.swift
//  Pokedex
//
//  Created by Aurelio Marín Bautista on 08/11/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var pokemonList = PokedexViewModel()
    
    var body: some View {
        VStack {
            
            Text("\(pokemonList.pokemon.count)")
            Text(pokemonList.pokemon.next)
            Text(pokemonList.pokemon.previous ?? "")
            
            List(){
                
                ForEach(pokemonList.pokemon.results, id:\.self){ pokemon in
                    
                    VStack{
                        Text(pokemon.name)
                        Text(pokemon.url)
                    }
                }
            }
        }
        .padding()
        .onAppear(){
            pokemonList.getPokedex()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

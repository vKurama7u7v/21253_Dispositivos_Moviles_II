//
//  ContentView.swift
//  21253_ACT9_API_CATS
//
//  Created by Aurelio Marín Bautista on 25/11/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var catsList = CatsViewModel()
    
    var body: some View {
        VStack {
            Text("Hola")
            List(){
                
                ForEach(catsList.cats.results, id:\.self){ cat in
                    
                    VStack{
                        Text("1")
                    }
                }
            }
        }
        .padding()
        .onAppear(){
            catsList.getCatsList()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

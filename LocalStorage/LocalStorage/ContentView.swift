//
//  ContentView.swift
//  LocalStorage
//
//  Created by Aurelio Marín Bautista on 06/11/23.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        TabView(){
            WelcomeView().tabItem(){
                VStack(){
                    Text("Home")
                    Image(systemName: "house")
                }
            }
            
            TimerView().tabItem(){
                VStack(){
                    Text("Timer")
                    Image(systemName: "timer")
                }
            }
            
            
        }
        .padding()
        .accentColor(Color.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

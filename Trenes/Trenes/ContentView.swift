//
//  ContentView.swift
//  Trenes
//
//  Created by Aurelio Marín Bautista on 18/09/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var isPressed : Bool = false
    @State var country : String = ""
    
    private func printHola() -> String {
        if self.isPressed {
            return "Presionado"
        } else {
            return "No presionado"
        }
    }
    
    
    var body: some View {
        VStack(){
            TextField("A donde quieres viajar?", text: $country)
            Text("Viajaras a: \(self.country)")
            
            ScrollView(.horizontal){
                HStack(){
                    MeansOfTransportView(
                        name: "Avion",
                        icon: "airplane",
                        isPressed: $isPressed
                    )
                    MeansOfTransportView(
                        name: "Bus",
                        icon: "bus",
                        isPressed: $isPressed
                    )
                    MeansOfTransportView(
                        name: "Ferry",
                        icon: "ferry",
                        isPressed: $isPressed
                    )
                }
            }
            
            ScrollView(){
                VStack {
                    TrainCardView(
                        name: "Treen bala Kodama",
                        color: Color.red
                    )
                    TrainCardView(
                        name: "Treen bala Nozomi",
                        color: Color.blue
                    )
                    TrainCardView(
                        name: "Treen bala Test 3",
                        color: Color.yellow
                    )
                    TrainCardView(
                        name: "Treen bala Test 4",
                        color: Color.purple
                    )
                    TrainCardView(
                        name: "Treen bala Test 5",
                        color: Color.orange
                    )
                }.padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

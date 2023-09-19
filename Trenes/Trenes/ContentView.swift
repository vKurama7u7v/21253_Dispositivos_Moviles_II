//
//  ContentView.swift
//  Trenes
//
//  Created by Aurelio Marín Bautista on 18/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

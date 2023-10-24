//
//  FixedGridView.swift
//  ListasYForEach
//
//  Created by Aurelio Marín Bautista on 23/10/23.
//

import SwiftUI

struct FixedGridView: View {
    let gameViewModel = GamesViewModel().dummyData()
    let columns = [
        GridItem(.adaptive(minimum: 400), spacing: 10),
        // GridItem(.flexible(minimum: 50)),
    ]
    
    // UDevice
    // GeometryReader -> asignar el span de una columna
    // .frame(width: geometry.size.width / 2)
    
    var body: some View {
        GeometryReader{
            geometry in
            Text("Hola mundo").background(Color.orange)
        }
        /*
        ScrollView(.vertical) {
            LazyVGrid(columns: columns){
                ForEach(gameViewModel, id: \.self.uuid){ game in
                    Text(game.name)
                }
            }
        }
        */
    }
}

struct FixedGridView_Previews: PreviewProvider {
    static var previews: some View {
        FixedGridView()
    }
}

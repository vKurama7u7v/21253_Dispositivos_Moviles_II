//
//  ContentView.swift
//  21253_ACT4
//
//  Created by Aurelio Marín Bautista on 19/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Your Difficulty Level?")
                .font(.custom("PressStart2P-Regular", size: 15))
                .foregroundColor(Color.white)
                .padding(.bottom, 20)
            
            ScrollView(){
                VStack {
                    CardView(
                        text: "Easy",
                        color: Color.cyan,
                        image: "https://static.wikia.nocookie.net/geometry-dash/images/7/7a/Easy.png/revision/latest/scale-to-width-down/250?cb=20160709031747&path-prefix=es"
                    )
                    CardView(
                        text: "Normal",
                        color: Color.green,
                        image: "https://static.wikia.nocookie.net/geometry-dash/images/f/fb/Normal.png/revision/latest/scale-to-width-down/250?cb=20160709034359&path-prefix=es"
                    )
                    CardView(
                        text: "Hard",
                        color: Color.yellow,
                        image: "https://static.wikia.nocookie.net/geometry-dash/images/d/d5/Hard.png/revision/latest/scale-to-width-down/250?cb=20160803202209&path-prefix=es"
                    )
                    CardView(
                        text: "Harder",
                        color: Color.orange,
                        image: "https://static.wikia.nocookie.net/geometry-dash/images/d/db/Harder.png/revision/latest/scale-to-width-down/1000?cb=20160803202224&path-prefix=es"
                    )
                    CardView(
                        text: "Insane",
                        color: Color.pink,
                        image: "https://static.wikia.nocookie.net/geometry-dash/images/7/7f/Insane.png/revision/latest/scale-to-width-down/1000?cb=20160711205827&path-prefix=es"
                    )
                    CardView(
                        text: "Demon",
                        color: Color.red,
                        image: "https://static.wikia.nocookie.net/geometry-dash/images/c/c4/Demon.png/revision/latest/scale-to-width-down/1000?cb=20150630175828&path-prefix=es"
                    )
                }
            }
        }.padding().background(Color("bgColor"))
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

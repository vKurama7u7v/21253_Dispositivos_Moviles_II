//
//  CardView.swift
//  ListasYForEach
//
//  Created by Aurelio Marín Bautista on 09/10/23.
//

import SwiftUI

struct CardView: View {
    
    var image : String
    var name : String
    var console : String
    var price : String
    
    var body: some View {
        HStack{
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 100)
                .padding(.horizontal)
            
            VStack(alignment: .leading, spacing: 0){
                Text(name)
                    .foregroundColor(Color.purple)
                    .font(.headline)
                    .padding(.bottom)
                
                HStack {
                    Text(console)
                        .font(.caption)
                    
                    Spacer()
                    
                    Text(price + " MXN")
                        .font(.caption)
                        .fontWeight(.bold)
                }
                
                HStack(){
                    Spacer()
                    
                    Button(action: {
                        print("hola")
                    }, label:{
                        Text("Comprar")
                            .padding(.horizontal)
                            .foregroundColor(Color.white)
                            .background(Color.purple)
                            .cornerRadius(4)
                            .padding(.vertical)
                    })
               }
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(
            image: "",
            name: "name",
            console: "console",
            price: "$200.00"
        )
    }
}

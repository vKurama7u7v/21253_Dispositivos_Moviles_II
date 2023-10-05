//
//  ItemLabelView.swift
//  21253_Act6
//
//  Created by Aurelio Marín Bautista on 04/10/23.
//

import SwiftUI

struct ItemLabelView: View {
    
    var name : String
    var color : Color
    var icon : String
    
    var body: some View {
        VStack() {
            HStack(){
                Spacer()
                Text("Oferta")
                    .padding(.vertical, 4)
                    .padding(.horizontal, 12)
                    .background(color)
                    .foregroundColor(.white)
                    .cornerRadius(2)
                    .frame( maxWidth: .infinity, alignment: .trailing)
            }
            
            Image(systemName: icon)
                .font(.system(size: 90, weight: .light, design: .default))
                .foregroundColor(color)
                .aspectRatio(contentMode: .fit )
                .frame(width: 120, height: 100)
            
            Text(name)
                .font(.largeTitle)
                .lineLimit(1)
                .truncationMode(.middle)
                .padding(.bottom)
                .frame( maxWidth: .infinity)
            
            
        }
        .modifier(CardViewModifier())
    }
}

struct ItemLabelView_Previews: PreviewProvider {
    static var previews: some View {
        ItemLabelView(
            name: "Nombre",
            color: Color.green,
            icon: "tram.circle.fill"
        )
    }
}

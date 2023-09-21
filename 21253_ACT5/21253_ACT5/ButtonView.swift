//
//  ButtonView.swift
//  21253_ACT5
//
//  Created by Aurelio Marín Bautista on 20/09/23.
//

import SwiftUI

struct ButtonView: View {
    
    var text : String
    var icon : String
    var color : Color
    var sizeButton : CGFloat = 60
    
    var body: some View {
        VStack{
            Image(systemName: icon)
                .imageScale(.large)
                .foregroundColor(color)
                .frame(width: sizeButton, height: sizeButton)
                .background(Color.white)
                .cornerRadius(100)
                .padding(4)
                .background(Color("bgButtons"))
                .cornerRadius(100)
                
            Text(text)
                .font(.system(size: 12))
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            Spacer()
        }
        .padding(.horizontal, 4)
        .padding(.vertical, 2)
        .foregroundColor(Color.gray)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(text: "name", icon: "envelope", color: Color.gray)
    }
}

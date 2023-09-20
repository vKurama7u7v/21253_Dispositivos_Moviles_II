//
//  ActionButtonView.swift
//  21253_ACT5
//
//  Created by Aurelio Marín Bautista on 20/09/23.
//

import SwiftUI

struct ActionButtonView: View {
    
    var text : String
    var icon : String
    var sizeButton : CGFloat = 60
    
    var body: some View {
        VStack{
            Image(systemName: icon)
                .imageScale(.large)
                .frame(width: sizeButton, height: sizeButton)
                .background(Color("bgButtons"))
                .cornerRadius(100)
            Text(text)
                .font(.system(size: 12))
                .fontWeight(.bold)
        }.padding(.horizontal, 4).foregroundColor(Color.gray)
    }
}

struct ActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ActionButtonView(text: "name", icon: "envelope")
    }
}

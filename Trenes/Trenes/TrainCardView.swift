//
//  TrainCardView.swift
//  Trenes
//
//  Created by Aurelio Marín Bautista on 18/09/23.
//

import SwiftUI

struct TrainCardView: View {
    
    var name : String
    var color : Color
    @State var showAlert : Bool = false
    
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
            
            Image(systemName: "tram.circle.fill") .font(.system(size: 90, weight: .light, design: .default))
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
        .onTapGesture {
            withAnimation(){
                showAlert.toggle()
            }
        }
        .modifier(CardViewModifier())
        .alert("Has seleccionado el tren \(name)!", isPresented: $showAlert){
            // logica de que hacer al oprimir la alerta
        }
    }
}

struct TrainCardView_Previews: PreviewProvider {
    static var previews: some View {
        TrainCardView(name: "Name Treen", color: Color.green)
    }
}

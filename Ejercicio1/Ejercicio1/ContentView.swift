//
//  ContentView.swift
//  Ejercicio1
//
//  Created by Aurelio Marín Bautista on 01/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Spacer()
                Text("Amarillo").foregroundColor(Color.green)
                Text("Azul").foregroundColor(Color.red)
                Text("Naranja").foregroundColor(Color.blue)
                Spacer()
            }
            
            VStack{
                
                HStack{
                    Spacer()
                    Text("Negro")
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color("bg_blue"))
                        .fontWeight(.bold)
                    Text("Rojo")
                        .foregroundColor(Color.red)
                        .padding()
                        .background(Color.blue)
                        .fontWeight(.bold)
                    Spacer()
                }
                
                HStack{
                    Spacer()
                    Text("Verde")
                        .frame(width: 130)
                        .padding()
                        .foregroundColor(Color.white)
                        .background(Color.orange)
                        .fontWeight(.bold)
                        
                    Spacer()
                }
            }
            
            HStack{
                HStack{
                    Text("Morado")
                        .padding(.horizontal, 90)
                        .padding(.vertical, 10)
                }
                Spacer()
            }
            HStack{
                Spacer()
                HStack{
                    Text("Morado")
                        .padding(.horizontal, 90)
                        .padding(.vertical,20)
                        .underline()
                        .fontWeight(.bold)
                }
                
            }
            
            Spacer()
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

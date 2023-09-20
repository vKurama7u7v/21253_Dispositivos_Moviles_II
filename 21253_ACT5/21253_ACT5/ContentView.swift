//
//  ContentView.swift
//  21253_ACT5
//
//  Created by Aurelio Marín Bautista on 19/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(){
            // Información de Usuario
            HStack(){
                HStack(){
                    Image(systemName: "person")
                        .imageScale(.large)
                        .foregroundColor(Color("darkText"))
                        .padding(12)
                        .background(Color.white)
                        .cornerRadius(50)
                    Text("Hola, Aurelio ")
                        .foregroundColor(Color.white)
                        .fontWeight(.semibold)
                        .font(.system(size: 18))
                    Image(systemName: "chevron.right")
                        .imageScale(.small)
                        .foregroundColor(Color.white)
                }
                Spacer()
                HStack(){
                    // questionmark.circle
                    Image(systemName: "questionmark.circle")
                        .imageScale(.large)
                        .foregroundColor(Color.white)
                    Text("Ayuda")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                }
                .padding(10)
                .background(Color.cyan)
                .cornerRadius(5)
            }.padding()
            
            ScrollView{
                // Saldo
                VStack(){
                    VStack(){
                        HStack(){
                            Text("Disponible invertido en")
                            Text("GBM").fontWeight(.semibold)
                            Spacer()
                        }.font(.system(size: 16))
                        HStack(){
                            Text("$").fontWeight(.bold).font(.system(size: 28))
                            Text("8,953").fontWeight(.bold).font(.system(size: 28))
                            Image(systemName: "eye")
                                .imageScale(.large)
                                .foregroundColor(Color.black)
                            Spacer()
                            HStack(){
                                // arrowtriangle.up.fill
                                Image(systemName: "arrowtriangle.up.fill")
                                    .imageScale(.medium)
                                Text("10.3%").fontWeight(.bold)
                            }
                            .foregroundColor(Color.green)
                            .padding(5)
                            .background(Color("bgButtons"))
                            .cornerRadius(50)
                            
                            Image(systemName: "chevron.right")
                                .imageScale(.medium)
                                .foregroundColor(Color.gray)
                        }.padding(.top, 1)
                    }
                    .padding(20)
                    
                    Divider()
                    
                    VStack(){
                        HStack(){
                            ActionButtonView(text: "Ingresar", icon: "envelope")
                            ActionButtonView(text: "Transferir", icon: "envelope")
                            ActionButtonView(text: "Sacar", icon: "envelope")
                            ActionButtonView(text: "Tu CLABE", icon: "envelope")
                        }
                        
                        HStack(){
                            Text("Aurelio")
                            Spacer()
                            Text("Aurelio")
                        }
                        .padding(20)
                        .background(Color("bgCreditCardPrimary"))
                        .cornerRadius(8)
                    }.padding(20)
                }
                .background(Color.white)
                .cornerRadius(10)
                .padding(.bottom, 8)
                
                // Credito
                VStack(){
                    HStack(){
                        Image(systemName: "eye")
                            .imageScale(.medium)
                            .foregroundColor(Color.black)
                        Text("Créditos")
                            .fontWeight(.bold)
                            .font(.system(size: 18))
                        Spacer()
                        Image(systemName: "chevron.right")
                            .imageScale(.small)
                            .foregroundColor(Color.blue)
                    }
                    Text("Consulta tu límite disponibe y usa tu línea de credito como prefieras.")
                        .font(.system(size: 14))
                        .padding(.vertical, 1)
                }
                .foregroundColor(Color("darkText"))
                .padding(20)
                .background(Color.white)
                .cornerRadius(10)
                .padding(.bottom, 8)
                
                // Anuncio
                VStack(){
                    
                    HStack(){
                        Text("Consigue envíos gratis en más productos con meli+")
                            .foregroundColor(Color.white)
                            .font(.system(size: 11))
                            .fontWeight(.bold)
                        Spacer()
                        Image(systemName: "chevron.right")
                            .imageScale(.small)
                            .foregroundColor(Color.white)
                    }
                    
                }
                .padding(20)
                .background(LinearGradient(
                    gradient:
                        Gradient(
                            colors:
                                [
                                    Color("bgCardPrimary"),
                                    Color("bgCardSecondary")
                                ]),
                    startPoint: .leading,
                    endPoint: .trailing
                ))
                .cornerRadius(10)
                .padding(.bottom, 8)
                
                // Botones Abajo
                VStack(){
                    HStack(){
                        Spacer()
                        ButtonView(text: "Recargar Celular", icon: "envelope", color: Color.cyan)
                        ButtonView(text: "Pagar Servicio", icon: "envelope", color: Color.cyan)
                        ButtonView(text: "Recargar TAG", icon: "envelope", color: Color.cyan)
                        ButtonView(text: "Cobrar con Point", icon: "envelope", color: Color.blue)
                        Spacer()
                        
                    }
                    HStack(){
                        Spacer()
                        ButtonView(text: "Recargar Transporte", icon: "envelope", color: Color.cyan)
                        ButtonView(text: "Beneficios", icon: "ticket", color: Color.purple)
                        ButtonView(text: "Dinero del Extranjero", icon: "globe", color: Color.gray)
                        ButtonView(text: "Ver Más", icon: "plus", color: Color.gray)
                        Spacer()
                        
                    }
                }
                .foregroundColor(Color("darkText"))
                .padding(20)
                .background(Color.white)
                .cornerRadius(10)
                
            }.padding(.horizontal, 8)
        }
        .background(LinearGradient(
            gradient:
                Gradient(
                    colors:
                        [
                            Color("bgPrimary"),
                            Color("bgSecondary"),
                            Color("bgSecondary")
                        ]),
            startPoint: .top,
            endPoint: .bottom
        ))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  21253_Act7
//
//  Created by Aurelio Marín Bautista on 04/10/23.
//

import SwiftUI

struct ContentView: View {
    
    var bebidas : [Product] = [
        Product(
            image: "https://mrsabor.mx/cdn/shop/products/coca-cola-vainilla-refresco-vanilla-mrsabor_1080x.png?v=1666194327",
            name: "Refresco",
            price: "$25.00"
        ),
        Product(
            image: "https://icee.mx/wp-content/uploads/ICEE_1.png",
            name: "ICEE",
            price: "$90.00"
        ),
        Product(
            image: "https://bnexteshopqa.blob.core.windows.net/images/0000617_ciel-1-l_415.png",
            name: "Agua Embotellada",
            price: "$35.00"
        )
    ]
    
    var body: some View {
        NavigationView{
            VStack {
                Grid(){
                    GridRow{
                        NavigationLink(
                            destination: ListItemsView(data: bebidas),
                            label: {
                                BtnMenuView(
                                    Img: "https://icee.mx/wp-content/uploads/ICEE_1.png",
                                    Title: "Bebidas",
                                    Primary: Color("ColorBlue"),
                                    Secondary: Color("ColorLightBlue")
                                )
                            }
                        )
                        
                        NavigationLink(
                            destination: ListItemsView(data: bebidas),
                            label: {
                                BtnMenuView(
                                    Img: "https://static.vecteezy.com/system/resources/previews/021/952/581/original/free-spicy-hot-dog-hot-dog-transparent-background-free-png.png",
                                    Title: "Alimentos",
                                    Primary: Color("ColorRed"),
                                    Secondary: Color("ColorYellow")
                                )
                            }
                        )
                    }
                    
                    GridRow{
                        NavigationLink(
                            destination: ListItemsView(data: bebidas),
                            label: {
                                BtnMenuView(
                                    Img: "https://static.vecteezy.com/system/resources/previews/023/932/163/original/corn-chips-nachos-with-fried-minced-meat-and-guacamole-isolated-illustration-ai-generative-png.png",
                                    Title: "Snacks",
                                    Primary: Color("ColorGreen"),
                                    Secondary: Color("ColorCyan2")
                                )
                            }
                        )
                        
                        NavigationLink(
                            destination: ListItemsView(data: bebidas),
                            label: {
                                BtnMenuView(
                                    Img: "https://www.heladosholanda.com.mx/content/dam/unilever/heart/mexico/pack_shot/oreo_1l_sellos-55996427-png.png",
                                    Title: "Postres",
                                    Primary: Color("ColorPurple"),
                                    Secondary: Color("ColorPink")
                                )
                            }
                        )
                    }
                }
            }
            .padding(10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  21253_Act6
//
//  Created by Aurelio Marín Bautista on 04/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(
                    destination: ItemListView(data: [
                        "https://i.pinimg.com/originals/44/d2/38/44d238294e141281b9b39b795b730a79.jpg",
                        "https://1000marcas.net/wp-content/uploads/2021/04/All-Nippon-Airways-logo.png",
                        "https://s3.amazonaws.com/cdn.wp.m4ecmx/wp-content/uploads/2018/05/08134442/VolarisLogo1200.jpg"
                    ]),
                    label: {
                        ItemLabelView(
                            name: "Aviones",
                            color: Color.blue,
                            icon: "airplane"
                        )
                    }
                )
                NavigationLink(
                    destination: ItemListView(data: [
                        "https://seeklogo.com/images/T/transpais-turismo-logo-A0A3119444-seeklogo.com.png",
                        "https://imprentaperches.com.mx/wp-content/uploads/2017/12/grupo-senda-logo.jpg"
                    ]),
                    label: {
                        ItemLabelView(
                            name: "Autobuses",
                            color: Color.red,
                            icon: "bus.fill"
                        )
                    }
                )
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

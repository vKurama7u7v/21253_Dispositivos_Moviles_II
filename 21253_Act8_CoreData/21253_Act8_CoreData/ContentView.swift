//
//  ContentView.swift
//  21253_Act8_CoreData
//
//  Created by Aurelio Marín Bautista on 13/10/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State var name: String = ""
    @State var quantity: String = ""
        
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(entity: Product.entity(), sortDescriptors: [])
    private var products: FetchedResults<Product>
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

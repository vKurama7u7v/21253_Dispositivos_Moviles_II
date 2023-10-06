//
//  ItemView.swift
//  21253_Act7
//
//  Created by Aurelio Marín Bautista on 05/10/23.
//

import SwiftUI

// ===== Cargar una IMG de una URL =====
extension String {
    func loadImg() -> UIImage {
        do{
            // Convert IMG to URL
            guard let url = URL(string: self) else {
                return UIImage()
            }
            
            let data : Data = try Data(contentsOf: url)
            return UIImage(data: data) ?? UIImage()
        } catch {}
        
        return UIImage()
    }
}

struct ItemView: View {
    
    var img : String
    var name : String
    var price : String
    
    var body: some View {
        VStack(alignment: .leading){
            Image(uiImage: img.loadImg())
                .resizable()
                .aspectRatio(contentMode: .fit )
                .frame(width: 140, height: 140)
                .padding()
                .background(Color("ColorBGGray"))
                .cornerRadius(8)
            Text(name)
                .fontWeight(.bold)
                .font(.system(size: 18))
            Text(price)
                .fontWeight(.light)
                .font(.system(size: 16))
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(
            img: "https://icee.mx/wp-content/uploads/ICEE_1.png",
            name: "Product Name",
            price: "$200.00"
        )
    }
}

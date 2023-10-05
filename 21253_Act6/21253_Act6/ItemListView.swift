//
//  ItemListView.swift
//  21253_Act6
//
//  Created by Aurelio Marín Bautista on 04/10/23.
//

import SwiftUI


extension String {
    func loadImage() -> UIImage {
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

struct ItemListView: View {
    
    var data : [String]
    
    var body: some View {
        VStack(spacing: 10){
            ForEach(data, id: \.self) { item in
                VStack{
                    Image(uiImage: item.loadImage())
                        .resizable()
                        .aspectRatio(contentMode: .fill )
                        .frame(height: 150)
                }
                .padding()
                .modifier(CardViewModifier())
            }
        }
    }
}

struct ItemListView_Previews: PreviewProvider {
    static var previews: some View {
        ItemListView(data: ["1", "2"])
    }
}

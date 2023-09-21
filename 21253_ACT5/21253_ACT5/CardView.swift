//
//  CardView.swift
//  21253_ACT5
//
//  Created by Aurelio Marín Bautista on 20/09/23.
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

struct CardView: View {
    
    var text : String;
    var image : String;
    
    var body: some View {
        VStack(){
            Image(uiImage: image.loadImage())
                .resizable()
                .frame(width: 40, height: 40)
            Text(text)
                .font(.system(size: 10))
                .fontWeight(.bold)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.center)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(text: "card_name", image: "https://www.freepnglogos.com/uploads/mastercard-png/mastercard-logo-mastercard-logo-png-vector-download-19.png")
    }
}

//
//  CardView.swift
//  21253_ACT9_VGrid
//
//  Created by Aurelio Marín Bautista on 23/10/23.
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

struct CardView: View {
    
    var icon : String
    var id_iest : Int
    var full_name : String
    var email : String
    var career : String
    
    var body: some View {
        HStack(alignment: .top){
            VStack(){
                Image(uiImage: icon.loadImg())
                    .resizable()
                    .aspectRatio(contentMode: .fit )
                    .frame(width: 60, height: 60)
                    .cornerRadius(100)
                Text(String(id_iest))
                    .font(.system(size: 12))
                    .foregroundColor(Color.white)
                    .fontWeight(.bold)
            }
            
            HStack(){
                VStack(alignment: .leading, spacing: 5){
                    Text(full_name)
                        .foregroundColor(Color.white)
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .padding(.top, 5)
                    Text(email)
                        .foregroundColor(Color("ColorYellow"))
                    Text(career)
                        .foregroundColor(Color.white)
                        .font(.system(size: 14))
                        .fontWeight(.semibold)
                }
            }
            
            Spacer()
        }
        .padding()
        .background(Color("ColorBrown"))
        .cornerRadius(10)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(
            icon: "https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/batman_hero_avatar_comics-512.png",
            id_iest: 21253,
            full_name: "AURELIO MARIN BAUTISTA",
            email: "aurelio.marin@iest.edu.mx",
            career: "INSD (2016)")
    }
}

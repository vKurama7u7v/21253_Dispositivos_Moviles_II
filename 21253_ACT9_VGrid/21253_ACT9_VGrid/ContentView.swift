//
//  ContentView.swift
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

struct ContentView: View {
    
    var img : String = "https://cdn4.iconfinder.com/data/icons/avatars-xmas-giveaway/128/batman_hero_avatar_comics-512.png"
    
    var char : String = "@iest.edu.mx"
    
    var body: some View {
        VStack {
            HStack(alignment: .top){
                VStack(){
                    Image(uiImage: img.loadImg())
                        .resizable()
                        .aspectRatio(contentMode: .fit )
                        .frame(width: 80, height: 80)
                        .cornerRadius(100)
                    Text("21253")
                        .font(.system(size: 12))
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                }
                Spacer()
                HStack(){
                    VStack(alignment: .trailing, spacing: 5){
                        Text("Aurelio Marín Bautista")
                            .foregroundColor(Color.white)
                            .font(.system(size: 16))
                            .fontWeight(.bold)
                        Text("aurelio.marin\(char)")
                            .foregroundColor(Color("ColorYellow"))
                    }
                }
            }
            .padding()
            .background(Color("ColorBrown"))
            .cornerRadius(20)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

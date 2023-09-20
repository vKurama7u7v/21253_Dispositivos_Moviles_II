//
//  CardView.swift
//  21253_ACT4
//
//  Created by Aurelio Marín Bautista on 19/09/23.
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
    
    // Variables
    var text : String
    var color : Color
    var image : String
    
    var body: some View {
        VStack(){
            HStack(){
                Spacer()
                // Left
                VStack(){
                    
                    HStack(){
                        Spacer()
                        Text(text)
                            .font(.custom("PressStart2P-Regular", size: 14))
                            .foregroundColor(color)
                        Spacer()
                    }
                    
                    HStack(){
                        Spacer()
                        Text("+ INFO")
                            .font(.custom("PressStart2P-Regular", size: 12))
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(50)
                            .padding(.top, 15)
                            
                        Spacer()
                    }
                }
                
                // Right
                VStack(){
                    HStack(){
                        
                        Image(uiImage: image.loadImage())
                            .resizable()
                            .frame(width: 120, height: 120)
                    }
                }
                //
                Spacer()
            }
            .padding()
            .background(Color("bgCard"))
            .cornerRadius(4)
            
        }.padding(.vertical, 4)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(
            text: "Dificultad",
            color: Color.white,
            image: "https://static.wikia.nocookie.net/geometry-dash/images/f/f1/Na.png/revision/latest?cb=20150923210206&path-prefix=es"
        )
    }
}

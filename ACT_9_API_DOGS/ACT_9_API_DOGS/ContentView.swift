//
//  ContentView.swift
//  ACT_9_API_DOGS
//
//  Created by Aurelio Marín Bautista on 05/12/23.
//

import SwiftUI

struct URLImage: View {
    let url: URL
    var body: some View {
        if let data = try? Data(contentsOf: url), let uiImage = UIImage(data: data) {
            Image(uiImage: uiImage)
                .resizable()
                .aspectRatio(contentMode: .fit )
                .frame(width: 250, height: 250)
                .padding()
                .cornerRadius(10)
        } else {
            Text("Algo salio mal").foregroundColor(Color.indigo)
        }
    }
}


struct ContentView: View {
    let breeds = ["pug", "retriever", "boxer", "husky", "shiba"]
    
    @State private var selectedBreed: String = "pug"
    @State private var ImgURL: URL?
    
    // ===== Peticion para perrito random =====
    private func fetchDogImage() {
        guard let url = URL(string: "https://dog.ceo/api/breed/\(selectedBreed)/images/random") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let data = data, error == nil {
                if let decodedResponse = try? JSONDecoder().decode(DogModel.self, from: data) {
                    DispatchQueue.main.async {
                        self.ImgURL = URL(string: decodedResponse.message)
                    }
                    return
                }
            }
            print("Ups, Algo salio mal.")
        }
        .resume()
    }
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack{
                Spacer()
                
                Text("API DOGS")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                
                Spacer()
            }
            
            VStack {
                VStack {
                    Text(selectedBreed)
                        .textCase(.uppercase)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.indigo)
                    
                    if let imageURL = ImgURL {
                        URLImage(url: imageURL)
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                
                Button (action: {
                    self.selectedBreed = breeds.randomElement()!
                    fetchDogImage()
                }) {
                    Text("Perrito Random 🤍")
                        .foregroundColor(Color.black)
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.yellow)
                        .cornerRadius(10)
                }.padding(.top, 20)
            }.padding()
            
            Spacer()
        }
        .onAppear {
            fetchDogImage()
        }
        .ignoresSafeArea()
        .padding()
        .background(Color.indigo)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

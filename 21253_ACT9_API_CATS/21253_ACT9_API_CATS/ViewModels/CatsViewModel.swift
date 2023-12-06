//
//  CatsViewModel.swift
//  21253_ACT9_API_CATS
//
//  Created by Aurelio Marín Bautista on 25/11/23.
//

import Foundation

class CatsViewModel : ObservableObject {
    @Published var cats : CatsModel
    
    init() {
        self.cats = CatsModel(results: [])
    }
    
    func getCatsList(){
        
        let endpoint : String = "https://api.api-ninjas.com/v1/cats?family_friendly=5"
        
        // Convertir el string a UR valida
        guard let apiURL = URL(string: endpoint) else {
            fatalError("Url no vàlida o no definida")
        }
        
        // Inicializar la petición HTTP
        var req = URLRequest(url: apiURL)
        
        req.httpMethod = "GET"
        
        // Headers
        req.setValue("aplication/json", forHTTPHeaderField: "Content-Type")
        req.setValue("K+3UDswxVyW5/vxcmHBHMw==5dlQiAAPhyBb6GIn", forHTTPHeaderField: "X-Api-Key")
        
        let session = URLSession.shared
        
        let task = URLSession.shared.dataTask(with: req) {(data, response, error) in
            guard let data = data else { return }
            print(String(data: data, encoding: .utf8)!)
            // Logica para procesar la respuesta
            DispatchQueue.main.async {
                do {
                    let decoded = try JSONDecoder().decode(CatsModel.self, from: data)
                    print(decoded)
                    self.cats = decoded
                } catch {
                    print("Ups! Algo salio mal")
                    return
                }
            }
            
        }
        task.resume()
    }
}


/*
 let url = URL(string: "https://api.api-ninjas.com/v1/cats?name="+name!)!
 var request = URLRequest(url: url)
 request.setValue("YOUR_API_KEY", forHTTPHeaderField: "X-Api-Key")
 let task = URLSession.shared.dataTask(with: request) {(data, response, error) in
 guard let data = data else { return }
 print(String(data: data, encoding: .utf8)!)
 }
 task.resume()
 */

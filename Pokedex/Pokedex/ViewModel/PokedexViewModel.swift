//
//  PokedexViewModel.swift
//  Pokedex
//
//  Created by Aurelio Marín Bautista on 08/11/23.
//

import Foundation

class PokedexViewModel : ObservableObject {
    @Published var pokemon : PokedexModel
    
    init(){
        self.pokemon = PokedexModel(count: -1, next: "" , previous: "" , results: [])
    }
    
    
    func getPokedex(){
        let endpoint : String = "https://pokeapi.co/api/v2/pokemon"
        
        // Cinvertir el string a UR valida
        guard let apiURL = URL(string: endpoint) else {
            fatalError("Url no vàlida o no definida")
        }
        
        // Inicializar la petición HTTP
        var urlRequest = URLRequest(url: apiURL)
        
        urlRequest.httpMethod = "GET"
        
        // Si se desea enviar parametros POST
        /*
        let parameters: [String: Any] = [
            "id_trainer" : 1,
            "name" : "Ash",
            "champion" : true
        ]
        
        let jsonData = try?
        JSONSerialization.data(withJSONObject: params)
        urlRequest.httpBody = jsonData
        */
        
        // Enviar Cabeceras
        /*
        urlRequest.setValue("secret123", forHTTPHeaderField: "Authorization-Header")
        */
        
        urlRequest.setValue("aplication/json", forHTTPHeaderField: "Content-Type")
        
        let session = URLSession.shared
        let task = session.dataTask(with: urlRequest, completionHandler: {data, response, error -> Void
            in
            
            // Empieza la recepcion de informacion y errores
            
            if let error = error {
                print("Error: " + error.localizedDescription)
                return
            }
            
            guard let response = response as? HTTPURLResponse else {
                print("Error: Incapaz de conectar o recibir respuestas del servidor")
                return
            }
            
            if response.statusCode == 200 {
                guard let data = data else {
                    print("Respuesta Vacia")
                    return
                }
                
                // Logica para procesar la respuesta
                DispatchQueue.main.async {
                    do {
                        let decoded = try JSONDecoder().decode(PokedexModel.self, from: data)
                        self.pokemon = decoded
                    } catch {
                        print("Ups! Algo salio mal")
                        return
                    }
                }
            } else {
                print("Status diferente a 200. Ejemplos: 500 - Internal server error, 400 - Not Fount, etc")
                return
            }
            
        })
        
        task.resume()
    }
}

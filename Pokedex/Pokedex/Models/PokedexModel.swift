//
//  PokedexModel.swift
//  Pokedex
//
//  Created by Aurelio Marín Bautista on 08/11/23.
//

import Foundation

struct PokedexModel: Decodable {
    var count : Int
    var next : String
    var previous : String?
    var results : [ResultModel]
    
    private enum CodingKeys: String, CodingKey {
        case count, results , previous// campos que son iguales
        case next = "next" //campo a renombrar
    }
    
}

struct Results: Decodable, Hashable{
    let name: String
    let url: String
}

//
//  GameModel.swift
//  ListasYForEach
//
//  Created by Aurelio Marín Bautista on 09/10/23.
//

import Foundation

struct Game : Identifiable {
    let uuid = UUID()
    let id: Int
    let image: String
    let name: String
    let console: String
    let price: Float
}

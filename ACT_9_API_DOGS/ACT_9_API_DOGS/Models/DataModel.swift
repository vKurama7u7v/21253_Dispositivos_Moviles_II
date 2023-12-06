//
//  DataModel.swift
//  ACT_9_API_DOGS
//
//  Created by Aurelio Marín Bautista on 05/12/23.
//

import Foundation

struct DataModel: Codable {
    let message: [DogModel]
    let status: String
}

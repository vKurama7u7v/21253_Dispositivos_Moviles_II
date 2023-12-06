//
//  CatModel.swift
//  21253_ACT9_API_CATS
//
//  Created by Aurelio Marín Bautista on 25/11/23.
//

import Foundation

struct ResultModel: Decodable, Hashable {
    var lenght : String
    var origin : String
    var image_link : String
    var family_friendly : Int
    var shedding : Int
    var general_health : Int
    var playfulness : Int
    var children_friendly : Int
    var grooming : Int
    var intelligence : Int
    var other_pets_friendly : Int
    var min_weight : Int
    var max_weight : Int
    var min_life_expectancy : Int
    var max_life_expectancy : Int
    var name : String
}

/*
 {
     "length": "12 to 16 inches",
     "origin": "Southeast Asia",
     "image_link": "https://api-ninjas.com/images/cats/abyssinian.jpg",
     "family_friendly": 3,
     "shedding": 3,
     "general_health": 2,
     "playfulness": 5,
     "children_friendly": 5,
     "grooming": 3,
     "intelligence": 5,
     "other_pets_friendly": 5,
     "min_weight": 6,
     "max_weight": 10,
     "min_life_expectancy": 9,
     "max_life_expectancy": 15,
     "name": "Abyssinian"
   }
 */

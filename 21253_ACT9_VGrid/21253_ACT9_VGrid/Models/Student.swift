//
//  Student.swift
//  21253_ACT9_VGrid
//
//  Created by Aurelio Marín Bautista on 23/10/23.
//

import Foundation

class Student : Identifiable {
    
    // Definiendo propiedades del modelo Alumno
    var id = UUID()
    var id_iest : Int
    var full_name : String
    var email : String
    var career : String
    
    // Constructor
    init(id: UUID = UUID(), id_iest: Int, full_name: String, email: String, career: String) {
        self.id = id
        self.id_iest = id_iest
        self.full_name = full_name
        self.email = email
        self.career = career
    }
}

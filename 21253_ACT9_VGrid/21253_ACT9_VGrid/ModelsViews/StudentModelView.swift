//
//  StudentModelView.swift
//  21253_ACT9_VGrid
//
//  Created by Aurelio Marín Bautista on 23/10/23.
//

import Foundation

struct StudentModelView {
    
    // Funcion que retorna un array de tipo [Student]
    func dummyData() -> [Student] {
        
        // Creamos nuetro array de objetos, con ayuda de nuestro modelo Student
        let students: [Student] = [
            Student(id_iest: 21239, full_name: "MIGUEL ANGEL PEREZ PATIÑO", email: "miguelangel.perez@iest.edu.mx", career: "ISND (2016)"),
            Student(id_iest: 21253, full_name: "AURELIO MARIN BAUTISTA", email: "aurelio.marin@iest.edu.mx", career: "ISND (2016)"),
        ]
        
        // Retornamos array de objetos
        return students
    }
}

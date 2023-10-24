//
//  PersistenceController.swift
//  21253_Act8_CoreData
//
//  Created by Aurelio Marín Bautista on 18/10/23.
//

// import Foundation
import CoreData
 
struct PersistenceController {
    static let shared = PersistenceController()
    
    let container: NSPersistentContainer
 
    init() {
        container = NSPersistentContainer(name: "Products")
        
        container.loadPersistentStores { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Container load failed: \(error)")
            }
        }
    }
}

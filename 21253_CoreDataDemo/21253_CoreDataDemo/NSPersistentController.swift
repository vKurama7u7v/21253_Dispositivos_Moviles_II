//
//  NSPersistentController.swift
//  21253_CoreDataDemo
//
//  Created by Aurelio Marín Bautista on 11/10/23.
//

import Foundation
import CoreData

struct NSPersistenceController {
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

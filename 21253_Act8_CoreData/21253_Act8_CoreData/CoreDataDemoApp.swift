//
//  CoreDataDemoApp.swift
//  21253_Act8_CoreData
//
//  Created by Aurelio Marín Bautista on 18/10/23.
//

import SwiftUI
 
@main
struct CoreDataDemoApp: App {
    
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext,
                             persistenceController.container.viewContext)
        }
    }
}

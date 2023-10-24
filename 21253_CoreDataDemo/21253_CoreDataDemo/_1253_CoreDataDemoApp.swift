//
//  _1253_CoreDataDemoApp.swift
//  21253_CoreDataDemo
//
//  Created by Aurelio Marín Bautista on 11/10/23.
//

import SwiftUI

@main
struct _1253_CoreDataDemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

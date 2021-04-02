//
//  ToDoCoreDataApp.swift
//  ToDoCoreData
//
//  Created by big sur on 2.4.2021.
//

import SwiftUI

@main
struct ToDoCoreDataApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

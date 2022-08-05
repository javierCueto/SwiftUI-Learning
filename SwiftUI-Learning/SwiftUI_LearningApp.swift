//
//  SwiftUI_LearningApp.swift
//  SwiftUI-Learning
//
//  Created by José Javier Cueto Mejía on 09/02/22.
//

import SwiftUI

@main
struct SwiftUI_LearningApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

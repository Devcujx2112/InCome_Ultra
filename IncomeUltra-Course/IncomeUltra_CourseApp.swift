//
//  IncomeUltra_CourseApp.swift
//  IncomeUltra-Course
//
//  Created by Vu Tung Duong on 9/3/26.
//

import SwiftData
import SwiftUI

@main
struct IncomeUltra_CourseApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            AppStartingView()
        }
        .modelContainer(sharedModelContainer)
    }
}

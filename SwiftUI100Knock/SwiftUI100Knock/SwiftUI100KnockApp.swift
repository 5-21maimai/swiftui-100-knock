//
//  SwiftUI100KnockApp.swift
//  SwiftUI100Knock
//
//  Created by 浅井麻衣 on 2023/12/18.
//

import SwiftUI
import SwiftData

@main
struct SwiftUI100KnockApp: App {
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
            ContentView19()
        }
        .modelContainer(sharedModelContainer)
    }
}

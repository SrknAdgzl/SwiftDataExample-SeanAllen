//
//  SwiftDataExampleApp.swift
//  SwiftDataExample
//
//  Created by Serkan ADIGÜZEL on 19.10.2023.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataExampleApp: App {
    // (1) this is where we create our container. by building here all our app can use it
    let container: ModelContainer = {
        let schema = Schema([Expense.self])
        let container = try! ModelContainer(for: schema, configurations: [])
        return container
    }()
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(container)
    }
}

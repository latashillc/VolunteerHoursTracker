//
//  VolunteerHoursTrackerApp.swift
//  VolunteerHoursTracker
//
//  Created by Saanvi Reddy on 3/17/24.
//

import SwiftUI
import SwiftData

@main
struct VolunteerHoursTrackerApp: App {
    
    let container:ModelContainer = {
        let schema = Schema([Transaction.self])
        let container = try! ModelContainer(for: schema, configurations: [])
        return container
    }()
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(container)
       // .modelContainer(for: [Transaction.self]) //very basic way
    }
}

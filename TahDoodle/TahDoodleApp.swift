//
//  TahDoodleApp.swift
//  TahDoodle
//
//  Created by Edwin Cardenas on 5/16/25.
//

import SwiftUI

@main
struct TahDoodleApp: App {
    var body: some Scene {
        WindowGroup {
            TaskListView(taskStore: TaskStore.sample)
        }
    }
}

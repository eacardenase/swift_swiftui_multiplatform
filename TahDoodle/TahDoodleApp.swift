//
//  TahDoodleApp.swift
//  TahDoodle
//
//  Created by Edwin Cardenas on 5/16/25.
//

import SwiftUI

@main
struct TahDoodleApp: App {
    
    let taskStore = TaskStore()
    
    var body: some Scene {
        WindowGroup {
#if os(macOS)
            ContentView(taskStore: taskStore)
                .frame(minWidth: 200,
                       maxWidth: 300,
                       minHeight: 200)
#else
            ContentView(taskStore: taskStore)
#endif
        }
    }
}

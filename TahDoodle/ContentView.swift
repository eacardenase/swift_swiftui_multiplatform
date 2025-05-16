//
//  ContentView.swift
//  TahDoodle
//
//  Created by Edwin Cardenas on 5/16/25.
//

import SwiftUI

struct ContentView: View {
    
    let taskStore: TaskStore
    
    var body: some View {
        VStack {
            NewTaskView(taskStore: taskStore)
            TaskListView(taskStore: taskStore)
        }
    }
}

#Preview {
    ContentView(taskStore: .sample)
}

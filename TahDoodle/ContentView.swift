//
//  ContentView.swift
//  TahDoodle
//
//  Created by Edwin Cardenas on 5/16/25.
//

import SwiftUI

struct ContentView: View {
    
    let taskStore: TaskStore
    
    private var newTaskView: some View {
        Text("Placeholder for new task controls")
    }
    
    var body: some View {
        VStack {
            newTaskView
            TaskListView(taskStore: taskStore)
        }
    }
}

#Preview {
    ContentView(taskStore: .sample)
}

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
        Button("Add Task") {
            #warning("The task title is hardcoded")
            
            let task = Task(title: "Title")
            taskStore.add(task)
        }
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

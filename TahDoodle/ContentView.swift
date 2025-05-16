//
//  ContentView.swift
//  TahDoodle
//
//  Created by Edwin Cardenas on 5/16/25.
//

import SwiftUI

struct ContentView: View {
    
    let taskStore: TaskStore
    @State private var newTaskTitle = ""
    
    private var newTaskView: some View {
        HStack {
            TextField("Something to do", text: $newTaskTitle)
            Button("Add Task") {
                let task = Task(title: newTaskTitle)
                
                print(task)
                
                taskStore.add(task)
            }.disabled(newTaskTitle.isEmpty)
        }.padding()
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

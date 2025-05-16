//
//  NewTaskView.swift
//  TahDoodle
//
//  Created by Edwin Cardenas on 5/16/25.
//

import SwiftUI

struct NewTaskView: View {
    let taskStore: TaskStore
    @State private var newTaskTitle = ""
    
    var body: some View {
        HStack {
            TextField("Something to do", text: $newTaskTitle)
            Button("Add Task") {
                let task = Task(title: newTaskTitle)
                
                taskStore.add(task)
                
                newTaskTitle = ""
            }.disabled(newTaskTitle.isEmpty)
        }.padding()
    }
}

#Preview {
    NewTaskView(taskStore: .sample)
}

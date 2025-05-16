//
//  TaskListView.swift
//  TahDoodle
//
//  Created by Edwin Cardenas on 5/16/25.
//

import SwiftUI

struct TaskListView: View {
    
    @ObservedObject var taskStore: TaskStore
    
    var body: some View {
        List {
            ForEach(taskStore.tasks) { task in
                TaskView(title: task.title)
                    .contextMenu {
                        #if macOS
                        Button("Delete") {
                            taskStore.remove(task)
                        }
                        #endif
                    }
            }.onDelete { indexSet in
                indexSet.forEach { index in
                    let task = taskStore.tasks[index]
                    taskStore.remove(task)
                }
            }
        }
    }
}

#Preview {
    TaskListView(taskStore: TaskStore.sample)
}

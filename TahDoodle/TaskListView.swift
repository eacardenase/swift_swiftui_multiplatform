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
            }
        }
    }
}

#Preview {
    TaskListView(taskStore: TaskStore.sample)
}

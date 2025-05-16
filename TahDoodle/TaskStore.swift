//
//  TaskStore.swift
//  TahDoodle
//
//  Created by Edwin Cardenas on 5/16/25.
//

import Foundation

class TaskStore: ObservableObject {
    
    private let fileURL: URL = {
        let fileManager = FileManager.default
        let documentDirectories = fileManager.urls(for: .documentDirectory, in: .userDomainMask)
        let myDocumentDirectory = documentDirectories.first!
        let taskFileURL = myDocumentDirectory.appendingPathComponent("tasks.json")
        
        print("Tasks file is \(taskFileURL)")
        
        return taskFileURL
    }()
    
    @Published private(set) var tasks = [Task]()
    
    func add(_ task: Task) {
        tasks.append(task)
    }
    
    func remove(_ task: Task) {
        guard let index = tasks.firstIndex(of: task) else { return }
        
        tasks.remove(at: index)
    }
    
    private func saveTasks() {
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(tasks)
            
            try data.write(to: fileURL)
            
            print("Saved \(tasks.count) tasks to \(fileURL.path)")
        } catch {
            print("Could not save tasks. Reason: \(error)")
        }
    }
}

#if DEBUG
extension TaskStore {
    static var sample: TaskStore = {
        let tasks = [
            Task(title: "Add features"),
            Task(title: "Fix bugs"),
            Task(title: "Ship it")
        ]
        
        let store = TaskStore()
        store.tasks = tasks
        return store
    }()
}
#endif

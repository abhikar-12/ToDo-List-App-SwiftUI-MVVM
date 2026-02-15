//
//  TaskViewModel.swift
//  ToDo List App
//
//  Created by Abhishek Kusalkar on 14/02/26.
//

import Foundation

class TaskViewModel: ObservableObject {
    
    @Published var tasks: [Task] = []
    
    // Add Task
    func addTask(title: String) {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else { return }
        
        let newTask = Task(title: title, isCompleted: false)
        tasks.append(newTask)
    }
    
    // Delete Task
    func deleteTask(at offsets: IndexSet) {
        tasks.remove(atOffsets: offsets)
    }
}

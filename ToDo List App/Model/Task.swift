//
//  Task.swift
//  ToDo List App
//
//  Created by Abhishek Kusalkar on 14/02/26.
//

import Foundation

struct Task: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let isCompleted: Bool
}

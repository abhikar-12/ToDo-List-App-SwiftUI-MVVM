//
//  DetailView.swift
//  ToDo List App
//
//  Created by Abhishek Kusalkar on 14/02/26.
//

import SwiftUI

struct DetailView: View {
    
    let todoData : Task
    
    var body: some View {
        VStack{
            Text("\(todoData.title)")
                .font(.headline)
                .padding()
        }
    }
}

#Preview {
    DetailView(todoData: Task(title: "", isCompleted: false))
}

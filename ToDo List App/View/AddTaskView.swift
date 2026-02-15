//
//  AddTaskView.swift
//  ToDo List App
//
//  Created by Abhishek Kusalkar on 14/02/26.
//

import SwiftUI

struct AddTaskView: View {
    
    @ObservedObject var viewModel: TaskViewModel
    @Environment(\.dismiss) var dismiss
    
    @State private var todoText: String = ""
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.2)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                
                TextField("Add Task", text: $todoText)
                    .textInputAutocapitalization(.sentences)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.horizontal)
                
                Button {
                    viewModel.addTask(title: todoText)
                    dismiss()
                } label: {
                    Text("Add Task")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    AddTaskView(viewModel: .init())
}

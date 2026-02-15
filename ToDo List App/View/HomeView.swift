//
//  ContentView.swift
//  ToDo List App
//
//  Created by Abhishek Kusalkar on 14/02/26.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = TaskViewModel()
    @State private var showSheet: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.tasks) { task in
                    NavigationLink(value: task) {
                        Text(task.title)
                    }
                }
                .onDelete(perform: viewModel.deleteTask)
            }
            .navigationTitle("To Do List")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showSheet = true
                    } label: {
                        Image(systemName: "plus")
                            .font(.title3)
                            .fontWeight(.bold)
                    }
                }
            }
            .navigationDestination(for: Task.self) { task in
                DetailView(todoData: task)
            }
        }
        .sheet(isPresented: $showSheet) {
            AddTaskView(viewModel: viewModel)
                .presentationDetents([.medium])
        }
    }
}


#Preview {
    HomeView()
}

//
//  ContentView.swift
//  ToDoList
//
//  Created by Jacobson, Machiah - Student on 11/3/25.
//

import SwiftUI

struct ContentView: View {
    @Environment(ToDoListManager.self) var manager
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(manager.items) { item in
                    NavigationLink {
                        ToDoDetailView(item: item)
                    } label: {
                        HStack {
                            Image(systemName: item.isComplete ? "checkmark.circle.fill" : "circle")
                            Text(item.title)
                                .foregroundStyle(Color.init("MyColor2"))
                                .strikethrough(item.isComplete, pattern: .solid, color: .purple)
                        }
                    }
                }
                .onDelete(perform: manager.deleteItem)
            }
            .navigationTitle(Text("To-Do List"))
            .foregroundStyle(Color.init("MyColor"))
            .toolbar {
                EditButton()
                Button("Add") {
                    manager.addItem(title: "New Item")
                }
            }
        }
    }
}
#Preview {
    @Previewable @State var mockManager = ToDoListManager()
    ContentView()
        .environment(mockManager)
}

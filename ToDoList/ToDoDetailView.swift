//
//  ToDoDetailView.swift
//  ToDoList
//
//  Created by Jacobson, Machiah - Student on 11/3/25.
//

import SwiftUI

struct ToDoDetailView: View {
    var item: ToDoItem
    var body: some View {
        Form {
            @Bindable var item = item
            TextField("Task Name", text: $item.title)
            
            Toggle("Complete", isOn: $item.isComplete)
        }
        .padding()
        .foregroundStyle(Color.init("MyColor"))
        .navigationTitle(item.title)
    }
}

#Preview {
    @Previewable @State var mockItem = ToDoItem(title: "Preview Task", isComplete: false)
    ToDoDetailView(item: mockItem)
}

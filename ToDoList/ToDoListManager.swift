//
//  ToDoListManager.swift
//  ToDoList
//
//  Created by Jacobson, Machiah - Student on 11/3/25.
//

import Foundation
import SwiftUI

@Observable
class ToDoListManager {
    var items: [ToDoItem] = [
        ToDoItem(title:"Buy Milk"),
        ToDoItem(title:"Go to Gym"),
        ToDoItem(title:"Make Pancakes")
    ]
    
    func addItem(title: String) {
        items.append(ToDoItem(title: title))
    }
    func deleteItem(offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}

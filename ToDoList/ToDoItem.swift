//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Jacobson, Machiah - Student on 11/3/25.
//

import Foundation
import SwiftUI

@Observable
class ToDoItem: Identifiable {
    let id = UUID()
    var title: String
    var isComplete: Bool
    
    init(title: String, isComplete: Bool = false) {
        self.title = title
        self.isComplete = isComplete
    }
    
}

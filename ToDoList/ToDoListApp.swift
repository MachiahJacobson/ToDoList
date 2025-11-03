//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Jacobson, Machiah - Student on 11/3/25.
//

import SwiftUI

@main
struct ToDoListApp: App {
    
    @State private var manager = ToDoListManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(manager)
        }
    }
}

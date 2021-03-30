//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by big sur on 26.3.2021.
//

import SwiftUI

@main
struct ToDoListApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}

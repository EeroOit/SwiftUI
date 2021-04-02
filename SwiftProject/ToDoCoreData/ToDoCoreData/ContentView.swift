//
//  ContentView.swift
//  ToDoCoreData
//
//  Created by big sur on 2.4.2021.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext) var mngedObjectContext
    @FetchRequest(fetchRequest: ToDoItem.getAllToDoItems()) var toDoItems:FetchedResults<ToDoItem>
    
    @State private var newTodoItem = ""
    
    var body: some View {
        Text("Hello World")
    }
    }
  

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

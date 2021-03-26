//
//  ContentView.swift
//  ToDoList
//
//  Created by big sur on 26.3.2021.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self,
                                  from: "menu.json")
    
    var body: some View {
        NavigationView {
        List {
        Text("Hello World")
        Text("Hello World")
        Text("Hello World")
        
        }
        .navigationTitle("Menu")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

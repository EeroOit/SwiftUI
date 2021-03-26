//
//  ContentView.swift
//  ToDoList
//
//  Created by big sur on 26.3.2021.
//

import SwiftUI

struct ContentView: View {
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

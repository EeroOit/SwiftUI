//
//  ItemRow.swift
//  ToDoList
//
//  Created by big sur on 26.3.2021.
//

import SwiftUI

struct ItemRow: View {
    let item: MenuItem
    
    var body: some View {
        Text(item.name)
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}

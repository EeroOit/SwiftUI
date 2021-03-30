//
//  ItemDetail.swift
//  ToDoList
//
//  Created by big sur on 29.3.2021.
//

import SwiftUI

struct ItemDetail: View {
    let item: MenuItem
    
    var body: some View {
        VStack {
            Image(item.mainImage)
            Text(item.description)
                .padding()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        ItemDetail(item: MenuItem.example)
        }
    }
}

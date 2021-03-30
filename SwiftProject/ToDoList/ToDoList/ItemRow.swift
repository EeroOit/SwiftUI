//
//  ItemRow.swift
//  ToDoList
//
//  Created by big sur on 26.3.2021.
//

import SwiftUI

struct ItemRow: View {
     let colors: [String: Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue, "V": .green]
    
    let item: MenuItem
    
    var body: some View {
        HStack {
        Image(item.thumbnailImage)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.gray, lineWidth: 2))
            
            VStack(alignment: .leading) {
            Text(item.name)
                .font(.headline)
            Text("$\(item.price)")
            }
            
            Spacer()
            
            ForEach(item.restrictions, id: \.self) {
                restriction in
                Text(restriction)
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(5)
                    .background(colors[restriction, default: .black])
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                
                
            }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}

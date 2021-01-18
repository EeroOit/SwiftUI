//
//  ContentView.swift
//  Rooms
//
//  Created by Eero Oittinen on 18.1.2021.
//

import SwiftUI

struct ContentView: View {
    var rooms: [Room] = []
    
    var body: some View {
        List(rooms) { room in
            Image(room.thumbnailName)
                .cornerRadius(8.0)
            VStack(alignment: .leading) {
                Text(room.name)
                Text("\(room.capacity) people")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rooms: testData)
    }
}

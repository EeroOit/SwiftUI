//
//  ContentView.swift
//  WeatherApp
//
//  Created by big sur on 5.4.2021.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        VStack {
            Text("Lappeeranta")
                .font(.largeTitle)
                .padding()
            Text("5°C")
                .font(.system(size: 70))
                .bold()
            Text("⛅️")
                .font(.largeTitle)
                .padding()
            Text("Clear Sky")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}

//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Eero Oittinen on 18.1.2021.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}

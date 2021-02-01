//
//  Landmark.swift
//  Landmarks
//
//  Created by big sur on 1.2.2021.
//

import Foundation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
}

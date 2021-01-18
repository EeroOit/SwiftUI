

import SwiftUI

struct Room : Identifiable {
    var id = UUID()
    var name: String
    var capacity: Int
    var hasVideo: Bool = false
    
    var ImageName: String { return name}
    var thumbnailName: String { return name + "Thumb"}
}

let testData = [
    Room(name: "Observation Deck", capacity: 6, hasVideo: true),
    Room(name: "Executive Suite", capacity: 8, hasVideo: false),
    Room(name: "Charter jet", capacity: 16, hasVideo: true),
    Room(name: "Dungeon", capacity: 10, hasVideo: true),
    Room(name: "Panorama", capacity: 12, hasVideo: true),
    Room(name: "Oceanfront", capacity: 8, hasVideo: true),
    Room(name: "Rainbow Room", capacity: 10, hasVideo: true),
    Room(name: "Pastoral", capacity: 7, hasVideo: true),
    Room(name: "Elephant Room", capacity: 1, hasVideo: true)

]

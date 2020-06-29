//
//  Landmark.Swift
//  Landmarks
//
//  Created by David Mcinnes on 29/06/2020.
//  Copyright © 2020 David Mcinnes. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var park: String
    var category: Category
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
    }
}

//extension Landmark {
//    var Image: Image {
//        ImageStore.shared.image(name: imageName)
//    }
//}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}

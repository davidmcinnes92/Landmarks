//
//  UserData.swift
//  Landmarks
//
//  Created by David Mcinnes on 02/07/2020.
//  Copyright © 2020 David Mcinnes. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    
}

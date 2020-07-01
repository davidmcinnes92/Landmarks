//
//  LandmarkList.swift
//  Landmarks
//
//  Created by David Mcinnes on 29/06/2020.
//  Copyright © 2020 David Mcinnes. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Show Favorites Only")
                }
                
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite  {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                                LandmarkRow(landmark: landmark)
                            }
                        }
                }.navigationBarTitle(Text("Landmarks"))
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE"], id: \.self) {
            deviceName in LandmarkList()
            .environmentObject(UserData())
        }
    }
}

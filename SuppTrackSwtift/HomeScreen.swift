//
//  HomeScreen.swift
//  SuppTrackSwtift
//
//  Created by Taylor Lea on 2/22/24.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationLink("Settings", destination: Settings())
             .offset(x:0, y:30)
        
        NavigationLink("System Preferences", destination: SystemPreferences())
             .offset(x:0, y:30)
        
        NavigationLink("Recently Viewed", destination: RecentlyViewed())
             .offset(x:0, y:30)
        
        NavigationLink("Scanner", destination: Scanner())
             .offset(x:0, y:30)
        
        NavigationLink("Marketplace", destination: MarketPlace())
            .offset(x:0, y: 30)
        
        NavigationLink("Menu", destination: Menu())
             .offset(x:0, y:30)
    }
}

#Preview {
    HomeScreen()
}

//
//  HomeScreen.swift
//  SuppTrackSwtift
//
//  Created by Taylor Lea on 2/22/24.
//

import SwiftUI

struct HomeScreen: View {
    
    @State private var showMenu = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
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
                
                SideMenuView(isShowing: $showMenu)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Button(action: {
                        showMenu.toggle()
                    }, label: {
                        Image(systemName: "line.3.horizontal")
                    })
                }
        }
        }
    }
}

/*struct SideView: View{
    
}*/

#Preview {
    HomeScreen()
}

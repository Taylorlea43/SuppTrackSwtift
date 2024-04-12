//
//  RecentlyViewed.swift
//  SuppTrackSwtift
//
//  Created by Taylor Lea on 2/22/24.
//

import SwiftUI

struct RecentlyViewed: View {
    @State private var showMenu = false
    var body: some View {
        NavigationStack {
            ZStack {
                Text("Recently Viewed")
                
              //  SideMenuView(isShowing: $showMenu)
            }
           /* .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Button(action: {
                        showMenu.toggle()
                    }, label: {
                        Image(systemName: "line.3.horizontal")
                    })
                }
        }*/
        }
        .navigationBarBackButtonHidden(true)
    }
    
}

#Preview {
    RecentlyViewed()
}

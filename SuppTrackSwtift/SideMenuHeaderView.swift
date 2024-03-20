//
//  SideMenuHeaderView.swift
//  SuppTrackSwtift
//
//  Created by Taylor Lea on 3/18/24.
//

import SwiftUI

struct SideMenuHeaderView: View {
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "person.circle.fill")
                    .imageScale(.large)
                
                Text("Profile")
            }
            .offset(x:-7)
            
            HStack{
                Image(systemName: "gearshape")
                    .imageScale(.large)
                Text("Settings")
            }
            .offset(y: 20)
            
            HStack{
                Image(systemName: "rectangle.portrait.and.arrow.forward")
                    .imageScale(.large)
                Text("Logout")
            }
            .offset( x: -3, y: 40)
        }
    }
}

#Preview {
    SideMenuHeaderView()
}

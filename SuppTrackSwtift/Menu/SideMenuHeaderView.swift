//
//  SideMenuHeaderView.swift
//  SuppTrackSwtift
//
//  Created by Taylor Lea on 3/18/24.
//

import SwiftUI
import Firebase
import FirebaseAuth
import UIKit

struct SideMenuHeaderView: View {
    @State var isLogin = true
    @ObservedObject var userData : UserDataModel
    var body: some View {
        VStack {
            //profile image for menu
            HStack{
                Image(systemName: "person.circle.fill")
                    .imageScale(.large)
            //nav link to profile view
                NavigationLink("Profile", destination: Profile(userData: userData))
                    .offset(x:0, y:0)
                    .foregroundColor(.black)
            }
            .offset(x:-7)
            
            HStack{
            //settings image and nav link to settings
                Image(systemName: "gearshape")
                    .imageScale(.large)
                    .offset(x:-1)
                NavigationLink("Settings", destination: Settings(userData: userData))
                    .offset(x:0, y:0)
                    .foregroundColor(.black)
            }
            .offset(y: 14)
            
            HStack{
            //logout image and nav link
                Image(systemName: "rectangle.portrait.and.arrow.forward")
                    .imageScale(.large)
                NavigationLink("Logout", destination: ContentView())
                    .foregroundColor(.black)
                    .onTapGesture {
                        isLogin = false
                    }
            }
            .offset( x: -3, y: 30)
        }
    }
}



/*#Preview {
    SideMenuHeaderView(userData: UserDataModel())
}*/

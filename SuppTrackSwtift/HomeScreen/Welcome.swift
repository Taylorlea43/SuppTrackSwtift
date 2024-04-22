//
//  Welcome.swift
//  SuppTrackSwtift
//
//  Created by Taylor Lea on 4/1/24.
//

import SwiftUI

struct Welcome: View {
    @State private var showMenu = false
    var body: some View {
        NavigationStack {
            ZStack {
                Image("HomeScreen Background")
                    .resizable()
                    .offset(x:0, y:-60)
                    .frame(width: 800, height: 1300)
                VStack {
                    Text("SuppTrack").font(.system(size: 60, weight: .heavy))
                        .foregroundColor(.white)
                        .offset(x: -20, y:-270)
                    Text("Welcome!").font(.system(size: 20, weight: .light))
                        .foregroundColor(.white)
                        .offset(x: -125, y:-265)
                    Text("Hit the Ground Running.").font(.system(size: 28, weight: .medium))
                        .offset(x: -20, y: 200)
                 //   SideMenuView(isShowing: $showMenu)
                }
            }
            /*/.navigationBarTitleDisplayMode(.inline)
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
    }
}

#Preview {
    Welcome()
}

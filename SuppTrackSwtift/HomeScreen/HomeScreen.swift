//
//  HomeScreen.swift
//  SuppTrackSwtift
//
//  Created by Taylor Lea on 2/22/24.
//

import SwiftUI

struct HomeScreen: View {
    
    @State private var showMenu = false
    @ObservedObject var userData: UserDataModel
    
    var body: some View {
        NavigationStack {
            ZStack {
                //homescreen with three tabs
                Image("HomeScreen Background")
                    .resizable()
                    .offset(x:0, y:-60)
                    .frame(width: 395, height: 800)
                VStack {
                    TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
                        //wlecome tab
                        Welcome()
                            .tabItem {
                                Label("Home", systemImage: "house")
                            }
                        //scanner tab
                        Scanner()
                            .tabItem {
                                Label("Scanner", systemImage: "barcode.viewfinder")
                            }
                        //marketplace tab
                        MarketPlace(userData: userData)
                            .tabItem {
                                Label("Marketplace", systemImage: "storefront")
                            }
                    }
                }
                //side menu
                SideMenuView(isShowing: $showMenu, userData: userData)
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
        .navigationBarBackButtonHidden(true)
    }
}

/*#Preview {
    HomeScreen(userData: UserDataModel(), ingredientResponse: IngredientResponse())
}*/

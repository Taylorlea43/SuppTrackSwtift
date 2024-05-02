//
//  MarketPlace.swift
//  SuppTrackSwtift
//
//  Created by Taylor Lea on 2/22/24.
//

import SwiftUI

struct MarketPlace: View {
    //Makretplace tabs to include links to buy products
    @State private var showMenu = false
    @ObservedObject var userData: UserDataModel
    var body: some View {
        NavigationStack {
            ZStack {
            
                VStack {
                //Title
                    Text("Marketplace")
                        .font(.system(size: 50, weight:.heavy))
                        .offset(y: 250)
                    
                //links to products
                    Text("Bars")
                        .font(.system(size: 25, weight:.heavy))
                        .offset(x:-140, y:280)
                    Button(action: {
                               UIApplication.shared.open(URL(string: "https://ucan.co/collections/all?utm_source=google&utm_medium=cpc&utm_campaign=g-us-search-brand&utm_term=ucan%20products&utm_content=652966081650&gad_source=1&gclid=Cj0KCQjwlN6wBhCcARIsAKZvD5gvGnaimAVpXV6hI1qbqQc7CDG9irDgFJTsERNW5YjEgGBbzd09khUaAm7iEALw_wcB")!)
                           }) {
                               Image("Image 1")
                                   .resizable()
                                   .frame(width: 100, height: 100)
                                   .aspectRatio(contentMode: .fit)
                           }
                        .offset(x:-120, y:290)
                   
                    Button(action: {
                               UIApplication.shared.open(URL(string: "https://www.gatorade.com/protein/recover-protein-bar/chocolate-chip-bar-10052000104322")!)
                           }) {
                               Image("GatoradeBar")
                                   .resizable()
                                   .frame(width: 100, height: 100)
                                   .aspectRatio(contentMode: .fit)
                           }
                        .offset(x:0, y:190)
                    
                    Button(action: {
                               UIApplication.shared.open(URL(string: "https://www.questnutrition.com/collections/protein-bars")!)
                           }) {
                               Image("QuestBar")
                                   .resizable()
                                   .frame(width: 100, height: 100)
                                   .aspectRatio(contentMode: .fit)
                           }
                        .offset(x:120, y:90)
                    
                    
                    Text("Electrolytes")
                        .font(.system(size: 25, weight:.heavy))
                        .offset(x:-95, y: 100)
                    
                    Button(action: {
                               UIApplication.shared.open(URL(string: "https://ucan.co/collections/all?utm_source=google&utm_medium=cpc&utm_campaign=g-us-search-brand&utm_term=ucan%20products&utm_content=652966081650&gad_source=1&gclid=Cj0KCQjwlN6wBhCcARIsAKZvD5gvGnaimAVpXV6hI1qbqQc7CDG9irDgFJTsERNW5YjEgGBbzd09khUaAm7iEALw_wcB")!)
                           }) {
                               Image("ucanelectro")
                                   .resizable()
                                   .frame(width: 100, height: 100)
                                   .aspectRatio(contentMode: .fit)
                           }
                        .offset(x:-120, y:115)
                    
                    Button(action: {
                               UIApplication.shared.open(URL(string: "https://www.gatorade.com/powders/gatorlyte/cherry-lime-single-serve-sticks-00052000052848")!)
                           }) {
                               Image("gatorlyte")
                                   .resizable()
                                   .frame(width: 100, height: 100)
                                   .aspectRatio(contentMode: .fit)
                           }
                    
                            .offset(y:3)
                    
                    Button(action: {
                               UIApplication.shared.open(URL(string: "https://www.pedialyte.com/products/powder-packs/grape?gad_source=1&gclid=Cj0KCQjwlN6wBhCcARIsAKZvD5jZp4s1IZfil9_jUC3-jVMIQZ-g-omJ_EmM74Yc5xpxNcxbiHjOClsaAqYNEALw_wcB&gclsrc=aw.ds")!)
                           }) {
                               Image("pedialyte")
                                   .resizable()
                                   .frame(width: 100, height: 100)
                                   .aspectRatio(contentMode: .fit)
                           }
                        .offset(x: 120, y:-100)
                    
                    Text("Protien Drinks and Powders")
                        .font(.system(size: 25, weight:.heavy))
                        .offset(x:0, y:-50)
                    
                    Button(action: {
                               UIApplication.shared.open(URL(string: "https://ucan.co/collections/all?utm_source=google&utm_medium=cpc&utm_campaign=g-us-search-brand&utm_term=ucan%20products&utm_content=652966081650&gad_source=1&gclid=Cj0KCQjwlN6wBhCcARIsAKZvD5gvGnaimAVpXV6hI1qbqQc7CDG9irDgFJTsERNW5YjEgGBbzd09khUaAm7iEALw_wc")!)
                           }) {
                               Image("ucanprotien")
                                   .resizable()
                                   .frame(width: 100, height: 100)
                                   .aspectRatio(contentMode: .fit)
                           }
                        .offset(x: -120, y:-28)
                    
                    Button(action: {
                               UIApplication.shared.open(URL(string: "https://www.gatorade.com/protein/muscle-milk-genuine/banana-creme-30-oz-canister-00660726503492")!)
                           }) {
                               Image("musclemilk")
                                   .resizable()
                                   .frame(width: 100, height: 100)
                                   .aspectRatio(contentMode: .fit)
                           }
                            .offset(y:-140)
                    
                    
                    Button(action: {
                               UIApplication.shared.open(URL(string: "https://fairlife.com/core-power/")!)
                           }) {
                               Image("fairlife")
                                   .resizable()
                                   .frame(width: 100, height: 100)
                                   .aspectRatio(contentMode: .fit)
                           }
                        .offset(x: 120, y:-250)
                    
                }
            //side menu code
                SideMenuView(isShowing: $showMenu, userData: userData)
            }
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationBarBackButtonHidden(true)
        
        
    }
}

#Preview {
    MarketPlace(userData: UserDataModel())
}

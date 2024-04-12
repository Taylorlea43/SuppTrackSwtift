//
//  MarketPlace.swift
//  SuppTrackSwtift
//
//  Created by Taylor Lea on 2/22/24.
//

import SwiftUI

struct MarketPlace: View {
    @State private var showMenu = false
    @ObservedObject var userData: UserDataModel
    var body: some View {
        NavigationStack {
            ZStack {
            
                VStack {
                    Text("Marketplace")
                        .font(.system(size: 50, weight:.heavy))
                        .offset(y: -150)
                    Text("Bars")
                        .font(.system(size: 25, weight:.heavy))
                        .offset(x:-140, y:-110)
                    Link("ucan", destination: .init(string: "https://ucan.co/collections/all?utm_source=google&utm_medium=cpc&utm_campaign=g-us-search-brand&utm_term=ucan%20products&utm_content=652966081650&gad_source=1&gclid=Cj0KCQjwlN6wBhCcARIsAKZvD5gvGnaimAVpXV6hI1qbqQc7CDG9irDgFJTsERNW5YjEgGBbzd09khUaAm7iEALw_wcB")!)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(red: 1.0, green: 0.7, blue: 0.7))
                            .shadow(color: .black.opacity(3.0), radius: 3, x: 0, y: 2)
                            .frame(width: 350, height: 40))
                        .offset(y:-100)
                    
                    Link("Gatorade", destination: .init(string: "https://www.gatorade.com/protein/recover-protein-bar/chocolate-chip-bar-10052000104322")!)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(red: 1.0, green: 0.5, blue: 0.5))
                            .shadow(color: .black.opacity(3.0), radius: 3, x: 0, y: 2)
                            .frame(width: 350, height: 40))
                            .offset(y:-80)
                    
                    Link("Quest", destination: .init(string: "https://www.questnutrition.com/collections/protein-bars")!)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(red: 1.0, green: 0.3, blue: 0.3))
                            .shadow(color: .black.opacity(3.0), radius: 3, x: 0, y: 2)
                            .frame(width: 350, height: 40))
                            .offset(y:-60)
                    
                    
                    Text("Electrolytes")
                        .font(.system(size: 25, weight:.heavy))
                        .offset(x:-95, y: -20)
                    Link("ucan", destination: .init(string: "https://ucan.co/collections/all?utm_source=google&utm_medium=cpc&utm_campaign=g-us-search-brand&utm_term=ucan%20products&utm_content=652966081650&gad_source=1&gclid=Cj0KCQjwlN6wBhCcARIsAKZvD5gvGnaimAVpXV6hI1qbqQc7CDG9irDgFJTsERNW5YjEgGBbzd09khUaAm7iEALw_wcB")!)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color(red: 0.7, green: 0.7, blue: 1.0))
                            .shadow(color: .black.opacity(3.0), radius: 3, x: 0, y: 2)
                            .frame(width: 350, height: 40))
                            .offset(y:-10)
                    
                    Link("Gatorlyte", destination: .init(string: "https://www.gatorade.com/powders/gatorlyte/cherry-lime-single-serve-sticks-00052000052848")!)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(red: 0.5, green: 0.5, blue: 1.0))
                            .shadow(color: .black.opacity(3.0), radius: 3, x: 0, y: 2)
                            .frame(width: 350, height: 40))
                            .offset(y:10)
                    
                    Link("Pedialyte", destination: .init(string: "https://www.pedialyte.com/products/powder-packs/grape?gad_source=1&gclid=Cj0KCQjwlN6wBhCcARIsAKZvD5jZp4s1IZfil9_jUC3-jVMIQZ-g-omJ_EmM74Yc5xpxNcxbiHjOClsaAqYNEALw_wcB&gclsrc=aw.ds")!)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(red: 0.3, green: 0.3, blue: 1.0))
                            .shadow(color: .black.opacity(3.0), radius: 3, x: 0, y: 2)
                            .frame(width: 350, height: 40))
                        .offset(y:30)
                    
                    Text("Protien Drinks and Powders")
                        .font(.system(size: 25, weight:.heavy))
                        .offset(x:0, y:80)
                    Link("ucan", destination: .init(string: "https://ucan.co/collections/all?utm_source=google&utm_medium=cpc&utm_campaign=g-us-search-brand&utm_term=ucan%20products&utm_content=652966081650&gad_source=1&gclid=Cj0KCQjwlN6wBhCcARIsAKZvD5gvGnaimAVpXV6hI1qbqQc7CDG9irDgFJTsERNW5YjEgGBbzd09khUaAm7iEALw_wcB")!)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color(red: 0.7, green: 1.0, blue: 1.0))
                            .shadow(color: .black.opacity(3.0), radius: 3, x: 0, y: 2)
                            .frame(width: 350, height: 40))
                            .offset(y:90)
                    
                    Link("Muscle Milk", destination: .init(string: "https://www.gatorade.com/protein/muscle-milk-genuine/banana-creme-30-oz-canister-00660726503492")!)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(red: 0.4, green: 1.0, blue: 1.0))
                            .shadow(color: .black.opacity(3.0), radius: 3, x: 0, y: 2)
                            .frame(width: 350, height: 40))
                            .offset(y:110)
                    
                    
                    Link("Fairlife", destination: .init(string: "https://fairlife.com/core-power/")!)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color(red: 0.1, green: 1.0, blue: 1.0))
                            .shadow(color: .black.opacity(3.0), radius: 3, x: 0, y: 2)
                            .frame(width: 350, height: 40))
                            .offset(y:130)
                    
                }
                
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

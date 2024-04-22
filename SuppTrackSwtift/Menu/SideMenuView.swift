//
//  SideMenuView.swift
//  SuppTrackSwtift
//
//  Created by Taylor Lea on 3/18/24.
//

import SwiftUI

struct SideMenuView: View {
    
    @Binding var isShowing: Bool
    @ObservedObject var userData: UserDataModel
    
    var body: some View {
        ZStack{
            if isShowing{
                Rectangle()
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture { isShowing.toggle() }
                
                HStack{
                    VStack(alignment: .leading, spacing: 32){
                        SideMenuHeaderView(userData: userData)
                            .offset(y:30)
                        Spacer()
                    }
                    .padding()
                    .frame(width: 200, alignment: .leading)
                    .background(.white)
                    
                    
                    Spacer()
                }
            }
        }
        .transition(.move(edge: .leading))
    }
}

#Preview {
    SideMenuView(isShowing: .constant(true), userData: UserDataModel())
}

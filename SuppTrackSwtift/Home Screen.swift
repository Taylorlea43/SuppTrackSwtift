//
//  Home Screen.swift
//  SuppTrackSwtift
//
//  Created by Taylor Lea on 2/22/24.
//

import SwiftUI

struct Home Screen: View {
    var body: some View {
        VStack {
            TextField("Enter Email", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .frame(width: 180, height: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                
            TextField("Enter Password", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .frame(width: 180, height: 40.0)
            TextField("Confirm Password", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .frame(width: 180, height: 0.0)
        }
        
        Button("Next") {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
        }
        
        .padding()
    }
}

#Preview {
    Home Screen()
}

//
//  InputFieldView.swift
//  SuppTrackSwtift
//
//  Created by Taylor Lea on 2/27/24.
//

import SwiftUI

struct InputFieldView: View {
    @Binding var data: String
    var title: String?
    
    var body: some View {
        TextField("placeholder", text: $data)     // no placeholder text and passing data
            .padding(.horizontal, 10)  // add some extra padding left and right
            .frame(height: 42)         // and make it a bit higher than a usual textfield
            .overlay(  // add an overlay
                 RoundedRectangle(cornerSize: CGSize(width: 4, height: 4)) // create a rounded rectangle
                     .stroke(Color.gray, lineWidth: 1)                     // and set its border color to gray with a line widht of 1
             )
    }
}

#Preview {
    InputFieldView()
}

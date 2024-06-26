//
//  ForgotEmailMessage.swift
//  SuppTrackSwtift
//
//  Created by Taylor Lea on 3/6/24.
//
import SwiftUI
import FirebaseAuth
import Combine
import Foundation

struct ForgotEmailMessage: View {
    @State private var email = ""
    
    var body: some View {
    //textfield for email and password reset button
        TextField("please enter your email", text: $email)
            .multilineTextAlignment(.center)
        
        Button("Send password reset link") {
            forgotPassword(email: email)
        }
    }
    //firebase to send email reset password
    private func forgotPassword(email: String){
        Auth.auth().sendPasswordReset(withEmail: email)
    }
}

#Preview {
    ForgotEmailMessage()
}

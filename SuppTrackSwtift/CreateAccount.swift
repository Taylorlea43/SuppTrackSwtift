//
//  CreateAccount.swift
//  SuppTrackSwtift
//
//  Created by Taylor Lea on 2/14/24.
//

import SwiftUI
import FirebaseAuth

struct CreateAccount: View {
    
    @State private var isLogin = false
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        ZStack {
            Image("supptrack background2")
                .resizable()
                .offset(x:0, y:-60)
                .frame(width: 395, height: 800)
            Image("profile")
                .resizable()
                .offset(x:0, y: -200)
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fit/*@END_MENU_TOKEN@*/)
                .frame(width: 200.0, height: 200.0)
            VStack {
                Text("Create New Account")
                    .font(.system(size: 40, weight: .heavy))
                        .offset(x: 0, y:0)
                        .multilineTextAlignment(.center)
                TextField("Enter Email", text: $email)
                    .frame(width: 180, height: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                    .offset(x:0, y:70)
                    
                TextField("Enter Password", text: $password)
                    .frame(width: 180, height: 40.0)
                    .offset(x:0, y:70)
                TextField("Confirm Password", text: $password)
                    .frame(width: 180, height: 0.0)
                    .offset(x:0, y:70)
                NavigationLink("Next", destination: CreateAccountTwo())
                     .offset(x: 0, y:10)
                     .offset(x:0, y:80)
            }

            .padding()
        }
    }
    private func createUser() {
        Auth.auth().createUser(withEmail: email, password: password, completion: { result, err in
            if let err = err {
                print("Failed due to error:", err)
                return
            }
            print("Successfully created account with ID: \(result?.user.uid ?? "")")
        })
    }
}

#Preview {
    CreateAccount()
}

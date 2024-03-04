//
//  LoginScreen.swift
//  SuppTrackSwtift
//
//  Created by Taylor Lea on 2/14/24.
//
import SwiftUI
import Firebase
import FirebaseAuth

struct LoginScreen: View {
    
    @State private var email = ""
    @State private var password = ""
    @State var isLogin: Bool = false
    
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
                Text("Login")
                    .font(.system(size: 40, weight: .heavy))
                        .offset(x: 0, y:0)
                        .multilineTextAlignment(.center)
                
                //email and password
                TextField("Enter Email", text: self.$email)
                    .frame(width: /*@START_MENU_TOKEN@*/180.0/*@END_MENU_TOKEN@*/, height: 50)
                    .offset(x: 0, y:100)
                SecureField("Enter Password", text: self.$password)
                    .frame(width: /*@START_MENU_TOKEN@*/180.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)
                    .offset(x: 0, y:100)
                
                Button("login", action: loginUser)
                
                //when you click on login go to home screen
                VStack {
                    
                    
                    if isLogin == true{
                    NavigationLink("Login", destination: HomeScreen(), isActive: $isLogin)
                        .offset(x: 0, y:110)
                        .simultaneousGesture(TapGesture().onEnded {
                            
                            loginUser()
                        })
                    }
                                       
                    
                    Text("Forgot Password?")
                        .fontWeight(.thin)
                        .foregroundColor(Color.blue)
                        .underline()
                        .font(
                            .system(size: 12))
                        .offset(x:0, y:120)
                }
                
            }
        }
        
        .padding()
    }
    
    private func loginUser() {
          Auth.auth().signIn(withEmail: email, password: password) { result, err in
              if let err = err {
                  print("Failed due to error:", err)
                  isLogin = false
                  return
              }
              print("Successfully logged in with ID: \(result?.user.uid ?? "")")
              isLogin = true
              
          }
      }
}


#Preview {
    LoginScreen()
}

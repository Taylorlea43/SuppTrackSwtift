//
//  LoginScreen.swift
//  SuppTrackSwtift
//
//  Created by Taylor Lea on 2/14/24.
//
import SwiftUI
import UIKit
import Firebase
import FirebaseAuth

struct LoginScreen: View {
    @ObservedObject var userData: UserDataModel
    @State var isLogin: Bool = false
    @State private var showText: Bool = false
    @State private var incorrectLogin: Bool = false
    @State private var incorrectLoginMessage = ""
    @State var invalidEmail = 0
    @State var invalidPassword = 0
    var body: some View {
        ZStack {
            
            //background images
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
                
                VStack {
                    
                    HStack{
                        TextField("Enter Email", text: $userData.email)
                            .frame(width: /*@START_MENU_TOKEN@*/180.0/*@END_MENU_TOKEN@*/, height: 50)
                        
                    
                    }.offset(x: -20, y: 120)
                    
                    
                    HStack{
                        if showText{
                            Button(action : {
                                showText.toggle()
                            }){
                                Image(systemName: "eye.slash")
                                    .foregroundColor(.gray)
                            }.offset(x:170, y:101)
                            
                            TextField("Enter Password", text: $userData.Password)
                                .frame(width: /*@START_MENU_TOKEN@*/180.0/*@END_MENU_TOKEN@*/, height: 50)
                                .offset(x: -37, y: 100)
                            
                        }else{
                            Button(action : {
                                showText.toggle()
                            })
                            {
                                Image(systemName: "eye")
                                    .foregroundColor(.gray)
                            }
                            .offset(x:170, y:101)
                            SecureField("Enter Password", text: $userData.Password)
                                .frame(width: /*@START_MENU_TOKEN@*/180.0/*@END_MENU_TOKEN@*/, height: 50)
                                .offset(x: -35, y: 100)
                        }
                        
                    }
                }
                
                    
                    //when you click on login go to home screen
                    Button("login", action: {
                        loginUser()
                        incorrectLoginMessage = "incorrect username or password"
                    })
                        .offset(y:120)
                                      
                    if isLogin == true{
                    NavigationLink("login", destination: HomeScreen(userData: userData), isActive: $isLogin)
                        .offset(x: 0, y:110)
                        .simultaneousGesture(TapGesture().onEnded {
                                loginUser()
                                          })
                    }
                    
                    Text(incorrectLoginMessage)
                        .offset(y: 105)
                        .fontWeight(.thin)
                        .font(.system(size: 14))
                        .foregroundColor(.red)
                        .offset(y: -35)
                    
                    NavigationLink("Forgot Password?", destination: ForgotEmailMessage())
                        .fontWeight(.thin)
                        .foregroundColor(Color.blue)
                        .underline()
                        .font(
                            .system(size: 12))
                        .offset(x:0, y:110)
                        
                
            }
        }
        
        .padding()
    }
    
    private func loginUser() {
        Auth.auth().signIn(withEmail: userData.email, password: userData.Password) { result, err in
              if let err = err {
                  print("Failed due to error:", err)
                  isLogin = false
                  return
              }
              print("Successfully logged in with Email: \(result?.user.email ?? "")")
              //userData.email = "\(result?.user.email ?? "")"
              isLogin = true
              
          }
      }
    
 

}


/*#Preview {
    LoginScreen(userData: UserDataModel())
}*/

//
//  ContentView.swift
//  SuppTrackSwtift
//
//  Created by Taylor Lea on 2/14/24.
//

import SwiftUI
import Firebase

struct ContentView: View {
    
    @State var isLoginTapped = false
    var body: some View {
        
            
            NavigationView{
                
                ZStack {
                    Image("supptrack background1")
                        .resizable()
                        .offset(x:0, y:100)
                        .frame(width: 395, height: 800)
                    Image("Image")
                        .resizable()
                        .offset(x:0, y:-150)
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fit/*@END_MENU_TOKEN@*/)
                    VStack {
                        Text("SuppTrack").font(.system(size: 60, weight: .heavy))
                            .foregroundStyle(Color(red: 0.3, green: 0.2, blue: 1.0))
                            .offset(x: 0, y:-225)
                            
                       NavigationLink("Login", destination: LoginScreen())
                            .background(LinearGradient(gradient: Gradient(colors: [.white, .white]), startPoint: .leading, endPoint: .trailing)
                                .cornerRadius(60)
                                .frame(width: 80.0, height: 40.0))
                            .padding()
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .offset(x: 0, y:100)
                        
                            
                        
                        NavigationLink("Sign Up", destination: CreateAccount())
                             .offset(x: 75, y:192)
                            
                            Text("New to SuppTrack?")
                            .offset(x:-40, y: 170)
                        
                        
                        }
                    .padding()
                }
            }
            
            
            }
                    
              
            }

struct ShakeEffect : GeometryEffect{
        var travelDistance: CGFloat = 6
        var numOfShake: CGFloat = 4
        var animatableData: CGFloat
        
        func effectValue(size: CGSize) -> ProjectionTransform{
            ProjectionTransform(CGAffineTransform(translationX: travelDistance * sin(animatableData * .pi * numOfShake) , y: 0))
        }
    }


#Preview {
    ContentView()
}



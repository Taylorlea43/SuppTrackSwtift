//
//  Profile.swift
//  SuppTrackSwtift
//
//  Created by Taylor Lea on 3/20/24.
//

import SwiftUI
import PhotosUI
import Firebase

struct Profile: View {
    @ObservedObject var userData : UserDataModel
    @State private var avatarItem: PhotosPickerItem?
    @State private var avatarImage: Image?
    @StateObject var viewModel = ProfileViewModel()
    
    
    var body: some View {
        ZStack {
            
            Image("supptrack background2")
                .resizable()
                .offset(x:0, y:-60)
                .frame(width: 395, height: 800)
            
            VStack {
                Text("Profile")
                    .font(.system(size: 60, weight: .heavy))
                    .offset(y: -150)
                
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.gray)
               /* PhotosPicker(selection: $viewModel.selectedItem) {
                    if let profileImage = viewModel.profileImage{
                        profileImage
                            .resizable()
                            .scaledToFill()
                            .frame(width: 150, height: 150)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    }else{
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 150, height: 150)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.gray)
                    }
                    
                } */.offset(y: -140)
                VStack{
                    
                    
                    Text("Email: \(userData.email)").font(.title)
                        
                    Text("Password: \(userData.Password) ").font(.title)
                        .offset(y: 2)
                    
                        .onChange(of: avatarItem) {
                            Task {
                                if let loaded = try? await avatarItem?.loadTransferable(type: Image.self) {
                                    avatarImage = loaded
                                } else {
                                    print("Failed")
                                }
                            }
                        }
                    
                }
            }}
    }
    
}


#Preview {
    Profile(userData: UserDataModel())
}

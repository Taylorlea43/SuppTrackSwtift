//
//  ProfileViewModel.swift
//  SuppTrackSwtift
//
//  Created by Taylor Lea on 4/11/24.
//

import SwiftUI
import PhotosUI
import FirebaseAuth
import FirebaseFirestore

class ProfileViewModel: ObservableObject{
    @Published var selectedItem: PhotosPickerItem?{
        didSet{ Task { try await loadImage() } }
    }
    
    @Published var profileImage: Image?
    
    func loadImage() async throws{
        guard let item = selectedItem else { return }
        guard let imageData = try await item.loadTransferable(type: Data.self) else { return }
        guard let uiImage = UIImage(data: imageData) else { return }
        self.profileImage = Image(uiImage: uiImage)
    }
    @Published var user: User? = nil
    
    func fetchUser(){
        guard let userId = Auth.auth().currentUser?.uid else{
            return
        }
        let db = Firestore.firestore()
        db.collection("users").document(userId).getDocument { snapshot, error in
            guard let data = snapshot?.data(), error == nil else { return }
        }
       
    }
}

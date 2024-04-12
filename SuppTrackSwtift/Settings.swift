//
//  Settings.swift
//  SuppTrackSwtift
//
//  Created by Taylor Lea on 2/22/24.
//

import SwiftUI
import FirebaseAuth
import FirebaseFirestore


struct Settings: View {
    @ObservedObject var userData: UserDataModel
    @State private var showMenu = false
    @State private var alergy = 0
    @State var association = 0
    @State var selectedRows = Set<String>()
    var asscoations = ["NCAA", "Military"]
    
    @State var allergies: [allergy] = [allergy(name: "eggs"),
                                    allergy(name: "wheat"),
                                    allergy(name: "soy"),
                                    allergy(name: "dairy")]
    
    //@Binding var email: String

    var body: some View {
        
        ZStack {
            
            Image("supptrack background2")
                .resizable()
                .offset(x:0, y:-60)
                .frame(width: 395, height: 800)
        
            VStack{
                
                Text("Settings")
                    .font(.system(size: 60, weight: .heavy))
                    .offset(y: -150)
                
                Image(systemName: "gearshape.fill")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .offset(y:-150)
                HStack{
                    Text("Change Email:")
                        .offset(x:50, y:-50)
                    TextField("Placeholder", text: $userData.email)
                        .offset(x:60, y:-50)
                    
                }
                NavigationLink("Change Password", destination: ForgotEmailMessage())
                    .fontWeight(.thin)
                    .foregroundColor(Color.blue)
                    .offset(x:-80, y:-35)
                    
            }
            //Association Guildelines
            Text("Association Guidelines")
            .offset(x:-60, y:180)
          
           Picker(selection:
                    $association, label: Text("Assocaiation Guidelines")) {
                ForEach(0..<asscoations.count){
                    Text(self.asscoations[$0]).tag($0)
                }
            }.offset(x:80, y:180)
            
            
            Text("Allergy Preferences")
             .offset(x:-72, y:225)
            List{
                ForEach(0..<allergies.count){ index in
                    HStack{
                        Button(action:{
                            allergies[index].isSelected = allergies[index].isSelected ? false : true
                        }){
                            HStack{
                                if allergies[index].isSelected{
                                    Image(systemName: "checkmark")
                                }
                                Text(allergies[index].name)
                                    .font(.system(size: 12))
                            }
                        }
                    }
                }
            }.listStyle(.inset)
                .offset(x: 30, y:650)
                .environment(\.defaultMinListRowHeight, 5)
                    }
        
            }
            
        }
        
    
       




#Preview {
    Settings(userData: UserDataModel())
}

//
//  CreateAccountTwo.swift
//  SuppTrackSwtift
//
//  Created by Taylor Lea on 2/14/24.
//

import SwiftUI
import FirebaseAuth

struct CreateAccountTwo: View {
    @State private var birthday = Date()
    @State private var association = 0
    @State private var alergy = 0
    
    var asscoations = ["NCAA", "Military"]
    var allergies = ["eggs", "wheat", "soy", "dairy", "none"]
    
    var body: some View {
        ZStack {
            
        //background image
            Image("supptrack background2")
                .resizable()
                .offset(x:0, y:-60)
                .frame(width: 395, height: 800)
            //profile icon
            Image("profile")
                .resizable()
                .offset(x:0, y: -200)
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fit/*@END_MENU_TOKEN@*/)
                .frame(width: 200.0, height: 200.0)
            VStack {
                Text("Almost There")
                    .font(.system(size: 40, weight: .heavy))
                    .offset(x: 0, y: 40)
                        .multilineTextAlignment(.center)
                
                //Birthday
                Text("Date of Birth:")
                    .offset(x:-70, y:136)
                
                DatePicker("Date of Birth", selection: $birthday, in: ...Date(), displayedComponents: .date)
                    .offset(x:55, y:100)
                    .labelsHidden()
                
                //Association Guildelines
                Text("Association Guidelines")
                .offset(x:0, y:100)
              
                Picker(selection:
                        $association, label: Text("Assocaiation Guidelines")) {
                    ForEach(0..<asscoations.count){
                        Text(self.asscoations[$0]).tag($0)
                    }
                }.offset(x:0, y:91)
            
                
                //Allergy Preferences
                Text("Allergy Preferences")
                .offset(x:0, y:100)
                Picker(selection:
                        $alergy, label: Text("Assocaiation Guidelines")) {
                    ForEach(0..<allergies.count){
                        Text(self.allergies[$0]).tag($0)
                    }
                }.offset(x:0, y:91)
            
               
            }
        }
        
        NavigationLink("Create Account", destination: HomeScreen())
             .offset(x: 0, y: -180)
        
        .padding()
        
    }
}

#Preview {
    CreateAccountTwo()
}

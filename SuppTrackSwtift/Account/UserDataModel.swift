//
//  UserDataModel.swift
//  SuppTrackSwtift
//
//  Created by Taylor Lea on 4/11/24.
//

import Foundation
//tracks email and password to update in all views
class UserDataModel: ObservableObject{
    @Published var email: String = ""
    @Published var Password: String = ""

    }

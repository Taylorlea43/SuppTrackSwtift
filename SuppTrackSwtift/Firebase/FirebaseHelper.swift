//
//  FirebaseHelper.swift
//  SuppTrackSwtift
//
//  Created by Taylor Lea on 2/29/24.
//

import Foundation
import FirebaseCore
import UIKit

class FirebaseAppDelegate: NSObject, UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        return true;
    }
}

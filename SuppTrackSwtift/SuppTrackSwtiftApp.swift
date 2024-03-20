//
//  SuppTrackSwtiftApp.swift
//  SuppTrackSwtift
//
//  Created by Taylor Lea on 2/14/24.
//

import SwiftUI
import FirebaseCore

@main
struct SuppTrackSwtiftApp: App {
    @UIApplicationDelegateAdaptor(FirebaseAppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
            NavigationView {
                    ContentView()
            }
        }
    }
}

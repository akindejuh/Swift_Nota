//
//  NotaApp.swift
//  Nota
//
//  Created by Oluwagbemiga Akindeju on 03/07/2025.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}


@main
struct NotaApp: App {
//    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}

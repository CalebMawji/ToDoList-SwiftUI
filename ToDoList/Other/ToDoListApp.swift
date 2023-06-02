//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Caleb Mawji on 2023-06-01.
//

import SwiftUI
import FirebaseCore
import Firebase


class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

@main
struct YourApp: App {
  // register app delegate for Firebase setup
  @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate


  var body: some Scene {
    WindowGroup {
      NavigationView {
        MainView()
      }
    }
  }
}

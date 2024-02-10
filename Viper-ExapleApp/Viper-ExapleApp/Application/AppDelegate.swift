//
//  AppDelegate.swift
//  Viper-ExapleApp
//
//  Created by Ali Kolukirik on 10.02.2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)

        AppRouter.shared.start()

        return true
    }
}

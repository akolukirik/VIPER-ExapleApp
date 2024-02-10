//
//  AppRouter.swift
//  Viper-ExapleApp
//
//  Created by Ali Kolukirik on 10.02.2024.
//

import Foundation
import UIKit

open class AppRouter {

    public static var shared = AppRouter()

    /// Provides application keyWindow. In normal cases returns UIApplication.sharedApplication().delegate?.window if available or creates new one if not.
    /// If appDelegate does not implement UIApplicationDelegate.window property - returns UIApplication.sharedApplication().keyWindow
    public static var window: UIWindow {
        return shared.window
    }

    open var window: UIWindow {
        return windowProvider()
    }
    open var windowProvider: () -> UIWindow

    public convenience init() {
        self.init(windowProvider: WindowProvider.dynamic.window)
    }

    public init(windowProvider: @escaping () -> UIWindow) {
        self.windowProvider = windowProvider
    }

    func start() {
        let viewController = HomePageRouter.setupModule()
        let navigationController = UINavigationController(rootViewController: viewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }

    public enum WindowProvider {
        case `static`(UIWindow)
        case dynamic

        func window() -> UIWindow {
            switch self {
            case .static(let window):
                return window
            case .dynamic:
                guard let delegate = UIApplication.shared.delegate as? AppDelegate else {
                    fatalError("no appDelegate found")
                }

                if let windowProperty = delegate.window {
                    return windowProperty
                } else {
                    let newWindow = UIWindow(frame: UIScreen.main.bounds)
                    delegate.window = newWindow
                    newWindow.makeKeyAndVisible()
                    return newWindow
                }
            }
        }
    }
}

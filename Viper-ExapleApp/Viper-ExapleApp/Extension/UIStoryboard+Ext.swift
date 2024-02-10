//
//  UIStoryboard+Ext.swift
//  Viper-ExapleApp
//
//  Created by Ali Kolukirik on 10.02.2024.
//

import Foundation
import UIKit

extension UIStoryboard {
    static func loadViewController<T>() -> T where T: StoryboardLoadable, T: UIViewController {
        return UIStoryboard(name: T.storyboardName(),
                            bundle: nil).instantiateViewController(withIdentifier: T.storyboardIdentifier()) as! T
    }
}

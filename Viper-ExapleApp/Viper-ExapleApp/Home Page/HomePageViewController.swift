//
//  HomePageViewController.swift
//  Viper-ExapleApp
//
//  Created by Ali Kolukirik on 10.02.2024.
//  
//

import Foundation
import UIKit

protocol IHomePageViewController: AnyObject {
}

class HomePageViewController: UIViewController, StoryboardLoadable {

    var presenter: IHomePagePresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
}

extension HomePageViewController: IHomePageViewController {
}

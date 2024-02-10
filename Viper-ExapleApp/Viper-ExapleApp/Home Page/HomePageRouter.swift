//
//  HomePageRouter.swift
//  Viper-ExapleApp
//
//  Created by Ali Kolukirik on 10.02.2024.
//  
//

import Foundation
import UIKit

protocol IHomePageRouter: AnyObject {
}

class HomePageRouter {

    weak var view: UIViewController?

    static func setupModule() -> HomePageViewController {
        let viewController = UIStoryboard.loadViewController() as HomePageViewController
        let presenter = HomePagePresenter()
        let router = HomePageRouter()
        let interactor = HomePageInteractor()

        viewController.presenter =  presenter
        viewController.modalPresentationStyle = .fullScreen

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor

        router.view = viewController

        interactor.output = presenter

        return viewController
    }
}

extension HomePageRouter: IHomePageRouter {
}

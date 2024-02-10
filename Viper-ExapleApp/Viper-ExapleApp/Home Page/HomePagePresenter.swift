//
//  HomePagePresenter.swift
//  Viper-ExapleApp
//
//  Created by Ali Kolukirik on 10.02.2024.
//  
//

import Foundation

protocol IHomePagePresenter: AnyObject {
}

class HomePagePresenter {

    weak var view: IHomePageViewController?
    var router: IHomePageRouter?
    var interactor: IHomePageInteractor?
}

extension HomePagePresenter: IHomePagePresenter {
}

extension HomePagePresenter: IHomePageInteractorToPresenter {
}

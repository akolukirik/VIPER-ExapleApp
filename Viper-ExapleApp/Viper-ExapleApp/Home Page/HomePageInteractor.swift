//
//  HomePageInteractor.swift
//  Viper-ExapleApp
//
//  Created by Ali Kolukirik on 10.02.2024.
//  
//

import Foundation

protocol IHomePageInteractor: AnyObject {
}

protocol IHomePageInteractorToPresenter: AnyObject {
}

class HomePageInteractor {

    weak var output: IHomePageInteractorToPresenter?
}

extension HomePageInteractor: IHomePageInteractor {
}

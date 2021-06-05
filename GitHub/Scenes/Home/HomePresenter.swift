//
//  HomePresenter.swift
//  GitHub
//
//  Created by Jade Silveira on 05/06/21.
//

import Foundation

class HomePresenter {
    // Responsavel pela formatacao da viewController, diz como deve ser apresentado
    
    var viewController: HomeViewController?
    var coordinator: HomeCoordinator
    
    init(coordinator: HomeCoordinator) {
        self.coordinator = coordinator
    }
}

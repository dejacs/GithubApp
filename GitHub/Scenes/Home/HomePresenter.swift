//
//  HomePresenter.swift
//  GitHub
//
//  Created by Jade Silveira on 05/06/21.
//

import Foundation

protocol homePresenting {
    
}

final class HomePresenter {
    // Responsavel pela formatacao da viewController, diz como deve ser apresentado
    
    weak var viewController: HomeViewController?
    private let coordinator: HomeCoordinator
    
    init(coordinator: HomeCoordinator) {
        self.coordinator = coordinator
    }
}

extension HomePresenter: homePresenting {
    
}

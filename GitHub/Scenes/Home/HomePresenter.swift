//
//  HomePresenter.swift
//  GitHub
//
//  Created by Jade Silveira on 05/06/21.
//

import Foundation

protocol HomePresenting {
    var viewController: HomeDisplaying? { get set }
    func presentRepositories()
    func presentError()
    func presentDetails(repositoryId: Int)
}

final class HomePresenter {
    // Responsavel pela formatacao da viewController, diz como deve ser apresentado
    
    weak var viewController: HomeDisplaying?
    private let coordinator: HomeCoordinating
    
    init(coordinator: HomeCoordinating) {
        self.coordinator = coordinator
    }
}

extension HomePresenter: HomePresenting {
    func presentError() {
        
    }
    
    func presentRepositories() {
        viewController?.updateDataSource()
    }
    
    func presentDetails(repositoryId: Int) {
        coordinator.perform(action: .details(repositoryId: repositoryId))
    }
}

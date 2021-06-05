//
//  RepositoryDetailsPresenter.swift
//  GitHub
//
//  Created by Jade Silveira on 05/06/21.
//

import Foundation

protocol RepositoryDetailsPresenting {
    var viewController: RepositoryDetailsDisplaying? { get set }
    func presentDetails(repository: Repository)
    func presentError()
}

final class RepositoryDetailsPresenter {
    weak var viewController: RepositoryDetailsDisplaying?
    private let coordinator: RepositoryDetailsCoordinating
    
    init(coordinator: RepositoryDetailsCoordinating) {
        self.coordinator = coordinator
    }
}

extension RepositoryDetailsPresenter: RepositoryDetailsPresenting {
    func presentDetails(repository: Repository) {
        
    }
    
    func presentError() {
        
    }
}

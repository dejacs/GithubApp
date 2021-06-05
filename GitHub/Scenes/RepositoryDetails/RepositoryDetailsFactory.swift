//
//  RepositoryDetailsFactory.swift
//  GitHub
//
//  Created by Jade Silveira on 05/06/21.
//

import UIKit

enum RepositoryDetailsFactory {
    static func make(repositoryId: Int) -> UIViewController {
        var coordinator: RepositoryDetailsCoordinating = RepositoryDetailsCoordinator()
        var presenter: RepositoryDetailsPresenting = RepositoryDetailsPresenter(coordinator: coordinator)
        let service: RepositoryDetailsServicing = RepositoryDetailsService()
        let interactor: RepositoryDetailsInteracting = RepositoryDetailsInteractor(presenter: presenter, service: service, repositoryId: repositoryId)
        let viewController = RepositoryDetailsViewController(interactor: interactor)
        
        presenter.viewController = viewController
        coordinator.viewController = viewController
        
        return viewController
    }
}

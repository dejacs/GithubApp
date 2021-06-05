//
//  HomeFactory.swift
//  GitHub
//
//  Created by Jade Silveira on 05/06/21.
//

import UIKit

// se uma classe possui somente métodos estaticos, ela pode virar um enum
// Ela constroi o fluxo

enum HomeFactory {
    static func make() -> UIViewController {
        let coordinator = HomeCoordinator()
        let presenter = HomePresenter(coordinator: coordinator)
        let interactor = HomeInteractor(presenter: presenter)
        let viewController = HomeViewController(interactor: interactor)
        
        presenter.viewController = viewController
        coordinator.viewController = viewController
        
        return viewController
    }
}

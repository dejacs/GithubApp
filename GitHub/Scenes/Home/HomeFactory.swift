//
//  HomeFactory.swift
//  GitHub
//
//  Created by Jade Silveira on 05/06/21.
//

import UIKit

// se uma classe possui somente métodos estaticos, ela pode virar um enum
// Ela constroi o fluxo
// weak - diz que o objeto vai ser uma referencia fraca na memoria. possibilita o ARC(Automatic Reference Counting) de limpar da memoria quando nao esta mais
// sendo usada.

enum HomeFactory {
    static func make() -> UIViewController {
        let coordinator: HomeCoordinating = HomeCoordinator()
        let presenter: homePresenting = HomePresenter(coordinator: coordinator)
        let service: HomeServicing = HomeService()
        let interactor: HomeInteracting = HomeInteractor(presenter: presenter, service: service)
        let viewController = HomeViewController(interactor: interactor)
        
        presenter.viewController = viewController
        coordinator.viewController = viewController
        
        return viewController
    }
}

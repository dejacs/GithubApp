//
//  HomeCoordinator.swift
//  GitHub
//
//  Created by Jade Silveira on 05/06/21.
//

import UIKit

enum HomeAction {
    case details(repositoryId: Int)
}

// controla a navegacao da view com as proximas views
protocol HomeCoordinating {
    var viewController: UIViewController? { get set }
    func perform(action: HomeAction)
}

final class HomeCoordinator {
    weak var viewController: UIViewController?
}

extension HomeCoordinator: HomeCoordinating {
    func perform(action: HomeAction) {
        switch action {
        case .details(let repositoryId):
            let detailsViewController = RepositoryDetailsFactory.make(repositoryId: repositoryId)
            viewController?.navigationController?.pushViewController(detailsViewController, animated: true)
        default:
            break
        }
    }
}

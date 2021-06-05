//
//  HomeCoordinator.swift
//  GitHub
//
//  Created by Jade Silveira on 05/06/21.
//

import UIKit

// controla a navegacao da view com as proximas views
protocol HomeCoordinating {
    var viewController: UIViewController? { get set }
}

final class HomeCoordinator {
    weak var viewController: UIViewController?
}

extension HomeCoordinator: HomeCoordinating {
    
}

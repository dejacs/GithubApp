//
//  RepositoryDetailsCoordinator.swift
//  GitHub
//
//  Created by Jade Silveira on 05/06/21.
//

import UIKit

protocol RepositoryDetailsCoordinating {
    var viewController: UIViewController? { get set }
}

final class RepositoryDetailsCoordinator: RepositoryDetailsCoordinating {
    weak var viewController: UIViewController?
}

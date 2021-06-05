//
//  RepositoryDetailsViewController.swift
//  GitHub
//
//  Created by Jade Silveira on 05/06/21.
//

import UIKit

protocol RepositoryDetailsDisplaying: AnyObject {
    
}

final class RepositoryDetailsViewController: UIViewController {
    private let interactor: RepositoryDetailsInteracting
    
    init(interactor: RepositoryDetailsInteracting) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) { nil }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor.initialFetch()
    }
}

extension RepositoryDetailsViewController: RepositoryDetailsDisplaying {
    
}

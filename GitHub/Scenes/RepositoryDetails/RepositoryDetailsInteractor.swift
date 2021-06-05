//
//  RepositoryDetailsInteractor.swift
//  GitHub
//
//  Created by Jade Silveira on 05/06/21.
//

import Foundation

protocol RepositoryDetailsInteracting {
    func initialFetch()
}

final class RepositoryDetailsInteractor {
    private let presenter: RepositoryDetailsPresenting
    private let service: RepositoryDetailsServicing
    private let repositoryId: Int
    
    init(presenter: RepositoryDetailsPresenting, service: RepositoryDetailsServicing, repositoryId: Int) {
        self.presenter = presenter
        self.service = service
        self.repositoryId = repositoryId
    }
}

extension RepositoryDetailsInteractor: RepositoryDetailsInteracting {
    func initialFetch() {
        service.fetchDetails(id: repositoryId) { result in
            switch result {
            case .success(let repository):
                self.presenter.presentDetails(repository: repository)
            case .failure:
                self.presenter.presentError()
            }
        }
    }
}

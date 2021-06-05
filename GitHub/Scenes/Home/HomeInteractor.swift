//
//  HomeInteractor.swift
//  GitHub
//
//  Created by Jade Silveira on 05/06/21.
//

import Foundation
// Responsavel pelas regras de negocio, conexao com servico, dizer quando deve ser apresentado

protocol HomeInteracting {
    func initialFetch()
}

final class HomeInteractor {
    private let presenter: HomePresenting
    private let service: HomeServicing
    var repositories: [Repository] = []
    
    init(presenter: HomePresenting, service: HomeServicing) {
        self.presenter = presenter
        self.service = service
    }
}

extension HomeInteractor: HomeInteracting {
    func initialFetch() {
        service.fetch { result in
            switch result {
            case .success(let repositories):
                self.repositories.append(contentsOf: repositories)
                self.presenter.presentRepositories()
            case .failure:
                self.presenter.presentError()
            }
        }
    }
}

//
//  HomeInteractor.swift
//  GitHub
//
//  Created by Jade Silveira on 05/06/21.
//

import Foundation
// Responsavel pelas regras de negocio, conexao com servico, dizer quando deve ser apresentado

protocol HomeInteracting {
    
}

final class HomeInteractor {
    private let presenter: homePresenting
    private let service: HomeServicing
    
    init(presenter: homePresenting, service: HomeServicing) {
        self.presenter = presenter
        self.service = service
    }
}

extension HomeInteractor: HomeInteracting {
    
}

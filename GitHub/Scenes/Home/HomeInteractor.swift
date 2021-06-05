//
//  HomeInteractor.swift
//  GitHub
//
//  Created by Jade Silveira on 05/06/21.
//

import Foundation
// Responsavel pelas regras de negocio, conexao com servico, dizer quando deve ser apresentado

class HomeInteractor {
    var presenter: HomePresenter
    var service: HomeService
    
    init(presenter: HomePresenter, service: HomeService) {
        self.presenter = presenter
        self.service = service
    }
}

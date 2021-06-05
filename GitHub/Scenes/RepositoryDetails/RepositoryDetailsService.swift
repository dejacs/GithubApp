//
//  RepositoryDetailsService.swift
//  GitHub
//
//  Created by Jade Silveira on 05/06/21.
//

import Foundation

protocol RepositoryDetailsServicing {
    func fetchDetails(id: Int, completion: @escaping ((Result<Repository, APIError>) -> Void))
}

final class RepositoryDetailsService: RepositoryDetailsServicing {
    func fetchDetails(id: Int, completion: @escaping ((Result<Repository, APIError>) -> Void)) {
        
    }
}

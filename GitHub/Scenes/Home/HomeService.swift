//
//  HomeService.swift
//  GitHub
//
//  Created by Jade Silveira on 05/06/21.
//

import Foundation

enum APIError: Error {
    case generic
}

protocol HomeServicing {
    func fetch(completion: @escaping ((Result<[Repository], APIError>) -> Void))
}

struct Repository: Decodable {
    let name: String
    let htmlUrl: String
    let description: String?
}

final class HomeService: HomeServicing {
    let apiURL = "https://api.github.com/users/alexavier20/repos"
    
    func fetch(completion: @escaping ((Result<[Repository], APIError>) -> Void)) {
        guard let api = URL(string: apiURL) else {
            return
        }
        
        let session = URLSession.shared
        let task = session.dataTask(with: api) { (data, response, error) in
            guard let jsonData = data else {
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let decoded = try decoder.decode([Repository].self, from: jsonData)
                
                completion(.success(decoded))
            } catch {
                completion(.failure(.generic))
            }
        }
        
        task.resume()
    }
}

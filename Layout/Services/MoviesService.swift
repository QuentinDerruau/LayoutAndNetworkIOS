//
//  MoviesService.swift
//  Layout
//
//  Created by Audrey SOBGOU ZEBAZE on 05/01/2022.
//

import Foundation

class MoviesService {
    
    let defaultSession = URLSession(configuration: .default)
    
    var dataTask: URLSessionDataTask?
    
    lazy var jsonDecoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase // "episode_id" -> "episodeId"
        return decoder
    }()
    
    /// Fetch films
    func fetchMovies<T: Codable>(_ endpoint: Endpoint, completion: @escaping (Result<T, APIServiceError>) -> Void) {
        
        guard let url = endpoint.url else {
            return completion(.failure(.invalidEndpoint))
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        // urlRequest.httpBody =
        urlRequest.allHTTPHeaderFields = ["toto":"tata"]
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            
            if error != nil {
                completion(.failure(.apiError))
            }
            
            guard let response = response as? HTTPURLResponse, (200...299).contains(response.statusCode) else {
                return completion(.failure(.invalidResponse))
            }
            
            print("Response status code: \(response.statusCode)")
            
            guard let data = data else {
                return completion(.failure(.noData))
            }
            
            do {
                let result = try self.jsonDecoder.decode(T.self, from: data)
                completion(.success(result))
            } catch {
                completion(.failure(.decodingError))
            }
            
        }
        task.resume()
                                              
    }
}

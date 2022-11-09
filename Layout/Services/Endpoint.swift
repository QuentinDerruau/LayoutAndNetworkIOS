//
//  Endpoint.swift
//  Layout
//
//  Created by Audrey SOBGOU ZEBAZE on 05/01/2022.
//

import Foundation

struct Endpoint {
    
    let path: String
    
    let queryItems: [URLQueryItem]
}


extension Endpoint {
    
    var url: URL? {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "swapi.dev"
        components.path = path
        components.queryItems = queryItems
        
        return components.url
    }
}

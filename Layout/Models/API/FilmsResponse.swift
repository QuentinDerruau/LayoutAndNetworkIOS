//
//  FilmsResponse.swift
//  Layout
//
//  Created by Audrey SOBGOU ZEBAZE on 05/01/2022.
//

import Foundation

struct FilmsResponse: Codable {
    
    let count: Int
    var results: [Film] = []
}

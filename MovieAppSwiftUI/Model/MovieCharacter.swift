//
//  MovieCharacter.swift
//  MovieAppSwiftUI
//
//  Created by sakshi.j on 17/12/23.
//

import Foundation

struct MovieCharacter: Codable {
    let results: [Character]
}

struct Character: Codable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let gender: String
    let image: String
    
    enum CodingKeys: CodingKey {
        case id
        case name
        case status
        case species
        case gender
        case image
    }
}

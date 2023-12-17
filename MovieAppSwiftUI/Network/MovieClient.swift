//
//  MovieClient.swift
//  MovieAppSwiftUI
//
//  Created by sakshi.j on 17/12/23.
//

import Foundation

final class MovieClient: MovieServices {
    
    var session: URLSession
    
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    convenience init() {
        self.init(configuration: .default)
    }
}

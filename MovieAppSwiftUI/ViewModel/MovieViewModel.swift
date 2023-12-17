//
//  MovieViewModel.swift
//  MovieAppSwiftUI
//
//  Created by sakshi.j on 17/12/23.
//

import Foundation

@MainActor
final class MovieViewModel: ObservableObject {
    private let movieClient = MovieClient()
    @Published private(set) var characters: [Character] = []
    @Published private(set) var errorMessage: String = ""
    @Published var hasError: Bool = false
    
    var request: URLRequest = {
        let urlString = "\(BASE_URL)/character"
        let url = URL(string: urlString)
        return URLRequest(url: url!)
    }()
    
    func fetchCharacters() async {
        do {
            let response = try await movieClient.fetch(type: MovieCharacter.self, with: request)
            characters = response.results.compactMap { $0 }
        } catch {
            errorMessage = "\((error as! ApiError).customDescription)"
            hasError = true
        }
    }
    
}

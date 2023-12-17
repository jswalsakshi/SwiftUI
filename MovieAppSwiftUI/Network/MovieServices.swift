//
//  MovieServices.swift
//  MovieAppSwiftUI
//
//  Created by sakshi.j on 17/12/23.
//

import Foundation

protocol MovieServices {
    var session: URLSession { get }
    func fetch<T: Codable>(type: T.Type, with request: URLRequest) async throws -> T
}

extension MovieServices {
    func fetch<T: Codable>(type: T.Type, with request: URLRequest) async throws -> T {
        
        let (data, response) = try await session.data(for: request)
        guard let httpResponse = response as? HTTPURLResponse else {
            throw ApiError.requestFailed(description: "Invalid response")
        }
        guard httpResponse.statusCode == 200 else {
            throw ApiError.responseUnSuccessful(description: "Status code: \(httpResponse.statusCode)")
        }

        do {
            let decoder = JSONDecoder()
            return try decoder.decode(type, from: data)
        } catch {
            throw ApiError.jsonConversionfailure(description: error.localizedDescription)
        }
    }
}

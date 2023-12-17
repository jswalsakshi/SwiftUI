//
//  ApiError.swift
//  MovieAppSwiftUI
//
//  Created by sakshi.j on 17/12/23.
//

import Foundation

enum ApiError: Error {
    case requestFailed(description: String)
    case invalidData
    case invalidUrl
    case responseUnSuccessful(description: String)
    case jsonConversionfailure(description: String)
    case jsonParsingFailure
    case failedSerialization
    case noInternet
    
    var customDescription: String {
    
        switch self {
        case let .requestFailed(description): return "Request Failed: \(description)"
        case .invalidData: return "Invalid data"
        case .invalidUrl: return "Invalid URL"
        case let .responseUnSuccessful(description): return "Response Unsuccessful \(description)"
        case let .jsonConversionfailure(description): return "Json Conversion failure \(description)"
        case .jsonParsingFailure: return "JSON Parsing Failed"
        case .failedSerialization: return "Failed Parsing"
        case .noInternet: return "NO Internet Connection"
        }
    }
}

import Foundation

public enum NetworkError: Error, LocalizedError {
    case invalidURL
    case noData
    case decodingError
    case serverError(Int)
    case unknown
    
    public var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "Invalid URL"
        case .noData:
            return "No data received"
        case .decodingError:
            return "Failed to decode response"
        case .serverError(let code):
            return "Server error with code: \(code)"
        case .unknown:
            return "Unknown error occurred"
        }
    }
}

public extension URLError {
    var networkError: NetworkError {
        switch code {
        case .notConnectedToInternet, .networkConnectionLost:
            return .unknown
        case .badURL:
            return .invalidURL
        default:
            return .unknown
        }
    }
} 
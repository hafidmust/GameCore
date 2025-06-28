import Foundation

public struct Game: Identifiable {
    public let id: Int
    public let name: String
    public let backgroundImage: String?
    public let rating: Double
    public let released: String?
    public let metacritic: Int?
    public let playtime: Int
    public let genres: [Genre]
    public let platforms: [Platform]
    
    // For detail view
    public let description: String?
    public let website: String?
    
    // For favorite
    public var isFavorite: Bool = false
    
    public init(
        id: Int,
        name: String,
        backgroundImage: String?,
        rating: Double,
        released: String?,
        metacritic: Int?,
        playtime: Int,
        genres: [Genre],
        platforms: [Platform],
        description: String?,
        website: String?,
        isFavorite: Bool = false
    ) {
        self.id = id
        self.name = name
        self.backgroundImage = backgroundImage
        self.rating = rating
        self.released = released
        self.metacritic = metacritic
        self.playtime = playtime
        self.genres = genres
        self.platforms = platforms
        self.description = description
        self.website = website
        self.isFavorite = isFavorite
    }
}

public struct Genre: Identifiable {
    public let id: Int
    public let name: String
    
    public init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}

public struct Platform: Identifiable {
    public let id: Int
    public let name: String
    
    public init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}

// MARK: - Equatable
extension Game: Equatable {
    public static func == (lhs: Game, rhs: Game) -> Bool {
        return lhs.id == rhs.id
    }
}

// MARK: - Hashable
extension Game: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
} 
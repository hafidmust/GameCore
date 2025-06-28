import Foundation
import Combine

public protocol GameRepository {
    // Remote operations
    func getGames(page: Int) -> AnyPublisher<[Game], Error>
    func getGameDetail(id: Int) -> AnyPublisher<Game, Error>
    
    // Local operations (Favorites)
    func getFavoriteGames() -> AnyPublisher<[Game], Error>
    func addFavoriteGame(_ game: Game) -> AnyPublisher<Bool, Error>
    func removeFavoriteGame(id: Int) -> AnyPublisher<Bool, Error>
    func isGameFavorite(id: Int) -> AnyPublisher<Bool, Error>
} 
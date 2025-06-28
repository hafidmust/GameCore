import Foundation
import Combine

public class GetFavoriteGamesUseCase {
    private let repository: GameRepository
    
    public init(repository: GameRepository) {
        self.repository = repository
    }
    
    public func execute() -> AnyPublisher<[Game], Error> {
        return repository.getFavoriteGames()
    }
} 
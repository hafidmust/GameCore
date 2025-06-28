import Foundation
import Combine

public class AddFavoriteGameUseCase {
    private let repository: GameRepository
    
    public init(repository: GameRepository) {
        self.repository = repository
    }
    
    public func execute(game: Game) -> AnyPublisher<Bool, Error> {
        return repository.addFavoriteGame(game)
    }
} 
import Foundation
import Combine

public class RemoveFavoriteGameUseCase {
    private let repository: GameRepository
    
    public init(repository: GameRepository) {
        self.repository = repository
    }
    
    public func execute(id: Int) -> AnyPublisher<Bool, Error> {
        return repository.removeFavoriteGame(id: id)
    }
} 
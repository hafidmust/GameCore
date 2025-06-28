import Foundation
import Combine

public class GetGamesUseCase {
    private let repository: GameRepository
    
    public init(repository: GameRepository) {
        self.repository = repository
    }
    
    public func execute(page: Int = 1) -> AnyPublisher<[Game], Error> {
        return repository.getGames(page: page)
    }
} 
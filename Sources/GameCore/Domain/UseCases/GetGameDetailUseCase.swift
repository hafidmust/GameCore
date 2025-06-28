import Foundation
import Combine

public class GetGameDetailUseCase {
    private let repository: GameRepository
    
    public init(repository: GameRepository) {
        self.repository = repository
    }
    
    public func execute(id: Int) -> AnyPublisher<Game, Error> {
        return repository.getGameDetail(id: id)
    }
} 
import Foundation

public final class Fuzzer {
    private var randomizer: RandomNumberGeneratorWithSeed
    private var currentSeed: Int

    public init(seed: Int? = nil) {
        if let seed = seed {
            self.currentSeed = seed
        } else {
            self.currentSeed = Int.random(in: 0..<Int.max)
        }
        self.randomizer = RandomNumberGeneratorWithSeed(seed: currentSeed)
    }

    public func getRandomInt(in range: Range<Int> = Int.min..<Int.max) -> Int {
        return Int.random(in: range, using: &randomizer)
    }

    public func getRandomString(size: Int = 10) -> String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        return String((0..<size).map{ _ in letters.randomElement(using: &randomizer)! })
    }

    public func getRandomInArray<T>(array: [T]) -> T {
        return array.randomElement(using: &randomizer)!
    }
}

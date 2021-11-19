import XCTest
@testable import Fuzzer

final class FuzzerTests: XCTestCase {
    // MARK: - Integer

    func test_whenGetInteger_thenReturnRandomInteger() {
        let firstValue = Fuzzer().getRandomInt()
        let secondValue = Fuzzer().getRandomInt()

        XCTAssertNotEqual(firstValue, secondValue)
    }

    func test_givenSameSeed_whenGetInteger_thenReturnSameInteger() {
        let firstValue = Fuzzer(seed: 1234).getRandomInt()
        let secondValue = Fuzzer(seed: 1234).getRandomInt()

        XCTAssertEqual(firstValue, secondValue)
    }

    func test_whenGetIntegerUsingRange_thenReturnIntegerInRange() {
        let firstValue = Fuzzer(seed: 1234).getRandomInt(in: 0..<10)

        XCTAssertLessThan(firstValue, 10)
        XCTAssertGreaterThanOrEqual(firstValue, 0)
    }

    // MARK: - String

    func test_whenGetString_thenReturnRandomString() {
        let firstValue = Fuzzer().getRandomString()
        let secondValue = Fuzzer().getRandomString()

        XCTAssertNotEqual(firstValue, secondValue)
    }

    func test_givenSize_whenGetString_thenReturnRandomStringWithSpecificSize() {
        let firstValue = Fuzzer(seed: 1234).getRandomString(size: 3)

        XCTAssertEqual(firstValue, "Tnu")
    }

    // MARK: - In Array

    func test_whenGetInArray_thenReturnElement() {
        let firstValue = Fuzzer().getRandomInArray(array: (1..<100000).compactMap({ "\($0)"}))
        let secondValue = Fuzzer().getRandomInArray(array: (1..<100000).compactMap({ "\($0)"}))

        XCTAssertNotEqual(firstValue, secondValue)
    }

    func test_givenSeed_whenGetInArray_thenReturnElement() {
        let firstValue = Fuzzer(seed: 1234).getRandomInArray(array: (1..<100000).compactMap({ "\($0)"}))

        XCTAssertEqual(firstValue, "74087")
    }
}

//
//  File.swift
//  
//
//  Created by Thibaut Coutard on 19/11/2021.
//

import Foundation

class RandomNumberGeneratorWithSeed: RandomNumberGenerator {
    private let range: ClosedRange<Double> = Double(UInt64.min) ... Double(UInt64.max)

    init(seed: Int) {
        srand48(seed)
    }

    func next() -> UInt64 {
        return UInt64(range.lowerBound + (range.upperBound - range.lowerBound) * drand48())
    }
}

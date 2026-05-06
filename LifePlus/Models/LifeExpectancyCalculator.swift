//
//  LifeExpectancyCalculator.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 05/05/26.
//

import Foundation

struct LifeExpectancyCalculator {
    private static let maxAge: Double = 105.0

    static func calculateNewExpectancy(currentAge: Double, currentExpectancy: Double, answerValue: Double) -> Double {
        // Calcula a nova expectativa somada à idade atual
        let totalAge = currentAge + currentExpectancy + answerValue

        // Aplica o limite ao TOTAL (idade + expectativa)
        let cappedTotal = min(totalAge, maxAge)

        // Retorna apenas a expectativa (a diferença)
        return cappedTotal - currentAge
    }
}

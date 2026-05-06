//
//  DataManager.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 24/04/26.
//


import Foundation
import Observation

@Observable
class DataManager {

    private(set) var user: User = DummyData.user
    private(set) var language: String = "pt-BR"
    var router: NavigationRouter

    init(user: User, language: String, router: NavigationRouter) {
        self.user = user
        self.language = language
        self.router = router
    }

    func startOver() {
        user = DummyData.user
        router.reset()
    }

    func updateUser(newName: String, newSex: Sex, newAge: Double, nationality: String) {
        self.user.name = newName
        self.user.sex = newSex
        self.user.age = newAge
        self.user.lifeExpectancy.nationality = nationality
    }

    // Agora o DataManager apenas delega a responsabilidade
    func updateLifeExpectancy(with answerValue: Double) {
        let currentExpectancy = user.lifeExpectancy.totalLifeExpectancy
        let currentAge = user.age

        user.lifeExpectancy.totalLifeExpectancy = LifeExpectancyCalculator.calculateNewExpectancy(
            currentAge: currentAge,
            currentExpectancy: currentExpectancy,
            answerValue: answerValue
        )
    }

    func changeLanguage(_ to: String) {
        self.language = to
    }

    func navigate(_ to: Screen) {
        router.navigate(to)
    }

    func updateQuestionAnswer(index: Int, answer: AnswerOption){
        user.lifeExpectancy.questions[index].answer = answer
    }
}

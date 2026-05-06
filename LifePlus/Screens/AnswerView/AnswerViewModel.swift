//
//  QuestionStudiesViewModel.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 06/05/26.
//


import Foundation
import Observation

@Observable class AnswerViewModel {
    var dm: DataManager
    // Guardamos o array de perguntas de forma simples aqui
    var questions: [Question] = []
    var linkMap: [String: [String]] = [:]

    init(dm: DataManager, questions: [Question]) {
        self.dm = dm
        self.questions = questions

        setupLinks()
    }

    private func setupLinks() {
        for question in questions { // Usa o array local
            linkMap[question.id] = [question.recommendationLink]
        }
    }
}



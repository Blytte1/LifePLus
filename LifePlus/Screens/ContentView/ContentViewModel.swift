//
//  ContentViewModel.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 19/06/23.
//

import Foundation
import Observation
import SwiftUI

@Observable
class ContentViewModel {

    var dm: DataManager
    var ageUpdated = false
    var pageIndex = 0
    var answer: Double = 0.0
    var description = ""
    var rotation = 0.0

    init(dm: DataManager) {
        self.dm = dm
    }

    func incrementPage() {
        pageIndex += 1
    }

    func startOver() {
        dm.startOver()
        self.pageIndex = 0
        self.rotation = 0.0
    }

    func handleSelection(selectedOption: AnswerOption) {

        processSelection(option: selectedOption, index: pageIndex)

        // 2. Sincroniza as bindings locais (caso precise de atualização imediata na tela)
        self.answer = selectedOption.value
        self.description = selectedOption.description

        // 3. Gerencia a navegação (Função exclusiva da View)
        let questions = dm.user.lifeExpectancy.questions
        if pageIndex >= questions.count - 1 {
           dm.navigate(Screen.report(ReportViewModel(dm: dm)))
        } else {
            withAnimation {
                incrementPage()
            }
        }
    }

    /// Responsável por processar a escolha do usuário
    func processSelection(option: AnswerOption,index:Int) {
        // 1. Atualiza estados locais da UI
        self.answer = option.value
        self.description = option.description
        dm.updateQuestionAnswer(index: index, answer: option)
        // 3. Delega o cálculo e atualização do modelo ao DataManager
        dm.updateLifeExpectancy(with: option.value)
    }
}


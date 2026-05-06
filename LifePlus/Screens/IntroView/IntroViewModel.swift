//
//  IntroViewModel.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/10/23.
//

import Foundation
import Observation

@Observable class IntroViewModel{
    var dm: DataManager
    var logoRotation = 0.0
    var logoscale = 1.0
    var fullTexts = ["Olá!",
        "Eu sou o Dr. Life, seja bem-vindo(a) ao Life Plus, o app que te ajudará a entender melhor a relação entre seus hábitos e sua expectativa de vida.",
        "Responda algumas questões para identificar quais fatores impactam sua expectativa de vida e tenha em mãos informações que podem te levar a ter uma vida mais longa e saudável, vamos começar?"
    ]
    var displayText = ""
    var currentPhraseIndex = 0
    var charIndex = 0
    var changeView: Bool = false
    

    init(dm: DataManager) {
        self.dm = dm
    }

    func startTyping(){
        let currentPhrase = fullTexts[currentPhraseIndex]
        
        Timer.scheduledTimer(withTimeInterval: 0.02, repeats: true) { timer in
            if self.charIndex < currentPhrase.count {
                let index = currentPhrase.index(currentPhrase.startIndex, offsetBy: self.charIndex)
                self.displayText.append(currentPhrase[index])
                self.charIndex += 1
            } else {
                timer.invalidate()
                if self.currentPhraseIndex < self.fullTexts.count - 1 {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                        self.displayText = ""
                        self.charIndex = 0
                        self.currentPhraseIndex += 1
                        self.startTyping()
                    }
                }
            }
        }
    }
}

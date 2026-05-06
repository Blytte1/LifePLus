//
//  NameViewModel.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/10/23.
//

import Foundation
import Observation

@Observable class NameViewModel {
    var dm: DataManager
    var age: Double = 13
    var name: String = "Pafúncio Neto"
    var sex: Sex = .masculino
    var nationality: String = "Brasil"

    // Propriedades removidas: fullTexts, currentPhraseIndex
    var displayText = ""
    private var charIndex = 0
    private var typingTimer: Timer? // Controla o timer atual

    init(dm: DataManager) {
        self.dm = dm
    }

    func setUserinfo() {
        dm.updateUser(newName: self.name, newSex: self.sex, newAge: self.age, nationality: self.nationality)
    }

    // Agora recebe o texto que deve ser digitado
    func startTyping(text: String) {
        typingTimer?.invalidate() // Para qualquer animação anterior
        self.displayText = ""
        self.charIndex = 0

        let characters = Array(text)

        typingTimer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true) { timer in
            if self.charIndex < characters.count {
                self.displayText.append(characters[self.charIndex])
                self.charIndex += 1
            } else {
                timer.invalidate()
            }
        }
    }
}

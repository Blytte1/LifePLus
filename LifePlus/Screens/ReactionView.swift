//
//  ReactionView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/04/26.
//

import SwiftUI

struct ReactionView: View {
    var vm: DataManager
    var answerValue: Double

    var body: some View {
        // Define o prefixo baseado no sexo do usuário
        let prefix = vm.user.sex == .feminino ? "dra" : "dr"

        // Constrói o nome da imagem dinamicamente
        let imageName: String = {
            if answerValue > 0 { return "\(prefix)Happy" }
            if answerValue < 0 { return "\(prefix)Worried" }
            return "\(prefix)Indifferent"
        }()

        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 120)
        }
        .clipShape(Circle())
        .background(Color("textBox"))
    }
}

#Preview {
    ReactionView( vm: DummyData.dm, answerValue: 10)
        .environment(
            DataManager(user: DummyData.user, language: "pt-BR", router: NavigationRouter()
                       )
        )
}

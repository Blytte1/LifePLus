//
//  LifePlusApp.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 13/06/23.
//

import SwiftUI
import SwiftUI

@main
struct LifePlusApp: App {

    // Usamos @State para manter a instância viva durante o ciclo de vida do App
    @State private var dm = DataManager(
        user: DummyData.user,
        language: "pt-BR",
        router: NavigationRouter()
    )

    var body: some Scene {
        WindowGroup {
            // Criamos um Bindable local para acessar a propriedade 'path' do router
            @Bindable var router = dm.router

            NavigationStack(path: $router.path) {
                // View inicial
                IntroView(vm: IntroViewModel(dm: dm))
                    .navigationDestination(for: Screen.self) { screen in
                        // O switch deve extrair o valor associado (vm) para passá-lo à View
                        switch screen {
                        case .intro(let vm):
                            IntroView(vm: vm)

                        case .name(let vm):
                            NameView(vm: vm)

                        case .content(let vm):
                            ContentView(vm: vm)

                        case .report(let vm):
                            ReportView(vm:vm)

                        case .setup(let vm):
                            SetUpView(vm: vm)

                        case .answer(let vm):
                            AnswerView(vm: vm)
                        }
                    }
            }
            .environment(dm)
        }
    }
}

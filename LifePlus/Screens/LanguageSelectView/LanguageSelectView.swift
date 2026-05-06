//
//  LifePlusUIView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 13/06/23
//

import SwiftUI

struct LanguageSelectView: View {
    @State var vm : IntroViewModel

    var body: some View {
        VStack {
            LogoView()
            Spacer()
            Text("Selecione um idioma")
                .foregroundStyle(Color("textColor"))
                .font(.largeTitle)
            VStack {
                Button {
                  withAnimation {
                      vm.dm.changeLanguage("pt-BR")
                  }
                }label:{
                    Text("Português")
                        .bold()
                        .font(.title)
                }
                   .padding(2)
                 Button {
                   withAnimation {

                       vm.dm.changeLanguage("es")
                   }
                 }label:{
                     Text("Español")
                         .bold()
                         .font(.title)
                 }
                 .padding()
                 Button{
                   withAnimation {
                       
                       vm.dm.changeLanguage("en")
                   }
                 }label:{
                     Text("English")
                         .font(.title)
                         .bold()
                 }
               }
            .bold()
            Spacer()
        }
        .environment(\.locale, .init(identifier: vm.dm.language))
    }
}

#Preview{LanguageSelectView(vm: IntroViewModel(dm: DummyData.dm))}

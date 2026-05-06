//
//  SwiftUIView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 01/12/23.
//

import SwiftUI

struct SetUpView: View {
    @State var vm: SetUpViewModel
    var body: some View {
        ScrollView {
           
            LanguageSelectView(vm: IntroViewModel(dm:vm.dm))
                .padding()
        }
    }
}

#Preview {
    SetUpView(vm: SetUpViewModel(dm: DummyData.dm))
}

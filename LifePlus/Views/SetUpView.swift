//
//  SwiftUIView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 01/12/23.
//

import SwiftUI

struct SetUpView: View {
    @EnvironmentObject private var contentViewModel : ContentViewModel
    var body: some View {
        ScrollView {
            Spacer()
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(height:150)
            
                .frame(maxWidth:.infinity, maxHeight: .infinity)
                .padding(.bottom,30)
          
            //MARK: BUTTON
            Spacer()
            Text("Selecione um idioma")
                .foregroundStyle(Color("textColor"))
            HStack {
                Button("Português") {
                    withAnimation {
                        contentViewModel.user.language = "pt-BR"
                        
                    }
                }
                .padding()
                Button("Español") {
                    withAnimation {
                        contentViewModel.user.language = "es"
                    }
                }
                .padding()
                Button("English") {
                    withAnimation {
                        contentViewModel.user.language = "en"
                        
                    }
                }
            }
            
        }
        .background{
            Image("Wallpaper")
                .resizable()
                .scaledToFill()
                .opacity(0.05)
                .ignoresSafeArea()
                .background(Color("background"))
        }
        .environment(\.locale, .init(identifier: contentViewModel.user.language))
    }
}

#Preview {
    SetUpView()
        .environmentObject(ContentViewModel())
}

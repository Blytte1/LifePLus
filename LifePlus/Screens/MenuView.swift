//
//  MenuView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 01/09/23.
//

import SwiftUI

struct MenuView: View {
    @EnvironmentObject var contentViewModel: ContentViewModel
    @State var menuViewModel = MenuViewModel()
    @State var reportViewModel: ReportViewModel? = nil
    var body: some View {
        VStack{
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height:200)
                    .rotation3DEffect(
                        .degrees(menuViewModel.logoRotation), axis: (x:0, y: 1, z:0))
                    .scaleEffect(menuViewModel.logoScale)
              
          
            List {
                NavigationLink("Referências", destination: ReferenceView())
                NavigationLink("Anuncie conosco!",destination: BusinessView())
            }
            .frame(height: 180)
            .scrollContentBackground(.hidden)
            Button("Reiniciar Teste") {
                contentViewModel.user.age = 30
                contentViewModel.ageUpdated = false
                contentViewModel.rotation = 0
                contentViewModel.pageIndex = 0
                contentViewModel.path = [.name]
            }
            .buttonStyle(.borderedProminent)
         Spacer()
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

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            MenuView()
                .environmentObject(ContentViewModel())
        }
    }
}


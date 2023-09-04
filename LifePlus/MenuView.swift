//
//  MenuView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 01/09/23.
//

import SwiftUI
struct MenuViewModel{
    var logoRotation = 0.0
    var logoScale = 1.0
}
struct MenuView: View {
    @EnvironmentObject var contentViewModel: ContentViewModel
    @State var menuViewModel = MenuViewModel()
    @State var reportViewModel: ReportViewModel? = nil
    var body: some View {
        VStack{
            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height:200)
                    .rotation3DEffect(
                        .degrees(menuViewModel.logoRotation), axis: (x:0, y: 1, z:0))
                    .scaleEffect(menuViewModel.logoScale)
                .frame(maxWidth:.infinity, maxHeight: .infinity)
            }
            Button("Reiniciar Teste") {
                contentViewModel.user.name = ""
                contentViewModel.user.age = 30
                contentViewModel.ageUpdated = false
                contentViewModel.rotation = 0
                contentViewModel.pageIndex = 0
                contentViewModel.path = [.name]
            }.buttonStyle(.borderedProminent)
                List{
                    NavigationLink("Referências", destination: ReferenceView())
                       
                    NavigationLink("Créditos", destination: CreditsView())
                    NavigationLink("Anuncie conosco!",destination: BusinessView())
                }
                .scrollContentBackground(.hidden)
            .listStyle(.insetGrouped)
            
        }
        .background{
            Image("Wallpaper")
                .opacity(0.6)
                .background(.green)
                .opacity(0.2)
        }
        
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


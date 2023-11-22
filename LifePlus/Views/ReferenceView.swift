//
//  ReferenceView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 01/09/23.
//

import SwiftUI

struct ReferenceView: View {
    @EnvironmentObject var contentViewModel:ContentViewModel
    var body: some View {
        List{
            Link(destination: URL(string: "https://www.readcube.com/articles/10.1038/429149a") ?? URL(string: "https://www.apple.com/br/")!) {
                
                Text("Nemoto, Shino, Finkel, Toren (2004) Ageing and the mystery at Arles. Nature, 429 (6988). 149-152")
                }
            Link(destination: URL(string: "https://cdn.who.int/media/docs/default-source/gho-documents/world-health-statistic-reports/2023/world-health-statistics-2023_20230519_.pdf?sfvrsn=bfa18d07_1&download=true") ?? URL(string: "https://www.apple.com/br/")!) {
                Text("The World health statistics report 2023, OMS")
            }
            Link(destination: URL(string:"https://svs.aids.gov.br/daent/centrais-de-conteudos/paineis-de-monitoramento/saude-brasil/mortalidade-geral/") ?? URL(string: "https://www.apple.com/br/")!) {
                Text("Saúde Brasil - Principais causas de morte no Brasil")
            }
        }
        .navigationTitle("Referências")
        .scrollContentBackground(.hidden)
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
struct ReferenceView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            ReferenceView()
                .environmentObject(ContentViewModel())
        }
    }
}

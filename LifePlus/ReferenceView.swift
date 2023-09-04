//
//  ReferenceView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 01/09/23.
//

import SwiftUI

struct ReferenceView: View {
    var body: some View {
        List{
            Text("Nemoto, Shino, Finkel, Toren (2004) Ageing and the mystery at Arles. Nature, 429 (6988). 149-152")
            Text("IBGE, Projeção da população do Brasil e Unidades da Federação por sexo e idade para o período 2010-2060. Revisão 2019. 1980 e 1991 - ALBUQUERQUE, Fernando Roberto P. de C. e SENNA, Janaína R. Xavier “Tábuas de Mortalidade por Sexo e Grupos de Idade - Grandes e Unidades da Federação – 1980, 1991 e 2000. Textos para discussão, Diretoria de Pesquisas, IBGE, Rio de Janeiro, 2005.161p. ISSN 1518-675X ; n. 20")
            Text("The World health statistics report 2023, OMS")
        }
        .navigationTitle("Referências")
        .scrollContentBackground(.hidden)
        .background{
            Image("Wallpaper")
                .resizable()
                .scaledToFill()
                .opacity(0.6)
                .background(.green)
                .opacity(0.2)
        }
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

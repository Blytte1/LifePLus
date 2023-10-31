//
//  BusinnesView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 01/09/23.
//

import SwiftUI

struct BusinessView: View {
    @EnvironmentObject var contentViewModel:ContentViewModel
    var body: some View {
        
        VStack(alignment:.center) {
            Text("Anuncie Conosco")
            Link(destination: URL(string: "https://api.whatsapp.com/send?phone=5561995596812&text= Olá, gostaria de fazer um orçamento para divulgação no LifePlus") ?? URL(string: "https://www.apple.com/br/")!) {
                Image("logo").resizable().scaledToFit()
            }
            Text("Clique na imagem para mandar uma mensagem.")
        }
        .foregroundColor(Color("textColor"))
        .font(.title)
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity
        )
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
struct BusinsessView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            BusinessView()
                .environmentObject(ContentViewModel())
        }
    }
}


//
//  BusinnesView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 01/09/23.
//

import SwiftUI

struct BusinessView: View {
    var body: some View {
        ZStack{
            
            VStack(alignment:.center) {
                Text("Anuncie Conosco")
                Link(destination: URL(string: "https://api.whatsapp.com/send?phone=5561995596812&text= Olá, gostaria de fazer um orçamento para divulgação no LifePlus") ?? URL(string: "https://www.apple.com/br/")!) {
                    Image("logo").resizable().scaledToFit()
                }
                Text("Clique na imagem para mandar uma mensagem.")
            }
            .background(Color("background").opacity(0.6))
        }
        .font(.title)
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
struct BusinsessView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            BusinessView()
                .environmentObject(ContentViewModel())
        }
    }
}


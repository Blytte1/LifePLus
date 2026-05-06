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
        
        VStack(alignment: .center){
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
            Text("Anuncie Conosco!")
                .font(.title)
            VStack(alignment:.center) {
                Link(destination: URL(string: "https://api.whatsapp.com/send?phone=5561981601001&text= Olá, gostaria de fazer um orçamento para divulgação no LifePlus") ?? URL(string: "https://www.apple.com/br/")!) {
                    HStack {
                        Image(systemName: "phone.bubble.left.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width:50)
                        Text("+55-61 9-8160-1001")
                    }
                }
                HStack {
                    Link(destination: URL(string: "mailto:adinizb@gmail.com")!) {
                        Image(systemName: "envelope")
                            .resizable()
                            .frame(width: 45, height: 45)
                        Text("adinizb@gmail.com    ")
                    }
                }
                Link(destination: URL(string: "https://api.whatsapp.com/send?phone=5561995596812&text= Olá, gostaria de fazer um orçamento para divulgação no LifePlus") ?? URL(string: "https://www.apple.com/br/")!) {
                    HStack {
                        Image(systemName: "phone.bubble.left.fill")
                            .resizable()
                            .scaledToFit()
                        .frame(width:50)
                        Text("+55-61 99559-6812")
                    }
                }
                HStack {
                    Link(destination: URL(string: "mailto:blytte@gmail.com")!) {
                        Image(systemName: "envelope")
                            .resizable()
                            .frame(width: 45, height: 45)
                        Text("blytte@gmail.com    ")
                    }
                }
            }
            Spacer()
        }
        .foregroundColor(.green)
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


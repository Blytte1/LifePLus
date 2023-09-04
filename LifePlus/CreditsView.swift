//
//  CreditsView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 01/09/23.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        List{
            Section("Desenvolvedores"){
                Text("Roberto Mascarenhas")
                Text("Adson Diniz")
            }
            .foregroundColor(.accentColor)
            .font(.title3)
            .fontWeight(.black)
            Section("Direito sobre Imagens"){
                Link(destination: URL(string: "https://www.freepik.com") ?? URL(string: "https://www.apple.com/br/")!) {
                    ForEach(DummyData.questions){question in
                        Text("freePick.com")
                    Image(question.questionImageUrl).resizable().scaledToFit()
                    }
                }
                
            }
            .foregroundColor(.accentColor)
            .font(.title3)
            .fontWeight(.black)
        }
        .scrollContentBackground(.hidden)
        .background{
            Image("Wallpaper")
                .opacity(0.6)
                .background(.green)
                .opacity(0.2)
        }
    }
}
struct CreditView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            CreditsView()
                .environmentObject(ContentViewModel())
        }
    }
}

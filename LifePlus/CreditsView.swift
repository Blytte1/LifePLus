//
//  CreditsView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 01/09/23.
//

import SwiftUI

struct CreditsView: View {
    @EnvironmentObject var contentViewModel:ContentViewModel
    var body: some View {
        VStack(alignment: .center){
            Text("Desenvolvedores:")
                .font(.title3)
                .fontWeight(.black)
            Text("Adson Diniz & Roberto Mascarenhas")
                .font(.title3)
                .fontWeight(.black)
            List{
                Section("Direito sobre Imagens"){
                    Link(destination: URL(string: "https://www.freepik.com") ?? URL(string: "https://www.apple.com/br/")!) {
                        ForEach(DummyData.questions){question in
                            Text("freePick.com")
                            Image(question.questionImageUrl)
                                .resizable()
                                .frame(width:350, height:300)
                        }
                    }
                    .listRowBackground(Color("textColor").opacity(0.0))
                }
                .foregroundColor(.accentColor)
                .font(.title3)
                .fontWeight(.black)
            }
            .scrollContentBackground(.hidden)
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
struct CreditView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            CreditsView()
                .environmentObject(ContentViewModel())
        }
    }
}

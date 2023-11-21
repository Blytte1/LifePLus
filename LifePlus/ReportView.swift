//
//  ReportView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 20/06/23.
//

import SwiftUI


struct ReportView: View {
    @EnvironmentObject var contentViewModel: ContentViewModel
    @State var reportViewModel: ReportViewModel? = nil
    
    let user:User
    var body: some View {
        
        VStack {
            Header1View(user: user)
                .padding()
            Text("Respostas e valores:")
                .font(.title2)
            ScrollView {
                AnswerView( user: user)
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
       // .navigationTitle("Resultados")
        .navigationBarBackButtonHidden(true)
    }
}
struct ReportView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ReportView( user: DummyData.user)
                .environmentObject(ContentViewModel())
        }
    }
}




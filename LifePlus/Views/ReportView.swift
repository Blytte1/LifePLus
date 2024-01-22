//
//  ReportView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 20/06/23.
//

import SwiftUI


struct ReportView: View {
    @EnvironmentObject var contentViewModel: ContentViewModel
    @State var reportViewModel = ReportsViewModel()
    @State var user:User
    var body: some View {
        
        ScrollView {
            ReportHeaderView(user: $reportViewModel.user)
                .padding(.vertical,100)
            Button("Relatório completo"){
                contentViewModel.path.append(Screen.answer(user))
            }
            .buttonStyle(.borderedProminent)
            .toolbar{
                
                
                Button{
                    contentViewModel.path = [Screen.intro]
                    contentViewModel.startOver()
                    
                }label:{
                    Image(systemName: "arrow.counterclockwise.circle")
                }
                Button{
                    contentViewModel.path.append(Screen.business)
                }label:{
                    Image(systemName: "dollarsign.circle")
                }
                
                Button{
                    contentViewModel.path.append(Screen.setup)
                }label:{
                    Image(systemName: "character.book.closed")
                }
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
        .onAppear(){
            reportViewModel.user = user
        }
        .environment(\.locale, .init(identifier: contentViewModel.user.language))
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




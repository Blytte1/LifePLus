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
        
        VStack {
            ReportHeaderView(user: $reportViewModel.user)
                
                //.background(Color("textColor"))
            Text("Respostas e valores:")
                .font(.title2)
                .onAppear(){
                    reportViewModel.user = user
                }
            ScrollView {
                AnswerView( user: $reportViewModel.user)
            }
            .toolbar{
                Button{
                    contentViewModel.path = [Screen.intro]
                    contentViewModel.startOver()
                    
                }label:{
                    Image(systemName: "house.fill")
                }
                
                Spacer()
                Button{
                    contentViewModel.path.append(Screen.business)
                }label:{
                    Image(systemName: "dollarsign.circle")
                }
                Spacer()
                Button{
                    contentViewModel.path.append(Screen.setup)
                }label:{
                    Image(systemName: "gearshape.fill")
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




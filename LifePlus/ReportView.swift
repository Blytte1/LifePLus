//
//  ReportView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 20/06/23.
//

import SwiftUI
struct  ReportViewModel: Identifiable{
    var id = UUID()
    let question:Question
    var isActive:Bool = false
}

struct ReportView: View {
    @EnvironmentObject var contentViewModel: ContentViewModel
    @State var reportViewModel: ReportViewModel? = nil
    
    let user:User
    var body: some View {
        
        TabView {
          
            AnswerView( user: user)
                .tabItem {
                    Image(systemName:"doc.text")
                    Text("Report")
                }
            MenuView()
                .tabItem {
                    Text("Setings")
                    Image(systemName: "heart.fill")
                }
                .background(.white)
        }
        .navigationBarBackButtonHidden(true)
        .background{
            Image("Wallpaper")
                .resizable()
                .scaledToFill()
                .opacity(0.6)
                .background(.green)
                .opacity(0.2)
        }
        .tabViewStyle(.automatic)
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



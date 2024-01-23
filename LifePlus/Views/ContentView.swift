//
//  ContentView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 13/06/23.
//

import SwiftUI
//import GoogleMobileAds


struct ContentView: View {
    @EnvironmentObject private var contentViewModel : QuestionViewModel
    @State private(set) var user: User
    private let dotAppearance = UIPageControl.appearance()
    var body: some View {
        VStack {
            LifeScoreView(contentViewModel:_contentViewModel, user: $contentViewModel.user)
         
            TabView (selection:$contentViewModel.pageIndex){
                withAnimation(.easeIn) {
                    ForEach(contentViewModel.user.lifeExpectancy.questions, id:\.self){
                        question in
                        VStack {
                            Page(
                                user: contentViewModel.user, question: question,
                                answer: contentViewModel.answer,
                                description: contentViewModel.description
                            )
                            .cornerRadius(20)
                        }
                        .tag(question.tag)
                    }
                }
            }
            .frame(maxWidth:.infinity,maxHeight:.infinity)
            .animation(
                .easeInOut(duration: 1),
                value: contentViewModel.pageIndex
            )
           
            .indexViewStyle(
                .page(backgroundDisplayMode: .never)
            )
            .ignoresSafeArea()
            .tabViewStyle(.page)
            .navigationBarBackButtonHidden(true)
        }
        .background{
            Image("Wallpaper")
                .resizable()
                .scaledToFill()
                .opacity(0.06)
                .ignoresSafeArea()
                .background(Color("background"))
        }
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
        .onAppear(){
            
            dotAppearance.currentPageIndicatorTintColor = .clear
            dotAppearance.pageIndicatorTintColor = .clear
        }
        .environment(\.locale, .init(identifier: contentViewModel.user.language))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView( user: DummyData.user)
                .environmentObject(QuestionViewModel())
        }
    }
}


//
//  ContentView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 13/06/23.
//

import SwiftUI


struct ContentView: View {
    @EnvironmentObject private var contentViewModel : ContentViewModel
     let user: User
    private let dotAppearance = UIPageControl.appearance()
    var body: some View {
        VStack (spacing:0){
            
            headder()
                
//MARK:  TABVIEW
            TabView (selection:$contentViewModel.pageIndex){
                withAnimation(.easeIn) {
                    ForEach(contentViewModel.user.lifeExpectancy.questions, id:\.self){
                        question in
                        ScrollView {
                            Page(question: question,
                                 answer: contentViewModel.answer,
                                 description: contentViewModel.description,
                                 age: contentViewModel.user.age
                            )
                                .cornerRadius(20)
                            }
                        .tag(question.tag)
                    }
                }
            }
            .animation(
                .easeInOut(duration: 1),
                value: contentViewModel.pageIndex
            )
            .indexViewStyle(
                .page(backgroundDisplayMode: .automatic)
            )
            .tabViewStyle(.page)
            .onAppear(){
                contentViewModel.user = user
                contentViewModel.user.lifeExpectancy.totalLifeExpectancy = user.lifeExpectancy.initialLifeExpectancy
                dotAppearance.currentPageIndicatorTintColor = .red
                dotAppearance.pageIndicatorTintColor = .green
        }
            .navigationBarBackButtonHidden(true)
      }
        .background(Color("background").opacity(0.9))
        .background{
            Image("Wallpaper")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView( user: DummyData.user)
                .environmentObject(ContentViewModel())
        }
    }
}
//MARK:  headder
struct headder: View {
    @EnvironmentObject var contentViewModel: ContentViewModel
    @State var rotation = 0.0
    var body: some View {
        ZStack(alignment:.trailing){
            Rectangle()
                .stroke(lineWidth:10)
                .fill(Color("AccentColor"))
            
            HStack {
//Expectativa e vida restante
                VStack (alignment:.center, spacing:0){
                    if !contentViewModel.ageUpdated{
                        Text("Expectativa de ")
                            .font(.system(size: 25))
                        Text("Vida")
                            .font(.system(size: 70))
                            .fontWeight(.black)
                            .padding(2)
                    }
                    else{
                        Text("Viva +") 
                            .font(.system(size: 60))
                            .fontWeight(.black)
                            .padding(2)
                    }
                }
               
//MARK: Numero de anos
                ZStack{
                    Rectangle()
                        .fill(Color("AccentColor"))
                        .frame(width:130, height: 110)
                        .cornerRadius(10)
                        .padding(.horizontal,10)
                    
                    VStack (spacing:-10){
                        Text(!contentViewModel.ageUpdated ? "\(contentViewModel.user.lifeExpectancy.totalLifeExpectancy)" : "\(contentViewModel.user.lifeExpectancy.totalLifeExpectancy - contentViewModel.user.age)")
                            .font(.system(size: 60))
                        Text("Anos")
                            .font(.system(size: 30))
                    }
                    .rotation3DEffect(
                        Angle(degrees: rotation),
                        axis: (x:0,y:1,z:0))
                }
                .foregroundColor(.white)
                //rotação do placar de anos
                .rotation3DEffect(
                    .degrees(contentViewModel.rotation),
                    axis: (x:0,y:1,z:0)
                )
                
                .animation(
                    .easeIn(duration: 0.5),
                    value: contentViewModel.rotation
                )
            }
            .rotation3DEffect(
                .degrees(-360),
                axis: (1, 0,0)
            )
            .animation(
                .easeInOut(duration: 0.5)
                , value:contentViewModel.ageUpdated
            )
            .foregroundColor(.accentColor)
        }
        .animation(
            .easeInOut(duration: 1),
            value: contentViewModel.user.age
        )
        .frame(
            minWidth:170,
               maxWidth:.infinity
               , maxHeight:140
        )
        
        .cornerRadius(10)
        .padding(.bottom,10)
        .padding(.horizontal)
        .shadow(radius: 20)
    }
}

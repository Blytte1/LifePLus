//
//  ContentView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 13/06/23.
//

import SwiftUI



struct ContentView: View {
    @EnvironmentObject private var contentViewModel : ContentViewModel
    var user: User
    private let dotAppearance = UIPageControl.appearance()
    var body: some View {
        VStack {
            
            ZStack(alignment:.trailing){
                Rectangle()
                    .stroke(lineWidth:10)
                    .fill(Color("textBox"))
                
                HStack {
                    //Expectativa e vida restante
                    VStack (alignment:.center, spacing:0){
                        
                        Text("Viva +")
                            .foregroundStyle(Color("textBox"))
                            .font(.system(size: 60))
                            .fontWeight(.black)
                            .padding(2)
                    }
                    
                    //MARK: - Numero de anos
                    ZStack{
                        Rectangle()
                            .fill(Color("textBox"))
                            .frame(width:130, height: 110)
                            .cornerRadius(10)
                            .padding(.horizontal,10)
                        
                        VStack (spacing:-10){
                            Text( "\(contentViewModel.user.lifeExpectancy.totalLifeExpectancy - contentViewModel.user.age)")
                                .font(.system(size: 60))
                            Text("Anos")
                                .font(.system(size: 30))
                        }
                        .foregroundStyle(.white)
                        .rotation3DEffect(
                            Angle(degrees: contentViewModel.rotation),
                            axis: (x:0,y:1,z:0))
                    }
                    
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
                
                .foregroundColor(.accentColor)
            }
            .animation(
                .easeInOut(duration: 1),
                value: contentViewModel.user.finalLifeExpectancy
            )
            .frame(
                
                maxWidth:.infinity
                , maxHeight:140
            )
            
            .cornerRadius(10)
            .padding(.bottom,5)
            .padding(.horizontal)
            .shadow(radius: 20)
            
            //MARK:  TABVIEW
            TabView (selection:$contentViewModel.pageIndex){
                withAnimation(.easeIn) {
                    ForEach(contentViewModel.user.lifeExpectancy.questions, id:\.self){
                        question in
                        VStack {
                            Page(
                                user: user, question: question,
                                answer: contentViewModel.answer,
                                description: contentViewModel.description
                            )
                            .cornerRadius(20)
                            .background(.black)
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
            .padding(.vertical)
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
        .onAppear(){
            dotAppearance.currentPageIndicatorTintColor = .red
            dotAppearance.pageIndicatorTintColor = .cyan
        }
        .environment(\.locale, .init(identifier: contentViewModel.user.language))
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


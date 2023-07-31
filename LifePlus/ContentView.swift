//
//  ContentView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 13/06/23.
//

import SwiftUI


struct ContentView: View {
    @EnvironmentObject var contentViewModel : ContentViewModel
     let lifePlus: LifeExpectancy
    private let dotAppearance = UIPageControl.appearance()
    
    var body: some View {
        VStack (spacing:0){
            //MARK: - CABEÇALHO
            
            ZStack(alignment:.trailing){
                Rectangle()
                    .fill(Color("lightGreen"))
                HStack {
                    VStack (alignment:.center, spacing:0){
                        Text("Expectativa de ")
                            .font(.system(size: 25))
                        Text("Vida")
                            .font(.system(size: 70))
                            .fontWeight(.black)
                    }
                    .padding(2)
                    ZStack{
                        Rectangle()
                            .stroke(lineWidth: 10)
                            .fill(.white)
                            .frame(width:150, height: 130)
                            .cornerRadius(10)
                            .padding(.horizontal,10)
                        
                        VStack (spacing:-10){
                            Text(String(contentViewModel.lifeExpectancy.totalLifeExpectancy))
                                .font(.system(size: 60))
                            Text("Anos")
                                .font(.system(size: 30))
                        }
                    }
                }
                .foregroundColor(.accentColor)
            }
            .frame(minWidth:170, maxWidth: .infinity, maxHeight:140)
            .cornerRadius(10)
            .shadow(color:.white,radius:1)
            .padding(.bottom,10)
            .padding(.horizontal)
          //MARK: - TABVIEW
            TabView (selection:$contentViewModel.pageIndex){
                ForEach(contentViewModel.lifeExpectancy.questions, id:\.self){
                    question in
                    VStack (spacing:10){
                        //MARK: - PAGE
                        Page(question: question, answer: contentViewModel.answer, isSelected: contentViewModel.isSelected)
                            .cornerRadius(20)
                    }
                    .tag(question.tag)
                }
            }
            
            .animation(.easeInOut, value: contentViewModel.pageIndex)
            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
            .tabViewStyle(.page)
            .ignoresSafeArea()

            .onAppear(){
                contentViewModel.lifeExpectancy = lifePlus
                dotAppearance.currentPageIndicatorTintColor = .green
                dotAppearance.pageIndicatorTintColor = .red
        }
            .navigationBarBackButtonHidden(true)
      }
      .background(Color("lightGreen"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView( lifePlus: DummyData.lifeExpectancy)
                .environmentObject(ContentViewModel())
                
        }
    }
}

//
//  ContentView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 13/06/23.
//

import SwiftUI
//import GoogleMobileAds


struct ContentView: View {

    @State var vm : ContentViewModel
    private let dotAppearance = UIPageControl.appearance()
    
    var body: some View {


        TabView (selection:$vm.pageIndex){

            ForEach(vm.dm.user.lifeExpectancy.questions, id:\.self){
                    question in
                QuestionOptionView(vm: $vm, question: question)
                    .tag(question.tag)
                }
            }
            .padding(.horizontal)
            .animation(.easeInOut(duration: 1), value: vm.pageIndex)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            .tabViewStyle(.page)
            .navigationBarBackButtonHidden(true)


        .onAppear(){
            dotAppearance.currentPageIndicatorTintColor = .systemMint
            dotAppearance.pageIndicatorTintColor = .gray
        }
    }
}

#Preview {
    NavigationStack{
        ContentView(vm: ContentViewModel(dm:DummyData.dm))
    }
    .environment(DummyData.dm)
}




struct QuestionOptionView: View {
    @Binding var vm : ContentViewModel
    @State var question: Question


    var body: some View {
        ScrollView {
                //MARK: - Card de Justificativa da questão
          
                    HStack {
                        Text(question.justification)
                                    .minimumScaleFactor(0.5)
                                    .foregroundStyle(Color("textColor"))
                                    .font(.title3)
                                    .bold()
                        VStack(alignment:.trailing){
                            HStack{
                                Button{ vm.dm.router.reset()
                                }
                                label:{
                                    Image(systemName: "arrow.counterclockwise.circle")
                                }

                                Button{
                                    vm.dm.router.navigate(.setup(SetUpViewModel(dm: vm.dm)))
                                }
                                label:{
                                    Image(systemName: "character.book.closed")
                                }
                            }
                            .frame(maxHeight: .infinity)
                            .font(.title3)
                            .padding(5)
                            ReactionView( vm: vm.dm, answerValue: vm.answer)
                                .clipShape(Circle())
                            }
                    }



                //MARK: - Texto da Pergunta
                Text(LocalizedStringKey(question.id))
                    .font(.title)
                    .bold()
                    .foregroundStyle(Color("textColor"))
                    .padding(.vertical)
                    .frame(maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .lineLimit(3)
                    .minimumScaleFactor(0.5)

                //MARK: -  Opções
                ForEach(question.options) { option in
                    Button {
                        vm.handleSelection(selectedOption: option)
                    } label: {
                        Text(option.description)
                            .foregroundStyle(.white)
                            .bold()
                            .font(.title2)
                            .padding(5)
                            .frame(maxWidth: .infinity, minHeight: 90)
                            .background(Color("textBox"))
                            .cornerRadius(30)
                    }
                    .padding(3)
                }

        }
        .ignoresSafeArea()
    }


}

#Preview("Question Option View"){
    @Previewable @State var question = DummyData.alcohol
    @Previewable @State var vm = ContentViewModel(dm:DummyData.dm)

    QuestionOptionView(vm: $vm, question: question)
        .environment(DummyData.dm)
}

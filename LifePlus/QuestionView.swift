//
//  QuestionView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/08/23.
//

import SwiftUI



struct QuestionView: View {
    @EnvironmentObject var contentViewModel:ContentViewModel
@State var questionViewModel = QuestionViewModel()
   private(set) var user: User
    private(set) var question: Question
    var body: some View {
        ScrollView (){
            Rectangle()
                .fill(.white)
                .frame(width:50,height:10)
                .cornerRadius(10)
                .padding(20)
            VStack {
                VStack(alignment: .leading,spacing: 10){
                    Spacer()
                    Text(question.question)
                        .padding(.horizontal,10)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                    HStack {
                        Text("Resposta: ")
                            .foregroundStyle(.white)
                            .fontWeight(.semibold)
                        Text(questionViewModel.question.answerDescription)
                    }
                    .padding(.horizontal,10)
                    
                    HStack {
                        
                        Text("Impacto na saúde:")
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                        Text(questionViewModel.question.answerValue <= 0 ? " \(questionViewModel.question.answerValue) anos de vida." : " + \(questionViewModel.question.answerValue) anos de vida.")
                    }
                    .foregroundColor( questionViewModel.question.answerValue <= 0 ? .accentColor : Color("textColor"))
                        .padding(.horizontal,10)
                    Text("      \(questionViewModel.explanation)")
                        .padding(10)
                    VStack (alignment:.leading){
                        Text("Dica:")
                            .foregroundColor(Color("textColor"))
                            .fontWeight(.semibold)
                            .padding(5)
                        Text("      \(questionViewModel.recommendation)")
                            .padding(.horizontal, 10)
                    }
                    .background(.white)
                    .foregroundColor(Color("textColor"))
                    .fontWeight(.bold)
                    .cornerRadius(20)
                    .padding()
                    Spacer()
                }
                .font(.body)
                .foregroundColor(Color("textColor"))
                .fontWeight(.semibold)
                .background(Color("textBox"))
                .cornerRadius(10)
                .padding(10)
            }
            .shadow(color:.green.opacity(0.3),radius: 5)
            Spacer()
            Link(destination: URL(string: questionViewModel.recommendationLink) ?? URL(string: "https://www.apple.com/br/")!) {
                HStack{
                    questionViewModel.recommendationImage
                        .resizable()
                        .scaledToFit()
                    VStack{
                        Spacer()
                        Text(questionViewModel.recommendationTag).lineLimit(4)
                            .font(.body)
                        Text(questionViewModel.recommendationPrice)
                        Spacer()
                    }
                }
                .frame(width:370, height:100)
                .background(.white)
                .cornerRadius(10)
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
            questionViewModel.user = user
            questionViewModel.question = question
            questionViewModel.loadRecomendationValues()
        }
        .environment(\.locale, .init(identifier: contentViewModel.user.language))
    }
}

struct QuestionView_Previews: PreviewProvider {
   
    static var previews: some View {
        NavigationStack {
            QuestionView(user: DummyData.user, question: DummyData.user.lifeExpectancy.questions[19])
                .environmentObject(ContentViewModel())
                
        }
    }
}

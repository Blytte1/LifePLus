//
//  QuestionView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/08/23.
//

import SwiftUI



struct QuestionView: View {
    @State var questionViewModel = QuestionViewModel()
   private(set) var user: User
    private(set) var question: Question
    var body: some View {
        ScrollView (){
            HStack(spacing:-5) {
                Text("Arraste para baixo para voltar")
                    .padding()
                Image(systemName:"chevron.down.circle")
            }
            VStack {
                VStack(alignment: .leading,spacing: 10){
                    Spacer()
                    Text(question.question)
                        .padding(.horizontal,10)
                        .foregroundColor(.black)
                        .fontWeight(.semibold)
                    HStack {
                        Text("Resposta: ")
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                        Text(questionViewModel.question.answerDescription)
                    }
                    .padding(.horizontal,10)
                    
                    HStack {
                        
                        Text(questionViewModel.question.answerValue <= 0 ? "Impacto na saúde:":"Impacto na saúde: +")
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                        Text("\(questionViewModel.question.answerValue) anos de vida.")
                    }
                        .padding(.horizontal,10)
                    Text("      \(questionViewModel.explanation)")
                        .padding(10)
                    VStack (alignment:.leading){
                        Text("Dica:")
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                            .padding(5)
                        Text("      \(questionViewModel.recommendation)")
                            .padding(.horizontal, 10)
                    }
                    .background(.white)
                    .foregroundColor(.accentColor)
                    .fontWeight(.bold)
                    .cornerRadius(20)
                    .padding()
                    Spacer()
                }
                .font(.body)
                .foregroundColor(.accentColor)
                .fontWeight(.semibold)
                .background(.white.opacity(0.5))
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
                .ignoresSafeArea()
                .opacity(0.6)
                .background(.green)
                .opacity(0.3)
                
        }
        .onAppear(){
            questionViewModel.user = user
            questionViewModel.question = question
            questionViewModel.loadRecomendationValues()
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
   
    static var previews: some View {
        NavigationStack {
            QuestionView(user: DummyData.user, question: DummyData.user.lifeExpectancy.questions[20])
                .environmentObject(ContentViewModel())
        }
    }
}

//
//  Questions.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 01/09/23.
//

import SwiftUI




struct AnswerView: View {
    
    @State var answerViewModel = AnswersViewModel()
    @EnvironmentObject var contentViewModel: ContentViewModel
    @State var reportViewModel: ReportViewModel? = nil
    @State var user: User
    
    var body: some View {
        VStack {
           
            Text("Clique nas perguntas para ver as dicas")
                .fontWeight(.black)
            ScrollView {
                VStack (alignment:.center){
                    ForEach(user.lifeExpectancy.questions){
                            question in
                            Button{
                                reportViewModel = ReportViewModel(question: question)
                                reportViewModel?.isActive.toggle()
                            }label:{
                                VStack(alignment: .leading, spacing:5){
                                    Text(LocalizedStringKey(question.question))
                                        .foregroundStyle(.white)
                                        .fontWeight(.bold)
                                    HStack {
                                        Text("\(question.answerValue) anos ")
                                            .shadow(radius: 10)
                                        Spacer()
                                        Image(systemName:"arrow.up.square")
                                            .rotationEffect(Angle(degrees: 360))
                                            .animation(
                                                .interpolatingSpring
                                                .repeatForever(autoreverses: false)
                                                ,value: answerViewModel.isActive
                                            )
                                    }
                                    .foregroundColor( Color("textColor"))
                                    .fontWeight(.semibold)
                                }
                               
                                .padding(10)
                                .background{
                                    if question.answerValue >= 0{
                                        Color("textBox")
                                    }else{
                                        Color.pink
                                            .opacity(0.7)
                                    }
                                }
                                .cornerRadius(15)
                                .padding(10)
                                .cornerRadius(10)
                            }
                            
                            
                        }
                    
                }
                .sheet(item: $reportViewModel){model in QuestionView( user: user, question: model.question)
                }
                .frame(maxWidth:.infinity)
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
        .foregroundColor(Color("textColor"))
        .navigationBarBackButtonHidden(true)
        .onAppear(){
            answerViewModel.isActive = true
            answerViewModel.scale += 1
        }
        .environment(\.locale, .init(identifier: contentViewModel.user.language))
    }
}
struct AnswerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            AnswerView(user:DummyData.user)
                .environmentObject(ContentViewModel())
        }
    }
}

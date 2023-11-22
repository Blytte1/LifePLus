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
    @Binding var user: User
   
    var body: some View {
        ScrollView {

            ForEach(contentViewModel.user.lifeExpectancy.questions){
                        question in
                            VStack(alignment:.leading,spacing:5){
                                Text(LocalizedStringKey(question.question))
                                    .multilineTextAlignment(.leading)
                                    .foregroundStyle(.white)
                                    .fontWeight(.bold)
                                HStack {
                                    Text("Resposta:")
                                    Text(LocalizedStringKey(question.answerDescription))
                                }
                                HStack {
                                    Text(question.answerValue > 0 ? "Impacto na saúde: +": "Impacto na saúde:")
                                    Text(question.answerValue, format:.number)
                                    switch question.answerValue{
                                    case 0: Text("")
                                    case 1: Text("ano")
                                    case -1: Text("ano")
                                    default: Text("anos")
                                    }
                                }
                                .foregroundColor(Color("textColor"))
                            }
                            .fontWeight(.semibold)
                            .padding(5)
                            .frame(width:350,alignment:.leading)
                            .background{
                                if question.answerValue >= 0{
                                    Color("textBox")
                                }else{
                                    Color.pink
                                    .opacity(0.7)
                                }
                            }
                            .cornerRadius(13)
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
            answerViewModel.user = user
        }
        .environment(\.locale, .init(identifier: contentViewModel.user.language))
    }
}
//struct AnswerView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationStack{
//            AnswerView(user:DummyData.user)
//                .environmentObject(ContentViewModel())
//        }
//    }
//}

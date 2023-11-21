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
      

        ScrollView {

                ForEach(user.lifeExpectancy.questions){
                        question in
                        
                            VStack(alignment:.leading,spacing:5){
                                Text(LocalizedStringKey(question.question))
                                    .multilineTextAlignment(.leading)
                                    .foregroundStyle(.white)
                                    .fontWeight(.bold)
                                HStack {
                                    Text("Resposta:")
                                    Text(question.answerDescription)
                                }
                                HStack {
                                    Text(question.answerValue > 0 ? "Impacto na saúde: +": "Impacto na saúde:")
                                    Text(question.answerValue, format:.number)
                                    Text("Anos")
                                    .foregroundColor(Color("textColor"))
                                }
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

//
//  ReportView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 20/06/23.
//

import SwiftUI
struct  ReportViewModel: Identifiable{
    var id = UUID()
    let question:Question
    var isActive:Bool = false
}

struct ReportView: View {
    @EnvironmentObject var contentViewModel: ContentViewModel
    @State var reportViewModel: ReportViewModel? = nil
    
    let user:User
    var body: some View {
        
        ZStack {
          
            ScrollView {
                VStack(alignment:.leading, spacing:5) {
                    HStack {
                        Text("Nome:")
                            .foregroundColor(.accentColor)
                            .padding(.top,5)
                        Text(user.name)
                    }
                    .padding(.horizontal)
                    HStack {
                        Text("Idade:")
                            .foregroundColor(.accentColor)
                        Text((user.lifeExpectancy.questions[0].answerDescription))
                    }
                        .padding(.horizontal)
                    Text("De acordo com seus hábitos, você terá aproximadamente mais \(user.lifeExpectancy.totalLifeExpectancy - user.age) anos de vida. Clique nas respostas para dicas de como viver mais.")
                        .padding(5)
                        .foregroundColor(.accentColor)
                        .background(.white)
                        .cornerRadius(10)
                        .padding()
                }
                .foregroundColor(.gray)
                .font(.title3)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment:.leading)
                .background(.green.opacity(0.3))
                .background(.white)
                .cornerRadius(15)
                .padding()
                VStack (alignment:.center){
                    
                    ForEach(user.lifeExpectancy.questions){
                        question in
                        Button{
                            reportViewModel = ReportViewModel(question: question)
                            reportViewModel?.isActive.toggle()
                        }label:{
                            VStack(alignment: .leading, spacing:5){
                                Text(question.question)
                                    .fontWeight(.semibold)
                            HStack {
                                    Text("\(question.answerDescription)")
                                Spacer()
                                Image(systemName:"plus.circle")
                                }
                            .foregroundColor(.gray)
                            }
                            .font(.body)
                            .foregroundColor(.red)
                            .padding(5)
                            .frame(width:350)
                            .cornerRadius(15)
                            .background(.green.opacity(0.3))
                            .background(.white)
                            .cornerRadius(10)
                        }
                        }
                    }
                    .sheet(item: $reportViewModel){
                        model in QuestionView( user: user, question: model.question)
                    }
            }
            .navigationTitle("Life Plus")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .scrollContentBackground(.hidden)
            
        }
        .background{Image("Wallpaper")
                .opacity(0.3).ignoresSafeArea()
        }
    }
}
struct ReportView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ReportView( user: DummyData.user)
                .environmentObject(ContentViewModel())
        }
    }
}

//
//  Questions.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 01/09/23.
//

import SwiftUI

struct AnswerView: View {
    @EnvironmentObject var contentViewModel: ContentViewModel
    @State var reportViewModel: ReportViewModel? = nil
    
    let user:User
    var body: some View {
        ScrollView {
           
            ZStack() {
               Circle()
                    .stroke(lineWidth:10)
                    .fill(.mint)
                    .shadow(color:.green, radius: 4)
                    .shadow(color:.gray, radius: 2)
                    .opacity(0.5)
                    .padding()
                Circle()
                    .stroke(lineWidth:1)
                    .fill(.white)
                    .padding()
                VStack {
                    Text("Viva +")
                        .font(.system(size:20))
                    Text("\(user.lifeExpectancy.totalLifeExpectancy - user.age)")
                        .font(.system(size:90))
                    .foregroundColor(.accentColor)
                    Text("Anos")
                        .font(.system(size:20))
                }
                .fontWeight(.bold)
                .foregroundColor(.accentColor)
                .padding()
        }
            .frame(width: 200)
            VStack (alignment:.center){
                Text("Clique nas perguntas para ver as dicas")
                    .foregroundColor(.accentColor)
                    .fontWeight(.black)
                ForEach(user.lifeExpectancy.questions){
                    question in
                    Button{
                        reportViewModel = ReportViewModel(question: question)
                        reportViewModel?.isActive.toggle()
                    }label:{
                        VStack(alignment: .leading, spacing:5){
                            Text(question.question)
                                .fontWeight(.bold)
                                .foregroundColor(.red)
                            HStack {
                                Text("\(question.answerDescription)")
                                    .shadow(radius: 10)
                                Spacer()
                                Image(systemName:"arrow.up.square")
                            }
                            .foregroundColor(.white)
                            .fontWeight(.black)
                        }
                       
                        
                        .padding(5)
                        .frame(width:350)
                        .cornerRadius(15)
                        .background(
                            .mint
                        .opacity(0.3))
                        .cornerRadius(10)
                        .shadow(color:.green,radius: 3)
                    }
                }
            }
            .sheet(item: $reportViewModel){
                model in QuestionView( user: user, question: model.question)
            }
        }
        .background{
            Image("Wallpaper")
                .resizable()
                .scaledToFill()
                .opacity(0.6)
                .background(.green)
                .opacity(0.2)
                
        }
        .navigationTitle("Você pode viver até os \(user.lifeExpectancy.totalLifeExpectancy) anos de idade").foregroundColor(.red)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .scrollContentBackground(.hidden)
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

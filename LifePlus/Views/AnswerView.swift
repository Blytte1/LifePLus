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
    let user: User
    
    var body: some View {
        List {
            let demografic = user.lifeExpectancy.questions.filter { $0.categories == .demografic }
            let biologic = user.lifeExpectancy.questions.filter { $0.categories == .biologic }
            let habits = user.lifeExpectancy.questions.filter { $0.categories == .habit }
            Section("Fatores biológicos"){
                Text("São fatores que não controlamos, mas que influenciam na expectativa de vida.")
                ForEach(biologic){ question in
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
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
                .fontWeight(.semibold)
                .padding(5)
                .frame(width:350,alignment:.leading)
                .background{
                    if question.answerValue > 0{
                        Color("textBox")
                    } else if question.answerValue == 0{
                        Color.yellow
                            .opacity(0.5)
                    }
                    else{
                        Color.pink
                            .opacity(0.7)
                    }
                }
                .cornerRadius(13)
            }
            }
            Section("Fatores demográficos"){ 
                Text("São fatores econômicos, sociais e geográficos que podem influenciar na expectativa de vida.")
                ForEach(demografic){
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
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
                .fontWeight(.semibold)
                .padding(5)
                .frame(width:350,alignment:.leading)
                .background{
                    if question.answerValue > 0{
                        Color("textBox")
                    } else if question.answerValue == 0{
                        Color.yellow
                            .opacity(0.5)
                    }
                    else{
                        Color.pink
                            .opacity(0.7)
                    }
                }
                .cornerRadius(13)
            }
            }
            Section("Fatores habituais"){ 
                Text("São fatores que levam em consideração a influência de escolhas tomadas ao longo da vida na expectativa de vida.")
                ForEach(habits){
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
                .listRowBackground(Color.clear)
                .listRowSeparator(.hidden)
                .fontWeight(.semibold)
                .padding(5)
                .frame(width:350,alignment:.leading)
                .background{
                    if question.answerValue > 0{
                        Color("textBox")
                    } else if question.answerValue == 0{
                        Color.yellow
                            .opacity(0.5)
                    }
                    else{
                        Color.pink
                            .opacity(0.7)
                    }
                }
                .cornerRadius(13)
            }
            }
        }
        .toolbar{
            
            
            Button{
                contentViewModel.path = [Screen.intro]
                contentViewModel.startOver()
                
            }label:{
                Image(systemName: "arrow.counterclockwise.circle")
            }
            Button{
                contentViewModel.path.append(Screen.business)
            }label:{
                Image(systemName: "dollarsign.circle")
            }
            
            Button{
                contentViewModel.path.append(Screen.setup)
            }label:{
                Image(systemName: "character.book.closed")
            }
        }
        .listStyle(.plain)
        .navigationTitle("Relatório completo")
        .scrollContentBackground(.hidden)
        .background{
            Image("Wallpaper")
                .resizable()
                .scaledToFill()
                .opacity(0.05) 
                .ignoresSafeArea()
                .background(Color("background"))
        }
        .foregroundColor(Color("textColor"))
    
        .onAppear(){
            answerViewModel.user = user
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

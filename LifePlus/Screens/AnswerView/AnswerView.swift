//
//  QuestionsStudiesView.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 06/05/26.
//


import SwiftUI

struct AnswerView: View {
    @Bindable var vm: AnswerViewModel

    var body: some View {
        List {

            ForEach(vm.questions) { question in

                    NavigationLink(destination: StudyDetailView(
                        question: question,
                        links: question.recommendationLink,
                        userAnswer: question.answer ?? AnswerOption(description: "Raramente ou nunca consumo", value: 1.5)
                    )) {
                        VStack(alignment: .leading, spacing: 5) {
                            Text(question.id)
                                .font(.headline)

                            HStack {
                                Text("Sua resposta:")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                Text(question.answer?.description ?? "")
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                            }
                        }
                    }

            }
        }
        .navigationTitle("Base Científica")
        .onAppear(){
            vm.questions = vm.dm.user.lifeExpectancy.questions
        }
    }
}

#Preview {
    NavigationStack{
        AnswerView(vm: AnswerViewModel(dm:DummyData.dm,questions: DummyData.questions))
            .environment(DummyData.dm)
    }
}



struct StudyDetailView: View {
    let question: Question
    let links: String
    let userAnswer: AnswerOption

    var body: some View {
        List {
            Section(header: Text("Pergunta")) {
                Text(question.id)
                    .font(.headline)

                VStack(alignment: .leading) {
                    Text("Sua Resposta:")
                        .font(.caption)
                        .foregroundColor(.secondary)
                    HStack{
                        Text(userAnswer.description)
                        Spacer()
                        Text(String(userAnswer.value)+"pts")
                    }
                        .font(.body)
                        .fontWeight(.medium)
                }
            }

            Section(header: Text("Justificativa")) {
                Text(question.justification)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }

            Section(header: Text("Links de Referência")) {

                Link(destination: URL(string: question.recommendationLink)! ) {
                            HStack {
                                Text("Acessar estudo")
                                    .font(.footnote)
                                Spacer()
                                Image(systemName: "arrow.up.right.square")
                                    .foregroundColor(.blue)
                            }

                }
            }
        }
        .navigationTitle("Detalhes")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview("StudyDetailView"){
 @Previewable @State var question: Question = DummyData.alcohol
    @Previewable @State var links: String = DummyData.alcohol.recommendationLink
    @Previewable @State var userAnswer: AnswerOption = AnswerOption(description: "Raramente ou nunca consumo", value: 1.5)
    StudyDetailView(question: question, links: links, userAnswer: userAnswer)
}

import SwiftUI

struct QuestionOptionView<T>: View where T: CaseIterable, T: Identifiable, T: CustomStringConvertible, T.RawValue == Double {
    @EnvironmentObject var contentViewModel: ContentViewModel
    @Binding var answer: Double
    @Binding var description: String
    var question: Question

    var body: some View {
        ForEach(Array(T.allCases)) { item in
            Button {
                answer = item.rawValue
                description = item.description
                contentViewModel.answer = item.rawValue
                contentViewModel.description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
            } label: {
                Text(LocalizedStringKey(item.description))
                    .modifier(PickerStyle(tag: item.rawValue))
            }
            .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
    }
}
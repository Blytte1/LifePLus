//
//  Exercise.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/10/23.
//

import SwiftUI

struct ExerciseView: View {
    @EnvironmentObject  var contentViewModel : ContentViewModel
    @Binding var user:User
    @Binding var question:Question
    @Binding var answer: Double{
        didSet{
            contentViewModel.answer = Double(answer)
        }
    }
    @Binding private(set) var description: String{
        didSet{
            contentViewModel.description = description
        }
    }
    var body: some View {
        ForEach(Exercise.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.updateAnswer(question: question)
                contentViewModel.path = [Screen.transition(contentViewModel.user)]
            }
        label: {
            Text(LocalizedStringKey(item.description))
                .modifier(PickerStyle(tag: item.rawValue))
        }
        .buttonStyle(.borderedProminent)
        }
        .padding(.horizontal)
        Spacer()
        AdBannerView(adUnitID: question.recommendationLink)
            .frame(width:320, height:100)
            .padding(.top, 20)
    }
}

//MARK: - EXERCISE
enum Exercise:Double, CaseIterable{
    case five = 4
    case three = 2
    case zero = 0
}
extension Exercise:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .five:
            return "Sim, pelo menos 5 vezes por semana"
        case .three:
            return "Sim, pelo menos 3 vezes por semana"
        case .zero:
            return "Não me exercito regularmente"
        }
    }
}

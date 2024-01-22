//
//  Smoker.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/10/23.
//

import SwiftUI
struct SmokerView: View {
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
        ForEach(Smoker.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
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
            .frame(width:350, height:100)
            .padding(.top, 20)
    }
}

//MARK: - SMOKER
enum Smoker: Double, CaseIterable{
    case overtwo = -8
    case two = -6
    case one = -3
    case no = 0
}
extension Smoker:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .overtwo:
            return "Sim, acima dois de maços por dia"
        case .two:
            return "Sim, entre um e dois maços por dia"
        case .one:
            return "Sim, de meio a um maço por dia"
        case .no:
            return "Não"
        }
    }
}

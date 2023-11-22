//
//  Overwheight.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/10/23.
//

import SwiftUI


struct OverWeightView: View {
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
        ForEach(OverWeight.allCases){ item
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
        .frame(width:320, height:100).padding(.top, 20)
    }
}

//MARK: - OVERWEIGHT
enum OverWeight: Double, CaseIterable{
    case over15 = -8
    case until15 = -4
    case under = -2
    case no = 0
}
extension OverWeight:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .over15:
            return "Sim, por mais de 15 Kg"
        case .until15:
            return "Sim, entre 10 a 15 Kg"
        case .under:
            return "Sim, menos de 10 Kg"
        case .no:
            return "Não"
        }
    }
}

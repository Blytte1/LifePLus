//
//  Alcooholic.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/10/23.
//

import SwiftUI

struct AlcoholicView: View {
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
        ForEach(Alcoholic.allCases){ item
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
        if UIDevice.current.userInterfaceIdiom == .phone {
            AdBannerView(adUnitID: question.recommendationLink)
                .frame(width:350, height:100)
                .padding(.top, 20)
                   }
    }
}

//MARK: - ALCOHOLIC

enum Alcoholic: Double, CaseIterable{
    case yes = -1
    case no = 0
}
extension Alcoholic:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .yes:
            return "Sim"
        case .no:
            return "Não"
        }
    }
}

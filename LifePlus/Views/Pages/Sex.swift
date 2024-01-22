//
//  Gender.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 12/12/23.
//

import SwiftUI
//MARK: - GENDER

struct SexView: View {
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
        ForEach(Sex.allCases){ item
            in Button(){
                answer = item.rawValue
                description = item.description
                contentViewModel.incrementPage()
                contentViewModel.updateAnswer(question: question)
                print(answer)
                print(description)
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

enum  Sex: Double,CaseIterable{
    case female = 4
    case male = -3
}

extension Sex:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{
        case .female:
            return  "Feminino"
        case .male:
            return   "Masculino"
        }
    }
}

//
//  City.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/10/23.
//

import SwiftUI

struct CityView: View {
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
        ForEach(City.allCases){ item
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
//MARK: - CITY
enum City:Double, CaseIterable{
    case less10k = 2
    case between10kand2kk = 0
    case over2kk = -2
}
extension City:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{
        case .less10k:
            return "Menos de 10 mil pessoas"
        case .between10kand2kk:
            return "De 10 mil a 2 milhões de pessoas"
        case .over2kk:
            return "Mais de 2 milhões de pessoas"
        }
    }
}

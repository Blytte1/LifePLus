//
//  Personality.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/10/23.
//

import SwiftUI

struct PersonalityView: View {
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
        ForEach(Personality.allCases){ item
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

//MARK: - PERSONALITY
enum Personality: Double, CaseIterable{
    case calm = 3
    case intense = -3
    case outgoing = 1
    case introvert = -1
}
extension Personality:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .calm:
            return "Tranquilo"
        case .intense:
            return "Intenso"
        case .outgoing:
            return "Extrovertido"
        case .introvert:
            return "Introvertido"
        }
    }
}

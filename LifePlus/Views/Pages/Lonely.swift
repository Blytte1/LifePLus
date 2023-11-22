//
//  Lonely.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/10/23.
//

import SwiftUI

struct LonelyView: View {
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
        ForEach(Lonely.allCases){ item
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
    }
}

//MARK: - LONELY
enum Lonely:Double, CaseIterable{
    case decade = -3
    case decade2 = -6
    case decade3 = -9
    case decade4 = -12
    case no = 0
}
extension Lonely:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

       
        case .decade:
            return "Sim, por uma década"
        case .decade2:
            return "Sim, por duas décadas"
        case .decade3:
            return "Sim, por três décadas"
        case .decade4:
            return "Sim, por quatro décadas"
        case .no:
            return "Não"
        }
    }
}

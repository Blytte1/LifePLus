//
//  Graduation.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 02/10/23.
//

import SwiftUI

struct GraduationView: View {
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
        ForEach(Graduation.allCases){ item
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

//MARK: - GRADUATION
enum Graduation:Double, CaseIterable{
    case bachelor = 2
    case professional = 1
    case highSchool = 0
    case no = -1
}
extension Graduation:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{

        case .bachelor:
            return "Nível superior"
        case .professional:
            return "Nível técnico"
        case .highSchool:
            return "Nível médio"
        case .no:
            return "Nível fundamental"
        }
    }
}

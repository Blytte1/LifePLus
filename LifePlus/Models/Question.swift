//
//  Question.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 01/08/23.
//
import SwiftUI
import Foundation


struct AnswerOption: Identifiable, Hashable {
    var id = UUID().uuidString
    let description: String
    let value: Double
}

struct Question: Identifiable, Equatable, Hashable {

    var id: String
    var questionImageUrl: String
    var tag: Int
    var categories: Categories
    var recommendationLink: String
    var justification: String
    var options: [AnswerOption]
    var answer: AnswerOption?
}

enum Categories:String, Hashable{
    case demografic
    case biologic
    case habit
}

extension Categories:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{
        case .demografic:
            return  "Fatores demográficos"
        case .biologic:
            return  "Fatores biológicos"
        case .habit:
            return  "Fatores hábituais"
        }
    }
}

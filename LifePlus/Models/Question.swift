//
//  Question.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 01/08/23.
//
import SwiftUI
import Foundation

struct Question: Identifiable, Equatable, Hashable{
    let id = UUID()
    var question: String
    var answerValue: Double
    var answerDescription: String
    var questionImageUrl: String
    var tag: Int
    var categories: Categories
    var recommendationLink:String 
}

enum Categories:String, Hashable{
    case demografic
    case hereditary
    case habit
}
extension Categories:CustomStringConvertible, Identifiable{
    var id: Self{self}
    var description: String{
        switch self{
        case .demografic:
            return  "Fatores demográficos"
        case .hereditary:
            return  "Fatores hereditários"
        case .habit:
            return  "Fatores hábituais"
        }
    }
}

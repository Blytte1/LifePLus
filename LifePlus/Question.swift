//
//  Question.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 01/08/23.
//

import Foundation

struct Question: Identifiable, Equatable, Hashable{
    let id = UUID()
    var question: String
    var answerValue: Int
    var answerDescription: String
    var questionImageUrl: String
    var tag: Int
}

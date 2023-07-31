//
//  ContentViewModel.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 19/06/23.
//

import Foundation
class ContentViewModel:ObservableObject{
    @Published var lifeExpectancy:LifeExpectancy = DummyData.lifeExpectancy
    @Published var pageIndex = 0
    @Published var answer = 0
    @Published var isSelected = false
    func incrementPage(){
        pageIndex += 1
    }
    func startOver() {
        pageIndex = 0
    }
    func updateAnswer (question:Question){
        if let index = lifeExpectancy.questions.firstIndex(where:{$0.id == question.id}){
        lifeExpectancy.questions[index].answer = answer
            lifeExpectancy.questions[index].isSelected = isSelected
        }
    }
}
 

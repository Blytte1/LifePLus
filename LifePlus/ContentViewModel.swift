//
//  ContentViewModel.swift
//  LifePlus
//
//  Created by Roberto Mascarenhas on 19/06/23.
//

import Foundation
class ContentViewModel:ObservableObject{
    @Published var ageUpdated = false
    @Published var pageIndex = 0
    @Published var answer = 0
    @Published var description = ""
    @Published var isSelected = false
    @Published var user:User = DummyData.user
    @Published var path: [Screen] = []
    @Published var rotation = 0.0
    
    func incrementPage(){
        pageIndex += 1
    }
    
    func startOver() {
        pageIndex = 0
    }
    
    func updateAnswer (question:Question){
        if let index = user.lifeExpectancy.questions.firstIndex(where:{$0.id == question.id}){
            
            user.lifeExpectancy.questions[index].answerValue = answer
            user.lifeExpectancy.questions[index].answerDescription = description
            user.lifeExpectancy.totalLifeExpectancy += answer
            if (answer < 0){
                rotation -= 360
            }else if answer >= 0{
             rotation += 360
            }else{ rotation = 720}
            
            print(user.lifeExpectancy.questions[index].question)
            print(" resposta da pergunta: \(user.lifeExpectancy.questions[index].answerDescription)")
            print(" valor da resposta: \(user.lifeExpectancy.questions[index].answerValue)")
            print("expectativa de vida é: \(user.lifeExpectancy.totalLifeExpectancy)")
            print(" expectativa - idade: \(user.lifeExpectancy.totalLifeExpectancy - user.age)")
            print("User.Age  = \(user.age)")
        }
    }
  
    func pop(){
        path.removeLast()
    }
    func reset(){
        path = []
    }

}
 

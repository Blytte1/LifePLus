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
    @Published var answer: Double = 0.0
    @Published var description = ""
    @Published var user:User = DummyData.user
    @Published var path: [Screen] = []
    @Published var rotation = 0.0
    @Published var age:Double = 30
    
    func incrementPage(){
        pageIndex += 1
    }
    
    func startOver() {
        path = []
        pageIndex = 0
        ageUpdated = false
        pageIndex = 0
        answer = 0.0
        description = ""
        user = DummyData.user
        rotation = 0.0
        age = 30
    }
    
    func updateAnswer (question:Question){
        if let index = user.lifeExpectancy.questions.firstIndex(where:{$0.id == question.id}){
            
            user.lifeExpectancy.questions[index].answerValue = answer
            if (answer < 0){
                rotation -= 360
            }else if answer > 0{
                rotation += 360
            }else{
                rotation -= 90
                DispatchQueue.main.asyncAfter(deadline: .now()+0.1){
                    self.rotation += 90
                }
            }
            user.lifeExpectancy.questions[index].answerDescription = description
            user.lifeExpectancy.totalLifeExpectancy += answer
            
            print(user.lifeExpectancy.questions[index].question)
            print("resposta da pergunta: \(user.lifeExpectancy.questions[index].answerDescription)")
            print("valor da resposta: \(user.lifeExpectancy.questions[index].answerValue)")
            print("expectativa de vida é: \(user.lifeExpectancy.totalLifeExpectancy)")
            print("expectativa - idade: \(user.lifeExpectancy.totalLifeExpectancy - user.age)")
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
 
